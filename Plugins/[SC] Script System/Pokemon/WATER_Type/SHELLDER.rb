#=============================================================================
# Shellder - WATER Type
#=============================================================================

GameData::Species.define :"SHELLDER" do |pkmn|
  pkmn.name "Shellder"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 30, attack: 65, defense: 100,
                  sp_atk: 40, sp_def: 45, speed: 25
  pkmn.abilities :"SHELLARMOR", :"SKILLLINK"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 4.0
  pkmn.category "Bivalve"
  pkmn.pokedex_entry "At night, it burrows a hole in the seafloor with its broad tongue to make a place to sleep. While asleep, it closes its shell, but leaves its tongue hanging out."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"WITHDRAW"
    m.at 8, :"SUPERSONIC"
    m.at 13, :"ICICLESPEAR"
    m.at 16, :"PROTECT"
    m.at 20, :"LEER"
    m.at 25, :"CLAMP"
    m.at 28, :"ICESHARD"
    m.at 32, :"RAZORSHELL"
    m.at 37, :"AURORABEAM"
    m.at 40, :"WHIRLPOOL"
    m.at 44, :"BRINE"
    m.at 49, :"IRONDEFENSE"
    m.at 52, :"ICEBEAM"
    m.at 56, :"SHELLSMASH"
    m.at 61, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AQUARING", :"AVALANCHE", :"BARRIER", :"BUBBLEBEAM", :"ICICLESPEAR", :"MUDSHOT", :"RAPIDSPIN", :"ROCKBLAST", :"SCREECH", :"TAKEDOWN", :"TWINEEDLE", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"SHELLDER" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 27
  m.shadow_sprite 0, 0, 2
end