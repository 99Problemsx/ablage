#=============================================================================
# Pawmot - ELECTRIC Type
#=============================================================================

GameData::Species.define :"PAWMOT" do |pkmn|
  pkmn.name "Pawmot"
  pkmn.types :"ELECTRIC", :"FIGHTING"
  pkmn.base_stats hp: 70, attack: 115, defense: 70,
                  sp_atk: 105, sp_def: 70, speed: 60
  pkmn.abilities :"VOLTABSORB", :"NATURALCURE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 245
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.9
  pkmn.weight 41.0
  pkmn.category "Hands-On"
  pkmn.pokedex_entry "This Pokémon normally is slow to react, but once it enters battle, it will strike down its enemies with lightning-fast movements."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"REVIVALBLESSING"
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"WILDCHARGE"
    m.at 3, :"THUNDERSHOCK"
    m.at 6, :"QUICKATTACK"
    m.at 8, :"CHARGE"
    m.at 12, :"NUZZLE"
    m.at 15, :"DIG"
    m.at 19, :"BITE"
    m.at 23, :"SPARK"
    m.at 25, :"ARMTHRUST"
    m.at 29, :"THUNDERWAVE"
    m.at 33, :"SLAM"
    m.at 39, :"ENTRAINMENT"
    m.at 44, :"CLOSECOMBAT"
    m.at 49, :"DISCHARGE"
    m.at 54, :"AGILITY"
    m.at 60, :"DOUBLESHOCK"
  end
  pkmn.tutor_moves :"AGILITY", :"BATONPASS", :"BODYPRESS", :"BRICKBREAK", :"BULKUP", :"CHARGE", :"CHARGEBEAM", :"CHARM", :"CLOSECOMBAT", :"COACHING", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENCORE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HYPERBEAM", :"ICEPUNCH", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"METALCLAW", :"METRONOME", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKTOMB", :"SEEDBOMB", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"SUPERFANG", :"SWIFT", :"TAKEDOWN", :"THIEF", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERPUNCH", :"THUNDERWAVE", :"UPPERHAND", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"PAWMOT" do |m|
  m.back_sprite 0, 42
  m.front_sprite -4, 18
  m.shadow_sprite 0, 0, 1
end