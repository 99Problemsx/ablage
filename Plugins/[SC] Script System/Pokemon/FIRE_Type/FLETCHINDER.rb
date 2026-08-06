#=============================================================================
# Fletchinder - FIRE Type
#=============================================================================

GameData::Species.define :"FLETCHINDER" do |pkmn|
  pkmn.name "Fletchinder"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 62, attack: 73, defense: 55,
                  sp_atk: 84, sp_def: 56, speed: 52
  pkmn.abilities :"FLAMEBODY"
  pkmn.hidden_abilities :"GALEWINGS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 134
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.7
  pkmn.weight 16.0
  pkmn.category "Ember"
  pkmn.pokedex_entry "From its beak, it expels embers that set the tall grass on fire. Then it pounces on the bewildered prey that pop out of the grass."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 0, :"FLAMECHARGE"
    m.at 1, :"FEINT"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"EMBER"
    m.at 15, :"FLAIL"
    m.at 22, :"ACROBATICS"
    m.at 29, :"AGILITY"
    m.at 36, :"AERIALACE"
    m.at 43, :"TAILWIND"
    m.at 50, :"STEELWING"
    m.at 57, :"ROOST"
    m.at 64, :"FLY"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNATCH", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WILLOWISP", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"FLETCHINDER" do |m|
  m.back_sprite -3, 34
  m.front_sprite -2, -6
  m.shadow_sprite 0, 0, -1
end