#=============================================================================
# Foongus - GRASS Type
#=============================================================================

GameData::Species.define :"FOONGUS" do |pkmn|
  pkmn.name "Foongus"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 69, attack: 55, defense: 45,
                  sp_atk: 15, sp_def: 55, speed: 55
  pkmn.abilities :"EFFECTSPORE"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 59
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.2
  pkmn.weight 1.0
  pkmn.category "Mushroom"
  pkmn.pokedex_entry "For some reason, this Pokémon resembles a Poké Ball. They release poison spores to repel those who try to catch them."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 6, :"GROWTH"
    m.at 8, :"ASTONISH"
    m.at 12, :"BIDE"
    m.at 15, :"MEGADRAIN"
    m.at 18, :"INGRAIN"
    m.at 20, :"FEINTATTACK"
    m.at 24, :"SWEETSCENT"
    m.at 28, :"GIGADRAIN"
    m.at 32, :"TOXIC"
    m.at 35, :"SYNTHESIS"
    m.at 39, :"CLEARSMOG"
    m.at 43, :"SOLARBEAM"
    m.at 45, :"RAGEPOWDER"
    m.at 50, :"SPORE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
  pkmn.egg_moves :"BODYSLAM", :"DEFENSECURL", :"ENDURE", :"GASTROACID", :"GROWTH", :"POISONPOWDER", :"ROLLOUT", :"STUNSPORE"
end

GameData::SpeciesMetrics.define :"FOONGUS" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 32
  m.shadow_sprite 0, 0, 1
end