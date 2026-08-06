#=============================================================================
# Brute Bonnet - GRASS Type
#=============================================================================

GameData::Species.define :"BRUTEBONNET" do |pkmn|
  pkmn.name "Brute Bonnet"
  pkmn.types :"GRASS", :"DARK"
  pkmn.base_stats hp: 111, attack: 127, defense: 99,
                  sp_atk: 55, sp_def: 79, speed: 99
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 285
  pkmn.catch_rate 50
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.2
  pkmn.weight 21.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "It is possible that the creature listed as Brute Bonnet in a certain book could actually be this Pokémon."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"SUNNYDAY"
    m.at 1, :"ABSORB"
    m.at 1, :"GROWTH"
    m.at 1, :"ASTONISH"
    m.at 7, :"STUNSPORE"
    m.at 14, :"MEGADRAIN"
    m.at 21, :"SYNTHESIS"
    m.at 28, :"CLEARSMOG"
    m.at 35, :"PAYBACK"
    m.at 42, :"THRASH"
    m.at 49, :"GIGADRAIN"
    m.at 56, :"SUCKERPUNCH"
    m.at 63, :"SPORE"
    m.at 70, :"INGRAIN"
    m.at 77, :"RAGEPOWDER"
    m.at 91, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLETSEED", :"CLOSECOMBAT", :"CONFUSERAY", :"CRUNCH", :"DARKPULSE", :"DOUBLEEDGE", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"HEX", :"HYPERBEAM", :"LASHOUT", :"LEAFSTORM", :"MAGICALLEAF", :"OUTRAGE", :"POLLENPUFF", :"PROTECT", :"REST", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAUNT", :"THIEF", :"TRAILBLAZE", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BRUTEBONNET" do |m|
  m.back_sprite 0, 50
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 2
end