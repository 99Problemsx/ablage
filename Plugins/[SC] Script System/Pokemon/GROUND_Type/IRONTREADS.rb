#=============================================================================
# Iron Treads - GROUND Type
#=============================================================================

GameData::Species.define :"IRONTREADS" do |pkmn|
  pkmn.name "Iron Treads"
  pkmn.types :"GROUND", :"STEEL"
  pkmn.base_stats hp: 90, attack: 112, defense: 120,
                  sp_atk: 106, sp_def: 72, speed: 70
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 0.9
  pkmn.weight 240.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "This Pokémon closely resembles a scientific weapon that a paranormal magazine claimed was sent to this planet by aliens."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ELECTRICTERRAIN"
    m.at 1, :"HORNATTACK"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"ROLLOUT"
    m.at 7, :"BULLDOZE"
    m.at 21, :"RAPIDSPIN"
    m.at 28, :"IRONHEAD"
    m.at 35, :"STOMPINGTANTRUM"
    m.at 42, :"KNOCKOFF"
    m.at 49, :"EARTHQUAKE"
    m.at 56, :"HEAVYSLAM"
    m.at 63, :"WILDCHARGE"
    m.at 70, :"ENDEAVOR"
    m.at 77, :"MEGAHORN"
    m.at 84, :"GIGAIMPACT"
    m.at 91, :"STEELROLLER"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ENDEAVOR", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GYROBALL", :"HARDPRESS", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEFANG", :"ICESPINNER", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"METALSOUND", :"MUDSHOT", :"MUDSLAP", :"PROTECT", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SMARTSTRIKE", :"STEALTHROCK", :"STEELBEAM", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUPERCELLSLAM", :"TAKEDOWN", :"THUNDER", :"THUNDERFANG", :"VOLTSWITCH", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"IRONTREADS" do |m|
  m.back_sprite 0, 51
  m.front_sprite -2, 26
  m.shadow_sprite 0, 0, 2
end