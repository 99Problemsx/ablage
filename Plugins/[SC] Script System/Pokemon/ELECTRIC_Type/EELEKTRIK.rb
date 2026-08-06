#=============================================================================
# Eelektrik - ELECTRIC Type
#=============================================================================

GameData::Species.define :"EELEKTRIK" do |pkmn|
  pkmn.name "Eelektrik"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 65, attack: 85, defense: 70,
                  sp_atk: 40, sp_def: 75, speed: 70
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 142
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 22.0
  pkmn.category "EleFish"
  pkmn.pokedex_entry "These Pokémon have a big appetite. When they spot their prey, they attack it and paralyze it with electricity."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"HEADBUTT"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"SPARK"
    m.at 1, :"CHARGEBEAM"
    m.at 9, :"BIND"
    m.at 19, :"ACID"
    m.at 29, :"DISCHARGE"
    m.at 39, :"CRUNCH"
    m.at 44, :"THUNDERBOLT"
    m.at 49, :"ACIDSPRAY"
    m.at 54, :"COIL"
    m.at 59, :"WILDCHARGE"
    m.at 64, :"GASTROACID"
    m.at 69, :"ZAPCANNON"
    m.at 74, :"THRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AQUATAIL", :"ATTRACT", :"BIND", :"BOUNCE", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUPERFANG", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"EELEKTRIK" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 18
  m.shadow_sprite 0, 0, 2
end