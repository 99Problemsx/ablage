#=============================================================================
# Kilowattrel - ELECTRIC Type
#=============================================================================

GameData::Species.define :"KILOWATTREL" do |pkmn|
  pkmn.name "Kilowattrel"
  pkmn.types :"ELECTRIC", :"FLYING"
  pkmn.base_stats hp: 70, attack: 70, defense: 60,
                  sp_atk: 125, sp_def: 105, speed: 60
  pkmn.abilities :"WINDPOWER", :"VOLTABSORB"
  pkmn.hidden_abilities :"COMPETITIVE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 172
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.4
  pkmn.weight 38.6
  pkmn.category "Frigatebird"
  pkmn.pokedex_entry "Kilowattrel inflates its throat sac to amplify its electricity. By riding the wind, this Pokémon can fly over 430 miles in a day."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 0, :"ELECTROBALL"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 4, :"THUNDERSHOCK"
    m.at 7, :"QUICKATTACK"
    m.at 11, :"PLUCK"
    m.at 15, :"SPARK"
    m.at 19, :"UPROAR"
    m.at 24, :"ROOST"
    m.at 30, :"DUALWINGBEAT"
    m.at 36, :"AGILITY"
    m.at 43, :"VOLTSWITCH"
    m.at 48, :"DISCHARGE"
    m.at 55, :"HURRICANE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"CHARGE", :"CHARGEBEAM", :"DUALWINGBEAT", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FEATHERDANCE", :"FLY", :"GIGAIMPACT", :"HURRICANE", :"HYPERBEAM", :"PROTECT", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SUBSTITUTE", :"SUPERCELLSLAM", :"SWIFT", :"TAILWIND", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"UPROAR", :"UTURN", :"VOLTSWITCH", :"WEATHERBALL", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"KILOWATTREL" do |m|
  m.back_sprite 0, 52
  m.front_sprite 5, 26
  m.shadow_sprite 0, 0, 2
end