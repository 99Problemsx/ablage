#=============================================================================
# Nidorino - POISON Type
#=============================================================================

GameData::Species.define :"NIDORINO" do |pkmn|
  pkmn.name "Nidorino"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 61, attack: 72, defense: 57,
                  sp_atk: 65, sp_def: 55, speed: 55
  pkmn.abilities :"POISONPOINT", :"RIVALRY"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 128
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 19.5
  pkmn.category "Poison Pin"
  pkmn.pokedex_entry "Its horn is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"PECK"
    m.at 7, :"FOCUSENERGY"
    m.at 9, :"DOUBLEKICK"
    m.at 13, :"POISONSTING"
    m.at 20, :"FURYATTACK"
    m.at 23, :"HORNATTACK"
    m.at 28, :"HELPINGHAND"
    m.at 35, :"TOXICSPIKES"
    m.at 38, :"FLATTER"
    m.at 43, :"POISONJAB"
    m.at 50, :"CAPTIVATE"
    m.at 58, :"HORNDRILL"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"VENOSHOCK", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"NIDORINO" do |m|
  m.back_sprite 1, 0
  m.front_sprite -2, 21
  m.shadow_sprite 0, 0, 3
end