#=============================================================================
# Corphish - WATER Type
#=============================================================================

GameData::Species.define :"CORPHISH" do |pkmn|
  pkmn.name "Corphish"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 43, attack: 80, defense: 65,
                  sp_atk: 35, sp_def: 50, speed: 35
  pkmn.abilities :"HYPERCUTTER", :"SHELLARMOR"
  pkmn.hidden_abilities :"ADAPTABILITY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 62
  pkmn.catch_rate 205
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.6
  pkmn.weight 11.5
  pkmn.category "Ruffian"
  pkmn.pokedex_entry "Once it grips prey with its large pincers, it will never let go, no matter what. It is a hardy Pokémon that can thrive in any environment."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 7, :"HARDEN"
    m.at 10, :"VICEGRIP"
    m.at 13, :"LEER"
    m.at 20, :"BUBBLEBEAM"
    m.at 23, :"PROTECT"
    m.at 26, :"KNOCKOFF"
    m.at 32, :"TAUNT"
    m.at 35, :"NIGHTSLASH"
    m.at 38, :"CRABHAMMER"
    m.at 44, :"SWORDSDANCE"
    m.at 47, :"CRUNCH"
    m.at 53, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"XSCISSOR"
  pkmn.egg_moves :"ANCIENTPOWER", :"BODYSLAM", :"CHIPAWAY", :"DOUBLEEDGE", :"DRAGONDANCE", :"ENDEAVOR", :"KNOCKOFF", :"METALCLAW", :"MUDSPORT", :"SUPERPOWER", :"TRUMPCARD"
end

GameData::SpeciesMetrics.define :"CORPHISH" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 21
  m.shadow_sprite 0, 0, 2
end