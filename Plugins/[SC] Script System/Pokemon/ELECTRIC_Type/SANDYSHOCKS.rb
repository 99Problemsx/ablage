#=============================================================================
# Sandy Shocks - ELECTRIC Type
#=============================================================================

GameData::Species.define :"SANDYSHOCKS" do |pkmn|
  pkmn.name "Sandy Shocks"
  pkmn.types :"ELECTRIC", :"GROUND"
  pkmn.base_stats hp: 85, attack: 81, defense: 97,
                  sp_atk: 101, sp_def: 121, speed: 85
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 2.3
  pkmn.weight 60.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "No records exist of this Pokémon being caught. Data is lacking, but the Pokémon’s traits match up with a creature shown in an expedition journal."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"SUNNYDAY"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"ELECTRICTERRAIN"
    m.at 1, :"SUPERSONIC"
    m.at 7, :"SPARK"
    m.at 14, :"BULLDOZE"
    m.at 21, :"CHARGEBEAM"
    m.at 28, :"TRIATTACK"
    m.at 35, :"SCREECH"
    m.at 42, :"HEAVYSLAM"
    m.at 49, :"METALSOUND"
    m.at 56, :"DISCHARGE"
    m.at 63, :"EARTHPOWER"
    m.at 70, :"MIRRORCOAT"
    m.at 77, :"GRAVITY"
    m.at 84, :"ZAPCANNON"
    m.at 91, :"MAGNETICFLUX"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CHARGE", :"CHARGEBEAM", :"EARTHPOWER", :"EARTHQUAKE", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GRAVITY", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"LIGHTSCREEN", :"METALSOUND", :"MUDSHOT", :"POWERGEM", :"PROTECT", :"REFLECT", :"REST", :"SANDSTORM", :"SANDTOMB", :"SCORCHINGSANDS", :"SLEEPTALK", :"SPIKES", :"STEALTHROCK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"SWIFT", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"SANDYSHOCKS" do |m|
  m.back_sprite 0, 46
  m.front_sprite -3, 10
  m.shadow_sprite 0, 0, 2
end