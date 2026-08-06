#=============================================================================
# Melmetal - STEEL Type
#=============================================================================

GameData::Species.define :"MELMETAL" do |pkmn|
  pkmn.name "Melmetal"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 135, attack: 143, defense: 143,
                  sp_atk: 34, sp_def: 80, speed: 65
  pkmn.abilities :"IRONFIST"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 2.5
  pkmn.weight 800.0
  pkmn.category "Hex Nut"
  pkmn.pokedex_entry "Revered long ago for its capacity to create iron from nothing, for some reason it has come back to life after 3,000 years."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 0, :"THUNDERPUNCH"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"HARDEN"
    m.at 1, :"TAILWHIP"
    m.at 1, :"HEADBUTT"
    m.at 24, :"THUNDERWAVE"
    m.at 32, :"ACIDARMOR"
    m.at 40, :"FLASHCANNON"
    m.at 48, :"MEGAPUNCH"
    m.at 56, :"PROTECT"
    m.at 64, :"DISCHARGE"
    m.at 72, :"DYNAMICPUNCH"
    m.at 80, :"SUPERPOWER"
    m.at 88, :"DOUBLEIRONBASH"
    m.at 96, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BRUTALSWING", :"CONFIDE", :"DARKESTLARIAT", :"DOUBLETEAM", :"EARTHQUAKE", :"ELECTRICTERRAIN", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELBEAM", :"STEELROLLER", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MELMETAL" do |m|
  m.back_sprite 11, 64
  m.front_sprite -5, 17
end