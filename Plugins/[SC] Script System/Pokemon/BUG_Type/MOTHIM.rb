#=============================================================================
# Mothim - BUG Type
#=============================================================================

GameData::Species.define :"MOTHIM" do |pkmn|
  pkmn.name "Mothim"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 70, attack: 94, defense: 50,
                  sp_atk: 66, sp_def: 94, speed: 50
  pkmn.abilities :"SWARM"
  pkmn.hidden_abilities :"TINTEDLENS"
  pkmn.flags :"DefaultForm_0"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 148
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.9
  pkmn.weight 23.3
  pkmn.category "Moth"
  pkmn.pokedex_entry "It loves the honey of flowers and steals honey collected by Combee."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 10, :"PROTECT"
    m.at 15, :"BUGBITE"
    m.at 20, :"HIDDENPOWER"
    m.at 23, :"CONFUSION"
    m.at 26, :"GUST"
    m.at 29, :"POISONPOWDER"
    m.at 32, :"PSYBEAM"
    m.at 35, :"CAMOUFLAGE"
    m.at 38, :"SILVERWIND"
    m.at 41, :"AIRSLASH"
    m.at 44, :"PSYCHIC"
    m.at 47, :"BUGBUZZ"
    m.at 50, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DEFOG", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"MOTHIM" do |m|
  m.back_sprite 11, 0
  m.front_sprite 4, -1
  m.shadow_sprite 0, 0, 1
end