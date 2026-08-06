#=============================================================================
# Skorupi - POISON Type
#=============================================================================

GameData::Species.define :"SKORUPI" do |pkmn|
  pkmn.name "Skorupi"
  pkmn.types :"POISON", :"BUG"
  pkmn.base_stats hp: 40, attack: 50, defense: 90,
                  sp_atk: 65, sp_def: 30, speed: 55
  pkmn.abilities :"BATTLEARMOR", :"SNIPER"
  pkmn.hidden_abilities :"KEENEYE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 66
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 12.0
  pkmn.category "Scorpion"
  pkmn.pokedex_entry "It grips prey with its tail claws and injects poison. It tenaciously hangs on until the poison takes."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"POISONSTING"
    m.at 1, :"LEER"
    m.at 5, :"KNOCKOFF"
    m.at 9, :"PINMISSILE"
    m.at 13, :"ACUPRESSURE"
    m.at 16, :"PURSUIT"
    m.at 20, :"BUGBITE"
    m.at 23, :"POISONFANG"
    m.at 27, :"VENOSHOCK"
    m.at 30, :"HONECLAWS"
    m.at 34, :"TOXICSPIKES"
    m.at 38, :"NIGHTSLASH"
    m.at 41, :"SCARYFACE"
    m.at 45, :"CRUNCH"
    m.at 49, :"CROSSPOISON"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASH", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"VENOSHOCK", :"XSCISSOR"
  pkmn.egg_moves :"AGILITY", :"CONFUSERAY", :"FEINTATTACK", :"IRONTAIL", :"NIGHTSLASH", :"POISONTAIL", :"PURSUIT", :"SANDATTACK", :"SCREECH", :"SLASH", :"TWINEEDLE", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"SKORUPI" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 2
end