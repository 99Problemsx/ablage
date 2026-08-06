#=============================================================================
# Marowak - GROUND Type
#=============================================================================

GameData::Species.define :"MAROWAK" do |pkmn|
  pkmn.name "Marowak"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 60, attack: 80, defense: 110,
                  sp_atk: 45, sp_def: 50, speed: 80
  pkmn.abilities :"ROCKHEAD", :"LIGHTNINGROD"
  pkmn.hidden_abilities :"BATTLEARMOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 149
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 45.0
  pkmn.category "Bone Keeper"
  pkmn.pokedex_entry "A Marowak is the evolved form of a Cubone that has grown tough by overcoming the grief of losing its mother. Its tempered and hardened spirit is not easily broken."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TAILWHIP"
    m.at 1, :"BONECLUB"
    m.at 1, :"HEADBUTT"
    m.at 3, :"TAILWHIP"
    m.at 7, :"BONECLUB"
    m.at 11, :"HEADBUTT"
    m.at 13, :"LEER"
    m.at 17, :"FOCUSENERGY"
    m.at 21, :"BONEMERANG"
    m.at 23, :"RAGE"
    m.at 27, :"FALSESWIPE"
    m.at 33, :"THRASH"
    m.at 37, :"FLING"
    m.at 43, :"BONERUSH"
    m.at 49, :"ENDEAVOR"
    m.at 53, :"DOUBLEEDGE"
    m.at 59, :"RETALIATE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"MAROWAK" do |m|
  m.back_sprite -2, 0
  m.front_sprite -8, 19
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"MAROWAK_1" do |pkmn|
  pkmn.species :"MAROWAK"
  pkmn.form 1
  pkmn.name "Marowak"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 60, attack: 80, defense: 110,
                  sp_atk: 45, sp_def: 50, speed: 80
  pkmn.abilities :"ROCKHEAD", :"LIGHTNINGROD"
  pkmn.hidden_abilities :"BATTLEARMOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 149
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 45.0
  pkmn.category "Bone Keeper"
  pkmn.pokedex_entry "A Marowak is the evolved form of a Cubone that has grown tough by overcoming the grief of losing its mother. Its tempered and hardened spirit is not easily broken."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TAILWHIP"
    m.at 1, :"BONECLUB"
    m.at 1, :"HEADBUTT"
    m.at 3, :"TAILWHIP"
    m.at 7, :"BONECLUB"
    m.at 11, :"HEADBUTT"
    m.at 13, :"LEER"
    m.at 17, :"FOCUSENERGY"
    m.at 21, :"BONEMERANG"
    m.at 23, :"RAGE"
    m.at 27, :"FALSESWIPE"
    m.at 33, :"THRASH"
    m.at 37, :"FLING"
    m.at 43, :"BONERUSH"
    m.at 49, :"ENDEAVOR"
    m.at 53, :"DOUBLEEDGE"
    m.at 59, :"RETALIATE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"MAROWAK_1" do |m|
  m.back_sprite -2, 0
  m.front_sprite -8, 19
  m.shadow_sprite 0, 0, 2
end