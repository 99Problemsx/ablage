#=============================================================================
# Venonat - BUG Type
#=============================================================================

GameData::Species.define :"VENONAT" do |pkmn|
  pkmn.name "Venonat"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 60, attack: 55, defense: 50,
                  sp_atk: 45, sp_def: 40, speed: 55
  pkmn.abilities :"COMPOUNDEYES", :"TINTEDLENS"
  pkmn.hidden_abilities :"RUNAWAY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 30.0
  pkmn.category "Insect"
  pkmn.pokedex_entry "Its coat of thin, stiff hair that covers its entire body is said to have evolved for protection. Its large eyes never fail to spot even miniscule prey."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"DISABLE"
    m.at 1, :"FORESIGHT"
    m.at 5, :"SUPERSONIC"
    m.at 11, :"CONFUSION"
    m.at 13, :"POISONPOWDER"
    m.at 17, :"LEECHLIFE"
    m.at 23, :"STUNSPORE"
    m.at 25, :"PSYBEAM"
    m.at 29, :"SLEEPPOWDER"
    m.at 35, :"SIGNALBEAM"
    m.at 37, :"ZENHEADBUTT"
    m.at 41, :"POISONFANG"
    m.at 47, :"PSYCHIC"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"TOXIC", :"VENOSHOCK", :"ZENHEADBUTT"
  pkmn.egg_moves :"AGILITY", :"BATONPASS", :"BUGBITE", :"GIGADRAIN", :"MORNINGSUN", :"RAGEPOWDER", :"SCREECH", :"SECRETPOWER", :"SIGNALBEAM", :"SKILLSWAP", :"TOXICSPIKES"
end

GameData::SpeciesMetrics.define :"VENONAT" do |m|
  m.back_sprite 6, 0
  m.front_sprite 1, 14
  m.shadow_sprite 0, 0, 2
end