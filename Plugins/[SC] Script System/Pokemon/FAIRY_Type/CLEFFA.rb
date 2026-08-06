#=============================================================================
# Cleffa - FAIRY Type
#=============================================================================

GameData::Species.define :"CLEFFA" do |pkmn|
  pkmn.name "Cleffa"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 50, attack: 25, defense: 28,
                  sp_atk: 15, sp_def: 45, speed: 55
  pkmn.abilities :"CUTECHARM", :"MAGICGUARD"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 44
  pkmn.catch_rate 150
  pkmn.happiness 140
  pkmn.hatch_steps 2560
  pkmn.height 0.3
  pkmn.weight 3.0
  pkmn.category "Star Shape"
  pkmn.pokedex_entry "On nights with many shooting stars, Cleffa can be seen dancing in a ring. They dance until daybreak, when they quench their thirst with the morning dew."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"COPYCAT"
    m.at 1, :"POUND"
    m.at 4, :"SING"
    m.at 8, :"SWEETKISS"
    m.at 12, :"DISARMINGVOICE"
    m.at 16, :"ENCORE"
    m.at 20, :"CHARM"
  end

  pkmn.egg_moves do |m|
    m.add :"HEALPULSE"
    m.add :"PRESENT"
    m.add :"TICKLE"
    m.add :"WISH"
  end

  pkmn.evolutions do |evo|
    evo.to :"CLEFAIRY", method: :"Happiness"
  end
end
