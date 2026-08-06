#=============================================================================
# Arctovish - WATER Type
#=============================================================================

GameData::Species.define :"ARCTOVISH" do |pkmn|
  pkmn.name "Arctovish"
  pkmn.types :"WATER", :"ICE"
  pkmn.base_stats hp: 90, attack: 90, defense: 100,
                  sp_atk: 55, sp_def: 80, speed: 90
  pkmn.abilities :"WATERABSORB", :"ICEBODY"
  pkmn.hidden_abilities :"SLUSHRUSH"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 177
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 2.0
  pkmn.weight 175.0
  pkmn.category "Fossil"
  pkmn.pokedex_entry "Though it's able to capture prey by freezing its surroundings, it has trouble eating the prey afterward because its mouth is on top of its head."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"WATERGUN"
    m.at 7, :"PROTECT"
    m.at 14, :"ICYWIND"
    m.at 21, :"ANCIENTPOWER"
    m.at 28, :"BITE"
    m.at 35, :"AURORAVEIL"
    m.at 42, :"FREEZEDRY"
    m.at 49, :"SUPERFANG"
    m.at 56, :"CRUNCH"
    m.at 63, :"FISHIOUSREND"
    m.at 70, :"ICICLECRASH"
    m.at 77, :"BLIZZARD"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"CONFIDE", :"CRUNCH", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"LIQUIDATION", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WHIRLPOOL", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ARCTOVISH" do |m|
  m.back_sprite -5, 51
  m.front_sprite -2, 4
  m.shadow_sprite 0, 0, -1
end