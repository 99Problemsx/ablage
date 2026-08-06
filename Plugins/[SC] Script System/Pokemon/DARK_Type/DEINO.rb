#=============================================================================
# Deino - DARK Type
#=============================================================================

GameData::Species.define :"DEINO" do |pkmn|
  pkmn.name "Deino"
  pkmn.types :"DARK", :"DRAGON"
  pkmn.base_stats hp: 52, attack: 65, defense: 50,
                  sp_atk: 38, sp_def: 45, speed: 50
  pkmn.abilities :"HUSTLE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 60
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 0.8
  pkmn.weight 17.3
  pkmn.category "Irate"
  pkmn.pokedex_entry "They cannot see, so they tackle and bite to learn about their surroundings. Their bodies are covered in wounds."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"DRAGONRAGE"
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
    m.at 52, :"SCARYFACE"
    m.at 58, :"HYPERVOICE"
    m.at 62, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"HYPERVOICE", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"UPROAR", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"ASSURANCE", :"ASTONISH", :"DARKPULSE", :"DOUBLEHIT", :"EARTHPOWER", :"FIREFANG", :"HEADSMASH", :"ICEFANG", :"SCREECH", :"THUNDERFANG"
end

GameData::SpeciesMetrics.define :"DEINO" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 29
  m.shadow_sprite 0, 0, 2
end