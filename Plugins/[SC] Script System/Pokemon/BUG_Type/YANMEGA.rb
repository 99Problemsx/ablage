#=============================================================================
# Yanmega - BUG Type
#=============================================================================

GameData::Species.define :"YANMEGA" do |pkmn|
  pkmn.name "Yanmega"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 86, attack: 76, defense: 86,
                  sp_atk: 95, sp_def: 116, speed: 56
  pkmn.abilities :"SPEEDBOOST", :"TINTEDLENS"
  pkmn.hidden_abilities :"FRISK"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 180
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.9
  pkmn.weight 51.5
  pkmn.category "Ogre Darner"
  pkmn.pokedex_entry "By churning its wings, it creates shock waves that inflict critical internal injuries to foes."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"BUGBITE"
    m.at 1, :"TACKLE"
    m.at 1, :"FORESIGHT"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"DOUBLETEAM"
    m.at 6, :"QUICKATTACK"
    m.at 11, :"DOUBLETEAM"
    m.at 14, :"SONICBOOM"
    m.at 17, :"DETECT"
    m.at 22, :"SUPERSONIC"
    m.at 27, :"UPROAR"
    m.at 30, :"PURSUIT"
    m.at 33, :"ANCIENTPOWER"
    m.at 38, :"FEINT"
    m.at 43, :"SLASH"
    m.at 46, :"SCREECH"
    m.at 49, :"UTURN"
    m.at 54, :"AIRSLASH"
    m.at 57, :"BUGBUZZ"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN"
end

GameData::SpeciesMetrics.define :"YANMEGA" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, -1
  m.shadow_sprite 0, 0, 3
end