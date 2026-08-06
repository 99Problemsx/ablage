#=============================================================================
# Woobat - PSYCHIC Type
#=============================================================================

GameData::Species.define :"WOOBAT" do |pkmn|
  pkmn.name "Woobat"
  pkmn.types :"PSYCHIC", :"FLYING"
  pkmn.base_stats hp: 55, attack: 45, defense: 43,
                  sp_atk: 72, sp_def: 55, speed: 43
  pkmn.abilities :"UNAWARE", :"KLUTZ"
  pkmn.hidden_abilities :"SIMPLE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 63
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 2.1
  pkmn.category "Bat"
  pkmn.pokedex_entry "Suction from its nostrils enables it to stick to cave walls during sleep. It leaves a heart-shaped mark behind."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying", :"Field"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 4, :"ODORSLEUTH"
    m.at 8, :"GUST"
    m.at 12, :"ASSURANCE"
    m.at 15, :"HEARTSTAMP"
    m.at 19, :"IMPRISON"
    m.at 21, :"AIRCUTTER"
    m.at 25, :"ATTRACT"
    m.at 29, :"AMNESIA"
    m.at 29, :"CALMMIND"
    m.at 32, :"AIRSLASH"
    m.at 36, :"FUTURESIGHT"
    m.at 41, :"PSYCHIC"
    m.at 47, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GYROBALL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUPERFANG", :"SWAGGER", :"TAILWIND", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"ZENHEADBUTT"
  pkmn.egg_moves :"CHARM", :"FAKETEARS", :"FLATTER", :"HELPINGHAND", :"KNOCKOFF", :"ROOST", :"STOREDPOWER", :"SUPERSONIC", :"SYNCHRONOISE"
end

GameData::SpeciesMetrics.define :"WOOBAT" do |m|
  m.back_sprite 2, 0
  m.front_sprite 3, 13
  m.shadow_sprite 0, 0, 2
end