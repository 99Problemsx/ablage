#=============================================================================
# Granbull - FAIRY Type
#=============================================================================

GameData::Species.define :"GRANBULL" do |pkmn|
  pkmn.name "Granbull"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 90, attack: 120, defense: 75,
                  sp_atk: 45, sp_def: 60, speed: 60
  pkmn.abilities :"INTIMIDATE", :"QUICKFEET"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 158
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.4
  pkmn.weight 48.7
  pkmn.category "Fairy"
  pkmn.pokedex_entry "It has a particularly well-developed lower jaw. The huge fangs are heavy, causing it to tilt its head. Unless it is startled, it will not try to bite."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"OUTRAGE"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"GROWL"
    m.at 1, :"ICEFANG"
    m.at 1, :"SCARYFACE"
    m.at 1, :"FIREFANG"
    m.at 1, :"CHARM"
    m.at 1, :"THUNDERFANG"
    m.at 7, :"BITE"
    m.at 13, :"LICK"
    m.at 19, :"HEADBUTT"
    m.at 27, :"ROAR"
    m.at 35, :"LASTRESORT"
    m.at 43, :"PLAYROUGH"
    m.at 51, :"PAYBACK"
    m.at 59, :"CRUNCH"
  end
end
