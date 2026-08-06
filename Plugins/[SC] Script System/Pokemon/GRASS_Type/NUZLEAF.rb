#=============================================================================
# Nuzleaf - GRASS Type
#=============================================================================

GameData::Species.define :"NUZLEAF" do |pkmn|
  pkmn.name "Nuzleaf"
  pkmn.types :"GRASS", :"DARK"
  pkmn.base_stats hp: 70, attack: 70, defense: 40,
                  sp_atk: 60, sp_def: 60, speed: 40
  pkmn.abilities :"CHLOROPHYLL", :"EARLYBIRD"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 119
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 28.0
  pkmn.category "Wily"
  pkmn.pokedex_entry "A forest-dwelling Pokémon that is skilled at climbing trees. Its long and pointed nose is its weak point. It loses power if the nose is gripped."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"RAZORLEAF"
    m.at 1, :"POUND"
    m.at 3, :"HARDEN"
    m.at 7, :"GROWTH"
    m.at 13, :"NATUREPOWER"
    m.at 19, :"FAKEOUT"
    m.at 25, :"TORMENT"
    m.at 31, :"FEINTATTACK"
    m.at 37, :"RAZORWIND"
    m.at 43, :"SWAGGER"
    m.at 49, :"EXTRASENSORY"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FALSESWIPE", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TORMENT", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"NUZLEAF" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, 17
  m.shadow_sprite 0, 0, 1
end