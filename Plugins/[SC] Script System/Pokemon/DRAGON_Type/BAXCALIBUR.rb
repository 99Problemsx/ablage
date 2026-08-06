#=============================================================================
# Baxcalibur - DRAGON Type
#=============================================================================

GameData::Species.define :"BAXCALIBUR" do |pkmn|
  pkmn.name "Baxcalibur"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 115, attack: 145, defense: 92,
                  sp_atk: 87, sp_def: 75, speed: 86
  pkmn.abilities :"THERMALEXCHANGE"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 10
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 2.1
  pkmn.weight 210.0
  pkmn.category "Ice Dragon"
  pkmn.pokedex_entry "This Pokémon blasts cryogenic air out from its mouth. This air can instantly freeze even liquid-hot lava."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Dragon", :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"GLAIVERUSH"
    m.at 1, :"DRAGONTAIL"
    m.at 1, :"BREAKINGSWIPE"
    m.at 1, :"SNOWSCAPE"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"ICESHARD"
    m.at 6, :"ICYWIND"
    m.at 12, :"DRAGONBREATH"
    m.at 18, :"FOCUSENERGY"
    m.at 24, :"BITE"
    m.at 29, :"ICEFANG"
    m.at 35, :"DRAGONCLAW"
    m.at 42, :"TAKEDOWN"
    m.at 48, :"ICEBEAM"
    m.at 55, :"CRUNCH"
    m.at 62, :"ICICLECRASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AVALANCHE", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"GIGAIMPACT", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICICLESPEAR", :"ICYWIND", :"IRONHEAD", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SCALESHOT", :"SCARYFACE", :"SLEEPTALK", :"SNOWSCAPE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SWORDSDANCE", :"TAKEDOWN", :"THUNDERFANG", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BAXCALIBUR" do |m|
  m.back_sprite 0, 54
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Mega Baxcalibur
GameData::Species.define :"BAXCALIBUR_1" do |pkmn|
  pkmn.species :"BAXCALIBUR"
  pkmn.form 1
  pkmn.name "Baxcalibur"
  pkmn.form_name "Mega Baxcalibur"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 115, attack: 175, defense: 117,
                  sp_atk: 87, sp_def: 105, speed: 101
  pkmn.abilities :"THERMALEXCHANGE"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 10
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 2.1
  pkmn.weight 315.0
  pkmn.category "Ice Dragon"
  pkmn.pokedex_entry "Baxcalibur's dorsal blade has grown even more massive thanks to Mega Evolution. This Pokémon fires beams from the hilt at its solar plexus."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Dragon", :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"GLAIVERUSH"
    m.at 1, :"DRAGONTAIL"
    m.at 1, :"BREAKINGSWIPE"
    m.at 1, :"SNOWSCAPE"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"ICESHARD"
    m.at 6, :"ICYWIND"
    m.at 12, :"DRAGONBREATH"
    m.at 18, :"FOCUSENERGY"
    m.at 24, :"BITE"
    m.at 29, :"ICEFANG"
    m.at 35, :"DRAGONCLAW"
    m.at 42, :"TAKEDOWN"
    m.at 48, :"ICEBEAM"
    m.at 55, :"CRUNCH"
    m.at 62, :"ICICLECRASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AVALANCHE", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"GIGAIMPACT", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICICLESPEAR", :"ICYWIND", :"IRONHEAD", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SCALESHOT", :"SCARYFACE", :"SLEEPTALK", :"SNOWSCAPE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SWORDSDANCE", :"TAKEDOWN", :"THUNDERFANG", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BAXCALIBUR_1" do |m|
  m.back_sprite 0, 54
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 2
end