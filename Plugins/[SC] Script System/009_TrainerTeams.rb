#===============================================================================
# Shattered Crowns Script System - Trainer Teams
#===============================================================================
# Define reusable trainer teams that can be assigned to trainers.
#===============================================================================

module GameData
  #=============================================================================
  # TrainerTeam - Define reusable Pokemon teams
  #=============================================================================
  class TrainerTeam < ScriptBase
    @teams = {}
    
    class << self
      attr_accessor :teams
    end
    
    #---------------------------------------------------------------------------
    # Define a team
    # Usage: TrainerTeam.define :rival_early do |team| ... end
    #---------------------------------------------------------------------------
    def self.define(name, &block)
      builder = TeamBuilder.new(name)
      yield(builder) if block_given?
      @teams[name] = builder.to_data
      SCScripts.log("Registered trainer team: #{name}")
    end
    
    #---------------------------------------------------------------------------
    # Get a team by name
    #---------------------------------------------------------------------------
    def self.get(name)
      @teams[name]
    end
    
    #---------------------------------------------------------------------------
    # Get team's Pokemon array
    #---------------------------------------------------------------------------
    def self.pokemon(name)
      team = @teams[name]
      return [] unless team
      team[:pokemon]
    end
    
    #---------------------------------------------------------------------------
    # List all teams
    #---------------------------------------------------------------------------
    def self.all
      @teams
    end
  end
  
  #=============================================================================
  # TeamBuilder - Build a trainer team
  #=============================================================================
  class TeamBuilder
    attr_reader :name, :pokemon
    
    def initialize(name)
      @name = name
      @pokemon = []
      @items = []
      @description = ""
    end
    
    #---------------------------------------------------------------------------
    # Set description
    #---------------------------------------------------------------------------
    def description(text)
      @description = text
    end
    
    #---------------------------------------------------------------------------
    # Add Pokemon to team
    # Usage: add :PIKACHU, 25
    #        add :CHARIZARD, 50, moves: [:FLAMETHROWER, :FLY], item: :CHARCOITE_X
    #---------------------------------------------------------------------------
    def add(species, level, options = {})
      poke = {
        species: species,
        level: level,
        form: options[:form] || 0,
        gender: options[:gender],
        ability: options[:ability],
        ability_index: options[:ability_index],
        nature: options[:nature],
        item: options[:item],
        moves: options[:moves] || [],
        iv: options[:iv] || {},
        ev: options[:ev] || {},
        happiness: options[:happiness],
        shiny: options[:shiny] || false,
        shadow: options[:shadow] || false,
        ball: options[:ball],
        nickname: options[:nickname],
        super_shiny: options[:super_shiny] || false
      }
      @pokemon << poke
    end
    
    #---------------------------------------------------------------------------
    # Quick add with just species and level
    #---------------------------------------------------------------------------
    def pokemon(species, level)
      add(species, level)
    end
    
    #---------------------------------------------------------------------------
    # Add ace Pokemon (higher IVs, specific nature)
    #---------------------------------------------------------------------------
    def ace(species, level, options = {})
      options[:iv] ||= { HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 }
      add(species, level, options)
    end
    
    def to_data
      {
        name: @name,
        description: @description,
        pokemon: @pokemon,
        items: @items
      }
    end
  end
end

#===============================================================================
# Example Usage
#===============================================================================
# Define teams:
#
# GameData::TrainerTeam.define :rival_battle_1 do |team|
#   team.description "Rival's first battle team"
#   team.add :PIDGEY, 5
#   team.add :RATTATA, 4
# end
#
# Use in trainer:
#
# class Route101Trainers < GameData::MapTrainer
#   register 5, TT::RIVAL, 'Gary' do |t|
#     t.intro = "Let's battle!"
#     t.party = GameData::TrainerTeam.pokemon(:rival_battle_1)
#   end
# end

#===============================================================================
# LASS TEAMS
#===============================================================================

GameData::TrainerTeam.define :lass_early_1 do |team|
  team.description "Early game Lass - cute Pokemon focus"
  team.add :JIGGLYPUFF, 8
end

