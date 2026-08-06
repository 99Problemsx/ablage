#=============================================================================
# Grovyle - GRASS Type
#=============================================================================

GameData::Species.define :"GROVYLE" do |pkmn|
  pkmn.name "Grovyle"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 50, attack: 65, defense: 45,
                  sp_atk: 95, sp_def: 85, speed: 65
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"UNBURDEN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 21.6
  pkmn.category "Wood Gecko"
  pkmn.pokedex_entry "Leaves grow out of this Pokémon's body. They help obscure a Grovyle from the eyes of its enemies while it is in a thickly overgrown forest."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"LEER"
    m.at 1, :"ABSORB"
    m.at 1, :"QUICKATTACK"
    m.at 6, :"ABSORB"
    m.at 11, :"QUICKATTACK"
    m.at 16, :"FURYCUTTER"
    m.at 17, :"PURSUIT"
    m.at 23, :"SCREECH"
    m.at 29, :"LEAFBLADE"
    m.at 35, :"AGILITY"
    m.at 41, :"SLAM"
    m.at 47, :"DETECT"
    m.at 53, :"FALSESWIPE"
    m.at 59, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"THUNDERPUNCH", :"TOXIC", :"WORRYSEED", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"GROVYLE" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 5
  m.shadow_sprite 0, 0, 2
end