#=============================================================================
# Liepard - DARK Type
#=============================================================================

GameData::Species.define :"LIEPARD" do |pkmn|
  pkmn.name "Liepard"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 64, attack: 88, defense: 50,
                  sp_atk: 106, sp_def: 88, speed: 50
  pkmn.abilities :"LIMBER", :"UNBURDEN"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 156
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 37.5
  pkmn.category "Cruel"
  pkmn.pokedex_entry "Stealthily, it sneaks up on its target, striking from behind before its victim has a chance to react."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"ASSIST"
    m.at 1, :"SANDATTACK"
    m.at 3, :"GROWL"
    m.at 6, :"ASSIST"
    m.at 10, :"SANDATTACK"
    m.at 12, :"FURYSWIPES"
    m.at 15, :"PURSUIT"
    m.at 19, :"TORMENT"
    m.at 22, :"FAKEOUT"
    m.at 26, :"HONECLAWS"
    m.at 31, :"ASSURANCE"
    m.at 34, :"SLASH"
    m.at 38, :"TAUNT"
    m.at 43, :"NIGHTSLASH"
    m.at 47, :"SNATCH"
    m.at 50, :"NASTYPLOT"
    m.at 55, :"SUCKERPUNCH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"UTURN"
end

GameData::SpeciesMetrics.define :"LIEPARD" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 18
  m.shadow_sprite 0, 0, 3
end