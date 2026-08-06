#=============================================================================
# Seadra - WATER Type
#=============================================================================

GameData::Species.define :"SEADRA" do |pkmn|
  pkmn.name "Seadra"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 55, attack: 65, defense: 95,
                  sp_atk: 85, sp_def: 95, speed: 45
  pkmn.abilities :"POISONPOINT", :"SNIPER"
  pkmn.hidden_abilities :"DAMP"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 154
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 25.0
  pkmn.category "Dragon"
  pkmn.pokedex_entry "The poisonous barbs all over its body are highly valued as ingredients for making traditional herbal medicine. It shows no mercy to anything approaching its nest."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
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
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"SEADRA" do |m|
  m.back_sprite -3, 0
  m.front_sprite 9, -1
  m.shadow_sprite 0, 0, 1
end