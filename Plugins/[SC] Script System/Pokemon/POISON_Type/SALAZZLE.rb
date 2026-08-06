#=============================================================================
# Salazzle - POISON Type
#=============================================================================

GameData::Species.define :"SALAZZLE" do |pkmn|
  pkmn.name "Salazzle"
  pkmn.types :"POISON", :"FIRE"
  pkmn.base_stats hp: 68, attack: 64, defense: 60,
                  sp_atk: 117, sp_def: 111, speed: 60
  pkmn.abilities :"CORROSION"
  pkmn.hidden_abilities :"OBLIVIOUS"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 168
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 22.2
  pkmn.category "Toxic Lizard"
  pkmn.pokedex_entry "Filled with pheromones, its poisonous gas can be diluted to use in the production of luscious perfumes."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"FIRELASH"
    m.at 1, :"KNOCKOFF"
    m.at 1, :"ENCORE"
    m.at 1, :"TORMENT"
    m.at 1, :"SWAGGER"
    m.at 1, :"DISABLE"
    m.at 1, :"SCRATCH"
    m.at 1, :"ENDEAVOR"
    m.at 1, :"POUND"
    m.at 1, :"POISONGAS"
    m.at 1, :"SMOG"
    m.at 1, :"EMBER"
    m.at 15, :"POISONFANG"
    m.at 20, :"SWEETSCENT"
    m.at 25, :"NASTYPLOT"
    m.at 30, :"INCINERATE"
    m.at 37, :"VENOSHOCK"
    m.at 44, :"DRAGONPULSE"
    m.at 51, :"VENOMDRENCH"
    m.at 58, :"FLAMETHROWER"
    m.at 65, :"TOXIC"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BEATUP", :"BREAKINGSWIPE", :"CAPTIVATE", :"CONFIDE", :"CORROSIVEGAS", :"COVET", :"CROSSPOISON", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"ENCORE", :"ENDURE", :"FACADE", :"FAKETEARS", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GUNKSHOT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LASERFOCUS", :"LEECHLIFE", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCALESHOT", :"SECRETPOWER", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"VENOMDRENCH", :"VENOSHOCK", :"WILLOWISP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SALAZZLE" do |m|
  m.back_sprite -1, 62
  m.front_sprite 0, 34
end