#=============================================================================
# Accelgor - BUG Type
#=============================================================================

GameData::Species.define :"ACCELGOR" do |pkmn|
  pkmn.name "Accelgor"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 80, attack: 70, defense: 40,
                  sp_atk: 145, sp_def: 100, speed: 60
  pkmn.abilities :"HYDRATION", :"STICKYHOLD"
  pkmn.hidden_abilities :"UNBURDEN"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 173
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.8
  pkmn.weight 25.3
  pkmn.category "Shell Out"
  pkmn.pokedex_entry "Having removed its heavy shell, it becomes very light and can fight with ninja-like movements."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"LEECHLIFE"
    m.at 1, :"ACIDSPRAY"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"QUICKATTACK"
    m.at 4, :"ACIDSPRAY"
    m.at 8, :"DOUBLETEAM"
    m.at 13, :"QUICKATTACK"
    m.at 16, :"STRUGGLEBUG"
    m.at 20, :"MEGADRAIN"
    m.at 25, :"SWIFT"
    m.at 28, :"MEFIRST"
    m.at 32, :"AGILITY"
    m.at 37, :"GIGADRAIN"
    m.at 40, :"UTURN"
    m.at 44, :"BUGBUZZ"
    m.at 49, :"RECOVER"
    m.at 52, :"POWERSWAP"
    m.at 56, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"UTURN", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"ACCELGOR" do |m|
  m.back_sprite -4, 0
  m.front_sprite 4, 25
  m.shadow_sprite 0, 0, 1
end