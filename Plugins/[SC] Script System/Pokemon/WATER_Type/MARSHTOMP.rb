#=============================================================================
# Marshtomp - WATER Type
#=============================================================================

GameData::Species.define :"MARSHTOMP" do |pkmn|
  pkmn.name "Marshtomp"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 70, attack: 85, defense: 70,
                  sp_atk: 50, sp_def: 60, speed: 70
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"DAMP"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 28.0
  pkmn.category "Mud Fish"
  pkmn.pokedex_entry "Its toughened hind legs enable it to stand upright. Because it weakens if its skin dries out, it replenishes fluids by playing in mud."
  pkmn.evs attack: 2
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
    m.at 37, :"MUDDYWATER"
    m.at 42, :"PROTECT"
    m.at 46, :"EARTHQUAKE"
    m.at 53, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"MARSHTOMP" do |m|
  m.back_sprite -2, 0
  m.front_sprite 2, 15
  m.shadow_sprite 0, 0, 2
end