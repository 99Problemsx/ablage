#=============================================================================
# Primeape - FIGHTING Type
#=============================================================================

GameData::Species.define :"PRIMEAPE" do |pkmn|
  pkmn.name "Primeape"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 65, attack: 105, defense: 60,
                  sp_atk: 95, sp_def: 60, speed: 70
  pkmn.abilities :"VITALSPIRIT", :"ANGERPOINT"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 159
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 32.0
  pkmn.category "Pig Monkey"
  pkmn.pokedex_entry "When it becomes furious, its blood circulation becomes more robust, and its muscles are made stronger. But it also becomes much less intelligent."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"FLING"
    m.at 1, :"SCRATCH"
    m.at 1, :"LOWKICK"
    m.at 1, :"LEER"
    m.at 1, :"FOCUSENERGY"
    m.at 9, :"FURYSWIPES"
    m.at 13, :"KARATECHOP"
    m.at 17, :"SEISMICTOSS"
    m.at 21, :"SCREECH"
    m.at 25, :"ASSURANCE"
    m.at 28, :"RAGE"
    m.at 35, :"SWAGGER"
    m.at 41, :"CROSSCHOP"
    m.at 47, :"THRASH"
    m.at 53, :"PUNISHMENT"
    m.at 59, :"CLOSECOMBAT"
    m.at 63, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEPUNCH", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"UTURN", :"VACUUMWAVE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"PRIMEAPE" do |m|
  m.back_sprite 5, 0
  m.front_sprite 3, 13
  m.shadow_sprite 0, 0, 3
end