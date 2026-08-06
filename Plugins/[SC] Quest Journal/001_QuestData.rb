#===============================================================================
# [SC] Quest Journal - Quest Data & Registry
#===============================================================================

class QuestDefinition
  attr_accessor :id, :name, :description, :category, :objectives,
                :reward_text, :reward_items, :reward_money,
                :map_marker, :prerequisite

  def initialize(id, opts = {})
    @id           = id
    @name         = opts[:name] || id.to_s
    @description  = opts[:desc] || ""
    @category     = opts[:category] || :SIDE
    @objectives   = opts[:objectives] || []   # Array of strings
    @reward_text  = opts[:reward_text] || ""
    @reward_items = opts[:reward_items] || []  # [[:ITEM, qty], ...]
    @reward_money = opts[:reward_money] || 0
    @map_marker   = opts[:map_marker]          # { map_id:, x:, y: }
    @prerequisite = opts[:prerequisite]        # Another quest ID
  end
end

#===============================================================================
# Registry
#===============================================================================

module QuestRegistry
  @quests = {}

  def self.add(id, opts = {})
    @quests[id] = QuestDefinition.new(id, opts)
  end

  def self.get(id)
    @quests[id]
  end

  def self.all
    @quests
  end

  def self.by_category(category)
    @quests.select { |_k, v| v.category == category }
  end
end

#===============================================================================
# Save Data
#===============================================================================

class QuestSaveData
  attr_accessor :states, :objective_progress

  def initialize
    @states = {}              # { quest_id => state }
    @objective_progress = {}  # { quest_id => [bool, bool, ...] }
  end

  def state(quest_id)
    @states[quest_id] || QuestJournal::STATE_HIDDEN
  end

  def active?(quest_id)
    state(quest_id) == QuestJournal::STATE_ACTIVE
  end

  def complete?(quest_id)
    state(quest_id) == QuestJournal::STATE_COMPLETE
  end

  def start(quest_id)
    quest = QuestRegistry.get(quest_id)
    return unless quest
    return if state(quest_id) >= QuestJournal::STATE_ACTIVE

    @states[quest_id] = QuestJournal::STATE_ACTIVE
    @objective_progress[quest_id] = Array.new(quest.objectives.length, false)

    if QuestJournal::SHOW_NOTIFICATIONS
      pbSEPlay(QuestJournal::SE_QUEST_START)
      pbMessage(_INTL("\\c[1]Quest started:\\c[0] {1}", quest.name))
    end
  end

  def complete_objective(quest_id, obj_index)
    return unless active?(quest_id)
    prog = @objective_progress[quest_id]
    return unless prog && obj_index < prog.length
    prog[obj_index] = true

    # Auto-complete if all objectives done
    if prog.all?
      complete(quest_id)
    end
  end

  def complete(quest_id)
    return unless active?(quest_id)
    @states[quest_id] = QuestJournal::STATE_COMPLETE
    quest = QuestRegistry.get(quest_id)

    if quest && QuestJournal::SHOW_NOTIFICATIONS
      pbSEPlay(QuestJournal::SE_QUEST_DONE)
      pbMessage(_INTL("\\c[1]Quest complete:\\c[0] {1}", quest.name))

      # Award rewards
      quest.reward_items.each do |item_sym, qty|
        if GameData::Item.exists?(item_sym)
          $bag.add(item_sym, qty)
          pbMessage(_INTL("Received {1} x{2}!", GameData::Item.get(item_sym).name, qty))
        end
      end
      if quest.reward_money > 0
        $player.money += quest.reward_money
        pbMessage(_INTL("Received ${1}!", quest.reward_money))
      end
    end
  end

  def fail(quest_id)
    return unless active?(quest_id)
    @states[quest_id] = QuestJournal::STATE_FAILED
    quest = QuestRegistry.get(quest_id)
    if quest && QuestJournal::SHOW_NOTIFICATIONS
      pbMessage(_INTL("\\c[2]Quest failed:\\c[0] {1}", quest.name))
    end
  end

  def active_quests
    @states.select { |_id, s| s == QuestJournal::STATE_ACTIVE }.keys
  end

  def completed_quests
    @states.select { |_id, s| s == QuestJournal::STATE_COMPLETE }.keys
  end
end

SaveData.register(:quest_journal_data) do
  save_value { $QuestData }
  load_value { |val| $QuestData = val || QuestSaveData.new }
  new_game_value { QuestSaveData.new }
end

def pbQuests
  $QuestData ||= QuestSaveData.new
end

#===============================================================================
# Event helpers
#
# SC FIX (review C3): the QuestJournal::ENABLED toggle in Config wasn't checked
# anywhere — setting it to false had no effect. Each entry point now bails
# early if the system is disabled, matching the README's "Master toggle".
#===============================================================================

def questStart(quest_id)
  return unless QuestJournal::ENABLED
  pbQuests.start(quest_id)
end

def questComplete(quest_id)
  return unless QuestJournal::ENABLED
  pbQuests.complete(quest_id)
end

def questObjective(quest_id, obj_index)
  return unless QuestJournal::ENABLED
  pbQuests.complete_objective(quest_id, obj_index)
end

def questActive?(quest_id)
  return false unless QuestJournal::ENABLED
  pbQuests.active?(quest_id)
end

def questDone?(quest_id)
  return false unless QuestJournal::ENABLED
  pbQuests.complete?(quest_id)
end

def questFail(quest_id)
  return unless QuestJournal::ENABLED
  pbQuests.fail(quest_id)
end
