#=============================================================================
# Treecko - GRASS Type
#=============================================================================

GameData::Species.define :"TREECKO" do |pkmn|
  pkmn.name "Treecko"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 40, attack: 45, defense: 35,
                  sp_atk: 70, sp_def: 65, speed: 55
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"UNBURDEN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 5.0
  pkmn.category "Wood Gecko"
  pkmn.pokedex_entry "It makes its nest in a giant tree in the forest. It ferociously guards against anything nearing its territory. It is said to be the protector of the trees."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"LEER"
    m.at 6, :"ABSORB"
    m.at 11, :"QUICKATTACK"
    m.at 16, :"PURSUIT"
    m.at 21, :"SCREECH"
    m.at 26, :"MEGADRAIN"
    m.at 31, :"AGILITY"
    m.at 36, :"SLAM"
    m.at 41, :"DETECT"
    m.at 46, :"GIGADRAIN"
    m.at 51, :"ENERGYBALL"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"THUNDERPUNCH", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"BULLETSEED", :"CRUNCH", :"CRUSHCLAW", :"DOUBLEKICK", :"DRAGONBREATH", :"ENDEAVOR", :"GRASSWHISTLE", :"LEAFSTORM", :"LEECHSEED", :"MAGICALLEAF", :"MUDSPORT", :"NATURALGIFT", :"RAZORWIND", :"SYNTHESIS", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"TREECKO" do |m|
  m.back_sprite -2, 0
  m.front_sprite 3, 15
  m.shadow_sprite 0, 0, 1
end