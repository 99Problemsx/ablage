#=============================================================================
# Nidoran - POISON Type
#=============================================================================

GameData::Species.define :"NIDORANfE" do |pkmn|
  pkmn.name "Nidoran"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 55, attack: 47, defense: 52,
                  sp_atk: 41, sp_def: 40, speed: 40
  pkmn.abilities :"POISONPOINT", :"RIVALRY"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 55
  pkmn.catch_rate 235
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 7.0
  pkmn.category "Poison Pin"
  pkmn.pokedex_entry "Its highly toxic barbs are thought to have developed as protection for this small-bodied Pokémon. When enraged, it releases a horrible toxin from its horn."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"SCRATCH"
    m.at 7, :"TAILWHIP"
    m.at 9, :"DOUBLEKICK"
    m.at 13, :"POISONSTING"
    m.at 19, :"FURYSWIPES"
    m.at 21, :"BITE"
    m.at 25, :"HELPINGHAND"
    m.at 31, :"TOXICSPIKES"
    m.at 33, :"FLATTER"
    m.at 37, :"CRUNCH"
    m.at 43, :"CAPTIVATE"
    m.at 45, :"POISONFANG"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"VENOSHOCK", :"WATERPULSE"
  pkmn.egg_moves :"BEATUP", :"CHARM", :"CHIPAWAY", :"COUNTER", :"DISABLE", :"ENDURE", :"FOCUSENERGY", :"IRONTAIL", :"POISONTAIL", :"PURSUIT", :"SKULLBASH", :"SUPERSONIC", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"NIDORANfE" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 23
  m.shadow_sprite 0, 0, 1
end