#=============================================================================
# Skuntank - POISON Type
#=============================================================================

GameData::Species.define :"SKUNTANK" do |pkmn|
  pkmn.name "Skuntank"
  pkmn.types :"POISON", :"DARK"
  pkmn.base_stats hp: 103, attack: 93, defense: 67,
                  sp_atk: 84, sp_def: 71, speed: 61
  pkmn.abilities :"STENCH", :"AFTERMATH"
  pkmn.hidden_abilities :"KEENEYE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 38.0
  pkmn.category "Skunk"
  pkmn.pokedex_entry "It sprays a vile-smelling fluid from the tip of its tail to attack. Its range is over 160 feet."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"POISONGAS"
    m.at 4, :"POISONGAS"
    m.at 7, :"SCREECH"
    m.at 10, :"FURYSWIPES"
    m.at 14, :"SMOKESCREEN"
    m.at 18, :"FEINT"
    m.at 22, :"SLASH"
    m.at 27, :"TOXIC"
    m.at 32, :"ACIDSPRAY"
    m.at 34, :"FLAMETHROWER"
    m.at 41, :"NIGHTSLASH"
    m.at 51, :"MEMENTO"
    m.at 61, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DEFOG", :"DIG", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"SKUNTANK" do |m|
  m.back_sprite 0, 0
  m.front_sprite -3, 15
  m.shadow_sprite 0, 0, 3
end