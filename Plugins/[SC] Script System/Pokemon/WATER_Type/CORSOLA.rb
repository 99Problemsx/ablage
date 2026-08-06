#=============================================================================
# Corsola - WATER Type
#=============================================================================

GameData::Species.define :"CORSOLA" do |pkmn|
  pkmn.name "Corsola"
  pkmn.types :"WATER", :"ROCK"
  pkmn.base_stats hp: 55, attack: 55, defense: 85,
                  sp_atk: 35, sp_def: 65, speed: 85
  pkmn.abilities :"HUSTLE", :"NATURALCURE"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 133
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 5.0
  pkmn.category "Coral"
  pkmn.pokedex_entry "Corsola live in warm southern seas. If the sea becomes polluted, the beautiful coral stalks become discolored and crumble away in tatters."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"HARDEN"
    m.at 8, :"BUBBLE"
    m.at 10, :"RECOVER"
    m.at 13, :"REFRESH"
    m.at 17, :"BUBBLEBEAM"
    m.at 20, :"ANCIENTPOWER"
    m.at 23, :"LUCKYCHANT"
    m.at 27, :"SPIKECANNON"
    m.at 29, :"IRONDEFENSE"
    m.at 31, :"ROCKBLAST"
    m.at 35, :"ENDURE"
    m.at 38, :"AQUARING"
    m.at 41, :"POWERGEM"
    m.at 45, :"MIRRORCOAT"
    m.at 47, :"EARTHPOWER"
    m.at 52, :"FLAIL"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SURF", :"SWAGGER", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AMNESIA", :"AQUARING", :"BARRIER", :"BIDE", :"CONFUSERAY", :"CURSE", :"HEADSMASH", :"ICICLESPEAR", :"INGRAIN", :"MIST", :"NATUREPOWER", :"SCREECH", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"CORSOLA" do |m|
  m.back_sprite -1, 0
  m.front_sprite 3, 22
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"CORSOLA_1" do |pkmn|
  pkmn.species :"CORSOLA"
  pkmn.form 1
  pkmn.name "Corsola"
  pkmn.types :"WATER", :"ROCK"
  pkmn.base_stats hp: 55, attack: 55, defense: 85,
                  sp_atk: 35, sp_def: 65, speed: 85
  pkmn.abilities :"HUSTLE", :"NATURALCURE"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 133
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 5.0
  pkmn.category "Coral"
  pkmn.pokedex_entry "Corsola live in warm southern seas. If the sea becomes polluted, the beautiful coral stalks become discolored and crumble away in tatters."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"HARDEN"
    m.at 8, :"BUBBLE"
    m.at 10, :"RECOVER"
    m.at 13, :"REFRESH"
    m.at 17, :"BUBBLEBEAM"
    m.at 20, :"ANCIENTPOWER"
    m.at 23, :"LUCKYCHANT"
    m.at 27, :"SPIKECANNON"
    m.at 29, :"IRONDEFENSE"
    m.at 31, :"ROCKBLAST"
    m.at 35, :"ENDURE"
    m.at 38, :"AQUARING"
    m.at 41, :"POWERGEM"
    m.at 45, :"MIRRORCOAT"
    m.at 47, :"EARTHPOWER"
    m.at 52, :"FLAIL"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SURF", :"SWAGGER", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AMNESIA", :"AQUARING", :"BARRIER", :"BIDE", :"CONFUSERAY", :"CURSE", :"HEADSMASH", :"ICICLESPEAR", :"INGRAIN", :"MIST", :"NATUREPOWER", :"SCREECH", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"CORSOLA_1" do |m|
  m.back_sprite -1, 0
  m.front_sprite 3, 22
  m.shadow_sprite 0, 0, 2
end