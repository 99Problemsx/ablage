#=============================================================================
# Iron Jugulis - DARK Type
#=============================================================================

GameData::Species.define :"IRONJUGULIS" do |pkmn|
  pkmn.name "Iron Jugulis"
  pkmn.types :"DARK", :"FLYING"
  pkmn.base_stats hp: 94, attack: 80, defense: 86,
                  sp_atk: 108, sp_def: 122, speed: 80
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.3
  pkmn.weight 111.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "It resembles a certain Pokémon introduced in a paranormal magazine, described as the offspring of a Hydreigon that fell in love with a robot."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WORKUP"
    m.at 1, :"ELECTRICTERRAIN"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"TRIATTACK"
    m.at 1, :"AIRCUTTER"
    m.at 7, :"ROAR"
    m.at 14, :"ASSURANCE"
    m.at 21, :"DRAGONBREATH"
    m.at 28, :"SNARL"
    m.at 35, :"CRUNCH"
    m.at 42, :"HYPERVOICE"
    m.at 56, :"AIRSLASH"
    m.at 63, :"KNOCKOFF"
    m.at 70, :"DARKPULSE"
    m.at 77, :"OUTRAGE"
    m.at 84, :"DRAGONPULSE"
    m.at 91, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AIRCUTTER", :"AIRSLASH", :"BODYSLAM", :"CHARGEBEAM", :"CRUNCH", :"DARKPULSE", :"DOUBLEEDGE", :"DRAGONCHEER", :"DRAGONPULSE", :"DRAGONTAIL", :"DUALWINGBEAT", :"EARTHPOWER", :"ELECTRICTERRAIN", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FLAMETHROWER", :"FLASHCANNON", :"FLY", :"FOCUSBLAST", :"GIGAIMPACT", :"HEATWAVE", :"HURRICANE", :"HYDROPUMP", :"HYPERBEAM", :"HYPERVOICE", :"IRONHEAD", :"KNOCKOFF", :"LASHOUT", :"METALSOUND", :"METEORBEAM", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"ROAR", :"ROCKTOMB", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"IRONJUGULIS" do |m|
  m.back_sprite 0, 40
  m.front_sprite 0, 3
  m.shadow_sprite 0, 0, 2
end