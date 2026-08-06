#=============================================================================
# Fletchling - NORMAL Type
#=============================================================================

GameData::Species.define :"FLETCHLING" do |pkmn|
  pkmn.name "Fletchling"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 45, attack: 50, defense: 43,
                  sp_atk: 62, sp_def: 40, speed: 38
  pkmn.abilities :"BIGPECKS"
  pkmn.hidden_abilities :"GALEWINGS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 56
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 1.7
  pkmn.category "Tiny Robin"
  pkmn.pokedex_entry "These friendly Pokémon send signals to one another with beautiful chirps and tail-feather movements."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 5, :"QUICKATTACK"
    m.at 10, :"EMBER"
    m.at 15, :"FLAIL"
    m.at 20, :"ACROBATICS"
    m.at 25, :"AGILITY"
    m.at 30, :"AERIALACE"
    m.at 35, :"TAILWIND"
    m.at 40, :"STEELWING"
    m.at 45, :"ROOST"
    m.at 50, :"FLY"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FLAMECHARGE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNATCH", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WILLOWISP", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"DEFOG", :"FLAMECHARGE", :"QUICKGUARD"
end

GameData::SpeciesMetrics.define :"FLETCHLING" do |m|
  m.back_sprite -9, 10
  m.front_sprite 1, 5
end