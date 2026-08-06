#=============================================================================
# Unfezant - NORMAL Type
#=============================================================================

GameData::Species.define :"UNFEZANT" do |pkmn|
  pkmn.name "Unfezant"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 80, attack: 105, defense: 80,
                  sp_atk: 93, sp_def: 65, speed: 55
  pkmn.abilities :"BIGPECKS", :"SUPERLUCK"
  pkmn.hidden_abilities :"RIVALRY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Winged"
  pkmn.base_exp 215
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 29.0
  pkmn.category "Proud"
  pkmn.pokedex_entry "Males have plumage on their heads. They will never let themselves feel close to anyone other than their Trainers."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"GROWL"
    m.at 1, :"LEER"
    m.at 1, :"QUICKATTACK"
    m.at 4, :"GROWL"
    m.at 8, :"LEER"
    m.at 11, :"QUICKATTACK"
    m.at 15, :"AIRCUTTER"
    m.at 18, :"ROOST"
    m.at 23, :"DETECT"
    m.at 27, :"TAUNT"
    m.at 33, :"AIRSLASH"
    m.at 38, :"RAZORWIND"
    m.at 44, :"FEATHERDANCE"
    m.at 49, :"SWAGGER"
    m.at 55, :"FACADE"
    m.at 60, :"TAILWIND"
    m.at 66, :"SKYATTACK"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TAUNT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"UNFEZANT" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 17
  m.shadow_sprite 0, 0, 2
end