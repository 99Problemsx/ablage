#=============================================================================
# Glalie - ICE Type
#=============================================================================

GameData::Species.define :"GLALIE" do |pkmn|
  pkmn.name "Glalie"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 80, attack: 80, defense: 80,
                  sp_atk: 80, sp_def: 80, speed: 80
  pkmn.abilities :"INNERFOCUS", :"ICEBODY"
  pkmn.hidden_abilities :"MOODY"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 256.5
  pkmn.category "Face"
  pkmn.pokedex_entry "A Glalie has the power to instantaneously freeze moisture in the atmosphere. A dazzling cloud of diamondlike ice crystals forms around its body."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Fairy", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"LEER"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"BITE"
    m.at 4, :"DOUBLETEAM"
    m.at 10, :"BITE"
    m.at 13, :"ICYWIND"
    m.at 19, :"HEADBUTT"
    m.at 22, :"PROTECT"
    m.at 28, :"ICEFANG"
    m.at 31, :"CRUNCH"
    m.at 37, :"ICEBEAM"
    m.at 40, :"HAIL"
    m.at 51, :"BLIZZARD"
    m.at 59, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"TORMENT", :"TOXIC", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"GLALIE" do |m|
  m.back_sprite -5, 0
  m.front_sprite 0, 3
  m.shadow_sprite 0, 0, 2
end