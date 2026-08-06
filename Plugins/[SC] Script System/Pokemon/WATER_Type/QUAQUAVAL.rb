#=============================================================================
# Quaquaval - WATER Type
#=============================================================================

GameData::Species.define :"QUAQUAVAL" do |pkmn|
  pkmn.name "Quaquaval"
  pkmn.types :"WATER", :"FIGHTING"
  pkmn.base_stats hp: 85, attack: 120, defense: 80,
                  sp_atk: 85, sp_def: 85, speed: 75
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 61.9
  pkmn.category "Dancer"
  pkmn.pokedex_entry "A single kick from a Quaquaval can send a truck rolling. This Pokémon uses its powerful legs to perform striking dances from far-off lands."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Flying", :"Water1"

  pkmn.moves do |m|
    m.at -1, :"COUNTER"
    m.at 0, :"AQUASTEP"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 1, :"DOUBLEHIT"
    m.at 1, :"POUND"
    m.at 7, :"WORKUP"
    m.at 10, :"WINGATTACK"
    m.at 13, :"AQUAJET"
    m.at 17, :"WATERPULSE"
    m.at 17, :"LOWSWEEP"
    m.at 21, :"AQUACUTTER"
    m.at 27, :"AIRSLASH"
    m.at 32, :"FOCUSENERGY"
    m.at 38, :"MEGAKICK"
    m.at 43, :"ACROBATICS"
    m.at 47, :"LIQUIDATION"
    m.at 52, :"FEATHERDANCE"
    m.at 58, :"CLOSECOMBAT"
    m.at 64, :"WAVECRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRCUTTER", :"AIRSLASH", :"BATONPASS", :"BRAVEBIRD", :"BRICKBREAK", :"BULKUP", :"CHILLINGWATER", :"CLOSECOMBAT", :"COACHING", :"DISARMINGVOICE", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FEATHERDANCE", :"FLING", :"FLIPTURN", :"GIGAIMPACT", :"HELPINGHAND", :"HURRICANE", :"HYDROCANNON", :"HYDROPUMP", :"HYPERBEAM", :"ICESPINNER", :"ICYWIND", :"KNOCKOFF", :"LIQUIDATION", :"LOWKICK", :"LOWSWEEP", :"MISTYTERRAIN", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"REVERSAL", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"TRIPLEAXEL", :"UPPERHAND", :"UTURN", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"QUAQUAVAL" do |m|
  m.back_sprite 0, 54
  m.front_sprite 1, 12
  m.shadow_sprite 0, 0, 2
end