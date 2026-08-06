#=============================================================================
# Roserade - GRASS Type
#=============================================================================

GameData::Species.define :"ROSERADE" do |pkmn|
  pkmn.name "Roserade"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 60, attack: 70, defense: 55,
                  sp_atk: 90, sp_def: 125, speed: 105
  pkmn.abilities :"NATURALCURE", :"POISONPOINT"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 227
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 14.5
  pkmn.category "Bouquet"
  pkmn.pokedex_entry "It attracts prey with a sweet aroma, then downs it with thorny whips hidden in its arms."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"WEATHERBALL"
    m.at 1, :"POISONSTING"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"MAGICALLEAF"
    m.at 1, :"SWEETSCENT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"COVET", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"ROSERADE" do |m|
  m.back_sprite 8, 0
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 2
end