#=============================================================================
# Amoonguss - GRASS Type
#=============================================================================

GameData::Species.define :"AMOONGUSS" do |pkmn|
  pkmn.name "Amoonguss"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 114, attack: 85, defense: 70,
                  sp_atk: 30, sp_def: 85, speed: 80
  pkmn.abilities :"EFFECTSPORE"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 162
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 10.5
  pkmn.category "Mushroom"
  pkmn.pokedex_entry "They show off their Poké Ball caps to lure prey, but very few Pokémon are fooled by this."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"GROWTH"
    m.at 1, :"ASTONISH"
    m.at 1, :"BIDE"
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
    m.at 43, :"CLEARSMOG"
    m.at 49, :"SOLARBEAM"
    m.at 54, :"RAGEPOWDER"
    m.at 62, :"SPORE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"AMOONGUSS" do |m|
  m.back_sprite 7, 0
  m.front_sprite 2, 28
  m.shadow_sprite 0, 0, 2
end