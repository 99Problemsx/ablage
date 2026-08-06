#=============================================================================
# Purrloin - DARK Type
#=============================================================================

GameData::Species.define :"PURRLOIN" do |pkmn|
  pkmn.name "Purrloin"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 41, attack: 50, defense: 37,
                  sp_atk: 66, sp_def: 50, speed: 37
  pkmn.abilities :"LIMBER", :"UNBURDEN"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 56
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 10.1
  pkmn.category "Devious"
  pkmn.pokedex_entry "Its cute act is a ruse. When victims let down their guard, they find their items taken. It attacks with sharp claws."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 3, :"GROWL"
    m.at 6, :"ASSIST"
    m.at 10, :"SANDATTACK"
    m.at 12, :"FURYSWIPES"
    m.at 15, :"PURSUIT"
    m.at 19, :"TORMENT"
    m.at 21, :"FAKEOUT"
    m.at 24, :"HONECLAWS"
    m.at 28, :"ASSURANCE"
    m.at 30, :"SLASH"
    m.at 33, :"CAPTIVATE"
    m.at 37, :"NIGHTSLASH"
    m.at 39, :"SNATCH"
    m.at 42, :"NASTYPLOT"
    m.at 46, :"SUCKERPUNCH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"UTURN"
  pkmn.egg_moves :"CHARM", :"COVET", :"ENCORE", :"FAKETEARS", :"FEINTATTACK", :"FOULPLAY", :"PAYDAY", :"YAWN"
end

GameData::SpeciesMetrics.define :"PURRLOIN" do |m|
  m.back_sprite 2, 0
  m.front_sprite -2, 24
  m.shadow_sprite 0, 0, 1
end