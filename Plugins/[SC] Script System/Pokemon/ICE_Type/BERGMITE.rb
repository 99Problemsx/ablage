#=============================================================================
# Bergmite - ICE Type
#=============================================================================

GameData::Species.define :"BERGMITE" do |pkmn|
  pkmn.name "Bergmite"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 55, attack: 69, defense: 85,
                  sp_atk: 28, sp_def: 32, speed: 35
  pkmn.abilities :"OWNTEMPO", :"ICEBODY"
  pkmn.hidden_abilities :"STURDY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 99.5
  pkmn.category "Ice Chunk"
  pkmn.pokedex_entry "It blocks opponents' attacks with the ice that shields its body. It uses cold air to repair any cracks with new ice."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"HARDEN"
    m.at 3, :"TACKLE"
    m.at 6, :"POWDERSNOW"
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
    m.at 39, :"BLIZZARD"
    m.at 42, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FROSTBREATH", :"FRUSTRATION", :"GYROBALL", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICEFANG", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERPULSE", :"TERABLAST"
  pkmn.egg_moves :"AURORAVEIL", :"MIRRORCOAT", :"MIST"
end

GameData::SpeciesMetrics.define :"BERGMITE" do |m|
  m.back_sprite 1, 11
  m.front_sprite 0, 4
  m.shadow_sprite 0, 0, 3
end