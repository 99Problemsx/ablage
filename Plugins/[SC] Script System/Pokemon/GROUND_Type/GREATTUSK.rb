#=============================================================================
# Great Tusk - GROUND Type
#=============================================================================

GameData::Species.define :"GREATTUSK" do |pkmn|
  pkmn.name "Great Tusk"
  pkmn.types :"GROUND", :"FIGHTING"
  pkmn.base_stats hp: 115, attack: 131, defense: 131,
                  sp_atk: 87, sp_def: 53, speed: 53
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 2.2
  pkmn.weight 320.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "Sightings of this Pokémon have occurred in recent years. The name Great Tusk was taken from a creature listed in a certain book."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SUNNYDAY"
    m.at 1, :"HORNATTACK"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"ROLLOUT"
    m.at 7, :"BULLDOZE"
    m.at 14, :"TAUNT"
    m.at 21, :"RAPIDSPIN"
    m.at 28, :"BRICKBREAK"
    m.at 35, :"STOMPINGTANTRUM"
    m.at 42, :"KNOCKOFF"
    m.at 49, :"EARTHQUAKE"
    m.at 56, :"GIGAIMPACT"
    m.at 63, :"CLOSECOMBAT"
    m.at 70, :"ENDEAVOR"
    m.at 77, :"MEGAHORN"
    m.at 84, :"HEADSMASH"
    m.at 91, :"HEADLONGRUSH"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CLOSECOMBAT", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"FLASHCANNON", :"GIGAIMPACT", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEFANG", :"ICESPINNER", :"IRONHEAD", :"KNOCKOFF", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"PSYSHOCK", :"REST", :"REVERSAL", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SMACKDOWN", :"SMARTSTRIKE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THROATCHOP", :"THUNDERFANG", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GREATTUSK" do |m|
  m.back_sprite 0, 52
  m.front_sprite -9, 27
  m.shadow_sprite 0, 0, 2
end