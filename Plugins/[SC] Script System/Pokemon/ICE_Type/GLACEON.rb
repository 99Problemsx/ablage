#=============================================================================
# Glaceon - ICE Type
#=============================================================================

GameData::Species.define :"GLACEON" do |pkmn|
  pkmn.name "Glaceon"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 65, attack: 60, defense: 110,
                  sp_atk: 65, sp_def: 130, speed: 95
  pkmn.abilities :"SNOWCLOAK"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 8995
  pkmn.height 0.8
  pkmn.weight 25.9
  pkmn.category "Fresh Snow"
  pkmn.pokedex_entry "As a protective technique, it can completely freeze its fur to make its hairs stand like needles."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 9, :"ICYWIND"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"BITE"
    m.at 21, :"ICEFANG"
    m.at 25, :"ICESHARD"
    m.at 29, :"BARRIER"
    m.at 33, :"MIRRORCOAT"
    m.at 37, :"HAIL"
    m.at 41, :"LASTRESORT"
    m.at 45, :"BLIZZARD"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERPULSE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"GLACEON" do |m|
  m.back_sprite -3, 0
  m.front_sprite -1, 15
  m.shadow_sprite 0, 0, 2
end