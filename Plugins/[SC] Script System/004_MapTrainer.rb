#===============================================================================
# Shattered Crowns Script System - MapTrainer
#===============================================================================
# DSL for defining trainers on maps with event integration.
#===============================================================================

module GameData
  class MapTrainer
    # Storage for trainer definitions
    @trainers = {}
    
    class << self
      attr_accessor :map_id, :trainers, :current_map_id
    end
    
    #---------------------------------------------------------------------------
    # Register a trainer
    # Usage: register event_id, :TRAINER_TYPE, 'Name' do |trainer| ... end
    #---------------------------------------------------------------------------
    def self.register(event_id, trainer_type, name, version = 0, &block)
      trainer = TrainerBuilder.new(trainer_type, name, version)
      yield(trainer) if block_given?
      
      @trainers[event_id] = trainer.to_data
      register_to_game_data(event_id)
    end
    
    #---------------------------------------------------------------------------
    # Called from RPG Maker event to trigger trainer notice
    # Usage in event: GameData::MapTrainer.notice(self)
    #---------------------------------------------------------------------------
    def self.notice(event)
      map_id = $game_map.map_id
      event_id = event.is_a?(Integer) ? event : event.id
      
      trainer_data = ScriptRegistry.get_trainer(map_id, event_id)
      
      if trainer_data.nil?
        SCScripts.log("No trainer registered for Map #{map_id}, Event #{event_id}")
        return false
      end
      
      # Extract trainer info
      trainer_type = trainer_data[:trainer_type]
      name = trainer_data[:name]
      version = trainer_data[:version] || 0
      
      # Show intro text if defined
      if trainer_data[:intro] && !trainer_data[:intro].empty?
        pbMessage(trainer_data[:intro])
      end
      
      # Start the trainer battle
      result = pbTrainerBattle(trainer_type, name, nil, false, version)
      
      # Handle lose text (shown automatically by battle system)
      
      result
    end
    
    #---------------------------------------------------------------------------
    # Register trainer to the game system
    #---------------------------------------------------------------------------
    def self.register_to_game_data(event_id)
      return unless @map_id && @trainers[event_id]
      ScriptRegistry.register_trainer(@map_id, event_id, @trainers[event_id])
    end
    
    #---------------------------------------------------------------------------
    # Inherit and set map ID
    #---------------------------------------------------------------------------
    def self.inherited(subclass)
      subclass.map_id = current_map_id if current_map_id
      subclass.trainers = {}
    end
  end
  
  #=============================================================================
  # Builder class for trainers (used in DSL blocks)
  #=============================================================================
  class TrainerBuilder
    attr_accessor :intro, :items
    attr_reader :trainer_type, :name, :version
    
    def initialize(trainer_type, name, version = 0)
      @trainer_type = trainer_type
      @name = name
      @version = version
      @intro = nil
      @lose_text = nil
      @items = []
      @party = []
    end
    
    # Defensive getter - ensures party is never nil
    def party
      @party ||= []
    end
    
    def party=(val)
      @party = val
    end
    
    # lose= and lose_text= both set the lose text
    def lose=(text)
      @lose_text = text
    end
    
    def lose_text=(text)
      @lose_text = text
    end
    
    def lose_text
      @lose_text
    end
    
    #---------------------------------------------------------------------------
    # Convert to data hash for storage
    #---------------------------------------------------------------------------
    def to_data
      {
        trainer_type: @trainer_type,
        name: @name,
        version: @version,
        intro: @intro,
        lose_text: @lose_text,
        items: @items.dup,
        party: @party.map { |p| p.is_a?(TrainerPokemon) ? p.to_data : p }
      }
    end
  end
  
  #=============================================================================
  # Pokemon class for trainer parties
  #=============================================================================
  class TrainerPokemon
    attr_accessor :species, :level, :moves, :item, :ability_index
    attr_accessor :gender, :nature, :ivs, :evs, :happiness, :shiny, :ball
    attr_accessor :form, :nickname, :shadow
    
    def initialize(species, level = nil)
      @species = species
      @level = level
      @moves = []
      @item = nil
      @ability_index = nil
      @gender = nil
      @nature = nil
      @ivs = nil
      @evs = nil
      @happiness = nil
      @shiny = false
      @ball = nil
      @form = 0
      @nickname = nil
      @shadow = false
    end
    
    def self.new(species, level = nil)
      pokemon = allocate
      pokemon.send(:initialize, species, level)
      pokemon
    end
    
    def to_data
      {
        species: @species,
        level: @level,
        moves: @moves,
        item: @item,
        ability_index: @ability_index,
        gender: @gender,
        nature: @nature,
        ivs: @ivs,
        evs: @evs,
        happiness: @happiness,
        shiny: @shiny,
        ball: @ball,
        form: @form,
        nickname: @nickname,
        shadow: @shadow
      }.compact
    end
  end
end
