#=============================================================================
# Blastoise - WATER Type
#=============================================================================

GameData::Species.define :"BLASTOISE" do |pkmn|
  pkmn.name "Blastoise"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 79, attack: 83, defense: 100,
                  sp_atk: 78, sp_def: 85, speed: 105
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 239
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 85.5
  pkmn.category "Shellfish"
  pkmn.pokedex_entry "The waterspouts that protrude from its shell are highly accurate. Their bullets of water can precisely nail tin cans from a distance of over 160 feet."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"FLASHCANNON"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"BUBBLE"
    m.at 1, :"WITHDRAW"
    m.at 4, :"TAILWHIP"
    m.at 7, :"BUBBLE"
    m.at 10, :"WITHDRAW"
    m.at 13, :"WATERGUN"
    m.at 16, :"BITE"
    m.at 20, :"RAPIDSPIN"
    m.at 24, :"PROTECT"
    m.at 28, :"WATERPULSE"
    m.at 32, :"AQUATAIL"
    m.at 39, :"SKULLBASH"
    m.at 46, :"IRONDEFENSE"
    m.at 53, :"RAINDANCE"
    m.at 60, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SIGNALBEAM", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BLASTOISE" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, 13
  m.shadow_sprite 0, 0, 3
end