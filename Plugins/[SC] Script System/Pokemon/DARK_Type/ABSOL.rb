#=============================================================================
# Absol - DARK Type
#=============================================================================

GameData::Species.define :"ABSOL" do |pkmn|
  pkmn.name "Absol"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 65, attack: 130, defense: 60,
                  sp_atk: 75, sp_def: 75, speed: 60
  pkmn.abilities :"PRESSURE", :"SUPERLUCK"
  pkmn.hidden_abilities :"JUSTIFIED"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 163
  pkmn.catch_rate 30
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 1.2
  pkmn.weight 47.0
  pkmn.category "Disaster"
  pkmn.pokedex_entry "It sharply senses even subtle changes in the sky and the land to predict natural disasters. It is a long-lived Pokémon that has a life-span of 100 years."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"FEINT"
    m.at 4, :"LEER"
    m.at 9, :"QUICKATTACK"
    m.at 12, :"PURSUIT"
    m.at 17, :"TAUNT"
    m.at 20, :"BITE"
    m.at 25, :"DOUBLETEAM"
    m.at 28, :"SLASH"
    m.at 33, :"SWORDSDANCE"
    m.at 36, :"FUTURESIGHT"
    m.at 41, :"NIGHTSLASH"
    m.at 44, :"DETECT"
    m.at 49, :"PSYCHOCUT"
    m.at 52, :"SUCKERPUNCH"
    m.at 57, :"RAZORWIND"
    m.at 60, :"MEFIRST"
    m.at 65, :"PERISHSONG"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"CUT", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"WATERPULSE", :"WILLOWISP", :"XSCISSOR", :"ZENHEADBUTT"
  pkmn.egg_moves :"ASSURANCE", :"BATONPASS", :"CURSE", :"DOUBLEEDGE", :"FEINTATTACK", :"HEX", :"MAGICCOAT", :"MEANLOOK", :"MEFIRST", :"MEGAHORN", :"PERISHSONG", :"PUNISHMENT", :"SUCKERPUNCH", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ABSOL" do |m|
  m.back_sprite -5, 0
  m.front_sprite -1, 17
  m.shadow_sprite 0, 0, 3
end

# Form 2 - Mega Absol Z
GameData::Species.define :"ABSOL_2" do |pkmn|
  pkmn.species :"ABSOL"
  pkmn.form 2
  pkmn.name "Absol"
  pkmn.form_name "Mega Absol Z"
  pkmn.types :"DARK", :"GHOST"
  pkmn.base_stats hp: 65, attack: 154, defense: 60,
                  sp_atk: 151, sp_def: 75, speed: 60
  pkmn.abilities :"PRESSURE", :"SUPERLUCK"
  pkmn.hidden_abilities :"JUSTIFIED"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 163
  pkmn.catch_rate 30
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 1.0
  pkmn.weight 26.0
  pkmn.category "Disaster"
  pkmn.pokedex_entry "Using fur that it has made into sharp, clawlike shapes, it cuts down foes with a single blow. This is an act of kindness to keep them from suffering."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"FEINT"
    m.at 4, :"LEER"
    m.at 9, :"QUICKATTACK"
    m.at 12, :"PURSUIT"
    m.at 17, :"TAUNT"
    m.at 20, :"BITE"
    m.at 25, :"DOUBLETEAM"
    m.at 28, :"SLASH"
    m.at 33, :"SWORDSDANCE"
    m.at 36, :"FUTURESIGHT"
    m.at 41, :"NIGHTSLASH"
    m.at 44, :"DETECT"
    m.at 49, :"PSYCHOCUT"
    m.at 52, :"SUCKERPUNCH"
    m.at 57, :"RAZORWIND"
    m.at 60, :"MEFIRST"
    m.at 65, :"PERISHSONG"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"CUT", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"WATERPULSE", :"WILLOWISP", :"XSCISSOR", :"ZENHEADBUTT"
  pkmn.egg_moves :"ASSURANCE", :"BATONPASS", :"CURSE", :"DOUBLEEDGE", :"FEINTATTACK", :"HEX", :"MAGICCOAT", :"MEANLOOK", :"MEFIRST", :"MEGAHORN", :"PERISHSONG", :"PUNISHMENT", :"SUCKERPUNCH", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ABSOL_2" do |m|
  m.back_sprite -5, 0
  m.front_sprite -1, 17
  m.shadow_sprite 0, 0, 3
end