#=============================================================================
# Cacnea - GRASS Type
#=============================================================================

GameData::Species.define :"CACNEA" do |pkmn|
  pkmn.name "Cacnea"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 50, attack: 85, defense: 40,
                  sp_atk: 35, sp_def: 85, speed: 40
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 67
  pkmn.catch_rate 190
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 51.3
  pkmn.category "Cactus"
  pkmn.pokedex_entry "Cacnea live in deserts with virtually no rainfall. It battles by swinging its thick, spiked arms. Once a year, a yellow flower blooms."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Grass", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 1, :"LEER"
    m.at 5, :"ABSORB"
    m.at 9, :"GROWTH"
    m.at 13, :"LEECHSEED"
    m.at 17, :"SANDATTACK"
    m.at 21, :"PINMISSILE"
    m.at 25, :"INGRAIN"
    m.at 29, :"FEINTATTACK"
    m.at 33, :"SPIKES"
    m.at 37, :"SUCKERPUNCH"
    m.at 41, :"PAYBACK"
    m.at 45, :"NEEDLEARM"
    m.at 49, :"COTTONSPORE"
    m.at 53, :"SANDSTORM"
    m.at 57, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"LOWKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THUNDERPUNCH", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
  pkmn.egg_moves :"ACID", :"BLOCK", :"COUNTER", :"DISABLE", :"DYNAMICPUNCH", :"GRASSWHISTLE", :"LOWKICK", :"MAGICALLEAF", :"NASTYPLOT", :"SEEDBOMB", :"SMELLINGSALTS", :"SWITCHEROO", :"TEETERDANCE", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"CACNEA" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 25
  m.shadow_sprite 0, 0, 2
end