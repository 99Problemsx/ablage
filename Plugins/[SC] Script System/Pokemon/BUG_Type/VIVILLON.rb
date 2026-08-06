#=============================================================================
# Vivillon - BUG Type
#=============================================================================

GameData::Species.define :"VIVILLON" do |pkmn|
  pkmn.name "Vivillon"
  pkmn.form_name "Archipelago Pattern"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 80, attack: 52, defense: 50,
                  sp_atk: 89, sp_def: 90, speed: 50
  pkmn.abilities :"SHIELDDUST", :"COMPOUNDEYES"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 206
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.2
  pkmn.weight 17.0
  pkmn.category "Scale"
  pkmn.pokedex_entry "Vivillon with many different patterns are found all over the world. These patterns are affected by the climate of their habitat."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"GUST"
    m.at 1, :"POWDER"
    m.at 1, :"SLEEPPOWDER"
    m.at 1, :"POISONPOWDER"
    m.at 1, :"STUNSPORE"
    m.at 1, :"STRUGGLEBUG"
    m.at 12, :"LIGHTSCREEN"
    m.at 17, :"PSYBEAM"
    m.at 21, :"SUPERSONIC"
    m.at 25, :"DRAININGKISS"
    m.at 31, :"AROMATHERAPY"
    m.at 35, :"BUGBUZZ"
    m.at 41, :"SAFEGUARD"
    m.at 45, :"QUIVERDANCE"
    m.at 50, :"HURRICANE"
    m.at 55, :"POWDER"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BUGBITE", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"INFESTATION", :"LASERFOCUS", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"THIEF", :"TOXIC", :"UTURN", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"VIVILLON" do |m|
  m.back_sprite 0, 30
  m.front_sprite 0, -3
  m.shadow_sprite 0, 0, -1
end