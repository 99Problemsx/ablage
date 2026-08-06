#=============================================================================
# Piplup - WATER Type
#=============================================================================

GameData::Species.define :"PIPLUP" do |pkmn|
  pkmn.name "Piplup"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 53, attack: 51, defense: 53,
                  sp_atk: 40, sp_def: 61, speed: 56
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 63
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 5.2
  pkmn.category "Penguin"
  pkmn.pokedex_entry "Because it is very proud, it hates accepting food from people. Its thick down guards it from cold."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 4, :"GROWL"
    m.at 8, :"BUBBLE"
    m.at 11, :"WATERSPORT"
    m.at 15, :"PECK"
    m.at 18, :"BUBBLEBEAM"
    m.at 22, :"BIDE"
    m.at 25, :"FURYATTACK"
    m.at 29, :"BRINE"
    m.at 32, :"WHIRLPOOL"
    m.at 36, :"MIST"
    m.at 39, :"DRILLPECK"
    m.at 43, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"BRINE", :"CAPTIVATE", :"COVET", :"CUT", :"DEFOG", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETURN", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AGILITY", :"AQUARING", :"BIDE", :"DOUBLEHIT", :"FEATHERDANCE", :"FLAIL", :"HYDROPUMP", :"ICYWIND", :"MUDSLAP", :"MUDSPORT", :"SNORE", :"SUPERSONIC", :"YAWN"
end

GameData::SpeciesMetrics.define :"PIPLUP" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 24
  m.shadow_sprite 0, 0, 1
end