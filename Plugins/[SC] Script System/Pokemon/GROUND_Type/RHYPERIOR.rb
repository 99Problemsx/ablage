#=============================================================================
# Rhyperior - GROUND Type
#=============================================================================

GameData::Species.define :"RHYPERIOR" do |pkmn|
  pkmn.name "Rhyperior"
  pkmn.types :"GROUND", :"ROCK"
  pkmn.base_stats hp: 115, attack: 140, defense: 130,
                  sp_atk: 40, sp_def: 55, speed: 55
  pkmn.abilities :"LIGHTNINGROD", :"SOLIDROCK"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 241
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.4
  pkmn.weight 282.8
  pkmn.category "Drill"
  pkmn.pokedex_entry "It puts rocks in holes in its palms and uses its muscles to shoot them. Geodude are shot at rare times."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POISONJAB"
    m.at 1, :"HORNATTACK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"STOMP"
    m.at 1, :"FURYATTACK"
    m.at 9, :"STOMP"
    m.at 19, :"FURYATTACK"
    m.at 19, :"SCARYFACE"
    m.at 23, :"ROCKBLAST"
    m.at 30, :"CHIPAWAY"
    m.at 41, :"TAKEDOWN"
    m.at 42, :"HAMMERARM"
    m.at 47, :"DRILLRUN"
    m.at 56, :"STONEEDGE"
    m.at 62, :"EARTHQUAKE"
    m.at 71, :"HORNDRILL"
    m.at 77, :"MEGAHORN"
    m.at 86, :"ROCKWRECKER"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"DRILLRUN", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"RHYPERIOR" do |m|
  m.back_sprite 1, 0
  m.front_sprite 6, 8
  m.shadow_sprite 0, 0, 3
end