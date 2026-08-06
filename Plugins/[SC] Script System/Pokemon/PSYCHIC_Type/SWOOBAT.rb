#=============================================================================
# Swoobat - PSYCHIC Type
#=============================================================================

GameData::Species.define :"SWOOBAT" do |pkmn|
  pkmn.name "Swoobat"
  pkmn.types :"PSYCHIC", :"FLYING"
  pkmn.base_stats hp: 67, attack: 57, defense: 55,
                  sp_atk: 114, sp_def: 77, speed: 55
  pkmn.abilities :"UNAWARE", :"KLUTZ"
  pkmn.hidden_abilities :"SIMPLE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 149
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.9
  pkmn.weight 10.5
  pkmn.category "Courting"
  pkmn.pokedex_entry "Anyone who comes into contact with the ultrasonic waves emitted by a courting male experiences a positive mood shift."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying", :"Field"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 1, :"ODORSLEUTH"
    m.at 1, :"GUST"
    m.at 1, :"ASSURANCE"
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
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GYROBALL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUPERFANG", :"SWAGGER", :"TAILWIND", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SWOOBAT" do |m|
  m.back_sprite -3, 0
  m.front_sprite -1, 6
  m.shadow_sprite 0, 0, 2
end