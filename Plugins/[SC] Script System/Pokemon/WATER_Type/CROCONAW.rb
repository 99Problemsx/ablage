#=============================================================================
# Croconaw - WATER Type
#=============================================================================

GameData::Species.define :"CROCONAW" do |pkmn|
  pkmn.name "Croconaw"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 65, attack: 80, defense: 80,
                  sp_atk: 58, sp_def: 59, speed: 63
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 25.0
  pkmn.category "Big Jaw"
  pkmn.pokedex_entry "Once its jaws clamp down on its foe, it will absolutely not let go. Because the tips of its fangs are forked back like fishhooks, they become irremovably embedded."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"WATERGUN"
    m.at 6, :"WATERGUN"
    m.at 8, :"RAGE"
    m.at 13, :"BITE"
    m.at 15, :"SCARYFACE"
    m.at 21, :"ICEFANG"
    m.at 24, :"FLAIL"
    m.at 30, :"CRUNCH"
    m.at 33, :"CHIPAWAY"
    m.at 39, :"SLASH"
    m.at 42, :"SCREECH"
    m.at 48, :"THRASH"
    m.at 51, :"AQUATAIL"
    m.at 57, :"SUPERPOWER"
    m.at 60, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"CROCONAW" do |m|
  m.back_sprite -1, 0
  m.front_sprite -1, 12
  m.shadow_sprite 0, 0, 2
end