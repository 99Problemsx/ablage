#=============================================================================
# Mareanie - POISON Type
#=============================================================================

GameData::Species.define :"MAREANIE" do |pkmn|
  pkmn.name "Mareanie"
  pkmn.types :"POISON", :"WATER"
  pkmn.base_stats hp: 50, attack: 53, defense: 62,
                  sp_atk: 45, sp_def: 43, speed: 52
  pkmn.abilities :"MERCILESS", :"LIMBER"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 8.0
  pkmn.category "Brutal Star"
  pkmn.pokedex_entry "It plunges the poison spike on its head into its prey. When the prey has weakened, Mareanie deals the finishing blow with its 10 tentacles."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 1, :"PECK"
    m.at 5, :"WIDEGUARD"
    m.at 10, :"BITE"
    m.at 15, :"VENOSHOCK"
    m.at 20, :"RECOVER"
    m.at 25, :"PINMISSILE"
    m.at 30, :"TOXICSPIKES"
    m.at 35, :"LIQUIDATION"
    m.at 40, :"VENOMDRENCH"
    m.at 45, :"POISONJAB"
    m.at 50, :"TOXIC"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"GASTROACID", :"GUNKSHOT", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"ICEBEAM", :"ICYWIND", :"INFESTATION", :"IRONDEFENSE", :"KNOCKOFF", :"LIQUIDATION", :"MAGICCOAT", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PINMISSILE", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"TOXICSPIKES", :"VENOMDRENCH", :"VENOSHOCK", :"WATERPULSE", :"TERABLAST"
  pkmn.egg_moves :"HAZE", :"INFESTATION", :"SPITUP", :"STOCKPILE", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"MAREANIE" do |m|
  m.back_sprite 0, 49
  m.front_sprite 2, 11
end