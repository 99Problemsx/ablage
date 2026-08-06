#===============================================================================
# Shattered Crowns Script System - Trainer Types
#===============================================================================
# Named constants for trainer types used in battles and events.
#===============================================================================

module SCScripts
  #=============================================================================
  # Trainer Types - Named constants for :TRAINERTYPE symbols
  #=============================================================================
  module TrainerTypes
    #---------------------------------------------------------------------------
    # Generic Trainers
    #---------------------------------------------------------------------------
    YOUNGSTER     = :YOUNGSTER
    LASS          = :LASS
    BUG_CATCHER   = :BUGCATCHER
    HIKER         = :HIKER
    FISHERMAN     = :FISHERMAN
    SWIMMER_M     = :SWIMMER_M
    SWIMMER_F     = :SWIMMER_F
    CAMPER        = :CAMPER
    PICNICKER     = :PICNICKER
    BEAUTY        = :BEAUTY
    COOLTRAINER_M = :COOLTRAINER_M
    COOLTRAINER_F = :COOLTRAINER_F
    POKEMANIAC    = :POKEMANIAC
    PSYCHIC_M     = :PSYCHIC_M
    PSYCHIC_F     = :PSYCHIC_F
    GENTLEMAN     = :GENTLEMAN
    LADY          = :LADY
    SCIENTIST     = :SCIENTIST
    BLACKBELT     = :BLACKBELT
    BIRDKEEPER    = :BIRDKEEPER
    ACE_TRAINER_M = :ACETRAINER_M
    ACE_TRAINER_F = :ACETRAINER_F
    
    #---------------------------------------------------------------------------
    # Team/Villain Trainers
    #---------------------------------------------------------------------------
    ROCKET_GRUNT_M = :TEAMROCKET_M
    ROCKET_GRUNT_F = :TEAMROCKET_F
    ROCKET_ADMIN   = :TEAMROCKET_ADMIN
    
    #---------------------------------------------------------------------------
    # Gym Leaders
    #---------------------------------------------------------------------------
    GYM_LEADER     = :LEADER_
    LEADER_BROCK   = :LEADER_Brock
    LEADER_MISTY   = :LEADER_Misty
    LEADER_SURGE   = :LEADER_Surge
    LEADER_ERIKA   = :LEADER_Erika
    LEADER_KOGA    = :LEADER_Koga
    LEADER_SABRINA = :LEADER_Sabrina
    LEADER_BLAINE  = :LEADER_Blaine
    LEADER_GIOVANNI = :LEADER_Giovanni
    
    #---------------------------------------------------------------------------
    # Elite Four & Champion
    #---------------------------------------------------------------------------
    ELITE_LORELEI  = :ELITEFOUR_Lorelei
    ELITE_BRUNO    = :ELITEFOUR_Bruno
    ELITE_AGATHA   = :ELITEFOUR_Agatha
    ELITE_LANCE    = :ELITEFOUR_Lance
    CHAMPION       = :CHAMPION
    
    #---------------------------------------------------------------------------
    # Special NPCs
    #---------------------------------------------------------------------------
    RIVAL          = :RIVAL1
    RIVAL_ALT      = :RIVAL2
    POKEMON_TRAINER_RED  = :POKEMONTRAINER_Red
    POKEMON_TRAINER_LEAF = :POKEMONTRAINER_Leaf
    PROFESSOR_OAK  = :PROFESSOR
  end
end

#===============================================================================
# Short alias
#===============================================================================
TT = SCScripts::TrainerTypes

#===============================================================================
# Usage Examples:
#===============================================================================
# In trainer definitions:
#   register 5, TT::YOUNGSTER, 'Joey' do |t| ... end
#   register 6, TT::LASS, 'Marie' do |t| ... end
#   register 10, TT::LEADER_BROCK, 'Brock' do |t| ... end
#
# In cutscene battles:
#   scene.trainer_battle TT::RIVAL, 'Gary', 0
