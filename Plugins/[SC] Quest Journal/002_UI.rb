#===============================================================================
# [SC] Quest Journal - UI Scene
#===============================================================================

class QuestJournalScene
  def initialize
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    @sprites = {}
    @cat_index = 0
    @quest_index = 0
    @categories = QuestJournal::CATEGORIES.keys
    @mode = :category
    # Filter cycle: :all -> :active -> :complete -> :failed -> :all
    @filter_state = :all
  end

  def pbStartScene
    @sprites["overlay"] = BitmapSprite.new(Graphics.width, Graphics.height, @viewport)
    pbSetSystemFont(@sprites["overlay"].bitmap)
    draw_categories
  end

  def draw_categories
    overlay = @sprites["overlay"].bitmap
    overlay.clear

    pbDrawTextPositions(overlay, [
      ["Quest Journal", Graphics.width / 2, 8, 2,
       Color.new(255, 220, 100), QuestJournal::TEXT_SHADOW]
    ])

    # Active quest count
    active_count = pbQuests.active_quests.length
    done_count = pbQuests.completed_quests.length
    pbDrawTextPositions(overlay, [
      [_INTL("Active: {1}  |  Completed: {2}", active_count, done_count),
       Graphics.width / 2, 38, 2, QuestJournal::TEXT_BASE, QuestJournal::TEXT_SHADOW]
    ])

    y = 76
    @categories.each_with_index do |cat_id, i|
      cat = QuestJournal::CATEGORIES[cat_id]
      quests = QuestRegistry.by_category(cat_id)
      visible_count = quests.count { |id, _q| pbQuests.state(id) > QuestJournal::STATE_HIDDEN }
      color = i == @cat_index ? cat[:color] : QuestJournal::TEXT_BASE

      pbDrawTextPositions(overlay, [
        [i == @cat_index ? "▸ " : "  ", 30, y, 0, color, QuestJournal::TEXT_SHADOW],
        [cat[:name], 60, y, 0, color, QuestJournal::TEXT_SHADOW],
        [_INTL("({1})", visible_count), Graphics.width - 40, y, 1, color, QuestJournal::TEXT_SHADOW]
      ])
      y += 36
    end
  end

  def draw_quests
    overlay = @sprites["overlay"].bitmap
    overlay.clear

    cat_id = @categories[@cat_index]
    cat = QuestJournal::CATEGORIES[cat_id]
    all_quests = QuestRegistry.by_category(cat_id).values
    visible = filter_quests(all_quests)

    filter_label = case @filter_state
                   when :active   then "Active"
                   when :complete then "Completed"
                   when :failed   then "Failed"
                   else "All"
                   end
    pbDrawTextPositions(overlay, [
      [cat[:name], Graphics.width / 2, 8, 2, cat[:color], QuestJournal::TEXT_SHADOW],
      [_INTL("[Q/W: {1}]", filter_label), Graphics.width - 20, 8, 1,
       QuestJournal::TEXT_BASE, QuestJournal::TEXT_SHADOW]
    ])

    if visible.empty?
      pbDrawTextPositions(overlay, [
        ["No quests yet.", Graphics.width / 2, 100, 2, QuestJournal::TEXT_LOCKED, QuestJournal::TEXT_SHADOW]
      ])
      return
    end

    @quest_index = @quest_index.clamp(0, visible.length - 1)

    # Quest list
    y = 48
    start = [0, @quest_index - 3].max
    visible[start, QuestJournal::QUESTS_PER_PAGE].each_with_index do |quest, i|
      real_idx = start + i
      state = pbQuests.state(quest.id)
      color = case state
              when QuestJournal::STATE_ACTIVE   then QuestJournal::TEXT_ACTIVE
              when QuestJournal::STATE_COMPLETE  then QuestJournal::TEXT_DONE
              when QuestJournal::STATE_FAILED    then QuestJournal::TEXT_FAILED
              else QuestJournal::TEXT_LOCKED
              end
      selected = real_idx == @quest_index
      prefix = selected ? "▸ " : "  "
      status = case state
               when QuestJournal::STATE_ACTIVE  then "●"
               when QuestJournal::STATE_COMPLETE then "✓"
               when QuestJournal::STATE_FAILED   then "✗"
               else ""
               end

      pbDrawTextPositions(overlay, [
        [prefix + quest.name, 20, y, 0, color, QuestJournal::TEXT_SHADOW],
        [status, Graphics.width - 20, y, 1, color, QuestJournal::TEXT_SHADOW]
      ])
      y += 28
    end

    # Selected quest detail
    quest = visible[@quest_index]
    if quest
      detail_y = Graphics.height - 140
      overlay.fill_rect(10, detail_y, Graphics.width - 20, 130, Color.new(0, 0, 0, 160))

      drawTextEx(overlay, 20, detail_y + 6, Graphics.width - 40, 2,
                 quest.description, QuestJournal::TEXT_BASE, QuestJournal::TEXT_SHADOW)

      # Objectives
      obj_y = detail_y + 48
      prog = pbQuests.objective_progress[quest.id] || []
      quest.objectives.each_with_index do |obj, i|
        done = prog[i]
        mark = done ? "☑" : "☐"
        col = done ? QuestJournal::TEXT_DONE : QuestJournal::TEXT_BASE
        pbDrawTextPositions(overlay, [
          ["#{mark} #{obj}", 30, obj_y, 0, col, QuestJournal::TEXT_SHADOW]
        ])
        obj_y += 22
      end

      # Reward preview
      if quest.reward_text && !quest.reward_text.empty?
        pbDrawTextPositions(overlay, [
          [_INTL("Reward: {1}", quest.reward_text), 20, Graphics.height - 26, 0,
           Color.new(255, 200, 80), QuestJournal::TEXT_SHADOW]
        ])
      end
    end
  end

  def pbMain
    loop do
      Graphics.update
      Input.update

      case @mode
      when :category
        if Input.trigger?(Input::DOWN)
          @cat_index = (@cat_index + 1) % @categories.length
          pbPlayCursorSE; draw_categories
        elsif Input.trigger?(Input::UP)
          @cat_index = (@cat_index - 1) % @categories.length
          pbPlayCursorSE; draw_categories
        elsif Input.trigger?(Input::USE)
          @mode = :quest; @quest_index = 0
          pbPlayDecisionSE; draw_quests
        elsif Input.trigger?(Input::BACK)
          pbPlayCancelSE; break
        end
      when :quest
        cat_id = @categories[@cat_index]
        visible = filter_quests(QuestRegistry.by_category(cat_id).values)
        if Input.trigger?(Input::DOWN) && !visible.empty?
          @quest_index = (@quest_index + 1) % visible.length
          pbPlayCursorSE; draw_quests
        elsif Input.trigger?(Input::UP) && !visible.empty?
          @quest_index = (@quest_index - 1) % visible.length
          pbPlayCursorSE; draw_quests
        elsif Input.trigger?(Input::L) || Input.trigger?(Input::R)
          cycle_filter(Input.trigger?(Input::R))
          @quest_index = 0
          pbPlayCursorSE; draw_quests
        elsif Input.trigger?(Input::BACK)
          @mode = :category; pbPlayCancelSE; draw_categories
        end
      end
    end
  end

  def pbEndScene
    pbDisposeSpriteHash(@sprites)
    @viewport.dispose
  end

  FILTER_ORDER = [:all, :active, :complete, :failed].freeze

  def cycle_filter(forward = true)
    idx = FILTER_ORDER.index(@filter_state) || 0
    idx = forward ? (idx + 1) % FILTER_ORDER.length : (idx - 1) % FILTER_ORDER.length
    @filter_state = FILTER_ORDER[idx]
  end

  def filter_quests(list)
    list.select do |q|
      st = pbQuests.state(q.id)
      next false if st <= QuestJournal::STATE_HIDDEN
      case @filter_state
      when :active   then st == QuestJournal::STATE_ACTIVE
      when :complete then st == QuestJournal::STATE_COMPLETE
      when :failed   then st == QuestJournal::STATE_FAILED
      else true
      end
    end
  end
end

def pbOpenQuestJournal
  return unless QuestJournal::ENABLED   # SC FIX (review C3)
  scene = QuestJournalScene.new
  scene.pbStartScene
  scene.pbMain
  scene.pbEndScene
end
