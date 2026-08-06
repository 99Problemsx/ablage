#=============================================================================
# Medicham - FIGHTING Type
#=============================================================================

GameData::Species.define :"MEDICHAM" do |pkmn|
  pkmn.name "Medicham"
  pkmn.types :"FIGHTING", :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 60, defense: 75,
                  sp_atk: 80, sp_def: 60, speed: 75
  pkmn.abilities :"PUREPOWER"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 144
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 31.5
  pkmn.category "Meditate"
  pkmn.pokedex_entry "Through crushingly harsh yoga training, it gained the power to foretell its foe's actions. It battles with elegant, dance- like movement."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"FIREPUNCH"
    m.at 1, :"THUNDERPUNCH"
    m.at 1, :"ICEPUNCH"
    m.at 1, :"BIDE"
    m.at 1, :"MEDITATE"
    m.at 1, :"CONFUSION"
    m.at 1, :"DETECT"
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
    m.at 42, :"ACUPRESSURE"
    m.at 49, :"POWERTRICK"
    m.at 55, :"REVERSAL"
    m.at 62, :"RECOVER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"VACUUMWAVE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MEDICHAM" do |m|
  m.back_sprite 2, 0
  m.front_sprite 3, 7
  m.shadow_sprite 0, 0, 1
end