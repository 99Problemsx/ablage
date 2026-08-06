#=============================================================================
# Clefairy - FAIRY Type
#=============================================================================

GameData::Species.define :"CLEFAIRY" do |pkmn|
  pkmn.name "Clefairy"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 70, attack: 45, defense: 48,
                  sp_atk: 35, sp_def: 60, speed: 65
  pkmn.abilities :"CUTECHARM", :"MAGICGUARD"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 113
  pkmn.catch_rate 150
  pkmn.happiness 140
  pkmn.hatch_steps 2560
  pkmn.height 0.6
  pkmn.weight 7.5
  pkmn.category "Fairy"
  pkmn.pokedex_entry "On every night of a full moon, they come out to play. When dawn arrives, the tired Clefairy go to sleep nestled up against each other in deep and quiet mountains."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"SING"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"DISARMINGVOICE"
    m.at 1, :"SPLASH"
    m.at 1, :"SWEETKISS"
    m.at 1, :"CHARM"
    m.at 1, :"COPYCAT"
    m.at 4, :"STOREDPOWER"
    m.at 8, :"ENCORE"
    m.at 12, :"AFTERYOU"
    m.at 16, :"LIFEDEW"
    m.at 20, :"METRONOME"
    m.at 24, :"MOONLIGHT"
    m.at 28, :"GRAVITY"
    m.at 32, :"METEORMASH"
    m.at 36, :"FOLLOWME"
    m.at 40, :"COSMICPOWER"
    m.at 44, :"MOONBLAST"
    m.at 48, :"HEALINGWISH"
  end

  pkmn.evolutions do |evo|
    evo.to :"CLEFABLE", method: :"Item", param: :"MOONSTONE"
  end
end
