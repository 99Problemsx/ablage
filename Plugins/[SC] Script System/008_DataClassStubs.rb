#===============================================================================
# Shattered Crowns Script System - Data Class Stubs
#===============================================================================
# Defines GameData classes referenced by auto-generated DSL data files.
# These classes store their data in the top-level ScriptRegistry.
#===============================================================================

module GameData

  #=============================================================================
  # AdventureMap - Used by Data/Scripts/Config/All_AdventureMaps.rb
  #=============================================================================
  class AdventureMap
    @maps = {}

    class << self
      attr_accessor :maps

      def define(id, &block)
        builder = AdventureMapBuilder.new(id)
        yield(builder) if block_given?
        data = builder.build
        @maps[id] = data
        ScriptRegistry.register(:adventure_maps, id, data)
        data
      end

      def get(id)
        @maps[id]
      end

      def all
        @maps
      end
    end
  end

  class AdventureMapBuilder
    def initialize(id)
      @data = { id: id, tiles: [] }
    end

    def name(value);            @data[:name] = value.to_s; end
    def filename(value);        @data[:filename] = value.to_s; end
    def description(value);     @data[:description] = value.to_s; end
    def darkness_chance(value);  @data[:darkness_chance] = value.to_i; end
    def player_start(value);    @data[:player_start] = value.to_s; end

    def dimensions(w, h)
      @data[:width] = w.to_i
      @data[:height] = h.to_i
    end

    def pathways(*args)
      @data[:pathways] = args.flatten.map(&:to_s)
    end

    def battles(*args)
      @data[:battles] = args.flatten.map(&:to_s)
    end

    def tile(type, position)
      @data[:tiles] << { type: type, position: position.to_s }
    end

    def build
      @data
    end
  end

  #=============================================================================
  # PhoneContact - Used by Data/Scripts/Config/All_PhoneMessages.rb
  #=============================================================================
  class PhoneContact
    @contacts = {}

    class << self
      attr_accessor :contacts

      def define(type_or_id, name = nil, &block)
        key = name ? [type_or_id, name] : type_or_id
        builder = PhoneContactBuilder.new(type_or_id, name)
        yield(builder) if block_given?
        data = builder.build
        @contacts[key] = data
        ScriptRegistry.register(:phone_contacts, key, data)
        data
      end

      def get(key)
        @contacts[key]
      end

      def all
        @contacts
      end
    end
  end

  class PhoneContactBuilder
    def initialize(type_or_id, name = nil)
      @data = {
        type: type_or_id,
        name: name,
        intros: [],
        intro_mornings: [],
        intro_afternoons: [],
        intro_evenings: [],
        bodies: [],
        body1s: [],
        body2s: [],
        battle_requests: [],
        battle_reminds: [],
        ends: []
      }
    end

    def intro(text);           @data[:intros] << text.to_s; end
    def intromorning(text);    @data[:intro_mornings] << text.to_s; end
    def introafternoon(text);  @data[:intro_afternoons] << text.to_s; end
    def introevening(text);    @data[:intro_evenings] << text.to_s; end
    def body(text);            @data[:bodies] << text.to_s; end
    def body1(text);           @data[:body1s] << text.to_s; end
    def body2(text);           @data[:body2s] << text.to_s; end
    def battlerequest(text);   @data[:battle_requests] << text.to_s; end
    def battleremind(text);    @data[:battle_reminds] << text.to_s; end
    def end(text);             @data[:ends] << text.to_s; end

    def build
      @data
    end
  end

  #=============================================================================
  # DungeonParameters - Used by Data/Scripts/Dungeons/All_DungeonParameters.rb
  #=============================================================================
  class DungeonParameters
    @parameters = {}

    class << self
      attr_accessor :parameters

      def define(id, &block)
        builder = DungeonParametersBuilder.new(id)
        yield(builder) if block_given?
        data = builder.build
        @parameters[id] = data
        ScriptRegistry.register(:dungeon_parameters, id, data)
        data
      end

      def get(id)
        @parameters[id]
      end

      def all
        @parameters
      end
    end
  end

  class DungeonParametersBuilder
    def initialize(id)
      @data = { id: id }
    end

    def dungeon_size(w, h);        @data[:dungeon_width] = w; @data[:dungeon_height] = h; end
    def cell_size(w, h);           @data[:cell_width] = w; @data[:cell_height] = h; end
    def min_room_size(w, h);       @data[:min_room_width] = w; @data[:min_room_height] = h; end
    def max_room_size(w, h);       @data[:max_room_width] = w; @data[:max_room_height] = h; end
    def corridor_width(value);     @data[:corridor_width] = value; end
    def shift_corridors(value);    @data[:shift_corridors] = value; end
    def node_layout(value);        @data[:node_layout] = value; end
    def room_layout(value);        @data[:room_layout] = value; end
    def room_chance(value);        @data[:room_chance] = value; end
    def extra_connections(value);  @data[:extra_connections] = value; end

    def floor_patches(*args)
      @data[:floor_patches] = args.flatten
    end

    def floor_decorations(*args)
      @data[:floor_decorations] = args.flatten
    end

    def void_decorations(*args)
      @data[:void_decorations] = args.flatten
    end

    def build
      @data
    end
  end

  #=============================================================================
  # DungeonTileset - Used by Data/Scripts/Dungeons/All_DungeonTilesets.rb
  #=============================================================================
  class DungeonTileset
    @tilesets = {}

    class << self
      attr_accessor :tilesets

      def define(id, &block)
        builder = DungeonTilesetBuilder.new(id)
        yield(builder) if block_given?
        data = builder.build
        @tilesets[id] = data
        ScriptRegistry.register(:dungeon_tilesets, id, data)
        data
      end

      def get(id)
        @tilesets[id]
      end

      def all
        @tilesets
      end
    end
  end

  class DungeonTilesetBuilder
    def initialize(id)
      @data = { id: id, autotiles: [], tiles: [] }
    end

    def autotile(id, type)
      @data[:autotiles] << { id: id, type: type }
    end

    def tile(id, type)
      @data[:tiles] << { id: id, type: type }
    end

    def double_walls(value);            @data[:double_walls] = value; end
    def floor_patch_under_walls(value); @data[:floor_patch_under_walls] = value; end
    def snap_to_large_grid(value);      @data[:snap_to_large_grid] = value; end
    def large_void_tiles(value);        @data[:large_void_tiles] = value; end
    def large_wall_tiles(value);        @data[:large_wall_tiles] = value; end
    def thin_north_wall_offset(value);  @data[:thin_north_wall_offset] = value; end

    def build
      @data
    end
  end

  #=============================================================================
  # BattleTowerPokemon - Used by Data/Scripts/BattleFacility/*.rb
  #=============================================================================
  class BattleTowerPokemon
    @pokemon = {}

    class << self
      attr_accessor :pokemon

      def define(id, &block)
        builder = BattleTowerPokemonBuilder.new(id)
        yield(builder) if block_given?
        data = builder.build
        @pokemon[id] = data
        ScriptRegistry.register(:battle_tower_pokemon, id, data)
        data
      end

      def get(id)
        @pokemon[id]
      end

      def all
        @pokemon
      end
    end
  end

  class BattleTowerPokemonBuilder
    def initialize(id)
      @data = { id: id, evs: [], moves: [] }
    end

    def species(value); @data[:species] = value; end
    def item(value);    @data[:item] = value; end
    def nature(value);  @data[:nature] = value; end

    def evs(*args)
      @data[:evs] = args.flatten
    end

    def moves(*args)
      @data[:moves] = args.flatten
    end

    def build
      @data
    end
  end

  #=============================================================================
  # BattleTowerTrainer - Used by Data/Scripts/BattleFacility/*.rb
  #=============================================================================
  class BattleTowerTrainer
    @trainers = {}

    class << self
      attr_accessor :trainers

      def define(id, &block)
        builder = BattleTowerTrainerBuilder.new(id)
        yield(builder) if block_given?
        data = builder.build
        @trainers[id] = data
        ScriptRegistry.register(:battle_tower_trainers, id, data)
        data
      end

      def get(id)
        @trainers[id]
      end

      def all
        @trainers
      end
    end
  end

  class BattleTowerTrainerBuilder
    def initialize(id)
      @data = { id: id, pokemon_nos: [] }
    end

    def name(value);           @data[:name] = value.to_s; end
    def type(value);           @data[:type] = value; end
    def begin_speech(value);   @data[:begin_speech] = value.to_s; end
    def end_speech_win(value); @data[:end_speech_win] = value.to_s; end
    def end_speech_lose(value);@data[:end_speech_lose] = value.to_s; end

    def pokemon_nos(*args)
      @data[:pokemon_nos] = args.flatten
    end

    def build
      @data
    end
  end

  #=============================================================================
  # BattleFacilityList - Used by Data/Scripts/BattleFacility/All_FacilityLists.rb
  #=============================================================================
  class BattleFacilityList
    @lists = {}

    class << self
      attr_accessor :lists

      def define(id, &block)
        builder = BattleFacilityListBuilder.new(id)
        yield(builder) if block_given?
        data = builder.build
        @lists[id] ||= []
        @lists[id] << data
        ScriptRegistry.register(:battle_facility_lists, id, data)
        data
      end

      def get(id)
        @lists[id]
      end

      def all
        @lists
      end
    end
  end

  class BattleFacilityListBuilder
    def initialize(id)
      @data = { id: id, challenges: [] }
    end

    def trainers(value);  @data[:trainers] = value.to_s; end
    def pokemon(value);   @data[:pokemon] = value.to_s; end

    def challenges(*args)
      @data[:challenges] = args.flatten
    end

    def build
      @data
    end
  end

end
