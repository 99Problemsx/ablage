#=============================================================================
# Abra - PSYCHIC Type
#=============================================================================

GameData::Species.define :"ABRA" do |pkmn|
  pkmn.name "Abra"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 25, attack: 20, defense: 15,
                  sp_atk: 90, sp_def: 105, speed: 55
  pkmn.abilities :"SYNCHRONIZE", :"INNERFOCUS"
  pkmn.hidden_abilities :"MAGICGUARD"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 19.5
  pkmn.category "Psi"
  pkmn.pokedex_entry "A Pokémon that sleeps 18 hours a day. Observation revealed that it uses Teleport to change its location once every hour."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TELEPORT"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"BARRIER", :"ENCORE", :"FIREPUNCH", :"GUARDSPLIT", :"GUARDSWAP", :"ICEPUNCH", :"KNOCKOFF", :"POWERTRICK", :"SKILLSWAP", :"THUNDERPUNCH"
end

GameData::SpeciesMetrics.define :"ABRA" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, 25
  m.shadow_sprite 0, 0, 2
end