#=============================================================================
# Wattrel - ELECTRIC Type
#=============================================================================

GameData::Species.define :"WATTREL" do |pkmn|
  pkmn.name "Wattrel"
  pkmn.types :"ELECTRIC", :"FLYING"
  pkmn.base_stats hp: 40, attack: 40, defense: 35,
                  sp_atk: 70, sp_def: 55, speed: 40
  pkmn.abilities :"WINDPOWER", :"VOLTABSORB"
  pkmn.hidden_abilities :"COMPETITIVE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 56
  pkmn.catch_rate 180
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 3.6
  pkmn.category "Storm Petrel"
  pkmn.pokedex_entry "When its wings catch the wind, the bones within produce electricity. This Pokémon dives into the ocean, catching prey by electrocuting them."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 4, :"THUNDERSHOCK"
    m.at 7, :"QUICKATTACK"
    m.at 11, :"PLUCK"
    m.at 15, :"SPARK"
    m.at 19, :"UPROAR"
    m.at 23, :"ROOST"
    m.at 27, :"DUALWINGBEAT"
    m.at 32, :"AGILITY"
    m.at 37, :"VOLTSWITCH"
    m.at 43, :"DISCHARGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"CHARGE", :"CHARGEBEAM", :"DUALWINGBEAT", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FEATHERDANCE", :"FLY", :"HURRICANE", :"PROTECT", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SWIFT", :"TAILWIND", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"UPROAR", :"UTURN", :"VOLTSWITCH", :"WEATHERBALL", :"WILDCHARGE"
  pkmn.egg_moves :"ENDEAVOR", :"FEATHERDANCE", :"SPITUP", :"STOCKPILE", :"SWALLOW", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"WATTREL" do |m|
  m.back_sprite -6, 61
  m.front_sprite 1, 30
  m.shadow_sprite 0, 0, 1
end