#=============================================================================
# Torterra - GRASS Type
#=============================================================================

GameData::Species.define :"TORTERRA" do |pkmn|
  pkmn.name "Torterra"
  pkmn.types :"GRASS", :"GROUND"
  pkmn.base_stats hp: 95, attack: 109, defense: 105,
                  sp_atk: 56, sp_def: 75, speed: 85
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"SHELLARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 236
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.2
  pkmn.weight 310.0
  pkmn.category "Continent"
  pkmn.pokedex_entry "Small Pokémon occasionally gather on its unmoving back to begin building their nests."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"WOODHAMMER"
    m.at 1, :"TACKLE"
    m.at 1, :"WITHDRAW"
    m.at 1, :"ABSORB"
    m.at 1, :"RAZORLEAF"
    m.at 5, :"WITHDRAW"
    m.at 9, :"ABSORB"
    m.at 13, :"RAZORLEAF"
    m.at 17, :"CURSE"
    m.at 22, :"BITE"
    m.at 27, :"MEGADRAIN"
    m.at 32, :"EARTHQUAKE"
    m.at 33, :"LEECHSEED"
    m.at 39, :"SYNTHESIS"
    m.at 45, :"CRUNCH"
    m.at 51, :"GIGADRAIN"
    m.at 57, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRENZYPLANT", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"TORTERRA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 7
  m.shadow_sprite 0, 0, 3
end