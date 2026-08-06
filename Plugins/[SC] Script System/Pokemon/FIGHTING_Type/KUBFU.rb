#=============================================================================
# Kubfu - FIGHTING Type
#=============================================================================

GameData::Species.define :"KUBFU" do |pkmn|
  pkmn.name "Kubfu"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 60, attack: 90, defense: 60,
                  sp_atk: 72, sp_def: 53, speed: 50
  pkmn.abilities :"INNERFOCUS"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 77
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 30720
  pkmn.height 0.6
  pkmn.weight 12.0
  pkmn.category "Wushu"
  pkmn.pokedex_entry "Kubfu trains hard to perfect its moves. The moves it masters will determine which form it takes when it evolves."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 4, :"ENDURE"
    m.at 8, :"FOCUSENERGY"
    m.at 12, :"AERIALACE"
    m.at 16, :"SCARYFACE"
    m.at 20, :"HEADBUTT"
    m.at 24, :"BRICKBREAK"
    m.at 28, :"DETECT"
    m.at 32, :"BULKUP"
    m.at 36, :"IRONHEAD"
    m.at 40, :"DYNAMICPUNCH"
    m.at 44, :"COUNTER"
    m.at 48, :"CLOSECOMBAT"
    m.at 52, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FOCUSENERGY", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"IRONHEAD", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC", :"UTURN", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"KUBFU" do |m|
  m.back_sprite 0, 45
  m.front_sprite 3, 23
end