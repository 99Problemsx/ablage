#===============================================================================
# [SC] Map Events Import - Registry + DSL
#===============================================================================
# DSL for defining events in Ruby. The registry collects definitions
# at script load time; the spawner (002_RuntimeSpawner.rb) reads the
# registry whenever a map is loaded.
#
# Example:
#
#   MapEvents.define(1) do |m|
#     m.event 1, "Mom" do |e|
#       e.position 5, 8
#       e.graphic "NPC 01", direction: :down
#       e.trigger :action
#
#       e.page :default do |p|
#         p.condition_self_switch 'A', false
#         p.script "pbCutscene(:ch1_breakfast_with_family, event_id: 1)"
#         p.command :set_self_switch, 'A', true
#       end
#
#       e.page :after do |p|
#         p.condition_self_switch 'A', true
#         p.script "pbMessage('Mom: Eat well, sweetheart.')"
#       end
#     end
#   end
#===============================================================================

module MapEvents
  @maps = {}    # map_id => MapBuilder

  class << self
    def define(map_id, &block)
      builder = MapBuilder.new(map_id)
      yield(builder) if block_given?
      @maps[map_id] ||= MapBuilder.new(map_id)
      @maps[map_id].merge!(builder)
      @maps[map_id]
    end

    def for_map(map_id)
      @maps[map_id]
    end

    def all
      @maps
    end

    def reset!
      @maps = {}
    end
  end


  #-----------------------------------------------------------------------------
  # MapBuilder — collects events for a single map
  #-----------------------------------------------------------------------------
  class MapBuilder
    attr_reader :map_id, :events

    def initialize(map_id)
      @map_id = map_id
      @events = {}   # event_id => EventBuilder
    end

    # Define a single event on this map.
    #   m.event 1, "Mom" do |e| ... end
    def event(event_id, name = nil, &block)
      builder = EventBuilder.new(@map_id, event_id, name || "Event#{event_id}")
      yield(builder) if block_given?
      @events[event_id] = builder
    end

    def merge!(other)
      return unless other.is_a?(MapBuilder)
      other.events.each { |id, ev| @events[id] = ev }
    end
  end


  #-----------------------------------------------------------------------------
  # EventBuilder — collects properties + pages for a single event
  #-----------------------------------------------------------------------------
  class EventBuilder
    attr_reader :map_id, :event_id, :name, :x, :y, :pages_data

    def initialize(map_id, event_id, name)
      @map_id  = map_id
      @event_id = event_id
      @name    = name
      @x       = 0
      @y       = 0
      @pages_data = []  # Array<PageBuilder>
      @default_trigger = :action
      @default_graphic = nil
    end

    # Tile position.
    def position(x, y)
      @x = x
      @y = y
    end

    # Default graphic — inherited by pages that don't override.
    #   e.graphic "NPC 01", direction: :down, pattern: 0
    def graphic(character_name, direction: :down, pattern: 0, tile_id: 0, hue: 0)
      @default_graphic = {
        character_name: character_name,
        direction: direction_to_rpg(direction),
        pattern: pattern,
        tile_id: tile_id,
        hue: hue
      }
    end

    # Default trigger:
    #   :action       (player presses A)
    #   :player_touch (player walks into event)
    #   :event_touch  (event walks into player)
    #   :autorun      (runs on map load until stopped)
    #   :parallel     (runs in background)
    def trigger(t)
      @default_trigger = t
    end

    # Add a page. Multiple pages = layered like RPG Maker pages: the
    # last page whose conditions are met is shown.
    #   e.page :default do |p| ... end
    #   e.page :after do |p| ... end
    def page(label = nil, &block)
      page = PageBuilder.new(label, default_graphic: @default_graphic, default_trigger: @default_trigger)
      yield(page) if block_given?
      @pages_data << page
    end

    private

    def direction_to_rpg(sym)
      case sym
      when :down  then 2
      when :left  then 4
      when :right then 6
      when :up    then 8
      else 2
      end
    end
  end


  #-----------------------------------------------------------------------------
  # PageBuilder — conditions, graphic, trigger, commands for one page
  #-----------------------------------------------------------------------------
  class PageBuilder
    attr_reader :label, :conditions, :graphic_data, :trigger_id, :commands, :move_type

    TRIGGER_MAP = {
      action:       0,
      player_touch: 1,
      event_touch:  2,
      autorun:      3,
      parallel:     4
    }.freeze

    def initialize(label, default_graphic: nil, default_trigger: :action)
      @label      = label
      @conditions = {}
      @graphic_data = default_graphic ? default_graphic.dup : nil
      @trigger_id   = TRIGGER_MAP[default_trigger] || 0
      @commands     = []  # Array<{type:, args:}>
      @move_type    = 0   # 0 = fixed, 1 = random, 2 = approach, 3 = custom
      @options      = { step_anime: false, walk_anime: true, direction_fix: false, through: false, always_on_top: false }
      @speed        = 3
      @frequency    = 3
    end

    #-------------------------------------------------------------------------
    # Conditions
    #-------------------------------------------------------------------------
    def condition_switch(switch_id, value = true)
      @conditions[:switch1] = { id: switch_id, value: value }
    end

    def condition_switch2(switch_id, value = true)
      @conditions[:switch2] = { id: switch_id, value: value }
    end

    def condition_variable(var_id, op, value)
      @conditions[:variable] = { id: var_id, op: op, value: value }
    end

    def condition_self_switch(letter, value = true)
      @conditions[:self_switch] = { letter: letter, value: value }
    end

    def condition_item(item_sym)
      @conditions[:item] = item_sym
    end

    #-------------------------------------------------------------------------
    # Graphic override on this page
    #-------------------------------------------------------------------------
    def graphic(character_name, direction: :down, pattern: 0)
      @graphic_data = {
        character_name: character_name,
        direction: case direction
                   when :down then 2
                   when :left then 4
                   when :right then 6
                   when :up then 8
                   else 2
                   end,
        pattern: pattern,
        tile_id: 0,
        hue: 0
      }
    end

    def trigger(t)
      @trigger_id = TRIGGER_MAP[t] || 0
    end

    def move_random;   @move_type = 1; end
    def move_approach; @move_type = 2; end
    def move_fixed;    @move_type = 0; end

    def speed(v);     @speed = v;     end
    def frequency(v); @frequency = v; end

    def step_anime(v = true);    @options[:step_anime] = v;    end
    def walk_anime(v = true);    @options[:walk_anime] = v;    end
    def direction_fix(v = true); @options[:direction_fix] = v; end
    def through(v = true);       @options[:through] = v;       end
    def always_on_top(v = true); @options[:always_on_top] = v; end

    def options;  @options; end
    def speed_val;  @speed; end
    def frequency_val; @frequency; end
    def move_type_val; @move_type; end

    #-------------------------------------------------------------------------
    # Commands — RPG Maker event commands. Sugar for the common ones.
    #-------------------------------------------------------------------------
    def script(code)
      @commands << { type: :script, code: code }
    end

    def message(text)
      @commands << { type: :message, text: text }
    end

    def command(symbol, *args)
      @commands << { type: symbol, args: args }
    end

    # Sugar for the most common case — a single pbCutscene call.
    def cutscene(name, **params)
      param_str = params.map { |k, v| "#{k}: #{v.inspect}" }.join(", ")
      code = param_str.empty? ? "pbCutscene(:#{name})" : "pbCutscene(:#{name}, #{param_str})"
      script(code)
    end

    # Sugar for trainer battles using SC's pbTrainerBattle.
    def trainer_battle(type, name, version = 0)
      script "TrainerBattle.start(:#{type}, \"#{name}\", #{version})"
    end
  end
end


#-------------------------------------------------------------------------------
# Helper alias — same name as MapEvents for consistency with project style.
#-------------------------------------------------------------------------------
SCMapEvents = MapEvents
