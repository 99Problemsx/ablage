#=============================================================================
# Zweilous - DARK Type
#=============================================================================

GameData::Species.define :"ZWEILOUS" do |pkmn|
  pkmn.name "Zweilous"
  pkmn.types :"DARK", :"DRAGON"
  pkmn.base_stats hp: 72, attack: 85, defense: 70,
                  sp_atk: 58, sp_def: 65, speed: 70
  pkmn.abilities :"HUSTLE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.4
  pkmn.weight 50.0
  pkmn.category "Hostile"
  pkmn.pokedex_entry "Since their two heads do not get along and compete with each other for food, they always eat too much."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"DOUBLEHIT"
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
    m.at 64, :"HYPERVOICE"
    m.at 71, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"HYPERVOICE", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"UPROAR", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ZWEILOUS" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 20
  m.shadow_sprite 0, 0, 3
end