#=============================================================================
# Miraidon - ELECTRIC Type
#=============================================================================

GameData::Species.define :"MIRAIDON" do |pkmn|
  pkmn.name "Miraidon"
  pkmn.types :"ELECTRIC", :"DRAGON"
  pkmn.base_stats hp: 100, attack: 85, defense: 100,
                  sp_atk: 135, sp_def: 135, speed: 115
  pkmn.abilities :"HADRONENGINE"
  pkmn.flags :"Paradox", :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 335
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 3.5
  pkmn.weight 240.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "Much remains unknown about this creature. It resembles Cyclizar, but it is far more ruthless and powerful."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"ELECTRICTERRAIN"
    m.at 7, :"SHOCKWAVE"
    m.at 14, :"CHARGE"
    m.at 21, :"PARABOLICCHARGE"
    m.at 28, :"DISCHARGE"
    m.at 35, :"AGILITY"
    m.at 42, :"DRAGONPULSE"
    m.at 56, :"ELECTRODRIFT"
    m.at 63, :"METALSOUND"
    m.at 70, :"MIRRORCOAT"
    m.at 77, :"OUTRAGE"
    m.at 84, :"THUNDER"
    m.at 91, :"OVERHEAT"
    m.at 98, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"BODYSLAM", :"CALMMIND", :"CHARGE", :"CHARGEBEAM", :"CONFUSERAY", :"CRUNCH", :"DAZZLINGGLEAM", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"HEAVYSLAM", :"HELPINGHAND", :"HYPERBEAM", :"LIGHTSCREEN", :"METALSOUND", :"OUTRAGE", :"OVERHEAT", :"POWERGEM", :"PROTECT", :"REFLECT", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SOLARBEAM", :"SUBSTITUTE", :"SUPERCELLSLAM", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MIRAIDON" do |m|
  m.back_sprite 0, 34
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 2
end