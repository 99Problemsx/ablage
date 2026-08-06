#=============================================================================
# Heatran - FIRE Type
#=============================================================================

GameData::Species.define :"HEATRAN" do |pkmn|
  pkmn.name "Heatran"
  pkmn.types :"FIRE", :"STEEL"
  pkmn.base_stats hp: 91, attack: 90, defense: 106,
                  sp_atk: 77, sp_def: 130, speed: 106
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 2570
  pkmn.height 1.7
  pkmn.weight 430.0
  pkmn.category "Lava Dome"
  pkmn.pokedex_entry "It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ANCIENTPOWER"
    m.at 9, :"LEER"
    m.at 17, :"FIREFANG"
    m.at 25, :"METALSOUND"
    m.at 33, :"CRUNCH"
    m.at 41, :"SCARYFACE"
    m.at 49, :"LAVAPLUME"
    m.at 57, :"FIRESPIN"
    m.at 65, :"IRONHEAD"
    m.at 73, :"EARTHPOWER"
    m.at 81, :"HEATWAVE"
    m.at 88, :"STONEEDGE"
    m.at 96, :"MAGMASTORM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TORMENT", :"TOXIC", :"UPROAR", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"HEATRAN" do |m|
  m.back_sprite 2, 0
  m.front_sprite -1, 20
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Heatran
GameData::Species.define :"HEATRAN_1" do |pkmn|
  pkmn.species :"HEATRAN"
  pkmn.form 1
  pkmn.name "Heatran"
  pkmn.form_name "Mega Heatran"
  pkmn.types :"FIRE", :"STEEL"
  pkmn.base_stats hp: 91, attack: 120, defense: 106,
                  sp_atk: 67, sp_def: 175, speed: 141
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 2570
  pkmn.height 2.8
  pkmn.weight 570.0
  pkmn.category "Lava Dome"
  pkmn.pokedex_entry "It's said that if it goes all out, it can heat its body up to temperatures over 1.8 million degrees Fahrenheit. This heat keeps enemies at bay."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ANCIENTPOWER"
    m.at 9, :"LEER"
    m.at 17, :"FIREFANG"
    m.at 25, :"METALSOUND"
    m.at 33, :"CRUNCH"
    m.at 41, :"SCARYFACE"
    m.at 49, :"LAVAPLUME"
    m.at 57, :"FIRESPIN"
    m.at 65, :"IRONHEAD"
    m.at 73, :"EARTHPOWER"
    m.at 81, :"HEATWAVE"
    m.at 88, :"STONEEDGE"
    m.at 96, :"MAGMASTORM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TORMENT", :"TOXIC", :"UPROAR", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"HEATRAN_1" do |m|
  m.back_sprite 2, 0
  m.front_sprite -1, 20
  m.shadow_sprite 0, 0, 3
end