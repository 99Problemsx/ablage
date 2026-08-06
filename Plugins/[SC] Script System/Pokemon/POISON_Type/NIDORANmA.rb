#=============================================================================
# Nidoran - POISON Type
#=============================================================================

GameData::Species.define :"NIDORANmA" do |pkmn|
  pkmn.name "Nidoran"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 46, attack: 57, defense: 40,
                  sp_atk: 50, sp_def: 40, speed: 40
  pkmn.abilities :"POISONPOINT", :"RIVALRY"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 55
  pkmn.catch_rate 235
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 9.0
  pkmn.category "Poison Pin"
  pkmn.pokedex_entry "The male Nidoran has developed muscles that freely move its ears in any direction. Even the slightest sound does not escape this Pokémon's notice."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"PECK"
    m.at 7, :"FOCUSENERGY"
    m.at 9, :"DOUBLEKICK"
    m.at 13, :"POISONSTING"
    m.at 19, :"FURYATTACK"
    m.at 21, :"HORNATTACK"
    m.at 25, :"HELPINGHAND"
    m.at 31, :"TOXICSPIKES"
    m.at 33, :"FLATTER"
    m.at 37, :"POISONJAB"
    m.at 43, :"CAPTIVATE"
    m.at 45, :"HORNDRILL"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"VENOSHOCK", :"WATERPULSE"
  pkmn.egg_moves :"AMNESIA", :"BEATUP", :"CHIPAWAY", :"CONFUSION", :"COUNTER", :"DISABLE", :"ENDURE", :"HEADSMASH", :"IRONTAIL", :"POISONTAIL", :"SUCKERPUNCH", :"SUPERSONIC", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"NIDORANmA" do |m|
  m.back_sprite -1, 0
  m.front_sprite -2, 21
  m.shadow_sprite 0, 0, 1
end