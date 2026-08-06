#=============================================================================
# Amaura - ROCK Type
#=============================================================================

GameData::Species.define :"AMAURA" do |pkmn|
  pkmn.name "Amaura"
  pkmn.types :"ROCK", :"ICE"
  pkmn.base_stats hp: 77, attack: 59, defense: 50,
                  sp_atk: 46, sp_def: 67, speed: 63
  pkmn.abilities :"REFRIGERATE"
  pkmn.hidden_abilities :"SNOWWARNING"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 72
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 1.3
  pkmn.weight 25.2
  pkmn.category "Tundra"
  pkmn.pokedex_entry "This ancient Pokémon was restored from part of its body that had been frozen in ice for over 100 million years."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"GROWL"
    m.at 4, :"ENCORE"
    m.at 8, :"ANCIENTPOWER"
    m.at 12, :"ICYWIND"
    m.at 16, :"ROUND"
    m.at 20, :"MIST"
    m.at 24, :"AURORABEAM"
    m.at 28, :"THUNDERWAVE"
    m.at 32, :"NATUREPOWER"
    m.at 36, :"FREEZEDRY"
    m.at 40, :"ICEBEAM"
    m.at 44, :"LIGHTSCREEN"
    m.at 48, :"HAIL"
    m.at 52, :"BLIZZARD"
    m.at 56, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DRAGONTAIL", :"DREAMEATER", :"EARTHPOWER", :"ECHOEDVOICE", :"ENCORE", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FROSTBREATH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"METEORBEAM", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"NATUREPOWER", :"OUTRAGE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WEATHERBALL", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"AURORAVEIL", :"DISCHARGE", :"HAZE", :"MIRRORCOAT", :"ROCKTHROW", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"AMAURA" do |m|
  m.back_sprite 0, 41
  m.front_sprite 0, 24
end