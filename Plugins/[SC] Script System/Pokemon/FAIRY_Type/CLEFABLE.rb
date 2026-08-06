#=============================================================================
# Clefable - FAIRY Type
#=============================================================================

GameData::Species.define :"CLEFABLE" do |pkmn|
  pkmn.name "Clefable"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 95, attack: 70, defense: 73,
                  sp_atk: 60, sp_def: 95, speed: 90
  pkmn.abilities :"CUTECHARM", :"MAGICGUARD"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 242
  pkmn.catch_rate 25
  pkmn.happiness 140
  pkmn.hatch_steps 2560
  pkmn.height 1.3
  pkmn.weight 40.0
  pkmn.category "Fairy"
  pkmn.pokedex_entry "A Clefable uses its wings to skip lightly as if it were flying. Its bouncy step lets it even walk on water. On quiet, moonlit nights, it strolls on lakes."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at -1, :"POUND"
    m.at -1, :"GROWL"
    m.at -1, :"SING"
    m.at -1, :"DEFENSECURL"
    m.at -1, :"SPLASH"
    m.at -1, :"SWEETKISS"
    m.at -1, :"CHARM"
    m.at -1, :"ENCORE"
    m.at -1, :"MOONLIGHT"
    m.at -1, :"FOLLOWME"
    m.at -1, :"COSMICPOWER"
    m.at -1, :"GRAVITY"
    m.at -1, :"HEALINGWISH"
    m.at -1, :"COPYCAT"
    m.at -1, :"AFTERYOU"
    m.at -1, :"STOREDPOWER"
    m.at -1, :"DISARMINGVOICE"
    m.at 1, :"METEORMASH"
    m.at 1, :"MOONBLAST"
    m.at 1, :"LIFEDEW"
    m.at 1, :"METRONOME"
  end
end
