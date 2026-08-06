#=============================================================================
# Rampardos - ROCK Type
#=============================================================================

GameData::Species.define :"RAMPARDOS" do |pkmn|
  pkmn.name "Rampardos"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 97, attack: 165, defense: 60,
                  sp_atk: 58, sp_def: 65, speed: 50
  pkmn.abilities :"MOLDBREAKER"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.6
  pkmn.weight 102.5
  pkmn.category "Head Butt"
  pkmn.pokedex_entry "Its powerful head butt has enough power to shatter even the most durable things upon impact."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"HEADBUTT"
    m.at 1, :"LEER"
    m.at 6, :"FOCUSENERGY"
    m.at 10, :"PURSUIT"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"SCARYFACE"
    m.at 24, :"ASSURANCE"
    m.at 28, :"CHIPAWAY"
    m.at 30, :"ENDEAVOR"
    m.at 36, :"ANCIENTPOWER"
    m.at 43, :"ZENHEADBUTT"
    m.at 51, :"SCREECH"
    m.at 58, :"HEADSMASH"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"RAMPARDOS" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 3
  m.shadow_sprite 0, 0, 3
end