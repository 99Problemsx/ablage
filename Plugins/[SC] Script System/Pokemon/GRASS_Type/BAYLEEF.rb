#=============================================================================
# Bayleef - GRASS Type
#=============================================================================

GameData::Species.define :"BAYLEEF" do |pkmn|
  pkmn.name "Bayleef"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 60, attack: 62, defense: 80,
                  sp_atk: 60, sp_def: 63, speed: 80
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 15.8
  pkmn.category "Leaf"
  pkmn.pokedex_entry "A Bayleef's neck is ringed by curled-up leaves. Inside each leaf is a small tree shoot. The fragrance of this shoot makes people peppy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"RAZORLEAF"
    m.at 1, :"POISONPOWDER"
    m.at 6, :"RAZORLEAF"
    m.at 9, :"POISONPOWDER"
    m.at 12, :"SYNTHESIS"
    m.at 18, :"REFLECT"
    m.at 22, :"MAGICALLEAF"
    m.at 26, :"NATURALGIFT"
    m.at 32, :"SWEETSCENT"
    m.at 36, :"LIGHTSCREEN"
    m.at 40, :"BODYSLAM"
    m.at 46, :"SAFEGUARD"
    m.at 50, :"AROMATHERAPY"
    m.at 54, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"BAYLEEF" do |m|
  m.back_sprite -3, 0
  m.front_sprite 1, 12
  m.shadow_sprite 0, 0, 2
end