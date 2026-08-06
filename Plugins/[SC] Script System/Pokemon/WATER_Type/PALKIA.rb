#=============================================================================
# Palkia - WATER Type
#=============================================================================

GameData::Species.define :"PALKIA" do |pkmn|
  pkmn.name "Palkia"
  pkmn.types :"WATER", :"DRAGON"
  pkmn.base_stats hp: 90, attack: 120, defense: 100,
                  sp_atk: 100, sp_def: 150, speed: 120
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 306
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 4.2
  pkmn.weight 336.0
  pkmn.category "Spatial"
  pkmn.pokedex_entry "It has the ability to distort space. It is described as a deity in Sinnoh-region mythology."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"SCARYFACE"
    m.at 6, :"WATERPULSE"
    m.at 10, :"ANCIENTPOWER"
    m.at 15, :"SLASH"
    m.at 19, :"POWERGEM"
    m.at 24, :"AQUATAIL"
    m.at 28, :"DRAGONCLAW"
    m.at 33, :"EARTHPOWER"
    m.at 37, :"AURASPHERE"
    m.at 42, :"AQUATAIL"
    m.at 46, :"SPACIALREND"
    m.at 50, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"AVALANCHE", :"BLIZZARD", :"BRICKBREAK", :"BRINE", :"BULKUP", :"BULLDOZE", :"CUT", :"DIVE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRAVITY", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"TWISTER", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"PALKIA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 4, 7
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Origin Forme
GameData::Species.define :"PALKIA_1" do |pkmn|
  pkmn.species :"PALKIA"
  pkmn.form 1
  pkmn.name "Palkia"
  pkmn.form_name "Origin Forme"
  pkmn.types :"WATER", :"DRAGON"
  pkmn.base_stats hp: 90, attack: 100, defense: 100,
                  sp_atk: 120, sp_def: 150, speed: 120
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 306
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 6.3
  pkmn.weight 659.0
  pkmn.category "Spatial"
  pkmn.pokedex_entry "It soars across the sky in a form that greatly resembles the creator of all things. Perhaps this imitation of appearance is Palkia's strategy for gaining Arceus's powers."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"SCARYFACE"
    m.at 6, :"WATERPULSE"
    m.at 10, :"ANCIENTPOWER"
    m.at 15, :"SLASH"
    m.at 19, :"POWERGEM"
    m.at 24, :"AQUATAIL"
    m.at 28, :"DRAGONCLAW"
    m.at 33, :"EARTHPOWER"
    m.at 37, :"AURASPHERE"
    m.at 42, :"AQUATAIL"
    m.at 46, :"SPACIALREND"
    m.at 50, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"AVALANCHE", :"BLIZZARD", :"BRICKBREAK", :"BRINE", :"BULKUP", :"BULLDOZE", :"CUT", :"DIVE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRAVITY", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"TWISTER", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"PALKIA_1" do |m|
  m.back_sprite 0, 41
  m.front_sprite 3, 4
  m.shadow_sprite 0, 0, 3
end