#=============================================================================
# Milcery - FAIRY Type
#=============================================================================

GameData::Species.define :"MILCERY" do |pkmn|
  pkmn.name "Milcery"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 45, attack: 40, defense: 40,
                  sp_atk: 34, sp_def: 50, speed: 61
  pkmn.abilities :"SWEETVEIL"
  pkmn.hidden_abilities :"AROMAVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Head"
  pkmn.base_exp 54
  pkmn.catch_rate 200
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 0.3
  pkmn.category "Cream"
  pkmn.pokedex_entry "This Pokémon was born from sweet-smelling particles in the air. Its body is made of cream."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Fairy", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"AROMATICMIST"
    m.at 5, :"SWEETKISS"
    m.at 10, :"SWEETSCENT"
    m.at 15, :"DRAININGKISS"
    m.at 20, :"AROMATHERAPY"
    m.at 25, :"ATTRACT"
    m.at 30, :"ACIDARMOR"
    m.at 35, :"DAZZLINGGLEAM"
    m.at 40, :"RECOVER"
    m.at 45, :"MISTYTERRAIN"
    m.at 50, :"ENTRAINMENT"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"MIMIC", :"MISTYTERRAIN", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"BABYDOLLEYES", :"LASTRESORT"
end

GameData::SpeciesMetrics.define :"MILCERY" do |m|
  m.back_sprite 0, 10
  m.front_sprite 1, 19
end