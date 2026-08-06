#=============================================================================
# Gholdengo - STEEL Type
#=============================================================================

GameData::Species.define :"GHOLDENGO" do |pkmn|
  pkmn.name "Gholdengo"
  pkmn.types :"STEEL", :"GHOST"
  pkmn.base_stats hp: 87, attack: 60, defense: 95,
                  sp_atk: 84, sp_def: 133, speed: 91
  pkmn.abilities :"GOODASGOLD"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 12800
  pkmn.height 1.2
  pkmn.weight 30.0
  pkmn.category "Coin Entity"
  pkmn.pokedex_entry "Its body seems to be made up of 1,000 coins. This Pokémon gets along well with others and is quick to make friends with anybody."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"TACKLE"
    m.at 7, :"NIGHTSHADE"
    m.at 14, :"CONFUSERAY"
    m.at 21, :"SUBSTITUTE"
    m.at 28, :"METALSOUND"
    m.at 35, :"SHADOWBALL"
    m.at 42, :"RECOVER"
    m.at 49, :"POWERGEM"
    m.at 56, :"MAKEITRAIN"
    m.at 63, :"NASTYPLOT"
    m.at 70, :"MEMENTO"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"CONFUSERAY", :"DAZZLINGGLEAM", :"ELECTROBALL", :"ENDURE", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"HEAVYSLAM", :"HEX", :"HYPERBEAM", :"IRONHEAD", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"METALSOUND", :"NASTYPLOT", :"NIGHTSHADE", :"POLTERGEIST", :"POWERGEM", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"REFLECT", :"REST", :"SANDSTORM", :"SHADOWBALL", :"SLEEPTALK", :"STEELBEAM", :"SUBSTITUTE", :"TAKEDOWN", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TRICK"
end

GameData::SpeciesMetrics.define :"GHOLDENGO" do |m|
  m.back_sprite 0, 46
  m.front_sprite -2, 12
  m.shadow_sprite 0, 0, 1
end