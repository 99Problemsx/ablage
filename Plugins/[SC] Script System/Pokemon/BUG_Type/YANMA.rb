#=============================================================================
# Yanma - BUG Type
#=============================================================================

GameData::Species.define :"YANMA" do |pkmn|
  pkmn.name "Yanma"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 65, attack: 65, defense: 45,
                  sp_atk: 95, sp_def: 75, speed: 45
  pkmn.abilities :"SPEEDBOOST", :"COMPOUNDEYES"
  pkmn.hidden_abilities :"FRISK"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 78
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 38.0
  pkmn.category "Clear Wing"
  pkmn.pokedex_entry "It can see 360 degrees without moving its eyes. It is a great flier capable of making sudden stops and turning midair to quickly chase down targeted prey."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"FORESIGHT"
    m.at 6, :"QUICKATTACK"
    m.at 11, :"DOUBLETEAM"
    m.at 14, :"SONICBOOM"
    m.at 17, :"DETECT"
    m.at 22, :"SUPERSONIC"
    m.at 27, :"UPROAR"
    m.at 30, :"PURSUIT"
    m.at 33, :"ANCIENTPOWER"
    m.at 38, :"HYPNOSIS"
    m.at 43, :"WINGATTACK"
    m.at 46, :"SCREECH"
    m.at 49, :"UTURN"
    m.at 54, :"AIRSLASH"
    m.at 57, :"BUGBUZZ"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"HEADBUTT", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STRINGSHOT", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN"
  pkmn.egg_moves :"DOUBLEEDGE", :"FEINT", :"FEINTATTACK", :"LEECHLIFE", :"PURSUIT", :"REVERSAL", :"SECRETPOWER", :"SIGNALBEAM", :"SILVERWIND", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"YANMA" do |m|
  m.back_sprite -8, 0
  m.front_sprite 0, -1
  m.shadow_sprite 0, 0, 2
end