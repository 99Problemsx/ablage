#=============================================================================
# Avalugg - ICE Type
#=============================================================================

GameData::Species.define :"AVALUGG" do |pkmn|
  pkmn.name "Avalugg"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 95, attack: 117, defense: 184,
                  sp_atk: 28, sp_def: 44, speed: 46
  pkmn.abilities :"OWNTEMPO", :"ICEBODY"
  pkmn.hidden_abilities :"STURDY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 180
  pkmn.catch_rate 55
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.0
  pkmn.weight 505.0
  pkmn.category "Iceberg"
  pkmn.pokedex_entry "Its ice-covered body is as hard as steel. Its cumbersome frame crushes anything that stands in its way."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster", :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"BODYSLAM"
    m.at 1, :"WIDEGUARD"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"HARDEN"
    m.at 1, :"TACKLE"
    m.at 1, :"POWDERSNOW"
    m.at 9, :"CURSE"
    m.at 12, :"ICYWIND"
    m.at 15, :"PROTECT"
    m.at 18, :"AVALANCHE"
    m.at 21, :"BITE"
    m.at 24, :"ICEFANG"
    m.at 27, :"IRONDEFENSE"
    m.at 30, :"RECOVER"
    m.at 33, :"CRUNCH"
    m.at 36, :"TAKEDOWN"
    m.at 41, :"BLIZZARD"
    m.at 46, :"DOUBLEEDGE"
    m.at 51, :"SKULLBASH"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HAIL", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TOXIC", :"WATERPULSE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"AVALUGG" do |m|
  m.back_sprite 6, 70
  m.front_sprite -1, 32
end

# Form 1 - Hisuian
GameData::Species.define :"AVALUGG_1" do |pkmn|
  pkmn.species :"AVALUGG"
  pkmn.form 1
  pkmn.name "Avalugg"
  pkmn.form_name "Hisuian"
  pkmn.types :"ICE", :"ROCK"
  pkmn.base_stats hp: 95, attack: 127, defense: 184,
                  sp_atk: 38, sp_def: 34, speed: 36
  pkmn.abilities :"STRONGJAW", :"ICEBODY"
  pkmn.hidden_abilities :"STURDY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 180
  pkmn.catch_rate 55
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.4
  pkmn.weight 262.4
  pkmn.category "Iceberg"
  pkmn.pokedex_entry "The armor of ice covering its lower jaw puts steel to shame and can shatter rocks with ease. This Pokémon barrels along steep mountain paths, cleaving through the deep snow."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster", :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"ROCKSLIDE"
    m.at 1, :"POWDERSNOW"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"WIDEGUARD"
    m.at 1, :"HARDEN"
    m.at 1, :"TACKLE"
    m.at 9, :"CURSE"
    m.at 12, :"ICYWIND"
    m.at 15, :"PROTECT"
    m.at 18, :"AVALANCHE"
    m.at 21, :"BITE"
    m.at 24, :"ICEFANG"
    m.at 27, :"IRONDEFENSE"
    m.at 30, :"RECOVER"
    m.at 33, :"CRUNCH"
    m.at 36, :"TAKEDOWN"
    m.at 41, :"BLIZZARD"
    m.at 46, :"DOUBLEEDGE"
    m.at 51, :"STONEEDGE"
    m.at 61, :"MOUNTAINGALE"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CHILLINGWATER", :"CRUNCH", :"CURSE", :"DIG", :"DOUBLEEDGE", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"GYROBALL", :"HARDPRESS", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICESPINNER", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"METEORBEAM", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SNOWSCAPE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"AVALUGG_1" do |m|
  m.back_sprite 0, 64
  m.front_sprite -6, 31
  m.shadow_sprite 0, 0, 3
end