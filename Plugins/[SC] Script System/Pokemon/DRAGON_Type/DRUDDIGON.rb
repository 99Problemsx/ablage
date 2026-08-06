#=============================================================================
# Druddigon - DRAGON Type
#=============================================================================

GameData::Species.define :"DRUDDIGON" do |pkmn|
  pkmn.name "Druddigon"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 77, attack: 120, defense: 90,
                  sp_atk: 48, sp_def: 60, speed: 90
  pkmn.abilities :"ROUGHSKIN", :"SHEERFORCE"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 170
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.6
  pkmn.weight 139.0
  pkmn.category "Cave"
  pkmn.pokedex_entry "It races through narrow caves, using its sharp claws to catch prey. Then skin on its face is harder than a rock."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"SCRATCH"
    m.at 5, :"HONECLAWS"
    m.at 9, :"BITE"
    m.at 13, :"SCARYFACE"
    m.at 18, :"DRAGONRAGE"
    m.at 21, :"SLASH"
    m.at 25, :"CRUNCH"
    m.at 27, :"DRAGONCLAW"
    m.at 31, :"CHIPAWAY"
    m.at 35, :"REVENGE"
    m.at 40, :"NIGHTSLASH"
    m.at 45, :"DRAGONTAIL"
    m.at 49, :"ROCKCLIMB"
    m.at 55, :"SUPERPOWER"
    m.at 62, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLAMETHROWER", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNARL", :"SNATCH", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC"
  pkmn.egg_moves :"CRUSHCLAW", :"FEINTATTACK", :"FIREFANG", :"GLARE", :"IRONTAIL", :"METALCLAW", :"POISONTAIL", :"PURSUIT", :"SNATCH", :"SUCKERPUNCH", :"THUNDERFANG"
end

GameData::SpeciesMetrics.define :"DRUDDIGON" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 3
end