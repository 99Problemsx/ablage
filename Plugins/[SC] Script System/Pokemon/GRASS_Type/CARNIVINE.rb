#=============================================================================
# Carnivine - GRASS Type
#=============================================================================

GameData::Species.define :"CARNIVINE" do |pkmn|
  pkmn.name "Carnivine"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 74, attack: 100, defense: 72,
                  sp_atk: 46, sp_def: 90, speed: 72
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Multiped"
  pkmn.base_exp 159
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.4
  pkmn.weight 27.0
  pkmn.category "Bug Catcher"
  pkmn.pokedex_entry "It attracts prey with its sweet-smelling saliva, then chomps down. It takes a whole day to eat prey."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"BIND"
    m.at 1, :"GROWTH"
    m.at 7, :"BITE"
    m.at 11, :"VINEWHIP"
    m.at 17, :"SWEETSCENT"
    m.at 21, :"INGRAIN"
    m.at 27, :"FEINTATTACK"
    m.at 31, :"LEAFTORNADO"
    m.at 37, :"STOCKPILE"
    m.at 37, :"SPITUP"
    m.at 37, :"SWALLOW"
    m.at 41, :"CRUNCH"
    m.at 47, :"WRINGOUT"
    m.at 51, :"POWERWHIP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"GIGADRAIN", :"GRASSWHISTLE", :"LEECHSEED", :"MAGICALLEAF", :"RAGEPOWDER", :"RAZORLEAF", :"SLAM", :"SLEEPPOWDER", :"STUNSPORE", :"SYNTHESIS", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"CARNIVINE" do |m|
  m.back_sprite -2, 0
  m.front_sprite 3, 4
  m.shadow_sprite 0, 0, 2
end