#=============================================================================
# Greninja - WATER Type
#=============================================================================

GameData::Species.define :"GRENINJA" do |pkmn|
  pkmn.name "Greninja"
  pkmn.types :"WATER", :"DARK"
  pkmn.base_stats hp: 72, attack: 95, defense: 67,
                  sp_atk: 122, sp_def: 103, speed: 71
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 40.0
  pkmn.category "Ninja"
  pkmn.pokedex_entry "It appears and vanishes with a ninja's grace. It toys with its enemies using swift movements, while slicing them with throwing stars of sharpest water."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 0, :"WATERSHURIKEN"
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"HAZE"
    m.at 1, :"ROLEPLAY"
    m.at 1, :"MATBLOCK"
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"BUBBLE"
    m.at 1, :"QUICKATTACK"
    m.at 5, :"BUBBLE"
    m.at 8, :"QUICKATTACK"
    m.at 10, :"LICK"
    m.at 14, :"WATERPULSE"
    m.at 19, :"SMOKESCREEN"
    m.at 23, :"SHADOWSNEAK"
    m.at 28, :"SPIKES"
    m.at 33, :"FEINTATTACK"
    m.at 42, :"SUBSTITUTE"
    m.at 49, :"EXTRASENSORY"
    m.at 56, :"DOUBLETEAM"
    m.at 68, :"HYDROPUMP"
    m.at 70, :"HAZE"
    m.at 77, :"NIGHTSLASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRUTALSWING", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HIDDENPOWER", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GRENINJA" do |m|
  m.back_sprite -1, 30
  m.front_sprite 4, 11
end

# Form 3 - Mega Greninja
GameData::Species.define :"GRENINJA_3" do |pkmn|
  pkmn.species :"GRENINJA"
  pkmn.form 3
  pkmn.name "Greninja"
  pkmn.form_name "Mega Greninja"
  pkmn.types :"WATER", :"DARK"
  pkmn.base_stats hp: 72, attack: 125, defense: 77,
                  sp_atk: 133, sp_def: 81, speed: 142
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 40.0
  pkmn.category "Ninja"
  pkmn.pokedex_entry "This Pokémon spins a giant shuriken at high speed to make it float, then clings to it upside down to catch opponents unawares."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 0, :"WATERSHURIKEN"
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"HAZE"
    m.at 1, :"ROLEPLAY"
    m.at 1, :"MATBLOCK"
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"BUBBLE"
    m.at 1, :"QUICKATTACK"
    m.at 5, :"BUBBLE"
    m.at 8, :"QUICKATTACK"
    m.at 10, :"LICK"
    m.at 14, :"WATERPULSE"
    m.at 19, :"SMOKESCREEN"
    m.at 23, :"SHADOWSNEAK"
    m.at 28, :"SPIKES"
    m.at 33, :"FEINTATTACK"
    m.at 42, :"SUBSTITUTE"
    m.at 49, :"EXTRASENSORY"
    m.at 56, :"DOUBLETEAM"
    m.at 68, :"HYDROPUMP"
    m.at 70, :"HAZE"
    m.at 77, :"NIGHTSLASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRUTALSWING", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HIDDENPOWER", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GRENINJA_3" do |m|
  m.back_sprite -1, 30
  m.front_sprite 4, 11
end

# Form 2 - Unknown Form
GameData::Species.define :"GRENINJA_2" do |pkmn|
  pkmn.species :"GRENINJA"
  pkmn.form 2
  pkmn.name "Greninja"
  pkmn.types :"WATER", :"DARK"
  pkmn.base_stats hp: 72, attack: 95, defense: 67,
                  sp_atk: 122, sp_def: 103, speed: 71
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 40.0
  pkmn.category "Ninja"
  pkmn.pokedex_entry "It appears and vanishes with a ninja's grace. It toys with its enemies using swift movements, while slicing them with throwing stars of sharpest water."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 0, :"WATERSHURIKEN"
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"HAZE"
    m.at 1, :"ROLEPLAY"
    m.at 1, :"MATBLOCK"
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"BUBBLE"
    m.at 1, :"QUICKATTACK"
    m.at 5, :"BUBBLE"
    m.at 8, :"QUICKATTACK"
    m.at 10, :"LICK"
    m.at 14, :"WATERPULSE"
    m.at 19, :"SMOKESCREEN"
    m.at 23, :"SHADOWSNEAK"
    m.at 28, :"SPIKES"
    m.at 33, :"FEINTATTACK"
    m.at 42, :"SUBSTITUTE"
    m.at 49, :"EXTRASENSORY"
    m.at 56, :"DOUBLETEAM"
    m.at 68, :"HYDROPUMP"
    m.at 70, :"HAZE"
    m.at 77, :"NIGHTSLASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRUTALSWING", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HIDDENPOWER", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GRENINJA_2" do |m|
  m.back_sprite -1, 30
  m.front_sprite 4, 11
end