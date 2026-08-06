#=============================================================================
# Quaxly - WATER Type
#=============================================================================

GameData::Species.define :"QUAXLY" do |pkmn|
  pkmn.name "Quaxly"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 55, attack: 65, defense: 45,
                  sp_atk: 50, sp_def: 50, speed: 45
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 6.1
  pkmn.category "Duckling"
  pkmn.pokedex_entry "This Pokémon migrated to Paldea from distant lands long ago. The gel secreted by its feathers repels water and grime."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 7, :"WORKUP"
    m.at 10, :"WINGATTACK"
    m.at 13, :"AQUAJET"
    m.at 17, :"DOUBLEHIT"
    m.at 21, :"AQUACUTTER"
    m.at 24, :"AIRSLASH"
    m.at 28, :"FOCUSENERGY"
    m.at 31, :"ACROBATICS"
    m.at 35, :"LIQUIDATION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"AIRSLASH", :"BATONPASS", :"BRAVEBIRD", :"CHILLINGWATER", :"DISARMINGVOICE", :"ENCORE", :"ENDURE", :"FACADE", :"HELPINGHAND", :"HYDROPUMP", :"LIQUIDATION", :"LOWKICK", :"MISTYTERRAIN", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"WATERPLEDGE", :"WHIRLPOOL"
  pkmn.egg_moves :"DETECT", :"LASTRESORT", :"RAPIDSPIN", :"ROOST"
end

GameData::SpeciesMetrics.define :"QUAXLY" do |m|
  m.back_sprite 0, 45
  m.front_sprite 2, 26
  m.shadow_sprite 0, 0, 1
end