GameData::TrainerTeam.define :lass_early_2 do |team|
  team.description "Early game Lass - Normal types"
  team.add :RATTATA, 7
  team.add :EEVEE, 9
end

GameData::TrainerTeam.define :lass_early_3 do |team|
  team.description "Early game Lass - Fairy theme"
  team.add :CLEFAIRY, 10
  team.add :IGGLYBUFF, 8
end

GameData::TrainerTeam.define :lass_mid_1 do |team|
  team.description "Mid game Lass - Evolved cuties"
  team.add :WIGGLYTUFF, 25
  team.add :CLEFABLE, 27
end

GameData::TrainerTeam.define :lass_mid_2 do |team|
  team.description "Mid game Lass - Mixed cute"
  team.add :DELCATTY, 24
  team.add :SYLVEON, 26
  team.add :AUDINO, 25
end

GameData::TrainerTeam.define :lass_late_1 do |team|
  team.description "Late game Lass - Strong fairies"
  team.add :TOGEKISS, 45
  team.add :FLORGES, 47
  team.ace :GARDEVOIR, 48, item: :SITRUS_BERRY
end

#===============================================================================
# HIKER TEAMS
#===============================================================================

GameData::TrainerTeam.define :hiker_early_1 do |team|
  team.description "Early game Hiker - Rock basics"
  team.add :GEODUDE, 10
  team.add :GEODUDE, 10
end

GameData::TrainerTeam.define :hiker_early_2 do |team|
  team.description "Early game Hiker - Cave dwellers"
  team.add :GEODUDE, 11
  team.add :MACHOP, 12
end

GameData::TrainerTeam.define :hiker_early_3 do |team|
  team.description "Early game Hiker - Ground theme"
  team.add :SANDSHREW, 10
  team.add :DIGLETT, 9
  team.add :GEODUDE, 11
end

GameData::TrainerTeam.define :hiker_mid_1 do |team|
  team.description "Mid game Hiker - Evolved rocks"
  team.add :GRAVELER, 28
  team.add :ONIX, 30
end

GameData::TrainerTeam.define :hiker_mid_2 do |team|
  team.description "Mid game Hiker - Fighting rocks"
  team.add :MACHOKE, 27
  team.add :GRAVELER, 28
  team.add :RHYHORN, 29
end

GameData::TrainerTeam.define :hiker_late_1 do |team|
  team.description "Late game Hiker - Mountain beasts"
  team.add :GOLEM, 48
  team.add :STEELIX, 50
  team.ace :RHYPERIOR, 52, item: :HARD_STONE
end

#===============================================================================
# TEENAGER / YOUNGSTER TEAMS  
#===============================================================================

GameData::TrainerTeam.define :teenager_early_1 do |team|
  team.description "Early game Teenager - Basic starter"
  team.add :RATTATA, 6
end

GameData::TrainerTeam.define :teenager_early_2 do |team|
  team.description "Early game Teenager - Bird lover"
  team.add :PIDGEY, 7
  team.add :SPEAROW, 7
end

GameData::TrainerTeam.define :teenager_early_3 do |team|
  team.description "Early game Teenager - Common mix"
  team.add :RATTATA, 8
  team.add :NIDORAN_M, 9
  team.add :PIDGEY, 8
end

GameData::TrainerTeam.define :teenager_mid_1 do |team|
  team.description "Mid game Teenager - Evolved basics"
  team.add :RATICATE, 26
  team.add :PIDGEOTTO, 27
end

GameData::TrainerTeam.define :teenager_mid_2 do |team|
  team.description "Mid game Teenager - Diverse team"
  team.add :NIDORINO, 28
  team.add :FEAROW, 27
  team.add :PIKACHU, 29
end

GameData::TrainerTeam.define :teenager_late_1 do |team|
  team.description "Late game Teenager - Fully evolved"
  team.add :NIDOKING, 46
  team.add :PIDGEOT, 47
  team.ace :ARCANINE, 49, item: :CHARCOAL
end

#===============================================================================
# BUG CATCHER TEAMS
#===============================================================================

