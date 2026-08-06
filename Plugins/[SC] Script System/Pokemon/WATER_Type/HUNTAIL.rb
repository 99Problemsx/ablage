#=============================================================================
# Huntail - WATER Type
#=============================================================================

GameData::Species.define :"HUNTAIL" do |pkmn|
  pkmn.name "Huntail"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 55, attack: 104, defense: 105,
                  sp_atk: 52, sp_def: 94, speed: 75
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"WATERVEIL"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 170
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 27.0
  pkmn.category "Deep Sea"
  pkmn.pokedex_entry "To withstand the crushing water pressure deep under the sea, its spine is very thick and sturdy. Its tail, which is shaped like a small fish, has eyes that light up."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"WHIRLPOOL"
    m.at 6, :"BITE"
    m.at 10, :"SCREECH"
    m.at 15, :"WATERPULSE"
    m.at 19, :"SCARYFACE"
    m.at 24, :"ICEFANG"
    m.at 28, :"BRINE"
    m.at 33, :"BATONPASS"
    m.at 37, :"DIVE"
    m.at 42, :"CRUNCH"
    m.at 46, :"AQUATAIL"
    m.at 51, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"HUNTAIL" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, -3
  m.shadow_sprite 0, 0, 3
end