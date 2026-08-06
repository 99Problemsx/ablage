#=============================================================================
# Salandit - POISON Type
#=============================================================================

GameData::Species.define :"SALANDIT" do |pkmn|
  pkmn.name "Salandit"
  pkmn.types :"POISON", :"FIRE"
  pkmn.base_stats hp: 48, attack: 44, defense: 40,
                  sp_atk: 77, sp_def: 71, speed: 40
  pkmn.abilities :"CORROSION"
  pkmn.hidden_abilities :"OBLIVIOUS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 64
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 4.8
  pkmn.category "Toxic Lizard"
  pkmn.pokedex_entry "It burns its bodily fluids to create a poisonous gas. When its enemies become disoriented from inhaling the gas, it attacks them."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"POISONGAS"
    m.at 5, :"SMOG"
    m.at 10, :"EMBER"
    m.at 15, :"POISONFANG"
    m.at 20, :"SWEETSCENT"
    m.at 25, :"NASTYPLOT"
    m.at 30, :"INCINERATE"
    m.at 35, :"VENOSHOCK"
    m.at 40, :"DRAGONPULSE"
    m.at 45, :"VENOMDRENCH"
    m.at 50, :"FLAMETHROWER"
    m.at 55, :"TOXIC"
    m.at 60, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ATTRACT", :"BEATUP", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GUNKSHOT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LEECHLIFE", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCALESHOT", :"SECRETPOWER", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"VENOMDRENCH", :"VENOSHOCK", :"WILLOWISP", :"TERABLAST"
  pkmn.egg_moves :"BELCH", :"FAKEOUT", :"MUDSLAP", :"SANDATTACK"
end

GameData::SpeciesMetrics.define :"SALANDIT" do |m|
  m.back_sprite 0, 52
  m.front_sprite 1, 26
end