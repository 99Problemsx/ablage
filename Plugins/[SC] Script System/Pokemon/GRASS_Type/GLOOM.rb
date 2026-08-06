#=============================================================================
# Gloom - GRASS Type
#=============================================================================

GameData::Species.define :"GLOOM" do |pkmn|
  pkmn.name "Gloom"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 60, attack: 65, defense: 70,
                  sp_atk: 40, sp_def: 85, speed: 75
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"STENCH"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 138
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 8.6
  pkmn.category "Weed"
  pkmn.pokedex_entry "A horribly noxious honey drools from its mouth. One whiff of the honey can result in memory loss. Some fans are said to enjoy this overwhelming stink, however."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"ACID"
    m.at 5, :"SWEETSCENT"
    m.at 9, :"ACID"
    m.at 13, :"POISONPOWDER"
    m.at 15, :"STUNSPORE"
    m.at 17, :"SLEEPPOWDER"
    m.at 23, :"MEGADRAIN"
    m.at 29, :"LUCKYCHANT"
    m.at 35, :"NATURALGIFT"
    m.at 41, :"MOONLIGHT"
    m.at 47, :"GIGADRAIN"
    m.at 53, :"PETALDANCE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"GLOOM" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 22
  m.shadow_sprite 0, 0, 2
end