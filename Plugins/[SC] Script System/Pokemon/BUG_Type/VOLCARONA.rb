#=============================================================================
# Volcarona - BUG Type
#=============================================================================

GameData::Species.define :"VOLCARONA" do |pkmn|
  pkmn.name "Volcarona"
  pkmn.types :"BUG", :"FIRE"
  pkmn.base_stats hp: 85, attack: 60, defense: 65,
                  sp_atk: 100, sp_def: 135, speed: 105
  pkmn.abilities :"FLAMEBODY"
  pkmn.hidden_abilities :"SWARM"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 248
  pkmn.catch_rate 15
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.6
  pkmn.weight 46.0
  pkmn.category "Sun"
  pkmn.pokedex_entry "A sea of fire engulfs the surroundings of their battles, since they use their six wings to scatter their ember scales."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 1, :"STRINGSHOT"
    m.at 1, :"LEECHLIFE"
    m.at 1, :"GUST"
    m.at 10, :"LEECHLIFE"
    m.at 20, :"GUST"
    m.at 30, :"FIRESPIN"
    m.at 40, :"WHIRLWIND"
    m.at 50, :"SILVERWIND"
    m.at 59, :"QUIVERDANCE"
    m.at 60, :"HEATWAVE"
    m.at 70, :"BUGBUZZ"
    m.at 80, :"RAGEPOWDER"
    m.at 90, :"HURRICANE"
    m.at 100, :"FIERYDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"BUGBITE", :"CALMMIND", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TOXIC", :"UTURN", :"WILDCHARGE", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"VOLCARONA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 2
  m.shadow_sprite 0, 0, 3
end