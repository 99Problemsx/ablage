#=============================================================================
# Dubwool - NORMAL Type
#=============================================================================

GameData::Species.define :"DUBWOOL" do |pkmn|
  pkmn.name "Dubwool"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 72, attack: 80, defense: 100,
                  sp_atk: 88, sp_def: 60, speed: 90
  pkmn.abilities :"FLUFFY", :"STEADFAST"
  pkmn.hidden_abilities :"BULLETPROOF"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 172
  pkmn.catch_rate 127
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.3
  pkmn.weight 43.0
  pkmn.category "Sheep"
  pkmn.pokedex_entry "Its majestic horns are meant only to impress the opposite gender. They never see use in battle."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"COPYCAT"
    m.at 12, :"GUARDSPLIT"
    m.at 16, :"DOUBLEKICK"
    m.at 21, :"HEADBUTT"
    m.at 27, :"TAKEDOWN"
    m.at 32, :"GUARDSWAP"
    m.at 38, :"REVERSAL"
    m.at 44, :"COTTONGUARD"
    m.at 50, :"DOUBLEEDGE"
    m.at 56, :"LASTRESORT"
  end
  pkmn.tutor_moves :"AGILITY", :"ATTRACT", :"BATONPASS", :"BODYPRESS", :"BODYSLAM", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSYGLIDE", :"GUARDSWAP", :"HIDDENPOWER", :"HYPERBEAM", :"MEGAKICK", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"THUNDERWAVE", :"TOXIC", :"WILDCHARGE", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DUBWOOL" do |m|
  m.back_sprite 0, 40
  m.front_sprite 0, 6
end