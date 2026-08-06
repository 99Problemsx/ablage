#=============================================================================
# Iron Boulder - ROCK Type
#=============================================================================

GameData::Species.define :"IRONBOULDER" do |pkmn|
  pkmn.name "Iron Boulder"
  pkmn.types :"ROCK", :"PSYCHIC"
  pkmn.base_stats hp: 90, attack: 120, defense: 80,
                  sp_atk: 124, sp_def: 68, speed: 108
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 295
  pkmn.catch_rate 10
  pkmn.happiness 0
  pkmn.hatch_steps 6400
  pkmn.height 1.5
  pkmn.weight 162.5
  pkmn.category "Paradox"
  pkmn.pokedex_entry "It was named after a mysterious object recorded in an old book. Its body seems to be metallic."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"HORNATTACK"
    m.at 1, :"LEER"
    m.at 1, :"ROCKTHROW"
    m.at 1, :"ELECTRICTERRAIN"
    m.at 7, :"QUICKATTACK"
    m.at 14, :"SLASH"
    m.at 21, :"AGILITY"
    m.at 28, :"PSYCHOCUT"
    m.at 35, :"COUNTER"
    m.at 42, :"ROCKTOMB"
    m.at 49, :"SACREDSWORD"
    m.at 56, :"MIGHTYCLEAVE"
    m.at 63, :"SWORDSDANCE"
    m.at 70, :"MEGAHORN"
    m.at 77, :"QUICKGUARD"
    m.at 84, :"STONEEDGE"
    m.at 91, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"AIRSLASH", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CLOSECOMBAT", :"DOUBLEEDGE", :"EARTHQUAKE", :"ELECTRICTERRAIN", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"METEORBEAM", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"REST", :"ROCKBLAST", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SOLARBLADE", :"STONEEDGE", :"SUBSTITUTE", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"WILDCHARGE", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"IRONBOULDER" do |m|
  m.back_sprite 0, 68
  m.front_sprite -4, 20
  m.shadow_sprite 0, 0, 3
end