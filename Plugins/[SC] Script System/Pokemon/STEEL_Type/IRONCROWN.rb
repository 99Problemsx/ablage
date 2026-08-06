#=============================================================================
# Iron Crown - STEEL Type
#=============================================================================

GameData::Species.define :"IRONCROWN" do |pkmn|
  pkmn.name "Iron Crown"
  pkmn.types :"STEEL", :"PSYCHIC"
  pkmn.base_stats hp: 90, attack: 72, defense: 100,
                  sp_atk: 98, sp_def: 122, speed: 108
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 295
  pkmn.catch_rate 10
  pkmn.happiness 0
  pkmn.hatch_steps 6400
  pkmn.height 1.6
  pkmn.weight 156.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "There was supposedly an incident in which it launched shining blades to cut everything around it to pieces. Little else is known about it."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"ELECTRICTERRAIN"
    m.at 1, :"CONFUSION"
    m.at 1, :"METALCLAW"
    m.at 7, :"SMARTSTRIKE"
    m.at 14, :"SLASH"
    m.at 21, :"IRONDEFENSE"
    m.at 28, :"PSYSHOCK"
    m.at 35, :"PSYCHOCUT"
    m.at 42, :"FLASHCANNON"
    m.at 49, :"SACREDSWORD"
    m.at 56, :"TACHYONCUTTER"
    m.at 63, :"FUTURESIGHT"
    m.at 70, :"VOLTSWITCH"
    m.at 77, :"QUICKGUARD"
    m.at 84, :"METALBURST"
    m.at 91, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CALMMIND", :"DOUBLEEDGE", :"ELECTRICTERRAIN", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FLASHCANNON", :"FOCUSBLAST", :"FUTURESIGHT", :"GIGAIMPACT", :"GRAVITY", :"HEAVYSLAM", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"METALCLAW", :"METALSOUND", :"PROTECT", :"PSYCHIC", :"PSYCHICNOISE", :"PSYSHOCK", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SMARTSTRIKE", :"SOLARBLADE", :"STEELBEAM", :"STOREDPOWER", :"SUBSTITUTE", :"SUPERCELLSLAM", :"SWORDSDANCE", :"TAKEDOWN", :"VOLTSWITCH", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"IRONCROWN" do |m|
  m.back_sprite 0, 64
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 2
end