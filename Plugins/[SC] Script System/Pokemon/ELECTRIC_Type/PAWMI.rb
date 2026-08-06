#=============================================================================
# Pawmi - ELECTRIC Type
#=============================================================================

GameData::Species.define :"PAWMI" do |pkmn|
  pkmn.name "Pawmi"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 45, attack: 50, defense: 20,
                  sp_atk: 60, sp_def: 40, speed: 25
  pkmn.abilities :"STATIC", :"NATURALCURE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 48
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 2.5
  pkmn.category "Mouse"
  pkmn.pokedex_entry "It has underdeveloped electric sacs on its cheeks. These sacs can produce electricity only if Pawmi rubs them furiously with the pads on its forepaws."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
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
    m.at 31, :"ENTRAINMENT"
    m.at 35, :"SLAM"
    m.at 38, :"DISCHARGE"
    m.at 40, :"AGILITY"
    m.at 44, :"WILDCHARGE"
  end
  pkmn.tutor_moves :"AGILITY", :"BATONPASS", :"CHARGE", :"CHARGEBEAM", :"CHARM", :"CRUNCH", :"DIG", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENCORE", :"ENDURE", :"FACADE", :"FLING", :"HELPINGHAND", :"METALCLAW", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWIFT", :"TAKEDOWN", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERWAVE", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"FAKEOUT", :"MACHPUNCH", :"SWEETKISS", :"WISH"
end

GameData::SpeciesMetrics.define :"PAWMI" do |m|
  m.back_sprite 2, 47
  m.front_sprite 0, 32
  m.shadow_sprite 0, 0, 1
end