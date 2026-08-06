#=============================================================================
# Roselia - GRASS Type
#=============================================================================

GameData::Species.define :"ROSELIA" do |pkmn|
  pkmn.name "Roselia"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 50, attack: 60, defense: 45,
                  sp_atk: 65, sp_def: 100, speed: 80
  pkmn.abilities :"NATURALCURE", :"POISONPOINT"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 140
  pkmn.catch_rate 150
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 2.0
  pkmn.category "Thorn"
  pkmn.pokedex_entry "A Roselia that drinks nutritionally rich springwater blooms with lovely flowers. The fragrance of its flowers has the effect of making its foes careless."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 4, :"GROWTH"
    m.at 7, :"POISONSTING"
    m.at 10, :"STUNSPORE"
    m.at 13, :"MEGADRAIN"
    m.at 16, :"LEECHSEED"
    m.at 19, :"MAGICALLEAF"
    m.at 22, :"GRASSWHISTLE"
    m.at 25, :"GIGADRAIN"
    m.at 28, :"TOXICSPIKES"
    m.at 31, :"SWEETSCENT"
    m.at 34, :"INGRAIN"
    m.at 37, :"PETALDANCE"
    m.at 40, :"TOXIC"
    m.at 43, :"AROMATHERAPY"
    m.at 46, :"SYNTHESIS"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"COVET", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
  pkmn.egg_moves :"COTTONSPORE", :"GIGADRAIN", :"GRASSWHISTLE", :"LEAFSTORM", :"MINDREADER", :"NATURALGIFT", :"PINMISSILE", :"RAZORLEAF", :"SEEDBOMB", :"SLEEPPOWDER", :"SPIKES", :"SYNTHESIS"
end

GameData::SpeciesMetrics.define :"ROSELIA" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 1
end