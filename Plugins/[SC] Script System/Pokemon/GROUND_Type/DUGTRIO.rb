#=============================================================================
# Dugtrio - GROUND Type
#=============================================================================

GameData::Species.define :"DUGTRIO" do |pkmn|
  pkmn.name "Dugtrio"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 35, attack: 80, defense: 50,
                  sp_atk: 120, sp_def: 50, speed: 70
  pkmn.abilities :"SANDVEIL", :"ARENATRAP"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 142
  pkmn.catch_rate 50
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 33.3
  pkmn.category "Mole"
  pkmn.pokedex_entry "Because the triplets originally split from one body, they think exactly alike. They work cooperatively to burrow endlessly through the ground."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"TRIATTACK"
    m.at 1, :"SCRATCH"
    m.at 1, :"SANDATTACK"
    m.at 1, :"GROWL"
    m.at 4, :"GROWL"
    m.at 7, :"ASTONISH"
    m.at 12, :"MUDSLAP"
    m.at 15, :"MAGNITUDE"
    m.at 18, :"BULLDOZE"
    m.at 23, :"SUCKERPUNCH"
    m.at 26, :"SANDTOMB"
    m.at 28, :"MUDBOMB"
    m.at 33, :"EARTHPOWER"
    m.at 40, :"DIG"
    m.at 45, :"SLASH"
    m.at 50, :"EARTHQUAKE"
    m.at 57, :"FISSURE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"DUGTRIO" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"DUGTRIO_1" do |pkmn|
  pkmn.species :"DUGTRIO"
  pkmn.form 1
  pkmn.name "Dugtrio"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 35, attack: 80, defense: 50,
                  sp_atk: 120, sp_def: 50, speed: 70
  pkmn.abilities :"SANDVEIL", :"ARENATRAP"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 142
  pkmn.catch_rate 50
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 33.3
  pkmn.category "Mole"
  pkmn.pokedex_entry "Because the triplets originally split from one body, they think exactly alike. They work cooperatively to burrow endlessly through the ground."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"TRIATTACK"
    m.at 1, :"SCRATCH"
    m.at 1, :"SANDATTACK"
    m.at 1, :"GROWL"
    m.at 4, :"GROWL"
    m.at 7, :"ASTONISH"
    m.at 12, :"MUDSLAP"
    m.at 15, :"MAGNITUDE"
    m.at 18, :"BULLDOZE"
    m.at 23, :"SUCKERPUNCH"
    m.at 26, :"SANDTOMB"
    m.at 28, :"MUDBOMB"
    m.at 33, :"EARTHPOWER"
    m.at 40, :"DIG"
    m.at 45, :"SLASH"
    m.at 50, :"EARTHQUAKE"
    m.at 57, :"FISSURE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"DUGTRIO_1" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 3
end