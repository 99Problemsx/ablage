#=============================================================================
# Leafeon - GRASS Type
#=============================================================================

GameData::Species.define :"LEAFEON" do |pkmn|
  pkmn.name "Leafeon"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 65, attack: 110, defense: 130,
                  sp_atk: 95, sp_def: 60, speed: 65
  pkmn.abilities :"LEAFGUARD"
  pkmn.hidden_abilities :"CHLOROPHYLL"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 8995
  pkmn.height 1.0
  pkmn.weight 25.5
  pkmn.category "Verdant"
  pkmn.pokedex_entry "Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 9, :"RAZORLEAF"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"GRASSWHISTLE"
    m.at 21, :"MAGICALLEAF"
    m.at 25, :"GIGADRAIN"
    m.at 29, :"SWORDSDANCE"
    m.at 33, :"SYNTHESIS"
    m.at 37, :"SUNNYDAY"
    m.at 41, :"LASTRESORT"
    m.at 45, :"LEAFBLADE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORKUP", :"WORRYSEED", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"LEAFEON" do |m|
  m.back_sprite -3, 0
  m.front_sprite 5, 15
  m.shadow_sprite 0, 0, 1
end