#=============================================================================
# Houndoom - DARK Type
#=============================================================================

GameData::Species.define :"HOUNDOOM" do |pkmn|
  pkmn.name "Houndoom"
  pkmn.types :"DARK", :"FIRE"
  pkmn.base_stats hp: 75, attack: 90, defense: 50,
                  sp_atk: 95, sp_def: 110, speed: 80
  pkmn.abilities :"EARLYBIRD", :"FLASHFIRE"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 175
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 35.0
  pkmn.category "Dark"
  pkmn.pokedex_entry "In a Houndoom pack, the one with its horns raked sharply back serves a leadership role. They choose their leader by fighting among themselves."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"THUNDERFANG"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 1, :"HOWL"
    m.at 1, :"SMOG"
    m.at 4, :"HOWL"
    m.at 8, :"SMOG"
    m.at 13, :"ROAR"
    m.at 16, :"BITE"
    m.at 20, :"ODORSLEUTH"
    m.at 26, :"BEATUP"
    m.at 30, :"FIREFANG"
    m.at 35, :"FEINTATTACK"
    m.at 41, :"EMBARGO"
    m.at 45, :"FOULPLAY"
    m.at 50, :"FLAMETHROWER"
    m.at 56, :"CRUNCH"
    m.at 60, :"NASTYPLOT"
    m.at 65, :"INFERNO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"HOUNDOOM" do |m|
  m.back_sprite 1, 0
  m.front_sprite 6, 11
  m.shadow_sprite 0, 0, 3
end