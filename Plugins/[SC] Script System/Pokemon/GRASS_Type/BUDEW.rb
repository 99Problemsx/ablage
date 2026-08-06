#=============================================================================
# Budew - GRASS Type
#=============================================================================

GameData::Species.define :"BUDEW" do |pkmn|
  pkmn.name "Budew"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 40, attack: 30, defense: 35,
                  sp_atk: 55, sp_def: 50, speed: 70
  pkmn.abilities :"NATURALCURE", :"POISONPOINT"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 56
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.2
  pkmn.weight 1.2
  pkmn.category "Bud"
  pkmn.pokedex_entry "Over the winter, it closes its bud and endures the cold. In spring, the bud opens and releases pollen."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 4, :"GROWTH"
    m.at 7, :"WATERSPORT"
    m.at 10, :"STUNSPORE"
    m.at 13, :"MEGADRAIN"
    m.at 16, :"WORRYSEED"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"COVET", :"CUT", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WORRYSEED"
  pkmn.egg_moves :"COTTONSPORE", :"EXTRASENSORY", :"GIGADRAIN", :"GRASSWHISTLE", :"LEAFSTORM", :"MINDREADER", :"NATURALGIFT", :"PINMISSILE", :"RAZORLEAF", :"SEEDBOMB", :"SLEEPPOWDER", :"SPIKES", :"SYNTHESIS"
end

GameData::SpeciesMetrics.define :"BUDEW" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 1
end