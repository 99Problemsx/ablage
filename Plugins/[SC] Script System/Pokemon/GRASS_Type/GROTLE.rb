#=============================================================================
# Grotle - GRASS Type
#=============================================================================

GameData::Species.define :"GROTLE" do |pkmn|
  pkmn.name "Grotle"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 75, attack: 89, defense: 85,
                  sp_atk: 36, sp_def: 55, speed: 65
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"SHELLARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 97.0
  pkmn.category "Grove"
  pkmn.pokedex_entry "It lives along water in forests. In the daytime, it leaves the forest to sunbathe its treed shell."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"WITHDRAW"
    m.at 5, :"WITHDRAW"
    m.at 9, :"ABSORB"
    m.at 13, :"RAZORLEAF"
    m.at 17, :"CURSE"
    m.at 22, :"BITE"
    m.at 27, :"MEGADRAIN"
    m.at 32, :"LEECHSEED"
    m.at 37, :"SYNTHESIS"
    m.at 42, :"CRUNCH"
    m.at 47, :"GIGADRAIN"
    m.at 52, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"GROTLE" do |m|
  m.back_sprite -4, 0
  m.front_sprite -4, 17
  m.shadow_sprite 0, 0, 3
end