#=============================================================================
# Bellibolt - ELECTRIC Type
#=============================================================================

GameData::Species.define :"BELLIBOLT" do |pkmn|
  pkmn.name "Bellibolt"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 109, attack: 64, defense: 91,
                  sp_atk: 45, sp_def: 103, speed: 83
  pkmn.abilities :"ELECTROMORPHOSIS", :"STATIC"
  pkmn.hidden_abilities :"DAMP"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 173
  pkmn.catch_rate 50
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 113.0
  pkmn.category "EleFrog"
  pkmn.pokedex_entry "When this Pokémon expands and contracts its wobbly body, the belly-button dynamo in its stomach produces a huge amount of electricity."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"MUDSLAP"
    m.at 1, :"SLACKOFF"
    m.at 7, :"THUNDERSHOCK"
    m.at 11, :"WATERGUN"
    m.at 17, :"CHARGE"
    m.at 21, :"SPARK"
    m.at 24, :"MUDSHOT"
    m.at 25, :"FLAIL"
    m.at 32, :"DISCHARGE"
    m.at 36, :"WEATHERBALL"
    m.at 40, :"ELECTRICTERRAIN"
    m.at 45, :"SUCKERPUNCH"
    m.at 50, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"CHARGE", :"CHARGEBEAM", :"CHILLINGWATER", :"CONFUSERAY", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"GIGAIMPACT", :"HYPERBEAM", :"HYPERVOICE", :"LIGHTSCREEN", :"MUDDYWATER", :"MUDSHOT", :"MUDSLAP", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SUPERCELLSLAM", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WATERPULSE", :"WEATHERBALL", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"BELLIBOLT" do |m|
  m.back_sprite 0, 56
  m.front_sprite -1, 25
  m.shadow_sprite 0, 0, 2
end