#=============================================================================
# Tadbulb - ELECTRIC Type
#=============================================================================

GameData::Species.define :"TADBULB" do |pkmn|
  pkmn.name "Tadbulb"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 61, attack: 31, defense: 41,
                  sp_atk: 45, sp_def: 59, speed: 35
  pkmn.abilities :"OWNTEMPO", :"STATIC"
  pkmn.hidden_abilities :"DAMP"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Finned"
  pkmn.base_exp 54
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 0.4
  pkmn.category "EleTadpole"
  pkmn.pokedex_entry "Tadbulb shakes its tail to generate electricity. If it senses danger, it will make its head blink on and off to alert its allies."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"TACKLE"
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
  pkmn.tutor_moves :"ACIDSPRAY", :"CHARGE", :"CHARGEBEAM", :"CHILLINGWATER", :"CONFUSERAY", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"HYPERVOICE", :"LIGHTSCREEN", :"MUDDYWATER", :"MUDSHOT", :"MUDSLAP", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"VOLTSWITCH", :"WATERPULSE", :"WEATHERBALL", :"WILDCHARGE"
  pkmn.egg_moves :"MUDDYWATER", :"PARABOLICCHARGE", :"SOAK"
end

GameData::SpeciesMetrics.define :"TADBULB" do |m|
  m.back_sprite 0, 55
  m.front_sprite 0, 8
  m.shadow_sprite 0, 0, 1
end