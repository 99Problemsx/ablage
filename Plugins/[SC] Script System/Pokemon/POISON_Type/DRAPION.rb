#=============================================================================
# Drapion - POISON Type
#=============================================================================

GameData::Species.define :"DRAPION" do |pkmn|
  pkmn.name "Drapion"
  pkmn.types :"POISON", :"DARK"
  pkmn.base_stats hp: 70, attack: 90, defense: 110,
                  sp_atk: 95, sp_def: 60, speed: 75
  pkmn.abilities :"BATTLEARMOR", :"SNIPER"
  pkmn.hidden_abilities :"KEENEYE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 175
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 61.5
  pkmn.category "Ogre Scorpion"
  pkmn.pokedex_entry "It has the power in its clawed arms to make scrap of a car. The tips of its claws release poison."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"THUNDERFANG"
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"BITE"
    m.at 1, :"POISONSTING"
    m.at 1, :"LEER"
    m.at 1, :"KNOCKOFF"
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
    m.at 43, :"SCARYFACE"
    m.at 49, :"CRUNCH"
    m.at 57, :"CROSSPOISON"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASH", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNORE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"DRAPION" do |m|
  m.back_sprite 7, 0
  m.front_sprite -11, 11
  m.shadow_sprite 0, 0, 3
end