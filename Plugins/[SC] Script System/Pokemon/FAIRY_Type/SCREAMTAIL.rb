#=============================================================================
# Scream Tail - FAIRY Type
#=============================================================================

GameData::Species.define :"SCREAMTAIL" do |pkmn|
  pkmn.name "Scream Tail"
  pkmn.types :"FAIRY", :"PSYCHIC"
  pkmn.base_stats hp: 115, attack: 65, defense: 99,
                  sp_atk: 111, sp_def: 65, speed: 115
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 285
  pkmn.catch_rate 50
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.2
  pkmn.weight 8.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "There has been only one reported sighting of this Pokémon. It resembles a mysterious creature depicted in an old expedition journal."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"SUNNYDAY"
    m.at 1, :"POUND"
    m.at 1, :"SING"
    m.at 1, :"DISABLE"
    m.at 7, :"HOWL"
    m.at 14, :"NOBLEROAR"
    m.at 21, :"BITE"
    m.at 28, :"BODYSLAM"
    m.at 35, :"REST"
    m.at 42, :"PLAYROUGH"
    m.at 49, :"HYPERVOICE"
    m.at 56, :"PSYCHICFANGS"
    m.at 63, :"CRUNCH"
    m.at 70, :"WISH"
    m.at 77, :"GYROBALL"
    m.at 84, :"PERISHSONG"
    m.at 91, :"BOOMBURST"
  end
  pkmn.tutor_moves :"AMNESIA", :"BATONPASS", :"BLIZZARD", :"BODYSLAM", :"BULKUP", :"CALMMIND", :"CRUNCH", :"DAZZLINGGLEAM", :"DIG", :"DOUBLEEDGE", :"DRAINPUNCH", :"ENCORE", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FIREBLAST", :"FIREFANG", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"GIGAIMPACT", :"GRASSKNOT", :"GYROBALL", :"HELPINGHAND", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEFANG", :"ICEPUNCH", :"IMPRISON", :"LIGHTSCREEN", :"METRONOME", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"PLAYROUGH", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICFANGS", :"PSYCHICNOISE", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"ROAR", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SNOWSCAPE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERPUNCH", :"THUNDERWAVE", :"TRICK", :"TRICKROOM", :"UPROAR", :"WATERPULSE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SCREAMTAIL" do |m|
  m.back_sprite 0, 50
  m.front_sprite 5, 30
  m.shadow_sprite 0, 0, 1
end