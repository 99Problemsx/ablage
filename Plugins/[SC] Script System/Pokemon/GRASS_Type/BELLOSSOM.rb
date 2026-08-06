#=============================================================================
# Bellossom - GRASS Type
#=============================================================================

GameData::Species.define :"BELLOSSOM" do |pkmn|
  pkmn.name "Bellossom"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 75, attack: 80, defense: 85,
                  sp_atk: 50, sp_def: 90, speed: 100
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"HEALER"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 216
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 5.8
  pkmn.category "Flower"
  pkmn.pokedex_entry "Its flower petals deepen in color through exposure to sunlight. When cloudy weather persists, it does a dance that is thought to be a sun-summoning ritual."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"LEAFBLADE"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"STUNSPORE"
    m.at 1, :"SUNNYDAY"
    m.at 23, :"MAGICALLEAF"
    m.at 53, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"BELLOSSOM" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 24
  m.shadow_sprite 0, 0, 2
end