#=============================================================================
# Vibrava - GROUND Type
#=============================================================================

GameData::Species.define :"VIBRAVA" do |pkmn|
  pkmn.name "Vibrava"
  pkmn.types :"GROUND", :"DRAGON"
  pkmn.base_stats hp: 50, attack: 70, defense: 50,
                  sp_atk: 70, sp_def: 50, speed: 50
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 119
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 15.3
  pkmn.category "Vibration"
  pkmn.pokedex_entry "It looses ultrasonic waves by rubbing its wings together. Since a Vibrava's wings are still in the process of growing, it can only fly short distances."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"SONICBOOM"
    m.at 1, :"SANDATTACK"
    m.at 1, :"FEINTATTACK"
    m.at 1, :"SANDTOMB"
    m.at 4, :"SANDATTACK"
    m.at 7, :"FEINTATTACK"
    m.at 10, :"SANDTOMB"
    m.at 13, :"MUDSLAP"
    m.at 17, :"BIDE"
    m.at 21, :"BULLDOZE"
    m.at 25, :"ROCKSLIDE"
    m.at 29, :"SUPERSONIC"
    m.at 34, :"SCREECH"
    m.at 35, :"DRAGONBREATH"
    m.at 39, :"EARTHPOWER"
    m.at 44, :"SANDSTORM"
    m.at 49, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"DEFOG", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"TWISTER", :"UTURN"
end

GameData::SpeciesMetrics.define :"VIBRAVA" do |m|
  m.back_sprite -11, 0
  m.front_sprite -1, -3
  m.shadow_sprite 0, 0, 2
end