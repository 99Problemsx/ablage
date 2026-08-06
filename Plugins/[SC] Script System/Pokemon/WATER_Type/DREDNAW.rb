#=============================================================================
# Drednaw - WATER Type
#=============================================================================

GameData::Species.define :"DREDNAW" do |pkmn|
  pkmn.name "Drednaw"
  pkmn.types :"WATER", :"ROCK"
  pkmn.base_stats hp: 90, attack: 115, defense: 90,
                  sp_atk: 74, sp_def: 48, speed: 68
  pkmn.abilities :"STRONGJAW", :"SHELLARMOR"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 170
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 115.5
  pkmn.category "Bite"
  pkmn.pokedex_entry "With jaws that can shear through steel rods, this highly aggressive Pokémon chomps down on its unfortunate prey."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 0, :"ROCKTOMB"
    m.at 1, :"RAZORSHELL"
    m.at 1, :"CRUNCH"
    m.at 1, :"ROCKPOLISH"
    m.at 1, :"TACKLE"
    m.at 1, :"WATERGUN"
    m.at 1, :"BITE"
    m.at 1, :"PROTECT"
    m.at 21, :"HEADBUTT"
    m.at 30, :"COUNTER"
    m.at 39, :"JAWLOCK"
    m.at 48, :"LIQUIDATION"
    m.at 57, :"BODYSLAM"
    m.at 66, :"HEADSMASH"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DIG", :"DIVE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"IRONDEFENSE", :"IRONTAIL", :"LIQUIDATION", :"MEGAHORN", :"METEORBEAM", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"RAZORSHELL", :"REST", :"RETURN", :"REVENGE", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCALD", :"SCALESHOT", :"SCARYFACE", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THROATCHOP", :"TOXIC", :"WATERFALL", :"WHIRLPOOL", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DREDNAW" do |m|
  m.back_sprite 0, 13
  m.front_sprite -1, 7
end