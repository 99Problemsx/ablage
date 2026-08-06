#=============================================================================
# Dreepy - DRAGON Type
#=============================================================================

GameData::Species.define :"DREEPY" do |pkmn|
  pkmn.name "Dreepy"
  pkmn.types :"DRAGON", :"GHOST"
  pkmn.base_stats hp: 28, attack: 60, defense: 30,
                  sp_atk: 82, sp_def: 40, speed: 30
  pkmn.abilities :"CLEARBODY", :"INFILTRATOR"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 54
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 0.5
  pkmn.weight 2.0
  pkmn.category "Lingering"
  pkmn.pokedex_entry "After being reborn as a ghost Pokémon, Dreepy wanders the areas it used to inhabit back when it was alive in prehistoric seas."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Amorphous", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"INFESTATION"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"BITE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDERWAVE", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"CONFUSERAY", :"CURSE", :"DISABLE", :"DOUBLETEAM", :"DRAGONTAIL", :"GRUDGE", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"DREEPY" do |m|
  m.back_sprite 3, 23
  m.front_sprite 0, -6
end