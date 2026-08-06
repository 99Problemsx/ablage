#=============================================================================
# Houndour - DARK Type
#=============================================================================

GameData::Species.define :"HOUNDOUR" do |pkmn|
  pkmn.name "Houndour"
  pkmn.types :"DARK", :"FIRE"
  pkmn.base_stats hp: 45, attack: 60, defense: 30,
                  sp_atk: 65, sp_def: 80, speed: 50
  pkmn.abilities :"EARLYBIRD", :"FLASHFIRE"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 120
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 10.8
  pkmn.category "Dark"
  pkmn.pokedex_entry "Houndour communicate with each other using a variety of cries to corner their prey. This Pokémon's remarkable teamwork is simply unparalleled."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 4, :"HOWL"
    m.at 8, :"SMOG"
    m.at 13, :"ROAR"
    m.at 16, :"BITE"
    m.at 20, :"ODORSLEUTH"
    m.at 25, :"BEATUP"
    m.at 28, :"FIREFANG"
    m.at 32, :"FEINTATTACK"
    m.at 37, :"EMBARGO"
    m.at 40, :"FOULPLAY"
    m.at 44, :"FLAMETHROWER"
    m.at 49, :"CRUNCH"
    m.at 52, :"NASTYPLOT"
    m.at 56, :"INFERNO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WILLOWISP"
  pkmn.egg_moves :"BEATUP", :"COUNTER", :"FEINT", :"FIREFANG", :"FIRESPIN", :"NASTYPLOT", :"PUNISHMENT", :"PURSUIT", :"RAGE", :"REVERSAL", :"SPITE", :"SUCKERPUNCH", :"THUNDERFANG"
end

GameData::SpeciesMetrics.define :"HOUNDOUR" do |m|
  m.back_sprite -1, 0
  m.front_sprite 4, 20
  m.shadow_sprite 0, 0, 2
end