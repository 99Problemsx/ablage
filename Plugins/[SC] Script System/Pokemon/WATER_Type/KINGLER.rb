#=============================================================================
# Kingler - WATER Type
#=============================================================================

GameData::Species.define :"KINGLER" do |pkmn|
  pkmn.name "Kingler"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 55, attack: 130, defense: 115,
                  sp_atk: 75, sp_def: 50, speed: 50
  pkmn.abilities :"HYPERCUTTER", :"SHELLARMOR"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 166
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 60.0
  pkmn.category "Pincer"
  pkmn.pokedex_entry "It waves its huge, oversized claw in the air to communicate with others. But since the claw is so heavy, this Pokémon quickly tires."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"WIDEGUARD"
    m.at 1, :"MUDSPORT"
    m.at 1, :"BUBBLE"
    m.at 1, :"VICEGRIP"
    m.at 1, :"LEER"
    m.at 5, :"VICEGRIP"
    m.at 9, :"LEER"
    m.at 11, :"HARDEN"
    m.at 15, :"BUBBLEBEAM"
    m.at 19, :"MUDSHOT"
    m.at 21, :"METALCLAW"
    m.at 25, :"STOMP"
    m.at 32, :"PROTECT"
    m.at 37, :"GUILLOTINE"
    m.at 44, :"SLAM"
    m.at 51, :"BRINE"
    m.at 56, :"CRABHAMMER"
    m.at 63, :"FLAIL"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"CAPTIVATE", :"CUT", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"KINGLER" do |m|
  m.back_sprite -2, 0
  m.front_sprite 3, 14
  m.shadow_sprite 0, 0, 3
end