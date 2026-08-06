#=============================================================================
# Lapras - WATER Type
#=============================================================================

GameData::Species.define :"LAPRAS" do |pkmn|
  pkmn.name "Lapras"
  pkmn.types :"WATER", :"ICE"
  pkmn.base_stats hp: 130, attack: 85, defense: 80,
                  sp_atk: 60, sp_def: 85, speed: 95
  pkmn.abilities :"WATERABSORB", :"SHELLARMOR"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 187
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 2.5
  pkmn.weight 220.0
  pkmn.category "Transport"
  pkmn.pokedex_entry "People have driven Lapras almost to the point of extinction. In the evenings, it is said to sing plaintively as it seeks what few others of its kind still remain."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"SING"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 4, :"MIST"
    m.at 7, :"CONFUSERAY"
    m.at 10, :"ICESHARD"
    m.at 14, :"WATERPULSE"
    m.at 18, :"BODYSLAM"
    m.at 22, :"RAINDANCE"
    m.at 27, :"PERISHSONG"
    m.at 32, :"ICEBEAM"
    m.at 37, :"BRINE"
    m.at 43, :"SAFEGUARD"
    m.at 49, :"HYDROPUMP"
    m.at 55, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DREAMEATER", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
  pkmn.egg_moves :"ANCIENTPOWER", :"AVALANCHE", :"CURSE", :"DRAGONDANCE", :"DRAGONPULSE", :"FISSURE", :"FORESIGHT", :"FUTURESIGHT", :"HORNDRILL", :"REFRESH", :"SLEEPTALK", :"TICKLE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"LAPRAS" do |m|
  m.back_sprite 1, 0
  m.front_sprite 1, 12
  m.shadow_sprite 0, 0, 3
end