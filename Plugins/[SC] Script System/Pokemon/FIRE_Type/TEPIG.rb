#=============================================================================
# Tepig - FIRE Type
#=============================================================================

GameData::Species.define :"TEPIG" do |pkmn|
  pkmn.name "Tepig"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 65, attack: 63, defense: 45,
                  sp_atk: 45, sp_def: 45, speed: 45
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 9.9
  pkmn.category "Fire Pig"
  pkmn.pokedex_entry "It blows fire through its nose. When it catches a cold, the fire becomes pitch-black smoke instead."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"TAILWHIP"
    m.at 7, :"EMBER"
    m.at 9, :"ODORSLEUTH"
    m.at 13, :"DEFENSECURL"
    m.at 15, :"FLAMECHARGE"
    m.at 19, :"SMOG"
    m.at 21, :"ROLLOUT"
    m.at 25, :"TAKEDOWN"
    m.at 27, :"HEATCRASH"
    m.at 31, :"ASSURANCE"
    m.at 33, :"FLAMETHROWER"
    m.at 37, :"HEADSMASH"
    m.at 39, :"ROAR"
    m.at 43, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"COVET", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GRASSKNOT", :"GYROBALL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
  pkmn.egg_moves :"BODYSLAM", :"COVET", :"CURSE", :"ENDEAVOR", :"HEAVYSLAM", :"MAGNITUDE", :"SLEEPTALK", :"SUPERPOWER", :"THRASH", :"YAWN"
end

GameData::SpeciesMetrics.define :"TEPIG" do |m|
  m.back_sprite -4, 0
  m.front_sprite 1, 32
  m.shadow_sprite 0, 0, 1
end