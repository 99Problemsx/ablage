#=============================================================================
# Talonflame - FIRE Type
#=============================================================================

GameData::Species.define :"TALONFLAME" do |pkmn|
  pkmn.name "Talonflame"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 78, attack: 81, defense: 71,
                  sp_atk: 126, sp_def: 74, speed: 69
  pkmn.abilities :"FLAMEBODY"
  pkmn.hidden_abilities :"GALEWINGS"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 175
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.2
  pkmn.weight 24.5
  pkmn.category "Scorching"
  pkmn.pokedex_entry "In the fever of an exciting battle, it showers embers from the gaps between its feathers and takes to the air."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"FLAMECHARGE"
    m.at 1, :"FLAREBLITZ"
    m.at 1, :"FEINT"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"EMBER"
    m.at 15, :"FLAIL"
    m.at 22, :"ACROBATICS"
    m.at 29, :"AGILITY"
    m.at 38, :"AERIALACE"
    m.at 47, :"TAILWIND"
    m.at 56, :"STEELWING"
    m.at 65, :"ROOST"
    m.at 74, :"FLY"
    m.at 83, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"ATTRACT", :"BRAVEBIRD", :"BULKUP", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HURRICANE", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WILLOWISP", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TALONFLAME" do |m|
  m.back_sprite -6, 62
  m.front_sprite 4, 8
  m.shadow_sprite 0, 0, -2
end