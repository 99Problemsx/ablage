#=============================================================================
# Zigzagoon - NORMAL Type
#=============================================================================

GameData::Species.define :"ZIGZAGOON" do |pkmn|
  pkmn.name "Zigzagoon"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 38, attack: 30, defense: 41,
                  sp_atk: 60, sp_def: 30, speed: 41
  pkmn.abilities :"PICKUP", :"GLUTTONY"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 48
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 17.5
  pkmn.category "TinyRaccoon"
  pkmn.pokedex_entry "Rubbing its nose against the ground, it always wanders about back and forth in search of something. It is distinguished by the zigzag footprints it leaves."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 5, :"TAILWHIP"
    m.at 9, :"HEADBUTT"
    m.at 13, :"SANDATTACK"
    m.at 17, :"ODORSLEUTH"
    m.at 21, :"MUDSPORT"
    m.at 25, :"PINMISSILE"
    m.at 29, :"COVET"
    m.at 33, :"BESTOW"
    m.at 37, :"FLAIL"
    m.at 41, :"REST"
    m.at 45, :"BELLYDRUM"
    m.at 49, :"FLING"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
  pkmn.egg_moves :"CHARM", :"HELPINGHAND", :"MUDSLAP", :"PURSUIT", :"ROCKCLIMB", :"SIMPLEBEAM", :"SLEEPTALK", :"TICKLE", :"TRICK"
end

GameData::SpeciesMetrics.define :"ZIGZAGOON" do |m|
  m.back_sprite -1, 0
  m.front_sprite -5, 21
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"ZIGZAGOON_1" do |pkmn|
  pkmn.species :"ZIGZAGOON"
  pkmn.form 1
  pkmn.name "Zigzagoon"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 38, attack: 30, defense: 41,
                  sp_atk: 60, sp_def: 30, speed: 41
  pkmn.abilities :"PICKUP", :"GLUTTONY"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 48
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 17.5
  pkmn.category "TinyRaccoon"
  pkmn.pokedex_entry "Rubbing its nose against the ground, it always wanders about back and forth in search of something. It is distinguished by the zigzag footprints it leaves."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 5, :"TAILWHIP"
    m.at 9, :"HEADBUTT"
    m.at 13, :"SANDATTACK"
    m.at 17, :"ODORSLEUTH"
    m.at 21, :"MUDSPORT"
    m.at 25, :"PINMISSILE"
    m.at 29, :"COVET"
    m.at 33, :"BESTOW"
    m.at 37, :"FLAIL"
    m.at 41, :"REST"
    m.at 45, :"BELLYDRUM"
    m.at 49, :"FLING"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
  pkmn.egg_moves :"CHARM", :"HELPINGHAND", :"MUDSLAP", :"PURSUIT", :"ROCKCLIMB", :"SIMPLEBEAM", :"SLEEPTALK", :"TICKLE", :"TRICK"
end

GameData::SpeciesMetrics.define :"ZIGZAGOON_1" do |m|
  m.back_sprite -1, 0
  m.front_sprite -5, 21
  m.shadow_sprite 0, 0, 2
end