#=============================================================================
# Linoone - NORMAL Type
#=============================================================================

GameData::Species.define :"LINOONE" do |pkmn|
  pkmn.name "Linoone"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 78, attack: 70, defense: 61,
                  sp_atk: 100, sp_def: 50, speed: 61
  pkmn.abilities :"PICKUP", :"GLUTTONY"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 147
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 32.5
  pkmn.category "Rushing"
  pkmn.pokedex_entry "It is exceedingly fast if it only has to run in a straight line. When it spots pond- dwelling prey underwater, it quickly leaps in and catches it with its sharp claws."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SWITCHEROO"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"TAILWHIP"
    m.at 1, :"HEADBUTT"
    m.at 5, :"TAILWHIP"
    m.at 9, :"HEADBUTT"
    m.at 13, :"SANDATTACK"
    m.at 17, :"ODORSLEUTH"
    m.at 23, :"MUDSPORT"
    m.at 29, :"FURYSWIPES"
    m.at 35, :"COVET"
    m.at 41, :"BESTOW"
    m.at 47, :"SLASH"
    m.at 53, :"REST"
    m.at 59, :"BELLYDRUM"
    m.at 65, :"FLING"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"LINOONE" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 14
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"LINOONE_1" do |pkmn|
  pkmn.species :"LINOONE"
  pkmn.form 1
  pkmn.name "Linoone"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 78, attack: 70, defense: 61,
                  sp_atk: 100, sp_def: 50, speed: 61
  pkmn.abilities :"PICKUP", :"GLUTTONY"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 147
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 32.5
  pkmn.category "Rushing"
  pkmn.pokedex_entry "It is exceedingly fast if it only has to run in a straight line. When it spots pond- dwelling prey underwater, it quickly leaps in and catches it with its sharp claws."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SWITCHEROO"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"TAILWHIP"
    m.at 1, :"HEADBUTT"
    m.at 5, :"TAILWHIP"
    m.at 9, :"HEADBUTT"
    m.at 13, :"SANDATTACK"
    m.at 17, :"ODORSLEUTH"
    m.at 23, :"MUDSPORT"
    m.at 29, :"FURYSWIPES"
    m.at 35, :"COVET"
    m.at 41, :"BESTOW"
    m.at 47, :"SLASH"
    m.at 53, :"REST"
    m.at 59, :"BELLYDRUM"
    m.at 65, :"FLING"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"LINOONE_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 14
  m.shadow_sprite 0, 0, 3
end