#=============================================================================
# Swampert - WATER Type
#=============================================================================

GameData::Species.define :"SWAMPERT" do |pkmn|
  pkmn.name "Swampert"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 100, attack: 110, defense: 90,
                  sp_atk: 60, sp_def: 85, speed: 90
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"DAMP"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 241
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 81.9
  pkmn.category "Mud Fish"
  pkmn.pokedex_entry "If it senses the approach of a storm and a tidal wave, it protects its seaside nest by piling up boulders. It swims as fast as a jet ski."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"MUDSLAP"
    m.at 1, :"WATERGUN"
    m.at 6, :"MUDSLAP"
    m.at 10, :"WATERGUN"
    m.at 15, :"BIDE"
    m.at 16, :"MUDSHOT"
    m.at 20, :"FORESIGHT"
    m.at 25, :"MUDBOMB"
    m.at 31, :"TAKEDOWN"
    m.at 39, :"MUDDYWATER"
    m.at 46, :"PROTECT"
    m.at 52, :"EARTHQUAKE"
    m.at 61, :"ENDEAVOR"
    m.at 69, :"HAMMERARM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"SWAMPERT" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, 10
  m.shadow_sprite 0, 0, 3
end