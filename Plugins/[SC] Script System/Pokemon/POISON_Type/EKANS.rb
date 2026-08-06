#=============================================================================
# Ekans - POISON Type
#=============================================================================

GameData::Species.define :"EKANS" do |pkmn|
  pkmn.name "Ekans"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 35, attack: 60, defense: 44,
                  sp_atk: 55, sp_def: 40, speed: 54
  pkmn.abilities :"INTIMIDATE", :"SHEDSKIN"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 58
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 6.9
  pkmn.category "Snake"
  pkmn.pokedex_entry "An Ekans curls itself up in a spiral while it rests. This position allows it to quickly respond to an enemy from any direction with a threat from its upraised head."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"LEER"
    m.at 4, :"POISONSTING"
    m.at 9, :"BITE"
    m.at 12, :"GLARE"
    m.at 17, :"SCREECH"
    m.at 20, :"ACID"
    m.at 25, :"STOCKPILE"
    m.at 25, :"SWALLOW"
    m.at 25, :"SPITUP"
    m.at 28, :"ACIDSPRAY"
    m.at 33, :"MUDBOMB"
    m.at 36, :"GASTROACID"
    m.at 41, :"HAZE"
    m.at 44, :"COIL"
    m.at 49, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TORMENT", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"BEATUP", :"DISABLE", :"IRONTAIL", :"POISONFANG", :"POISONTAIL", :"PURSUIT", :"SCARYFACE", :"SLAM", :"SNATCH", :"SPITE", :"SUCKERPUNCH", :"SWITCHEROO"
end

GameData::SpeciesMetrics.define :"EKANS" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 24
  m.shadow_sprite 0, 0, 2
end