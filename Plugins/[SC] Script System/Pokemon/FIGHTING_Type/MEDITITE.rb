#=============================================================================
# Meditite - FIGHTING Type
#=============================================================================

GameData::Species.define :"MEDITITE" do |pkmn|
  pkmn.name "Meditite"
  pkmn.types :"FIGHTING", :"PSYCHIC"
  pkmn.base_stats hp: 30, attack: 40, defense: 55,
                  sp_atk: 60, sp_def: 40, speed: 55
  pkmn.abilities :"PUREPOWER"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 56
  pkmn.catch_rate 180
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 11.2
  pkmn.category "Meditate"
  pkmn.pokedex_entry "It continually meditates for hours every day. As a result of rigorous and dedicated yoga training, it has tempered its spiritual power so much it can fly."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"BIDE"
    m.at 4, :"MEDITATE"
    m.at 8, :"CONFUSION"
    m.at 11, :"DETECT"
    m.at 15, :"HIDDENPOWER"
    m.at 18, :"MINDREADER"
    m.at 22, :"FEINT"
    m.at 25, :"CALMMIND"
    m.at 29, :"FORCEPALM"
    m.at 32, :"HIGHJUMPKICK"
    m.at 36, :"PSYCHUP"
    m.at 39, :"ACUPRESSURE"
    m.at 43, :"POWERTRICK"
    m.at 46, :"REVERSAL"
    m.at 50, :"RECOVER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"VACUUMWAVE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"BATONPASS", :"BULLETPUNCH", :"DRAINPUNCH", :"DYNAMICPUNCH", :"FAKEOUT", :"FIREPUNCH", :"FORESIGHT", :"GUARDSWAP", :"ICEPUNCH", :"POWERSWAP", :"PSYCHOCUT", :"SECRETPOWER", :"THUNDERPUNCH"
end

GameData::SpeciesMetrics.define :"MEDITITE" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 22
  m.shadow_sprite 0, 0, 2
end