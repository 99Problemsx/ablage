#=============================================================================
# Totodile - WATER Type
#=============================================================================

GameData::Species.define :"TOTODILE" do |pkmn|
  pkmn.name "Totodile"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 65, defense: 64,
                  sp_atk: 43, sp_def: 44, speed: 48
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 63
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 9.5
  pkmn.category "Big Jaw"
  pkmn.pokedex_entry "Despite its small body, Totodile's jaws are very powerful. While it may think it is just playfully nipping, its bite has enough strength to cause serious injury."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 6, :"WATERGUN"
    m.at 8, :"RAGE"
    m.at 13, :"BITE"
    m.at 15, :"SCARYFACE"
    m.at 20, :"ICEFANG"
    m.at 22, :"FLAIL"
    m.at 27, :"CRUNCH"
    m.at 29, :"CHIPAWAY"
    m.at 34, :"SLASH"
    m.at 36, :"SCREECH"
    m.at 41, :"THRASH"
    m.at 43, :"AQUATAIL"
    m.at 48, :"SUPERPOWER"
    m.at 50, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"ANCIENTPOWER", :"AQUAJET", :"BLOCK", :"CRUNCH", :"DRAGONDANCE", :"FAKETEARS", :"HYDROPUMP", :"ICEPUNCH", :"METALCLAW", :"MUDSPORT", :"THRASH", :"WATERPULSE", :"WATERSPORT"
end

GameData::SpeciesMetrics.define :"TOTODILE" do |m|
  m.back_sprite -2, 0
  m.front_sprite -1, 23
  m.shadow_sprite 0, 0, 2
end