#=============================================================================
# Arctozolt - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ARCTOZOLT" do |pkmn|
  pkmn.name "Arctozolt"
  pkmn.types :"ELECTRIC", :"ICE"
  pkmn.base_stats hp: 90, attack: 100, defense: 90,
                  sp_atk: 55, sp_def: 90, speed: 80
  pkmn.abilities :"VOLTABSORB", :"STATIC"
  pkmn.hidden_abilities :"SLUSHRUSH"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 177
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 2.3
  pkmn.weight 150.0
  pkmn.category "Fossil"
  pkmn.pokedex_entry "The shaking of its freezing upper half is what generates its electricity. It has a hard time walking around."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"THUNDERSHOCK"
    m.at 7, :"CHARGE"
    m.at 14, :"ECHOEDVOICE"
    m.at 21, :"ANCIENTPOWER"
    m.at 28, :"PLUCK"
    m.at 35, :"AVALANCHE"
    m.at 42, :"FREEZEDRY"
    m.at 49, :"SLAM"
    m.at 56, :"DISCHARGE"
    m.at 63, :"BOLTBEAK"
    m.at 70, :"ICICLECRASH"
    m.at 77, :"BLIZZARD"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CONFIDE", :"DOUBLETEAM", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEFANG", :"ICICLESPEAR", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ARCTOZOLT" do |m|
  m.back_sprite 3, 44
  m.front_sprite 5, 16
end