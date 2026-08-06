#=============================================================================
# Empoleon - WATER Type
#=============================================================================

GameData::Species.define :"EMPOLEON" do |pkmn|
  pkmn.name "Empoleon"
  pkmn.types :"WATER", :"STEEL"
  pkmn.base_stats hp: 84, attack: 86, defense: 88,
                  sp_atk: 60, sp_def: 111, speed: 101
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 239
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 84.5
  pkmn.category "Emperor"
  pkmn.pokedex_entry "The three horns that extend from its beak attest to its power. The leader has the biggest horns."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"BUBBLE"
    m.at 4, :"GROWL"
    m.at 8, :"BUBBLE"
    m.at 11, :"SWORDSDANCE"
    m.at 15, :"PECK"
    m.at 16, :"METALCLAW"
    m.at 19, :"BUBBLEBEAM"
    m.at 24, :"SWAGGER"
    m.at 28, :"FURYATTACK"
    m.at 33, :"BRINE"
    m.at 36, :"AQUAJET"
    m.at 39, :"WHIRLPOOL"
    m.at 46, :"MIST"
    m.at 52, :"DRILLPECK"
    m.at 59, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BRICKBREAK", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"COVET", :"CUT", :"DEFOG", :"DIG", :"DIVE", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STEELWING", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"EMPOLEON" do |m|
  m.back_sprite 2, 0
  m.front_sprite -3, 6
  m.shadow_sprite 0, 0, 3
end