#=============================================================================
# Iron Leaves - GRASS Type
#=============================================================================

GameData::Species.define :"IRONLEAVES" do |pkmn|
  pkmn.name "Iron Leaves"
  pkmn.types :"GRASS", :"PSYCHIC"
  pkmn.base_stats hp: 90, attack: 130, defense: 88,
                  sp_atk: 104, sp_def: 70, speed: 108
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 295
  pkmn.catch_rate 5
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.5
  pkmn.weight 125.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "According to the few eyewitness accounts that exist, it used its shining blades to julienne large trees and boulders."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"QUASH"
    m.at -1, :"ELECTRICTERRAIN"
    m.at 1, :"WORKUP"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 7, :"MAGICALLEAF"
    m.at 14, :"RETALIATE"
    m.at 21, :"QUICKGUARD"
    m.at 28, :"NIGHTSLASH"
    m.at 35, :"SWORDSDANCE"
    m.at 42, :"SACREDSWORD"
    m.at 49, :"LEAFBLADE"
    m.at 56, :"PSYBLADE"
    m.at 63, :"CLOSECOMBAT"
    m.at 70, :"IMPRISON"
    m.at 77, :"MEGAHORN"
    m.at 84, :"ALLYSWITCH"
    m.at 91, :"SOLARBLADE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"AIRSLASH", :"BRICKBREAK", :"CALMMIND", :"CLOSECOMBAT", :"COACHING", :"DOUBLEEDGE", :"ELECTRICTERRAIN", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FOCUSBLAST", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"GRAVITY", :"HELPINGHAND", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"LEAFSTORM", :"MAGICALLEAF", :"METALSOUND", :"PROTECT", :"PSYCHICTERRAIN", :"REST", :"REVERSAL", :"SCARYFACE", :"SLEEPTALK", :"SMARTSTRIKE", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"WILDCHARGE", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"IRONLEAVES" do |m|
  m.back_sprite -4, 48
  m.front_sprite -5, 16
  m.shadow_sprite 0, 0, 1
end