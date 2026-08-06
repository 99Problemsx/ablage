#=============================================================================
# Pidgey - NORMAL Type
#=============================================================================

GameData::Species.define :"PIDGEY" do |pkmn|
  pkmn.name "Pidgey"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 40, attack: 45, defense: 40,
                  sp_atk: 56, sp_def: 35, speed: 35
  pkmn.abilities :"KEENEYE", :"TANGLEDFEET"
  pkmn.hidden_abilities :"BIGPECKS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 50
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 1.8
  pkmn.category "Tiny Bird"
  pkmn.pokedex_entry "It has an extremely sharp sense of direction. It can unerringly return home to its nest, however far it may be removed from its familiar surroundings."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 5, :"SANDATTACK"
    m.at 9, :"GUST"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"WHIRLWIND"
    m.at 21, :"TWISTER"
    m.at 25, :"FEATHERDANCE"
    m.at 29, :"AGILITY"
    m.at 33, :"WINGATTACK"
    m.at 37, :"ROOST"
    m.at 41, :"TAILWIND"
    m.at 45, :"MIRRORMOVE"
    m.at 49, :"AIRSLASH"
    m.at 53, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"DEFOG", :"FEINTATTACK", :"FORESIGHT", :"PURSUIT", :"STEELWING", :"UPROAR"
end

GameData::SpeciesMetrics.define :"PIDGEY" do |m|
  m.back_sprite -9, 0
  m.front_sprite 4, 23
  m.shadow_sprite 0, 0, 1
end