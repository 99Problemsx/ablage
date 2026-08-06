#=============================================================================
# Togetic - FAIRY Type
#=============================================================================

GameData::Species.define :"TOGETIC" do |pkmn|
  pkmn.name "Togetic"
  pkmn.types :"FAIRY", :"FLYING"
  pkmn.base_stats hp: 55, attack: 40, defense: 85,
                  sp_atk: 40, sp_def: 80, speed: 105
  pkmn.abilities :"HUSTLE", :"SERENEGRACE"
  pkmn.hidden_abilities :"SUPERLUCK"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 142
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 0.6
  pkmn.weight 3.2
  pkmn.category "Happiness"
  pkmn.pokedex_entry "It is said to be a Pokémon that brings good fortune. When it spots someone who is pure of heart, a Togetic appears and shares its happiness with that person."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Flying", :"Fairy"

  pkmn.moves do |m|
    m.at 0, :"FAIRYWIND"
    m.at 1, :"POUND"
    m.at 1, :"SWEETKISS"
    m.at 1, :"LIFEDEW"
    m.at 1, :"GROWL"
    m.at 12, :"CHARM"
    m.at 16, :"ANCIENTPOWER"
    m.at 20, :"YAWN"
    m.at 24, :"METRONOME"
    m.at 28, :"AFTERYOU"
    m.at 32, :"DOUBLEEDGE"
    m.at 36, :"SAFEGUARD"
    m.at 40, :"FOLLOWME"
    m.at 44, :"BATONPASS"
    m.at 48, :"LASTRESORT"
    m.at 52, :"WISH"
  end

  pkmn.evolutions do |evo|
    evo.to :"TOGEKISS", method: :"Item", param: :"SHINYSTONE"
  end
end
