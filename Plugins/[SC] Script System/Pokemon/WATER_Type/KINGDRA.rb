#=============================================================================
# Kingdra - WATER Type
#=============================================================================

GameData::Species.define :"KINGDRA" do |pkmn|
  pkmn.name "Kingdra"
  pkmn.types :"WATER", :"DRAGON"
  pkmn.base_stats hp: 75, attack: 95, defense: 95,
                  sp_atk: 85, sp_def: 95, speed: 95
  pkmn.abilities :"SWIFTSWIM", :"SNIPER"
  pkmn.hidden_abilities :"DAMP"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 243
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.8
  pkmn.weight 152.0
  pkmn.category "Dragon"
  pkmn.pokedex_entry "It sleeps quietly, deep on the seafloor. When it comes up to the surface, it creates a huge whirlpool that can swallow even ships."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"YAWN"
    m.at 1, :"BUBBLE"
    m.at 1, :"SMOKESCREEN"
    m.at 1, :"LEER"
    m.at 1, :"WATERGUN"
    m.at 4, :"SMOKESCREEN"
    m.at 8, :"LEER"
    m.at 11, :"WATERGUN"
    m.at 14, :"FOCUSENERGY"
    m.at 18, :"BUBBLEBEAM"
    m.at 23, :"AGILITY"
    m.at 26, :"TWISTER"
    m.at 30, :"BRINE"
    m.at 40, :"HYDROPUMP"
    m.at 48, :"DRAGONDANCE"
    m.at 57, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"KINGDRA" do |m|
  m.back_sprite -5, 0
  m.front_sprite 0, -7
  m.shadow_sprite 0, 0, 2
end