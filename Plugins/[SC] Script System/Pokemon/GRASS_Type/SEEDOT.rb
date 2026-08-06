#=============================================================================
# Seedot - GRASS Type
#=============================================================================

GameData::Species.define :"SEEDOT" do |pkmn|
  pkmn.name "Seedot"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 40, attack: 40, defense: 50,
                  sp_atk: 30, sp_def: 30, speed: 30
  pkmn.abilities :"CHLOROPHYLL", :"EARLYBIRD"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 44
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 4.0
  pkmn.category "Acorn"
  pkmn.pokedex_entry "It hangs off branches and absorbs nutrients. When it finishes eating, its body becomes so heavy that it drops to the ground with a thump."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"BIDE"
    m.at 3, :"HARDEN"
    m.at 7, :"GROWTH"
    m.at 13, :"NATUREPOWER"
    m.at 21, :"SYNTHESIS"
    m.at 31, :"SUNNYDAY"
    m.at 43, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FALSESWIPE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"AMNESIA", :"BEATUP", :"BULLETSEED", :"DEFOG", :"FOULPLAY", :"LEECHSEED", :"NASTYPLOT", :"POWERSWAP", :"QUICKATTACK", :"RAZORWIND", :"TAKEDOWN", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SEEDOT" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 22
  m.shadow_sprite 0, 0, 1
end