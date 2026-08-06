#===============================================================================
# [SC] Lore Codex - Entry Data & Registry
#===============================================================================

class CodexEntry
  attr_accessor :id, :title, :text, :category, :icon, :hidden_title

  def initialize(id, opts = {})
    @id           = id
    @title        = opts[:title] || id.to_s
    @text         = opts[:text] || ""
    @category     = opts[:category] || :MYTHOLOGY
    @icon         = opts[:icon]          # Optional custom icon
    @hidden_title = opts[:hidden] || "???"
  end
end

#===============================================================================

module CodexRegistry
  @entries = {}

  def self.add(id, opts = {})
    @entries[id] = CodexEntry.new(id, opts)
  end

  def self.get(id)
    @entries[id]
  end

  def self.all
    @entries
  end

  def self.by_category(category)
    @entries.select { |_k, v| v.category == category }
  end

  def self.count
    @entries.length
  end
end

#===============================================================================
# Save Data — tracks discovered entries
#===============================================================================

class CodexSaveData
  attr_accessor :discovered

  def initialize
    @discovered = []
  end

  def discover(entry_id)
    return false if @discovered.include?(entry_id)
    entry = CodexRegistry.get(entry_id)
    # Don't pollute @discovered with unknown IDs (e.g. MoralityCore fires
    # codexDiscover(:MORALITY_LIGHT) but no such entry may be registered).
    return false unless entry
    @discovered.push(entry_id)
    if LoreCodex::ENABLED
      pbSEPlay(LoreCodex::SE_DISCOVER)
      pbMessage(_INTL("\\se[]Lore discovered: \\c[1]{1}\\c[0]!", entry.title))
      check_category_completion(entry.category)
    end
    true
  end

  def discovered?(entry_id)
    @discovered.include?(entry_id)
  end

  def discovered_count
    @discovered.length
  end

  def total_count
    LoreCodex::TOTAL_ENTRIES || CodexRegistry.count
  end

  def completion_percent
    total = total_count
    return 0 if total == 0
    (discovered_count * 100.0 / total).round(1)
  end

  def category_complete?(category)
    all_in_cat = CodexRegistry.by_category(category).keys
    all_in_cat.all? { |id| @discovered.include?(id) }
  end

  def check_category_completion(category)
    return unless category_complete?(category)
    achv = LoreCodex::CATEGORY_COMPLETION_ACHIEVEMENTS[category]
    if achv && defined?(unlockAchievement)
      unlockAchievement(achv)
    end
  end
end

SaveData.register(:lore_codex_data) do
  save_value { $CodexData }
  load_value { |val| $CodexData = val || CodexSaveData.new }
  new_game_value { CodexSaveData.new }
end

def pbCodex
  $CodexData ||= CodexSaveData.new
end

#===============================================================================
# Event helpers
#===============================================================================

# Discover a codex entry from an event script
def codexDiscover(entry_id)
  pbCodex.discover(entry_id)
end

# Check if entry is discovered (for conditional branches)
def codexFound?(entry_id)
  pbCodex.discovered?(entry_id)
end

#===============================================================================
# Event comment tag support: [Codex NIDHOGGR_ORIGIN]
#===============================================================================

EventHandlers.add(:on_event_interaction, :sc_codex_tags,
  proc { |event|
    next unless LoreCodex::ENABLED
    next unless event
    event.list.each do |cmd|
      next unless cmd.code == 108 || cmd.code == 408
      if cmd.parameters[0] =~ /\[Codex\s+(\w+)\]/i
        entry_id = $1.upcase.to_sym
        codexDiscover(entry_id)
      end
    end
  }
)
