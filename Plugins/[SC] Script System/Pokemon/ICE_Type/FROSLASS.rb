#=============================================================================
# Froslass - ICE Type
#=============================================================================

GameData::Species.define :"FROSLASS" do |pkmn|
  pkmn.name "Froslass"
  pkmn.types :"ICE", :"GHOST"
  pkmn.base_stats hp: 70, attack: 80, defense: 70,
                  sp_atk: 110, sp_def: 80, speed: 70
  pkmn.abilities :"SNOWCLOAK"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 26.6
  pkmn.category "Snow Land"
  pkmn.pokedex_entry "It freezes foes with an icy breath nearly -60 degrees F. What seems to be its body is actually hollow."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Fairy", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"LEER"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"ASTONISH"
    m.at 4, :"DOUBLETEAM"
    m.at 10, :"ASTONISH"
    m.at 13, :"ICYWIND"
    m.at 19, :"CONFUSERAY"
    m.at 22, :"OMINOUSWIND"
    m.at 28, :"WAKEUPSLAP"
    m.at 31, :"CAPTIVATE"
    m.at 37, :"ICESHARD"
    m.at 40, :"HAIL"
    m.at 51, :"BLIZZARD"
    m.at 59, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"FROSLASS" do |m|
  m.back_sprite 6, 0
  m.front_sprite 4, 2
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Mega Froslass
GameData::Species.define :"FROSLASS_1" do |pkmn|
  pkmn.species :"FROSLASS"
  pkmn.form 1
  pkmn.name "Froslass"
  pkmn.form_name "Mega Froslass"
  pkmn.types :"ICE", :"GHOST"
  pkmn.base_stats hp: 70, attack: 80, defense: 70,
                  sp_atk: 140, sp_def: 100, speed: 120
  pkmn.abilities :"SNOWCLOAK"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.6
  pkmn.weight 29.6
  pkmn.category "Snow Land"
  pkmn.pokedex_entry "This Pokémon can use eerie cold air imbued with ghost energy to freeze even insubstantial things, such as flames or the wind."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Fairy", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"LEER"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"ASTONISH"
    m.at 4, :"DOUBLETEAM"
    m.at 10, :"ASTONISH"
    m.at 13, :"ICYWIND"
    m.at 19, :"CONFUSERAY"
    m.at 22, :"OMINOUSWIND"
    m.at 28, :"WAKEUPSLAP"
    m.at 31, :"CAPTIVATE"
    m.at 37, :"ICESHARD"
    m.at 40, :"HAIL"
    m.at 51, :"BLIZZARD"
    m.at 59, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"FROSLASS_1" do |m|
  m.back_sprite 6, 0
  m.front_sprite 4, 2
  m.shadow_sprite 0, 0, 1
end