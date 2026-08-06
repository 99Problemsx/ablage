#=============================================================================
# Sobble - WATER Type
#=============================================================================

GameData::Species.define :"SOBBLE" do |pkmn|
  pkmn.name "Sobble"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 40, defense: 40,
                  sp_atk: 70, sp_def: 70, speed: 40
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SNIPER"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 4.0
  pkmn.category "Water Lizard"
  pkmn.pokedex_entry "When scared, this Pokémon cries. Its tears pack the chemical punch of 100 onions, and attackers won't be able to resist weeping."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 6, :"WATERGUN"
    m.at 8, :"BIND"
    m.at 12, :"WATERPULSE"
    m.at 17, :"TEARFULLOOK"
    m.at 20, :"SUCKERPUNCH"
    m.at 24, :"UTURN"
    m.at 28, :"LIQUIDATION"
    m.at 32, :"SOAK"
    m.at 36, :"RAINDANCE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"UTURN", :"WATERPLEDGE", :"WEATHERBALL", :"WHIRLPOOL", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"AQUAJET", :"AQUARING", :"DOUBLETEAM", :"FELLSTINGER", :"HAZE", :"ICESHARD", :"MIST"
end

GameData::SpeciesMetrics.define :"SOBBLE" do |m|
  m.back_sprite 2, 6
  m.front_sprite 2, 2
end