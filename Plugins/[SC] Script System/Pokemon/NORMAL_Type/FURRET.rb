#=============================================================================
# Furret - NORMAL Type
#=============================================================================

GameData::Species.define :"FURRET" do |pkmn|
  pkmn.name "Furret"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 85, attack: 76, defense: 64,
                  sp_atk: 90, sp_def: 45, speed: 55
  pkmn.abilities :"RUNAWAY", :"KEENEYE"
  pkmn.hidden_abilities :"FRISK"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 145
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.8
  pkmn.weight 32.5
  pkmn.category "Long Body"
  pkmn.pokedex_entry "A Furret has a very slim build. When under attack, it can squirm through narrow spaces and get away. In spite of its short limbs, it is very nimble and fleet."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"FORESIGHT"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"QUICKATTACK"
    m.at 4, :"DEFENSECURL"
    m.at 7, :"QUICKATTACK"
    m.at 13, :"FURYSWIPES"
    m.at 17, :"HELPINGHAND"
    m.at 21, :"FOLLOWME"
    m.at 28, :"SLAM"
    m.at 32, :"REST"
    m.at 36, :"SUCKERPUNCH"
    m.at 42, :"AMNESIA"
    m.at 46, :"BATONPASS"
    m.at 50, :"MEFIRST"
    m.at 56, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"UPROAR", :"UTURN", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"FURRET" do |m|
  m.back_sprite -12, 0
  m.front_sprite -2, 13
  m.shadow_sprite 0, 0, 2
end