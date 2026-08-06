#=============================================================================
# Togepi - FAIRY Type
#=============================================================================

GameData::Species.define :"TOGEPI" do |pkmn|
  pkmn.name "Togepi"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 35, attack: 20, defense: 65,
                  sp_atk: 20, sp_def: 40, speed: 65
  pkmn.abilities :"HUSTLE", :"SERENEGRACE"
  pkmn.hidden_abilities :"SUPERLUCK"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 49
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 0.3
  pkmn.weight 1.5
  pkmn.category "Spike Ball"
  pkmn.pokedex_entry "As its energy, it uses the feelings of compassion and pleasure exuded by people and Pokémon. It stores up happy feelings in its shell, then shares them out."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 4, :"SWEETKISS"
    m.at 8, :"LIFEDEW"
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

  pkmn.egg_moves do |m|
    m.add :"AERIALACE"
    m.add :"EXTRASENSORY"
    m.add :"FUTURESIGHT"
    m.add :"MORNINGSUN"
    m.add :"PECK"
    m.add :"PRESENT"
    m.add :"PSYCHOSHIFT"
    m.add :"STOREDPOWER"
  end

  pkmn.evolutions do |evo|
    evo.to :"TOGETIC", method: :"Happiness"
  end
end