GameData::TrainerTeam.define :bugcatcher_early_1 do |team|
  team.description "Early game Bug Catcher - Caterpie only"
  team.add :CATERPIE, 5
  team.add :CATERPIE, 5
  team.add :CATERPIE, 5
end

GameData::TrainerTeam.define :bugcatcher_early_2 do |team|
  team.description "Early game Bug Catcher - Worms"
  team.add :CATERPIE, 7
  team.add :WEEDLE, 7
  team.add :METAPOD, 8
end

GameData::TrainerTeam.define :bugcatcher_early_3 do |team|
  team.description "Early game Bug Catcher - First evolutions"
  team.add :METAPOD, 9
  team.add :KAKUNA, 9
  team.add :BUTTERFREE, 11
end

GameData::TrainerTeam.define :bugcatcher_mid_1 do |team|
  team.description "Mid game Bug Catcher - Flying bugs"
  team.add :BUTTERFREE, 24
  team.add :BEEDRILL, 25
  team.add :VENOMOTH, 26
end

GameData::TrainerTeam.define :bugcatcher_mid_2 do |team|
  team.description "Mid game Bug Catcher - Diverse bugs"
  team.add :SCYTHER, 28
  team.add :PINSIR, 27
  team.add :HERACROSS, 29
end

GameData::TrainerTeam.define :bugcatcher_late_1 do |team|
  team.description "Late game Bug Catcher - Pro collector"
  team.add :SCIZOR, 48, item: :METAL_COAT
  team.add :HERACROSS, 47
  team.ace :VOLCARONA, 50, item: :CHARCOAL
end

#===============================================================================
# SPECIFIC NAMED TRAINERS - LASS
#===============================================================================

GameData::TrainerTeam.define :lass_marie do |team|
  team.description "Marie - Sweet and kind, loves pink Pokemon"
  team.add :JIGGLYPUFF, 9, nickname: "Pinky"
  team.add :CLEFAIRY, 10, nickname: "Starshine"
end

GameData::TrainerTeam.define :lass_sally do |team|
  team.description "Sally - Competitive spirit, trains hard"
  team.add :NIDORAN_F, 11
  team.add :MEOWTH, 12
  team.add :EEVEE, 13, nickname: "Fluffy"
end

GameData::TrainerTeam.define :lass_amy do |team|
  team.description "Amy - Nature lover, prefers Grass types"
  team.add :ODDISH, 14
  team.add :BELLSPROUT, 15
  team.add :BULBASAUR, 16, nickname: "Leafy"
end

GameData::TrainerTeam.define :lass_bella do |team|
  team.description "Bella - Fashion conscious, only beautiful Pokemon"
  team.add :VULPIX, 18
  team.add :PONYTA, 19, nickname: "Blaze"
  team.ace :NINETALES, 22, item: :CHARCOAL
end

GameData::TrainerTeam.define :lass_emma do |team|
  team.description "Emma - Shy but talented coordinator"
  team.add :SKITTY, 15
  team.add :ROSELIA, 16
  team.add :MILOTIC, 20, nickname: "Graceful"
end

GameData::TrainerTeam.define :lass_lily do |team|
  team.description "Lily - Flower enthusiast from Floaroma"
  team.add :CHERUBI, 12
  team.add :ROSELIA, 14
  team.add :LILLIGANT, 17
end

#===============================================================================
# SPECIFIC NAMED TRAINERS - HIKER
#===============================================================================

GameData::TrainerTeam.define :hiker_bruno do |team|
  team.description "Bruno - Veteran mountain guide"
  team.add :GEODUDE, 12
  team.add :MACHOP, 13, nickname: "Rocky"
  team.add :ONIX, 15
end

GameData::TrainerTeam.define :hiker_cliff do |team|
  team.description "Cliff - Loves fossil Pokemon"
  team.add :GEODUDE, 14
  team.add :KABUTO, 15
  team.add :OMANYTE, 15
end

GameData::TrainerTeam.define :hiker_marco do |team|
  team.description "Marco - Italian explorer, seeks adventure"
  team.add :SANDSHREW, 16
  team.add :CUBONE, 17, nickname: "Bones"
  team.add :RHYHORN, 18
end

