#=============================================================================
# Lycanroc - ROCK Type
#=============================================================================

GameData::Species.define :"LYCANROC" do |pkmn|
  pkmn.name "Lycanroc"
  pkmn.form_name "Midday Form"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 75, attack: 115, defense: 65,
                  sp_atk: 112, sp_def: 55, speed: 65
  pkmn.abilities :"KEENEYE", :"SANDRUSH"
  pkmn.hidden_abilities :"STEADFAST"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 170
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.8
  pkmn.weight 25.0
  pkmn.category "Wolf"
  pkmn.pokedex_entry "Its quick movements confuse its enemies. Well equipped with claws and fangs, it also uses the sharp rocks in its mane as weapons."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"SUCKERPUNCH"
    m.at 1, :"ACCELEROCK"
    m.at 1, :"QUICKGUARD"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"SANDATTACK"
    m.at 1, :"DOUBLETEAM"
    m.at 12, :"ROCKTHROW"
    m.at 16, :"HOWL"
    m.at 20, :"BITE"
    m.at 24, :"ROCKTOMB"
    m.at 30, :"ROAR"
    m.at 36, :"ROCKSLIDE"
    m.at 42, :"CRUNCH"
    m.at 48, :"SCARYFACE"
    m.at 54, :"STEALTHROCK"
    m.at 60, :"STONEEDGE"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"COVET", :"CRUNCH", :"DOUBLETEAM", :"DRILLRUN", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERVOICE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LASHOUT", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETURN", :"ROAR", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILSLAP", :"TAUNT", :"THUNDERFANG", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"LYCANROC" do |m|
  m.back_sprite 0, 38
  m.front_sprite -1, 8
end

# Form 1 - Midday Form
GameData::Species.define :"LYCANROC_1" do |pkmn|
  pkmn.species :"LYCANROC"
  pkmn.form 1
  pkmn.name "Lycanroc"
  pkmn.form_name "Midday Form"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 75, attack: 115, defense: 65,
                  sp_atk: 112, sp_def: 55, speed: 65
  pkmn.abilities :"KEENEYE", :"SANDRUSH"
  pkmn.hidden_abilities :"STEADFAST"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 170
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.8
  pkmn.weight 25.0
  pkmn.category "Wolf"
  pkmn.pokedex_entry "Its quick movements confuse its enemies. Well equipped with claws and fangs, it also uses the sharp rocks in its mane as weapons."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"SUCKERPUNCH"
    m.at 1, :"ACCELEROCK"
    m.at 1, :"QUICKGUARD"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"SANDATTACK"
    m.at 1, :"DOUBLETEAM"
    m.at 12, :"ROCKTHROW"
    m.at 16, :"HOWL"
    m.at 20, :"BITE"
    m.at 24, :"ROCKTOMB"
    m.at 30, :"ROAR"
    m.at 36, :"ROCKSLIDE"
    m.at 42, :"CRUNCH"
    m.at 48, :"SCARYFACE"
    m.at 54, :"STEALTHROCK"
    m.at 60, :"STONEEDGE"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"COVET", :"CRUNCH", :"DOUBLETEAM", :"DRILLRUN", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERVOICE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LASHOUT", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETURN", :"ROAR", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILSLAP", :"TAUNT", :"THUNDERFANG", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"LYCANROC_1" do |m|
  m.back_sprite 0, 38
  m.front_sprite -1, 8
end