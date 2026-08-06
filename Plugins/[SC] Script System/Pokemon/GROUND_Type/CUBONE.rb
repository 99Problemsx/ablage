#=============================================================================
# Cubone - GROUND Type
#=============================================================================

GameData::Species.define :"CUBONE" do |pkmn|
  pkmn.name "Cubone"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 50, attack: 50, defense: 95,
                  sp_atk: 35, sp_def: 40, speed: 50
  pkmn.abilities :"ROCKHEAD", :"LIGHTNINGROD"
  pkmn.hidden_abilities :"BATTLEARMOR"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 64
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 6.5
  pkmn.category "Lonely"
  pkmn.pokedex_entry "It pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull it wears are from its tears."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 3, :"TAILWHIP"
    m.at 7, :"BONECLUB"
    m.at 11, :"HEADBUTT"
    m.at 13, :"LEER"
    m.at 17, :"FOCUSENERGY"
    m.at 21, :"BONEMERANG"
    m.at 23, :"RAGE"
    m.at 27, :"FALSESWIPE"
    m.at 31, :"THRASH"
    m.at 33, :"FLING"
    m.at 37, :"BONERUSH"
    m.at 41, :"ENDEAVOR"
    m.at 43, :"DOUBLEEDGE"
    m.at 47, :"RETALIATE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"ANCIENTPOWER", :"BELLYDRUM", :"CHIPAWAY", :"DETECT", :"DOUBLEKICK", :"ENDURE", :"IRONHEAD", :"PERISHSONG", :"SCREECH", :"SKULLBASH"
end

GameData::SpeciesMetrics.define :"CUBONE" do |m|
  m.back_sprite 2, 0
  m.front_sprite -2, 22
  m.shadow_sprite 0, 0, 2
end