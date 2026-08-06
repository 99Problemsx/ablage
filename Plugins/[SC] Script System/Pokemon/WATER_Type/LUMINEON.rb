#=============================================================================
# Lumineon - WATER Type
#=============================================================================

GameData::Species.define :"LUMINEON" do |pkmn|
  pkmn.name "Lumineon"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 69, attack: 69, defense: 76,
                  sp_atk: 91, sp_def: 69, speed: 86
  pkmn.abilities :"SWIFTSWIM", :"STORMDRAIN"
  pkmn.hidden_abilities :"WATERVEIL"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 161
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 24.0
  pkmn.category "Neon"
  pkmn.pokedex_entry "It lives on the deep-sea floor. It attracts prey by flashing the patterns on its four tail fins."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"WATERGUN"
    m.at 1, :"ATTRACT"
    m.at 6, :"WATERGUN"
    m.at 10, :"ATTRACT"
    m.at 13, :"RAINDANCE"
    m.at 17, :"GUST"
    m.at 22, :"WATERPULSE"
    m.at 26, :"CAPTIVATE"
    m.at 29, :"SAFEGUARD"
    m.at 35, :"AQUARING"
    m.at 42, :"WHIRLPOOL"
    m.at 48, :"UTURN"
    m.at 53, :"BOUNCE"
    m.at 59, :"SILVERWIND"
    m.at 66, :"SOAK"
  end
  pkmn.tutor_moves :"AIRCUTTER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DEFOG", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"TWISTER", :"UTURN", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"LUMINEON" do |m|
  m.back_sprite -8, 0
  m.front_sprite 5, -4
  m.shadow_sprite 0, 0, 2
end