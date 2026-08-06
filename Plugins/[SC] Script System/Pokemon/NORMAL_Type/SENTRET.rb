#=============================================================================
# Sentret - NORMAL Type
#=============================================================================

GameData::Species.define :"SENTRET" do |pkmn|
  pkmn.name "Sentret"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 35, attack: 46, defense: 34,
                  sp_atk: 20, sp_def: 35, speed: 45
  pkmn.abilities :"RUNAWAY", :"KEENEYE"
  pkmn.hidden_abilities :"FRISK"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 43
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.8
  pkmn.weight 6.0
  pkmn.category "Scout"
  pkmn.pokedex_entry "They take turns standing guard when it is time to sleep. The sentry awakens the others if it senses danger. If one gets separated, it turns sleepless with fear."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"FORESIGHT"
    m.at 4, :"DEFENSECURL"
    m.at 7, :"QUICKATTACK"
    m.at 13, :"FURYSWIPES"
    m.at 16, :"HELPINGHAND"
    m.at 19, :"FOLLOWME"
    m.at 25, :"SLAM"
    m.at 28, :"REST"
    m.at 31, :"SUCKERPUNCH"
    m.at 36, :"AMNESIA"
    m.at 39, :"BATONPASS"
    m.at 42, :"MEFIRST"
    m.at 47, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"UPROAR", :"UTURN", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
  pkmn.egg_moves :"ASSIST", :"CHARM", :"COVET", :"DOUBLEEDGE", :"FOCUSENERGY", :"IRONTAIL", :"LASTRESORT", :"NATURALGIFT", :"PURSUIT", :"REVERSAL", :"SLASH", :"TRICK"
end

GameData::SpeciesMetrics.define :"SENTRET" do |m|
  m.back_sprite 3, 0
  m.front_sprite 1, 8
  m.shadow_sprite 0, 0, 1
end