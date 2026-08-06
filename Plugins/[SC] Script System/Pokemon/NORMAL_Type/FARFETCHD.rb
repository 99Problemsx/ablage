#=============================================================================
# Farfetch'd - NORMAL Type
#=============================================================================

GameData::Species.define :"FARFETCHD" do |pkmn|
  pkmn.name "Farfetch'd"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 52, attack: 65, defense: 55,
                  sp_atk: 60, sp_def: 58, speed: 62
  pkmn.abilities :"KEENEYE", :"INNERFOCUS"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 123
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 15.0
  pkmn.category "Wild Duck"
  pkmn.pokedex_entry "It is always seen with a stick from a plant. Apparently, there are good sticks and bad sticks. This Pokémon occasionally fights with others over choice sticks."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POISONJAB"
    m.at 1, :"PECK"
    m.at 1, :"SANDATTACK"
    m.at 1, :"LEER"
    m.at 1, :"FURYCUTTER"
    m.at 7, :"FURYATTACK"
    m.at 9, :"KNOCKOFF"
    m.at 13, :"AERIALACE"
    m.at 19, :"SLASH"
    m.at 21, :"AIRCUTTER"
    m.at 25, :"SWORDSDANCE"
    m.at 31, :"AGILITY"
    m.at 33, :"NIGHTSLASH"
    m.at 37, :"ACROBATICS"
    m.at 43, :"FEINT"
    m.at 45, :"FALSESWIPE"
    m.at 49, :"AIRSLASH"
    m.at 55, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"REST", :"RETALIATE", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"COVET", :"CURSE", :"FEATHERDANCE", :"FLAIL", :"FORESIGHT", :"GUST", :"LEAFBLADE", :"MIRRORMOVE", :"MUDSLAP", :"NIGHTSLASH", :"QUICKATTACK", :"REVENGE", :"ROOST", :"STEELWING", :"TRUMPCARD"
end

GameData::SpeciesMetrics.define :"FARFETCHD" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 19
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"FARFETCHD_1" do |pkmn|
  pkmn.species :"FARFETCHD"
  pkmn.form 1
  pkmn.name "Farfetch'd"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 52, attack: 65, defense: 55,
                  sp_atk: 60, sp_def: 58, speed: 62
  pkmn.abilities :"KEENEYE", :"INNERFOCUS"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 123
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 15.0
  pkmn.category "Wild Duck"
  pkmn.pokedex_entry "It is always seen with a stick from a plant. Apparently, there are good sticks and bad sticks. This Pokémon occasionally fights with others over choice sticks."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POISONJAB"
    m.at 1, :"PECK"
    m.at 1, :"SANDATTACK"
    m.at 1, :"LEER"
    m.at 1, :"FURYCUTTER"
    m.at 7, :"FURYATTACK"
    m.at 9, :"KNOCKOFF"
    m.at 13, :"AERIALACE"
    m.at 19, :"SLASH"
    m.at 21, :"AIRCUTTER"
    m.at 25, :"SWORDSDANCE"
    m.at 31, :"AGILITY"
    m.at 33, :"NIGHTSLASH"
    m.at 37, :"ACROBATICS"
    m.at 43, :"FEINT"
    m.at 45, :"FALSESWIPE"
    m.at 49, :"AIRSLASH"
    m.at 55, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"REST", :"RETALIATE", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"COVET", :"CURSE", :"FEATHERDANCE", :"FLAIL", :"FORESIGHT", :"GUST", :"LEAFBLADE", :"MIRRORMOVE", :"MUDSLAP", :"NIGHTSLASH", :"QUICKATTACK", :"REVENGE", :"ROOST", :"STEELWING", :"TRUMPCARD"
end

GameData::SpeciesMetrics.define :"FARFETCHD_1" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 19
  m.shadow_sprite 0, 0, 2
end