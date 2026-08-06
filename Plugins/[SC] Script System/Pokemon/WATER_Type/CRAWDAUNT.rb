#=============================================================================
# Crawdaunt - WATER Type
#=============================================================================

GameData::Species.define :"CRAWDAUNT" do |pkmn|
  pkmn.name "Crawdaunt"
  pkmn.types :"WATER", :"DARK"
  pkmn.base_stats hp: 63, attack: 120, defense: 85,
                  sp_atk: 55, sp_def: 90, speed: 55
  pkmn.abilities :"HYPERCUTTER", :"SHELLARMOR"
  pkmn.hidden_abilities :"ADAPTABILITY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 164
  pkmn.catch_rate 155
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.1
  pkmn.weight 32.8
  pkmn.category "Rogue"
  pkmn.pokedex_entry "A brutish Pokémon that loves to battle. A veteran Crawdaunt that has prevailed in hundreds of battles has giant pincers marked with countless scars."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 1, :"HARDEN"
    m.at 1, :"VICEGRIP"
    m.at 1, :"LEER"
    m.at 7, :"HARDEN"
    m.at 10, :"VICEGRIP"
    m.at 13, :"LEER"
    m.at 20, :"BUBBLEBEAM"
    m.at 23, :"PROTECT"
    m.at 26, :"KNOCKOFF"
    m.at 30, :"SWIFT"
    m.at 34, :"TAUNT"
    m.at 39, :"NIGHTSLASH"
    m.at 44, :"CRABHAMMER"
    m.at 52, :"SWORDSDANCE"
    m.at 57, :"CRUNCH"
    m.at 65, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNARL", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"CRAWDAUNT" do |m|
  m.back_sprite 9, 0
  m.front_sprite -1, 12
  m.shadow_sprite 0, 0, 3
end