#=============================================================================
# Togekiss - FAIRY Type
#=============================================================================

GameData::Species.define :"TOGEKISS" do |pkmn|
  pkmn.name "Togekiss"
  pkmn.types :"FAIRY", :"FLYING"
  pkmn.base_stats hp: 85, attack: 50, defense: 95,
                  sp_atk: 80, sp_def: 120, speed: 115
  pkmn.abilities :"HUSTLE", :"SERENEGRACE"
  pkmn.hidden_abilities :"SUPERLUCK"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 273
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.5
  pkmn.weight 38.0
  pkmn.category "Jubilee"
  pkmn.pokedex_entry "It will never appear where there is strife. Its sightings have become rare recently."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Flying", :"Fairy"

  pkmn.moves do |m|
    m.at 0, :"AIRSLASH"
    m.at 1, :"FAIRYWIND"
    m.at 1, :"SKYATTACK"
    m.at 1, :"AURASPHERE"
    m.at 1, :"EXTREMESPEED"
    m.at 1, :"TRIATTACK"
    m.at 1, :"CHARM"
    m.at 1, :"ANCIENTPOWER"
    m.at 1, :"YAWN"
    m.at 1, :"METRONOME"
    m.at 1, :"AFTERYOU"
    m.at 1, :"DOUBLEEDGE"
    m.at 1, :"SAFEGUARD"
    m.at 1, :"FOLLOWME"
    m.at 1, :"BATONPASS"
    m.at 1, :"LASTRESORT"
    m.at 1, :"WISH"
    m.at 1, :"GROWL"
    m.at 1, :"POUND"
    m.at 1, :"SWEETKISS"
    m.at 1, :"LIFEDEW"
  end
end
