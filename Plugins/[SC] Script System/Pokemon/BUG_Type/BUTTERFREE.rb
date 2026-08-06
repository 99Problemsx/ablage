#=============================================================================
# Butterfree - BUG Type
#=============================================================================

GameData::Species.define :"BUTTERFREE" do |pkmn|
  pkmn.name "Butterfree"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 60, attack: 45, defense: 50,
                  sp_atk: 70, sp_def: 80, speed: 80
  pkmn.abilities :"COMPOUNDEYES"
  pkmn.hidden_abilities :"TINTEDLENS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.1
  pkmn.weight 32.0
  pkmn.category "Butterfly"
  pkmn.pokedex_entry "It has a superior ability to search for delicious honey from flowers. It can seek, extract, and carry honey from flowers blooming over six miles away."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 10, :"CONFUSION"
    m.at 12, :"POISONPOWDER"
    m.at 12, :"STUNSPORE"
    m.at 12, :"SLEEPPOWDER"
    m.at 16, :"GUST"
    m.at 18, :"SUPERSONIC"
    m.at 22, :"WHIRLWIND"
    m.at 24, :"PSYBEAM"
    m.at 28, :"SILVERWIND"
    m.at 30, :"TAILWIND"
    m.at 34, :"RAGEPOWDER"
    m.at 36, :"SAFEGUARD"
    m.at 40, :"CAPTIVATE"
    m.at 42, :"BUGBUZZ"
    m.at 46, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"BUTTERFREE" do |m|
  m.back_sprite -10, 0
  m.front_sprite 8, -2
  m.shadow_sprite 0, 0, 2
end