#=============================================================================
# Vileplume - GRASS Type
#=============================================================================

GameData::Species.define :"VILEPLUME" do |pkmn|
  pkmn.name "Vileplume"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 75, attack: 80, defense: 85,
                  sp_atk: 50, sp_def: 100, speed: 90
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"EFFECTSPORE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 216
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 18.6
  pkmn.category "Flower"
  pkmn.pokedex_entry "In seasons when it produces more pollen, the air around a Vileplume turns yellow with the powder as it walks. The pollen is highly toxic and causes paralysis."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"MEGADRAIN"
    m.at 1, :"AROMATHERAPY"
    m.at 1, :"STUNSPORE"
    m.at 1, :"POISONPOWDER"
    m.at 53, :"PETALDANCE"
    m.at 65, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"VILEPLUME" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 16
  m.shadow_sprite 0, 0, 3
end