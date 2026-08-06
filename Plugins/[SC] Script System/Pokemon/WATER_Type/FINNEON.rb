#=============================================================================
# Finneon - WATER Type
#=============================================================================

GameData::Species.define :"FINNEON" do |pkmn|
  pkmn.name "Finneon"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 49, attack: 49, defense: 56,
                  sp_atk: 66, sp_def: 49, speed: 61
  pkmn.abilities :"SWIFTSWIM", :"STORMDRAIN"
  pkmn.hidden_abilities :"WATERVEIL"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 66
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 7.0
  pkmn.category "Wing Fish"
  pkmn.pokedex_entry "After long exposure to sunlight, the patterns on its tail fins shine vividly when darkness arrives."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 6, :"WATERGUN"
    m.at 10, :"ATTRACT"
    m.at 13, :"RAINDANCE"
    m.at 17, :"GUST"
    m.at 22, :"WATERPULSE"
    m.at 26, :"CAPTIVATE"
    m.at 29, :"SAFEGUARD"
    m.at 33, :"AQUARING"
    m.at 38, :"WHIRLPOOL"
    m.at 42, :"UTURN"
    m.at 45, :"BOUNCE"
    m.at 49, :"SILVERWIND"
    m.at 54, :"SOAK"
  end
  pkmn.tutor_moves :"AIRCUTTER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DEFOG", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"TWISTER", :"UTURN", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AGILITY", :"AQUATAIL", :"AURORABEAM", :"BRINE", :"CHARM", :"FLAIL", :"PSYBEAM", :"SIGNALBEAM", :"SPLASH", :"SWEETKISS", :"TICKLE"
end

GameData::SpeciesMetrics.define :"FINNEON" do |m|
  m.back_sprite -7, 0
  m.front_sprite 4, 5
  m.shadow_sprite 0, 0, 2
end