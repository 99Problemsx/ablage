#=============================================================================
# Nidorina - POISON Type
#=============================================================================

GameData::Species.define :"NIDORINA" do |pkmn|
  pkmn.name "Nidorina"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 70, attack: 62, defense: 67,
                  sp_atk: 56, sp_def: 55, speed: 55
  pkmn.abilities :"POISONPOINT", :"RIVALRY"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 128
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 20.0
  pkmn.category "Poison Pin"
  pkmn.pokedex_entry "When it is with its friends or family, its barbs are tucked away to prevent injury. It appears to become nervous if separated from the others."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"SCRATCH"
    m.at 7, :"TAILWHIP"
    m.at 9, :"DOUBLEKICK"
    m.at 13, :"POISONSTING"
    m.at 20, :"FURYSWIPES"
    m.at 23, :"BITE"
    m.at 28, :"HELPINGHAND"
    m.at 35, :"TOXICSPIKES"
    m.at 38, :"FLATTER"
    m.at 43, :"CRUNCH"
    m.at 50, :"CAPTIVATE"
    m.at 58, :"POISONFANG"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"VENOSHOCK", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"NIDORINA" do |m|
  m.back_sprite 3, 0
  m.front_sprite -2, 17
  m.shadow_sprite 0, 0, 2
end