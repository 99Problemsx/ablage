#=============================================================================
# Quaxwell - WATER Type
#=============================================================================

GameData::Species.define :"QUAXWELL" do |pkmn|
  pkmn.name "Quaxwell"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 70, attack: 85, defense: 65,
                  sp_atk: 65, sp_def: 65, speed: 60
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 144
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 21.5
  pkmn.category "Practicing"
  pkmn.pokedex_entry "These Pokémon constantly run through shallow waters to train their legs, then compete with each other to see which of them kicks most gracefully."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"DOUBLEHIT"
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 7, :"WORKUP"
    m.at 10, :"WINGATTACK"
    m.at 13, :"AQUAJET"
    m.at 17, :"WATERPULSE"
    m.at 19, :"LOWSWEEP"
    m.at 23, :"AQUACUTTER"
    m.at 27, :"AIRSLASH"
    m.at 32, :"FOCUSENERGY"
    m.at 38, :"ACROBATICS"
    m.at 43, :"LIQUIDATION"
    m.at 48, :"FEATHERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"AIRSLASH", :"BATONPASS", :"BRAVEBIRD", :"CHILLINGWATER", :"DISARMINGVOICE", :"ENCORE", :"ENDURE", :"FACADE", :"FEATHERDANCE", :"FLIPTURN", :"HELPINGHAND", :"HYDROPUMP", :"LIQUIDATION", :"LOWKICK", :"LOWSWEEP", :"MISTYTERRAIN", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"TRIPLEAXEL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"QUAXWELL" do |m|
  m.back_sprite 0, 35
  m.front_sprite 1, 21
  m.shadow_sprite 0, 0, 1
end