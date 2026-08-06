#=============================================================================
# Pawmo - ELECTRIC Type
#=============================================================================

GameData::Species.define :"PAWMO" do |pkmn|
  pkmn.name "Pawmo"
  pkmn.types :"ELECTRIC", :"FIGHTING"
  pkmn.base_stats hp: 60, attack: 75, defense: 40,
                  sp_atk: 85, sp_def: 50, speed: 40
  pkmn.abilities :"VOLTABSORB", :"NATURALCURE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 123
  pkmn.catch_rate 80
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 6.5
  pkmn.category "Mouse"
  pkmn.pokedex_entry "When its group is attacked, Pawmo is the first to leap into battle, defeating enemies with a fighting technique that utilizes electric shocks."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"ARMTHRUST"
    m.at 1, :"GROWL"
    m.at 1, :"SCRATCH"
    m.at 3, :"THUNDERSHOCK"
    m.at 6, :"QUICKATTACK"
    m.at 8, :"CHARGE"
    m.at 12, :"NUZZLE"
    m.at 15, :"DIG"
    m.at 19, :"BITE"
    m.at 23, :"SPARK"
    m.at 27, :"THUNDERWAVE"
    m.at 32, :"SLAM"
    m.at 38, :"ENTRAINMENT"
    m.at 42, :"DISCHARGE"
    m.at 46, :"AGILITY"
    m.at 52, :"WILDCHARGE"
  end
  pkmn.tutor_moves :"AGILITY", :"BATONPASS", :"CHARGE", :"CHARGEBEAM", :"CHARM", :"COACHING", :"CRUNCH", :"DIG", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENCORE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"HELPINGHAND", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"METALCLAW", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWIFT", :"TAKEDOWN", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERPUNCH", :"THUNDERWAVE", :"UPPERHAND", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"PAWMO" do |m|
  m.back_sprite 0, 45
  m.front_sprite -1, 20
  m.shadow_sprite 0, 0, 1
end