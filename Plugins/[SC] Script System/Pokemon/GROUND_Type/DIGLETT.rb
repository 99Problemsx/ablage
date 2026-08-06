#=============================================================================
# Diglett - GROUND Type
#=============================================================================

GameData::Species.define :"DIGLETT" do |pkmn|
  pkmn.name "Diglett"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 10, attack: 55, defense: 25,
                  sp_atk: 95, sp_def: 35, speed: 45
  pkmn.abilities :"SANDVEIL", :"ARENATRAP"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 53
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.2
  pkmn.weight 0.8
  pkmn.category "Mole"
  pkmn.pokedex_entry "Diglett are raised in most farms. The reason is simple--wherever they burrow, the soil is left perfectly tilled for growing delicious crops."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"SANDATTACK"
    m.at 4, :"GROWL"
    m.at 7, :"ASTONISH"
    m.at 12, :"MUDSLAP"
    m.at 15, :"MAGNITUDE"
    m.at 18, :"BULLDOZE"
    m.at 23, :"SUCKERPUNCH"
    m.at 26, :"MUDBOMB"
    m.at 29, :"EARTHPOWER"
    m.at 34, :"DIG"
    m.at 37, :"SLASH"
    m.at 40, :"EARTHQUAKE"
    m.at 45, :"FISSURE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"HONECLAWS", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"ANCIENTPOWER", :"ASTONISH", :"BEATUP", :"ENDURE", :"FEINTATTACK", :"FINALGAMBIT", :"HEADBUTT", :"MEMENTO", :"MUDBOMB", :"PURSUIT", :"REVERSAL", :"SCREECH", :"UPROAR"
end

GameData::SpeciesMetrics.define :"DIGLETT" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 29
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"DIGLETT_1" do |pkmn|
  pkmn.species :"DIGLETT"
  pkmn.form 1
  pkmn.name "Diglett"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 10, attack: 55, defense: 25,
                  sp_atk: 95, sp_def: 35, speed: 45
  pkmn.abilities :"SANDVEIL", :"ARENATRAP"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 53
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.2
  pkmn.weight 0.8
  pkmn.category "Mole"
  pkmn.pokedex_entry "Diglett are raised in most farms. The reason is simple--wherever they burrow, the soil is left perfectly tilled for growing delicious crops."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"SANDATTACK"
    m.at 4, :"GROWL"
    m.at 7, :"ASTONISH"
    m.at 12, :"MUDSLAP"
    m.at 15, :"MAGNITUDE"
    m.at 18, :"BULLDOZE"
    m.at 23, :"SUCKERPUNCH"
    m.at 26, :"MUDBOMB"
    m.at 29, :"EARTHPOWER"
    m.at 34, :"DIG"
    m.at 37, :"SLASH"
    m.at 40, :"EARTHQUAKE"
    m.at 45, :"FISSURE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"HONECLAWS", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"ANCIENTPOWER", :"ASTONISH", :"BEATUP", :"ENDURE", :"FEINTATTACK", :"FINALGAMBIT", :"HEADBUTT", :"MEMENTO", :"MUDBOMB", :"PURSUIT", :"REVERSAL", :"SCREECH", :"UPROAR"
end

GameData::SpeciesMetrics.define :"DIGLETT_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 29
  m.shadow_sprite 0, 0, 2
end