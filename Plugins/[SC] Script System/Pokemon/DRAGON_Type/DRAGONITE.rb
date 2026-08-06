#=============================================================================
# Dragonite - DRAGON Type
#=============================================================================

GameData::Species.define :"DRAGONITE" do |pkmn|
  pkmn.name "Dragonite"
  pkmn.types :"DRAGON", :"FLYING"
  pkmn.base_stats hp: 91, attack: 134, defense: 95,
                  sp_atk: 80, sp_def: 100, speed: 100
  pkmn.abilities :"INNERFOCUS"
  pkmn.hidden_abilities :"MULTISCALE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 2.2
  pkmn.weight 210.0
  pkmn.category "Dragon"
  pkmn.pokedex_entry "It can circle the globe in just 16 hours. It is a kindhearted Pokémon that leads lost and foundering ships in a storm to the safety of land."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"FIREPUNCH"
    m.at 1, :"THUNDERPUNCH"
    m.at 1, :"ROOST"
    m.at 1, :"WRAP"
    m.at 1, :"LEER"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"TWISTER"
    m.at 5, :"THUNDERWAVE"
    m.at 11, :"TWISTER"
    m.at 15, :"DRAGONRAGE"
    m.at 21, :"SLAM"
    m.at 25, :"AGILITY"
    m.at 33, :"DRAGONTAIL"
    m.at 39, :"AQUATAIL"
    m.at 47, :"DRAGONRUSH"
    m.at 53, :"SAFEGUARD"
    m.at 55, :"WINGATTACK"
    m.at 61, :"DRAGONDANCE"
    m.at 67, :"OUTRAGE"
    m.at 75, :"HYPERBEAM"
    m.at 81, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DEFOG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FLY", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"DRAGONITE" do |m|
  m.back_sprite 5, 0
  m.front_sprite 6, 6
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Dragonite
GameData::Species.define :"DRAGONITE_1" do |pkmn|
  pkmn.species :"DRAGONITE"
  pkmn.form 1
  pkmn.name "Dragonite"
  pkmn.form_name "Mega Dragonite"
  pkmn.types :"DRAGON", :"FLYING"
  pkmn.base_stats hp: 91, attack: 124, defense: 115,
                  sp_atk: 145, sp_def: 125, speed: 100
  pkmn.abilities :"INNERFOCUS"
  pkmn.hidden_abilities :"MULTISCALE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.7
  pkmn.weight 42.3
  pkmn.category "Dragon"
  pkmn.pokedex_entry "Mega Evolution has excessively powered up this Pokémon's feelings of kindness. It finishes off its opponents with mercy in its heart."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"FIREPUNCH"
    m.at 1, :"THUNDERPUNCH"
    m.at 1, :"ROOST"
    m.at 1, :"WRAP"
    m.at 1, :"LEER"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"TWISTER"
    m.at 5, :"THUNDERWAVE"
    m.at 11, :"TWISTER"
    m.at 15, :"DRAGONRAGE"
    m.at 21, :"SLAM"
    m.at 25, :"AGILITY"
    m.at 33, :"DRAGONTAIL"
    m.at 39, :"AQUATAIL"
    m.at 47, :"DRAGONRUSH"
    m.at 53, :"SAFEGUARD"
    m.at 55, :"WINGATTACK"
    m.at 61, :"DRAGONDANCE"
    m.at 67, :"OUTRAGE"
    m.at 75, :"HYPERBEAM"
    m.at 81, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DEFOG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FLY", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"DRAGONITE_1" do |m|
  m.back_sprite 5, 0
  m.front_sprite 6, 6
  m.shadow_sprite 0, 0, 3
end