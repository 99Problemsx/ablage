#=============================================================================
# Vigoroth - NORMAL Type
#=============================================================================

GameData::Species.define :"VIGOROTH" do |pkmn|
  pkmn.name "Vigoroth"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 80, attack: 80, defense: 80,
                  sp_atk: 90, sp_def: 55, speed: 55
  pkmn.abilities :"VITALSPIRIT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 154
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.4
  pkmn.weight 46.5
  pkmn.category "Wild Monkey"
  pkmn.pokedex_entry "It can't keep still because its blood boils with energy. It runs through the fields and mountains all day to calm itself. If it doesn't, it can't sleep at night."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"ENCORE"
    m.at 1, :"UPROAR"
    m.at 7, :"ENCORE"
    m.at 13, :"UPROAR"
    m.at 19, :"FURYSWIPES"
    m.at 25, :"ENDURE"
    m.at 31, :"SLASH"
    m.at 37, :"COUNTER"
    m.at 43, :"CHIPAWAY"
    m.at 49, :"FOCUSPUNCH"
    m.at 55, :"REVERSAL"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"VIGOROTH" do |m|
  m.back_sprite 4, 0
  m.front_sprite -4, 9
  m.shadow_sprite 0, 0, 2
end