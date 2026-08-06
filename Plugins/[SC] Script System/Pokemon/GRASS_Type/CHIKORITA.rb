#=============================================================================
# Chikorita - GRASS Type
#=============================================================================

GameData::Species.define :"CHIKORITA" do |pkmn|
  pkmn.name "Chikorita"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 45, attack: 49, defense: 65,
                  sp_atk: 45, sp_def: 49, speed: 65
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 64
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 6.4
  pkmn.category "Leaf"
  pkmn.pokedex_entry "It waves its leaf around to keep foes at bay. However, a sweet fragrance also wafts from the leaf, creating a friendly atmosphere that becalms the battlers."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 6, :"RAZORLEAF"
    m.at 9, :"POISONPOWDER"
    m.at 12, :"SYNTHESIS"
    m.at 17, :"REFLECT"
    m.at 20, :"MAGICALLEAF"
    m.at 23, :"NATURALGIFT"
    m.at 28, :"SWEETSCENT"
    m.at 31, :"LIGHTSCREEN"
    m.at 34, :"BODYSLAM"
    m.at 39, :"SAFEGUARD"
    m.at 42, :"AROMATHERAPY"
    m.at 45, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"ANCIENTPOWER", :"AROMATHERAPY", :"BODYSLAM", :"COUNTER", :"FLAIL", :"GRASSWHISTLE", :"HEALPULSE", :"INGRAIN", :"LEAFSTORM", :"LEECHSEED", :"NATUREPOWER", :"REFRESH", :"VINEWHIP", :"WRINGOUT"
end

GameData::SpeciesMetrics.define :"CHIKORITA" do |m|
  m.back_sprite -8, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 2
end