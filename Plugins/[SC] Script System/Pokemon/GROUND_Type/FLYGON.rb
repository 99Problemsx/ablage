#=============================================================================
# Flygon - GROUND Type
#=============================================================================

GameData::Species.define :"FLYGON" do |pkmn|
  pkmn.name "Flygon"
  pkmn.types :"GROUND", :"DRAGON"
  pkmn.base_stats hp: 80, attack: 100, defense: 80,
                  sp_atk: 100, sp_def: 80, speed: 80
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Winged"
  pkmn.base_exp 234
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 82.0
  pkmn.category "Mystic"
  pkmn.pokedex_entry "The flapping of its wings sounds like singing. To prevent detection by enemies, it hides itself by flapping up a cloud of desert sand."
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
    m.at 45, :"DRAGONTAIL"
    m.at 49, :"HYPERBEAM"
    m.at 55, :"DRAGONCLAW"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"DEFOG", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THUNDERPUNCH", :"TOXIC", :"TWISTER", :"UTURN"
end

GameData::SpeciesMetrics.define :"FLYGON" do |m|
  m.back_sprite -7, 0
  m.front_sprite 11, -4
  m.shadow_sprite 0, 0, 3
end