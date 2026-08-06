#=============================================================================
# Seviper - POISON Type
#=============================================================================

GameData::Species.define :"SEVIPER" do |pkmn|
  pkmn.name "Seviper"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 73, attack: 100, defense: 60,
                  sp_atk: 65, sp_def: 100, speed: 60
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Black"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 160
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.7
  pkmn.weight 52.5
  pkmn.category "Fang Snake"
  pkmn.pokedex_entry "Seviper and Zangoose are eternal rivals. It counters a Zangoose's dazzling agility with its swordlike tail, which also oozes a horrible poison."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"LICK"
    m.at 5, :"BITE"
    m.at 9, :"SWAGGER"
    m.at 12, :"POISONTAIL"
    m.at 16, :"SCREECH"
    m.at 20, :"VENOSHOCK"
    m.at 23, :"GLARE"
    m.at 27, :"POISONFANG"
    m.at 31, :"NIGHTSLASH"
    m.at 34, :"GASTROACID"
    m.at 38, :"HAZE"
    m.at 42, :"POISONJAB"
    m.at 45, :"CRUNCH"
    m.at 49, :"COIL"
    m.at 53, :"WRINGOUT"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLAMETHROWER", :"FRUSTRATION", :"FURYCUTTER", :"GASTROACID", :"GIGADRAIN", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TOXIC", :"VENOSHOCK", :"XSCISSOR"
  pkmn.egg_moves :"ASSURANCE", :"BODYSLAM", :"FINALGAMBIT", :"IRONTAIL", :"NIGHTSLASH", :"PUNISHMENT", :"SCARYFACE", :"SPITUP", :"STOCKPILE", :"SWALLOW", :"SWITCHEROO", :"WRINGOUT"
end

GameData::SpeciesMetrics.define :"SEVIPER" do |m|
  m.back_sprite 4, 0
  m.front_sprite 5, 9
  m.shadow_sprite 0, 0, 3
end