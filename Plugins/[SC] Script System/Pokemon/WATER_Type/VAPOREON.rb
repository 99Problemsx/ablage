#=============================================================================
# Vaporeon - WATER Type
#=============================================================================

GameData::Species.define :"VAPOREON" do |pkmn|
  pkmn.name "Vaporeon"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 130, attack: 65, defense: 60,
                  sp_atk: 65, sp_def: 110, speed: 95
  pkmn.abilities :"WATERABSORB"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 8995
  pkmn.height 1.0
  pkmn.weight 29.0
  pkmn.category "Bubble Jet"
  pkmn.pokedex_entry "Vaporeon underwent a spontaneous mutation and grew fins and gills that allow them to live underwater. They have the ability to freely control water."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 9, :"WATERGUN"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"WATERPULSE"
    m.at 21, :"AURORABEAM"
    m.at 25, :"AQUARING"
    m.at 29, :"ACIDARMOR"
    m.at 33, :"HAZE"
    m.at 37, :"MUDDYWATER"
    m.at 41, :"LASTRESORT"
    m.at 45, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"CAPTIVATE", :"COVET", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"VAPOREON" do |m|
  m.back_sprite 4, 0
  m.front_sprite -1, 15
  m.shadow_sprite 0, 0, 2
end