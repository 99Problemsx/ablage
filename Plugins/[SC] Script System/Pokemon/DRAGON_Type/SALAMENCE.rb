#=============================================================================
# Salamence - DRAGON Type
#=============================================================================

GameData::Species.define :"SALAMENCE" do |pkmn|
  pkmn.name "Salamence"
  pkmn.types :"DRAGON", :"FLYING"
  pkmn.base_stats hp: 95, attack: 135, defense: 80,
                  sp_atk: 100, sp_def: 110, speed: 80
  pkmn.abilities :"INTIMIDATE"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.5
  pkmn.weight 102.6
  pkmn.category "Dragon"
  pkmn.pokedex_entry "After many long years, its cellular structure underwent a sudden mutation to grow wings. When angered, it loses all thought and rampages out of control."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"FIREFANG"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"RAGE"
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 1, :"HEADBUTT"
    m.at 5, :"BITE"
    m.at 10, :"LEER"
    m.at 16, :"HEADBUTT"
    m.at 20, :"FOCUSENERGY"
    m.at 25, :"EMBER"
    m.at 30, :"PROTECT"
    m.at 32, :"DRAGONBREATH"
    m.at 37, :"ZENHEADBUTT"
    m.at 43, :"SCARYFACE"
    m.at 50, :"FLY"
    m.at 53, :"CRUNCH"
    m.at 61, :"DRAGONCLAW"
    m.at 70, :"DOUBLEEDGE"
    m.at 80, :"DRAGONTAIL"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"AQUATAIL", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DEFENSECURL", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"TWISTER", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SALAMENCE" do |m|
  m.back_sprite -1, 0
  m.front_sprite -2, 10
  m.shadow_sprite 0, 0, 3
end