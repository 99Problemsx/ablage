#=============================================================================
# Mankey - FIGHTING Type
#=============================================================================

GameData::Species.define :"MANKEY" do |pkmn|
  pkmn.name "Mankey"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 40, attack: 80, defense: 35,
                  sp_atk: 70, sp_def: 35, speed: 45
  pkmn.abilities :"VITALSPIRIT", :"ANGERPOINT"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 28.0
  pkmn.category "Pig Monkey"
  pkmn.pokedex_entry "When it starts shaking and its nasal breathing turns rough, it's a sure sign of anger. However, since this happens instantly, there is no time to flee."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"COVET"
    m.at 1, :"SCRATCH"
    m.at 1, :"LOWKICK"
    m.at 1, :"LEER"
    m.at 1, :"FOCUSENERGY"
    m.at 9, :"FURYSWIPES"
    m.at 13, :"KARATECHOP"
    m.at 17, :"SEISMICTOSS"
    m.at 21, :"SCREECH"
    m.at 25, :"ASSURANCE"
    m.at 33, :"SWAGGER"
    m.at 37, :"CROSSCHOP"
    m.at 41, :"THRASH"
    m.at 45, :"PUNISHMENT"
    m.at 49, :"CLOSECOMBAT"
    m.at 53, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"ICEPUNCH", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"UTURN", :"VACUUMWAVE", :"WORKUP"
  pkmn.egg_moves :"BEATUP", :"CLOSECOMBAT", :"COUNTER", :"ENCORE", :"FOCUSPUNCH", :"FORESIGHT", :"MEDITATE", :"REVENGE", :"REVERSAL", :"SLEEPTALK", :"SMELLINGSALTS"
end

GameData::SpeciesMetrics.define :"MANKEY" do |m|
  m.back_sprite -2, 0
  m.front_sprite 3, 20
  m.shadow_sprite 0, 0, 2
end