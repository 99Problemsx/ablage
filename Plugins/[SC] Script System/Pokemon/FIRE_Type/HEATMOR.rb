#=============================================================================
# Heatmor - FIRE Type
#=============================================================================

GameData::Species.define :"HEATMOR" do |pkmn|
  pkmn.name "Heatmor"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 85, attack: 97, defense: 66,
                  sp_atk: 65, sp_def: 105, speed: 66
  pkmn.abilities :"GLUTTONY", :"FLASHFIRE"
  pkmn.hidden_abilities :"WHITESMOKE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 169
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 58.0
  pkmn.category "Anteater"
  pkmn.pokedex_entry "Using their very hot, flame-covered tongues, they burn through Durant's steel bodies and consume their insides."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"INCINERATE"
    m.at 1, :"LICK"
    m.at 6, :"ODORSLEUTH"
    m.at 11, :"BIND"
    m.at 16, :"FIRESPIN"
    m.at 21, :"FURYSWIPES"
    m.at 26, :"SNATCH"
    m.at 31, :"FLAMEBURST"
    m.at 36, :"BUGBITE"
    m.at 41, :"SLASH"
    m.at 46, :"AMNESIA"
    m.at 51, :"FLAMETHROWER"
    m.at 56, :"STOCKPILE"
    m.at 56, :"SPITUP"
    m.at 56, :"SWALLOW"
    m.at 61, :"INFERNO"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BIND", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"KNOCKOFF", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"WILLOWISP"
  pkmn.egg_moves :"BODYSLAM", :"CURSE", :"FEINTATTACK", :"HEATWAVE", :"NIGHTSLASH", :"PURSUIT", :"SLEEPTALK", :"SUCKERPUNCH", :"TICKLE", :"WRAP"
end

GameData::SpeciesMetrics.define :"HEATMOR" do |m|
  m.back_sprite 3, 0
  m.front_sprite -2, 21
  m.shadow_sprite 0, 0, 3
end