GameData::TrainerTeam.define :hiker_rex do |team|
  team.description "Rex - Former miner, knows every cave"
  team.add :GRAVELER, 28
  team.add :GOLEM, 30, nickname: "Boulder"
  team.ace :TYRANITAR, 35, item: :HARD_STONE
end

GameData::TrainerTeam.define :hiker_stone do |team|
  team.description "Stone - Silent and strong, few words"
  team.add :NOSEPASS, 20
  team.add :BOLDORE, 22
  team.add :GIGALITH, 25
end

GameData::TrainerTeam.define :hiker_grant do |team|
  team.description "Grant - Young and enthusiastic rock collector"
  team.add :ROGGENROLA, 13
  team.add :DWEBBLE, 14
  team.add :ARCHEN, 16
end

#===============================================================================
# SPECIFIC NAMED TRAINERS - YOUNGSTER/TEENAGER
#===============================================================================

GameData::TrainerTeam.define :youngster_joey do |team|
  team.description "Joey - Believes his Rattata is in the top percentage"
  team.ace :RATTATA, 10, nickname: "TopPercent", nature: :JOLLY
end

GameData::TrainerTeam.define :youngster_tommy do |team|
  team.description "Tommy - Energetic kid who just started his journey"
  team.add :PIDGEY, 8
  team.add :RATTATA, 9
  team.add :SENTRET, 8
end

GameData::TrainerTeam.define :youngster_danny do |team|
  team.description "Danny - Wants to be a Pokemon Master"
  team.add :NIDORAN_M, 12
  team.add :PIKACHU, 14, nickname: "Sparky"
  team.add :CHARMANDER, 15
end

GameData::TrainerTeam.define :youngster_mick do |team|
  team.description "Mick - Troublemaker with attitude"
  team.add :RATTATA, 15
  team.add :RATICATE, 18, nickname: "Chomper"
  team.add :EKANS, 16
end

GameData::TrainerTeam.define :youngster_ben do |team|
  team.description "Ben - Bird enthusiast, dreams of flying"
  team.add :PIDGEY, 11
  team.add :SPEAROW, 12
  team.add :TAILLOW, 13
  team.add :STARLY, 12
end

GameData::TrainerTeam.define :youngster_alex do |team|
  team.description "Alex - Quiet kid with hidden potential"
  team.add :ABRA, 14
  team.add :RALTS, 15
  team.ace :KADABRA, 18
end

#===============================================================================
# SPECIFIC NAMED TRAINERS - BUG CATCHER
#===============================================================================

GameData::TrainerTeam.define :bugcatcher_sammy do |team|
  team.description "Sammy - Just caught his first bug"
  team.add :CATERPIE, 6, nickname: "Wormy"
  team.add :WEEDLE, 6
end

GameData::TrainerTeam.define :bugcatcher_wade do |team|
  team.description "Wade - Bug catching champion of his town"
  team.add :METAPOD, 10
  team.add :KAKUNA, 10
  team.add :BUTTERFREE, 12, nickname: "Flutter"
end

GameData::TrainerTeam.define :bugcatcher_doug do |team|
  team.description "Doug - Collector of rare bugs"
  team.add :SCYTHER, 20
  team.add :PINSIR, 21
  team.add :HERACROSS, 22, nickname: "Hercules"
end

GameData::TrainerTeam.define :bugcatcher_collin do |team|
  team.description "Collin - Studies bug Pokemon behavior"
  team.add :BUTTERFREE, 18
  team.add :BEEDRILL, 19
  team.add :VENOMOTH, 20
  team.add :PARASECT, 18
end

GameData::TrainerTeam.define :bugcatcher_rick do |team|
  team.description "Rick - Trains with his bugs daily"
  team.add :LEDIAN, 24
  team.add :ARIADOS, 25
  team.add :YANMA, 23
end

GameData::TrainerTeam.define :bugcatcher_greg do |team|
  team.description "Greg - Dreams of being a Bug-type Gym Leader"
  team.add :SCIZOR, 35, item: :METAL_COAT
  team.add :HERACROSS, 34
  team.ace :VOLCARONA, 38, nickname: "Inferno"
end

