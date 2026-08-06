#=============================================================================
# Pidgeotto - NORMAL Type
#=============================================================================

GameData::Species.define :"PIDGEOTTO" do |pkmn|
  pkmn.name "Pidgeotto"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 63, attack: 60, defense: 55,
                  sp_atk: 71, sp_def: 50, speed: 50
  pkmn.abilities :"KEENEYE", :"TANGLEDFEET"
  pkmn.hidden_abilities :"BIGPECKS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 122
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.1
  pkmn.weight 30.0
  pkmn.category "Bird"
  pkmn.pokedex_entry "This Pokémon flies around, patrolling its large territory. If its living space is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SANDATTACK"
    m.at 1, :"GUST"
    m.at 5, :"SANDATTACK"
    m.at 9, :"GUST"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"WHIRLWIND"
    m.at 22, :"TWISTER"
    m.at 27, :"FEATHERDANCE"
    m.at 32, :"AGILITY"
    m.at 37, :"WINGATTACK"
    m.at 42, :"ROOST"
    m.at 47, :"TAILWIND"
    m.at 52, :"MIRRORMOVE"
    m.at 57, :"AIRSLASH"
    m.at 62, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"PIDGEOTTO" do |m|
  m.back_sprite -7, 0
  m.front_sprite 8, 16
  m.shadow_sprite 0, 0, 2
end