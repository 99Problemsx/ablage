#=============================================================================
# Hydreigon - DARK Type
#=============================================================================

GameData::Species.define :"HYDREIGON" do |pkmn|
  pkmn.name "Hydreigon"
  pkmn.types :"DARK", :"DRAGON"
  pkmn.base_stats hp: 92, attack: 105, defense: 90,
                  sp_atk: 98, sp_def: 125, speed: 90
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.8
  pkmn.weight 160.0
  pkmn.category "Brutal"
  pkmn.pokedex_entry "The heads on their arms do not have brains. They use all three heads to consume and destroy everything."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TRIATTACK"
    m.at 1, :"DRAGONRAGE"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"BITE"
    m.at 4, :"FOCUSENERGY"
    m.at 9, :"BITE"
    m.at 12, :"HEADBUTT"
    m.at 17, :"DRAGONBREATH"
    m.at 20, :"ROAR"
    m.at 25, :"CRUNCH"
    m.at 28, :"SLAM"
    m.at 32, :"DRAGONPULSE"
    m.at 38, :"WORKUP"
    m.at 42, :"DRAGONRUSH"
    m.at 48, :"BODYSLAM"
    m.at 55, :"SCARYFACE"
    m.at 68, :"HYPERVOICE"
    m.at 79, :"OUTRAGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AQUATAIL", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASHCANNON", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAILWIND", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"HYDREIGON" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 4
  m.shadow_sprite 0, 0, 3
end