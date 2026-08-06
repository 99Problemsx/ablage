#=============================================================================
# Gorebyss - WATER Type
#=============================================================================

GameData::Species.define :"GOREBYSS" do |pkmn|
  pkmn.name "Gorebyss"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 55, attack: 84, defense: 105,
                  sp_atk: 52, sp_def: 114, speed: 75
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Pink"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 170
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.8
  pkmn.weight 22.6
  pkmn.category "South Sea"
  pkmn.pokedex_entry "A Gorebyss siphons the body fluids of prey through its thin, tubular mouth. Its light pink body color turns vivid when it finishes feeding."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"WHIRLPOOL"
    m.at 6, :"CONFUSION"
    m.at 10, :"AGILITY"
    m.at 15, :"WATERPULSE"
    m.at 19, :"AMNESIA"
    m.at 24, :"AQUARING"
    m.at 28, :"CAPTIVATE"
    m.at 33, :"BATONPASS"
    m.at 37, :"DIVE"
    m.at 42, :"PSYCHIC"
    m.at 46, :"AQUATAIL"
    m.at 51, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"GOREBYSS" do |m|
  m.back_sprite -4, 0
  m.front_sprite 5, -5
  m.shadow_sprite 0, 0, 3
end