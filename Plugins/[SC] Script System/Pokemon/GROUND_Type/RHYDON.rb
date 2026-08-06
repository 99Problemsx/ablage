#=============================================================================
# Rhydon - GROUND Type
#=============================================================================

GameData::Species.define :"RHYDON" do |pkmn|
  pkmn.name "Rhydon"
  pkmn.types :"GROUND", :"ROCK"
  pkmn.base_stats hp: 105, attack: 130, defense: 120,
                  sp_atk: 40, sp_def: 45, speed: 45
  pkmn.abilities :"LIGHTNINGROD", :"ROCKHEAD"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 170
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.9
  pkmn.weight 120.0
  pkmn.category "Drill"
  pkmn.pokedex_entry "Its horn, which rotates like a drill, destroys tall buildings with one strike. It stands on its hind legs, and its brain is well developed."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"HORNATTACK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"STOMP"
    m.at 1, :"FURYATTACK"
    m.at 9, :"STOMP"
    m.at 12, :"FURYATTACK"
    m.at 19, :"SCARYFACE"
    m.at 23, :"ROCKBLAST"
    m.at 30, :"BULLDOZE"
    m.at 34, :"CHIPAWAY"
    m.at 41, :"TAKEDOWN"
    m.at 42, :"HAMMERARM"
    m.at 47, :"DRILLRUN"
    m.at 56, :"STONEEDGE"
    m.at 62, :"EARTHQUAKE"
    m.at 71, :"HORNDRILL"
    m.at 77, :"MEGAHORN"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"DRILLRUN", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"RHYDON" do |m|
  m.back_sprite 5, 0
  m.front_sprite 2, 10
  m.shadow_sprite 0, 0, 3
end