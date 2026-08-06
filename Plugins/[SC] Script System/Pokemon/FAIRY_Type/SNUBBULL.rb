#=============================================================================
# Snubbull - FAIRY Type
#=============================================================================

GameData::Species.define :"SNUBBULL" do |pkmn|
  pkmn.name "Snubbull"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 60, attack: 80, defense: 50,
                  sp_atk: 30, sp_def: 40, speed: 40
  pkmn.abilities :"INTIMIDATE", :"RUNAWAY"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 60
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 7.8
  pkmn.category "Fairy"
  pkmn.pokedex_entry "By baring its fangs and making a scary face, it sends smaller Pokémon scurrying in terror. The Snubbull does seem a little sad at making its foes flee."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TAILWHIP"
    m.at 1, :"GROWL"
    m.at 1, :"SCARYFACE"
    m.at 1, :"CHARM"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"TACKLE"
    m.at 7, :"BITE"
    m.at 13, :"LICK"
    m.at 19, :"HEADBUTT"
    m.at 25, :"ROAR"
    m.at 31, :"LASTRESORT"
    m.at 37, :"PLAYROUGH"
    m.at 43, :"PAYBACK"
    m.at 49, :"CRUNCH"
  end

  pkmn.egg_moves do |m|
    m.add :"COUNTER"
    m.add :"MIMIC"
    m.add :"PRESENT"
    m.add :"RETALIATE"
    m.add :"SNORE"
  end

  pkmn.evolutions do |evo|
    evo.to :"GRANBULL", method: :"Level", param: 23
  end
end
