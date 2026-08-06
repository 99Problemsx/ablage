#=============================================================================
# Aipom - NORMAL Type
#=============================================================================

GameData::Species.define :"AIPOM" do |pkmn|
  pkmn.name "Aipom"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 55, attack: 70, defense: 55,
                  sp_atk: 85, sp_def: 40, speed: 55
  pkmn.abilities :"RUNAWAY", :"PICKUP"
  pkmn.hidden_abilities :"SKILLLINK"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 72
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 11.5
  pkmn.category "Long Tail"
  pkmn.pokedex_entry "Its tail ends with a dexterous, handlike appendage. However, because it uses the tail so much, Aipom's real hands have become rather clumsy."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 4, :"SANDATTACK"
    m.at 8, :"ASTONISH"
    m.at 11, :"BATONPASS"
    m.at 15, :"TICKLE"
    m.at 18, :"FURYSWIPES"
    m.at 22, :"SWIFT"
    m.at 25, :"SCREECH"
    m.at 29, :"AGILITY"
    m.at 32, :"DOUBLEHIT"
    m.at 36, :"FLING"
    m.at 39, :"NASTYPLOT"
    m.at 43, :"LASTRESORT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AGILITY", :"BEATUP", :"BOUNCE", :"COUNTER", :"COVET", :"DOUBLESLAP", :"FAKEOUT", :"PURSUIT", :"REVENGE", :"SCREECH", :"SLAM", :"SPITE", :"SWITCHEROO"
end

GameData::SpeciesMetrics.define :"AIPOM" do |m|
  m.back_sprite -11, 0
  m.front_sprite 0, 15
  m.shadow_sprite 0, 0, 1
end