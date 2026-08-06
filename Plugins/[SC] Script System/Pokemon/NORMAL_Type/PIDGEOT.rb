#=============================================================================
# Pidgeot - NORMAL Type
#=============================================================================

GameData::Species.define :"PIDGEOT" do |pkmn|
  pkmn.name "Pidgeot"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 83, attack: 80, defense: 75,
                  sp_atk: 91, sp_def: 70, speed: 70
  pkmn.abilities :"KEENEYE", :"TANGLEDFEET"
  pkmn.hidden_abilities :"BIGPECKS"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 211
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.5
  pkmn.weight 39.5
  pkmn.category "Bird"
  pkmn.pokedex_entry "Pidgeot has gorgeous, glossy feathers. Many trainers are so captivated by the beautiful feathers on its head that they choose Pidgeot as their Pokémon."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SANDATTACK"
    m.at 1, :"GUST"
    m.at 1, :"QUICKATTACK"
    m.at 5, :"SANDATTACK"
    m.at 9, :"GUST"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"WHIRLWIND"
    m.at 22, :"TWISTER"
    m.at 27, :"FEATHERDANCE"
    m.at 32, :"AGILITY"
    m.at 38, :"WINGATTACK"
    m.at 44, :"ROOST"
    m.at 50, :"TAILWIND"
    m.at 56, :"MIRRORMOVE"
    m.at 62, :"AIRSLASH"
    m.at 68, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"PIDGEOT" do |m|
  m.back_sprite 0, 0
  m.front_sprite 7, -4
  m.shadow_sprite 0, 0, 3
end