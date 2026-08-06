#=============================================================================
# Cranidos - ROCK Type
#=============================================================================

GameData::Species.define :"CRANIDOS" do |pkmn|
  pkmn.name "Cranidos"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 67, attack: 125, defense: 40,
                  sp_atk: 58, sp_def: 30, speed: 30
  pkmn.abilities :"MOLDBREAKER"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 70
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.9
  pkmn.weight 31.5
  pkmn.category "Head Butt"
  pkmn.pokedex_entry "It lived in jungles around 100 million years ago. Its skull is as hard as iron."
  pkmn.evs attack: 1
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
    m.at 33, :"ANCIENTPOWER"
    m.at 37, :"ZENHEADBUTT"
    m.at 42, :"SCREECH"
    m.at 46, :"HEADSMASH"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"ZENHEADBUTT"
  pkmn.egg_moves :"CRUNCH", :"CURSE", :"DOUBLEEDGE", :"HAMMERARM", :"IRONHEAD", :"IRONTAIL", :"LEER", :"SLAM", :"STOMP", :"THRASH", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"CRANIDOS" do |m|
  m.back_sprite 0, 0
  m.front_sprite -4, 17
  m.shadow_sprite 0, 0, 2
end