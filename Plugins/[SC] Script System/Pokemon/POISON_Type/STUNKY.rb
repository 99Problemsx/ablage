#=============================================================================
# Stunky - POISON Type
#=============================================================================

GameData::Species.define :"STUNKY" do |pkmn|
  pkmn.name "Stunky"
  pkmn.types :"POISON", :"DARK"
  pkmn.base_stats hp: 63, attack: 63, defense: 47,
                  sp_atk: 74, sp_def: 41, speed: 41
  pkmn.abilities :"STENCH", :"AFTERMATH"
  pkmn.hidden_abilities :"KEENEYE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 225
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 19.2
  pkmn.category "Skunk"
  pkmn.pokedex_entry "It protects itself by spraying a noxious fluid from its rear. The stench lingers for 24 hours."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"FOCUSENERGY"
    m.at 4, :"POISONGAS"
    m.at 7, :"SCREECH"
    m.at 10, :"FURYSWIPES"
    m.at 14, :"SMOKESCREEN"
    m.at 18, :"FEINT"
    m.at 22, :"SLASH"
    m.at 27, :"TOXIC"
    m.at 32, :"ACIDSPRAY"
    m.at 37, :"NIGHTSLASH"
    m.at 43, :"MEMENTO"
    m.at 49, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DEFOG", :"DIG", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"ASTONISH", :"CRUNCH", :"DOUBLEEDGE", :"FLAMEBURST", :"FOULPLAY", :"HAZE", :"IRONTAIL", :"LEER", :"PUNISHMENT", :"PURSUIT", :"SCARYFACE", :"SMOG"
end

GameData::SpeciesMetrics.define :"STUNKY" do |m|
  m.back_sprite -3, 0
  m.front_sprite 4, 20
  m.shadow_sprite 0, 0, 2
end