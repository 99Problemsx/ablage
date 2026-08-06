#=============================================================================
# Horsea - WATER Type
#=============================================================================

GameData::Species.define :"HORSEA" do |pkmn|
  pkmn.name "Horsea"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 30, attack: 40, defense: 70,
                  sp_atk: 60, sp_def: 70, speed: 25
  pkmn.abilities :"SWIFTSWIM", :"SNIPER"
  pkmn.hidden_abilities :"DAMP"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 59
  pkmn.catch_rate 225
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 8.0
  pkmn.category "Dragon"
  pkmn.pokedex_entry "By cleverly flicking the fins on its back side to side, it moves in any direction while facing forward. It spits ink to escape if it senses danger."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 4, :"SMOKESCREEN"
    m.at 8, :"LEER"
    m.at 11, :"WATERGUN"
    m.at 14, :"FOCUSENERGY"
    m.at 18, :"BUBBLEBEAM"
    m.at 23, :"AGILITY"
    m.at 26, :"TWISTER"
    m.at 30, :"BRINE"
    m.at 35, :"HYDROPUMP"
    m.at 38, :"DRAGONDANCE"
    m.at 42, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AURORABEAM", :"CLEARSMOG", :"DISABLE", :"DRAGONBREATH", :"DRAGONRAGE", :"FLAIL", :"MUDDYWATER", :"OCTAZOOKA", :"OUTRAGE", :"RAZORWIND", :"SIGNALBEAM", :"SPLASH", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"HORSEA" do |m|
  m.back_sprite 1, 0
  m.front_sprite 3, 3
  m.shadow_sprite 0, 0, 1
end