#=============================================================================
# Mudkip - WATER Type
#=============================================================================

GameData::Species.define :"MUDKIP" do |pkmn|
  pkmn.name "Mudkip"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 70, defense: 50,
                  sp_atk: 40, sp_def: 50, speed: 50
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"DAMP"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 7.6
  pkmn.category "Mud Fish"
  pkmn.pokedex_entry "On land, it can powerfully lift large boulders by planting its four feet and heaving. It sleeps by burying itself in soil at the water's edge."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 6, :"MUDSLAP"
    m.at 10, :"WATERGUN"
    m.at 15, :"BIDE"
    m.at 19, :"FORESIGHT"
    m.at 24, :"MUDSPORT"
    m.at 28, :"TAKEDOWN"
    m.at 33, :"WHIRLPOOL"
    m.at 37, :"PROTECT"
    m.at 42, :"HYDROPUMP"
    m.at 46, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"ANCIENTPOWER", :"AVALANCHE", :"BITE", :"COUNTER", :"CURSE", :"DOUBLEEDGE", :"ICEBALL", :"MIRRORCOAT", :"MUDBOMB", :"REFRESH", :"SLUDGE", :"STOMP", :"UPROAR", :"WHIRLPOOL", :"WIDEGUARD", :"YAWN"
end

GameData::SpeciesMetrics.define :"MUDKIP" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 21
  m.shadow_sprite 0, 0, 1
end