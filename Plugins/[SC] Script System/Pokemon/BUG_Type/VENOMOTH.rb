#=============================================================================
# Venomoth - BUG Type
#=============================================================================

GameData::Species.define :"VENOMOTH" do |pkmn|
  pkmn.name "Venomoth"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 70, attack: 65, defense: 60,
                  sp_atk: 90, sp_def: 90, speed: 75
  pkmn.abilities :"SHIELDDUST", :"TINTEDLENS"
  pkmn.hidden_abilities :"WONDERSKIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 158
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 12.5
  pkmn.category "Poison Moth"
  pkmn.pokedex_entry "Venomoth are nocturnal--they only are active at night. Their favorite prey are insects that gather around streetlights, attracted by the light in the darkness."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"SILVERWIND"
    m.at 1, :"TACKLE"
    m.at 1, :"DISABLE"
    m.at 1, :"FORESIGHT"
    m.at 1, :"SUPERSONIC"
    m.at 5, :"SUPERSONIC"
    m.at 11, :"CONFUSION"
    m.at 13, :"POISONPOWDER"
    m.at 17, :"LEECHLIFE"
    m.at 23, :"STUNSPORE"
    m.at 25, :"PSYBEAM"
    m.at 29, :"SLEEPPOWDER"
    m.at 31, :"GUST"
    m.at 37, :"SIGNALBEAM"
    m.at 41, :"ZENHEADBUTT"
    m.at 47, :"POISONFANG"
    m.at 55, :"PSYCHIC"
    m.at 59, :"BUGBUZZ"
    m.at 63, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SILVERWIND", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"VENOMOTH" do |m|
  m.back_sprite -4, 0
  m.front_sprite 4, -4
  m.shadow_sprite 0, 0, 2
end