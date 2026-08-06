#=============================================================================
# Drizzile - WATER Type
#=============================================================================

GameData::Species.define :"DRIZZILE" do |pkmn|
  pkmn.name "Drizzile"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 65, attack: 60, defense: 55,
                  sp_atk: 90, sp_def: 95, speed: 55
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SNIPER"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 11.5
  pkmn.category "Water Lizard"
  pkmn.pokedex_entry "A clever combatant, this Pokémon battles using water balloons created with moisture secreted from its palms."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 1, :"BIND"
    m.at 12, :"WATERPULSE"
    m.at 19, :"TEARFULLOOK"
    m.at 24, :"SUCKERPUNCH"
    m.at 30, :"UTURN"
    m.at 36, :"LIQUIDATION"
    m.at 42, :"SOAK"
    m.at 48, :"RAINDANCE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"UTURN", :"WATERPLEDGE", :"WEATHERBALL", :"WHIRLPOOL", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DRIZZILE" do |m|
  m.back_sprite 0, 13
  m.front_sprite -2, 2
end