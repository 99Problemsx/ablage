#=============================================================================
# Krabby - WATER Type
#=============================================================================

GameData::Species.define :"KRABBY" do |pkmn|
  pkmn.name "Krabby"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 30, attack: 105, defense: 90,
                  sp_atk: 50, sp_def: 25, speed: 25
  pkmn.abilities :"HYPERCUTTER", :"SHELLARMOR"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 65
  pkmn.catch_rate 225
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 6.5
  pkmn.category "River Crab"
  pkmn.pokedex_entry "Krabby live in holes dug into beaches. On sandy shores with little in the way of food, they can be seen squabbling with each other over territory."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"MUDSPORT"
    m.at 1, :"BUBBLE"
    m.at 5, :"VICEGRIP"
    m.at 9, :"LEER"
    m.at 11, :"HARDEN"
    m.at 15, :"BUBBLEBEAM"
    m.at 19, :"MUDSHOT"
    m.at 21, :"METALCLAW"
    m.at 25, :"STOMP"
    m.at 29, :"PROTECT"
    m.at 31, :"GUILLOTINE"
    m.at 35, :"SLAM"
    m.at 39, :"BRINE"
    m.at 41, :"CRABHAMMER"
    m.at 45, :"FLAIL"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"CAPTIVATE", :"CUT", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL", :"XSCISSOR"
  pkmn.egg_moves :"AGILITY", :"AMNESIA", :"ANCIENTPOWER", :"BIDE", :"CHIPAWAY", :"ENDURE", :"FLAIL", :"HAZE", :"KNOCKOFF", :"SLAM", :"TICKLE"
end

GameData::SpeciesMetrics.define :"KRABBY" do |m|
  m.back_sprite 4, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 2
end