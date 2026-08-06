#=============================================================================
# Aggron - STEEL Type
#=============================================================================

GameData::Species.define :"AGGRON" do |pkmn|
  pkmn.name "Aggron"
  pkmn.types :"STEEL", :"ROCK"
  pkmn.base_stats hp: 70, attack: 110, defense: 180,
                  sp_atk: 50, sp_def: 60, speed: 60
  pkmn.abilities :"STURDY", :"ROCKHEAD"
  pkmn.hidden_abilities :"HEAVYMETAL"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 239
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 8995
  pkmn.height 2.1
  pkmn.weight 360.0
  pkmn.category "Iron Armor"
  pkmn.pokedex_entry "Its iron horns grow longer a little at a time. They are used to determine the Aggron's age. The gouges in its armor are worn with pride as mementos from battles."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"MUDSLAP"
    m.at 1, :"HEADBUTT"
    m.at 4, :"MUDSLAP"
    m.at 8, :"HEADBUTT"
    m.at 11, :"METALCLAW"
    m.at 15, :"IRONDEFENSE"
    m.at 18, :"ROAR"
    m.at 22, :"TAKEDOWN"
    m.at 25, :"IRONHEAD"
    m.at 29, :"PROTECT"
    m.at 34, :"METALSOUND"
    m.at 40, :"IRONTAIL"
    m.at 48, :"AUTOTOMIZE"
    m.at 57, :"HEAVYSLAM"
    m.at 65, :"DOUBLEEDGE"
    m.at 74, :"METALBURST"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"AGGRON" do |m|
  m.back_sprite 7, 0
  m.front_sprite -2, 10
  m.shadow_sprite 0, 0, 3
end