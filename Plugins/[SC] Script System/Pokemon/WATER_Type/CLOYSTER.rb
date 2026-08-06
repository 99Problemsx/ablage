#=============================================================================
# Cloyster - WATER Type
#=============================================================================

GameData::Species.define :"CLOYSTER" do |pkmn|
  pkmn.name "Cloyster"
  pkmn.types :"WATER", :"ICE"
  pkmn.base_stats hp: 50, attack: 95, defense: 180,
                  sp_atk: 70, sp_def: 85, speed: 45
  pkmn.abilities :"SHELLARMOR", :"SKILLLINK"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 184
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 132.5
  pkmn.category "Bivalve"
  pkmn.pokedex_entry "It swims in the sea by swallowing water, then jetting it out toward the rear. The Cloyster shoots spikes from its shell using the same system."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"TOXICSPIKES"
    m.at 1, :"WITHDRAW"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"PROTECT"
    m.at 1, :"AURORABEAM"
    m.at 13, :"SPIKECANNON"
    m.at 28, :"SPIKES"
    m.at 52, :"ICICLECRASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TORMENT", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"CLOYSTER" do |m|
  m.back_sprite 0, 0
  m.front_sprite -4, 4
  m.shadow_sprite 0, 0, 3
end