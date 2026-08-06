#=============================================================================
# Dracozolt - ELECTRIC Type
#=============================================================================

GameData::Species.define :"DRACOZOLT" do |pkmn|
  pkmn.name "Dracozolt"
  pkmn.types :"ELECTRIC", :"DRAGON"
  pkmn.base_stats hp: 90, attack: 100, defense: 90,
                  sp_atk: 75, sp_def: 80, speed: 70
  pkmn.abilities :"VOLTABSORB", :"HUSTLE"
  pkmn.hidden_abilities :"SANDRUSH"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 177
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 1.8
  pkmn.weight 190.0
  pkmn.category "Fossil"
  pkmn.pokedex_entry "In ancient times, it was unbeatable thanks to its powerful lower body, but it went extinct anyway after it depleted all its plant-based food sources."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"THUNDERSHOCK"
    m.at 7, :"CHARGE"
    m.at 14, :"AERIALACE"
    m.at 21, :"ANCIENTPOWER"
    m.at 28, :"PLUCK"
    m.at 35, :"DRAGONTAIL"
    m.at 42, :"STOMP"
    m.at 49, :"SLAM"
    m.at 56, :"DISCHARGE"
    m.at 63, :"BOLTBEAK"
    m.at 70, :"DRAGONPULSE"
    m.at 77, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BREAKINGSWIPE", :"BRUTALSWING", :"BULLDOZE", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIRESPIN", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DRACOZOLT" do |m|
  m.back_sprite -13, 58
  m.front_sprite 5, 11
end