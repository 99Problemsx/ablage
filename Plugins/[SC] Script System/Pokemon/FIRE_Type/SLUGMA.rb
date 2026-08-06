#=============================================================================
# Slugma - FIRE Type
#=============================================================================

GameData::Species.define :"SLUGMA" do |pkmn|
  pkmn.name "Slugma"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 40, attack: 40, defense: 40,
                  sp_atk: 20, sp_def: 70, speed: 40
  pkmn.abilities :"MAGMAARMOR", :"FLAMEBODY"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 50
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 35.0
  pkmn.category "Lava"
  pkmn.pokedex_entry "It is a species of Pokémon that lives in volcanic areas. If its body cools, its skin hardens and immobilizes it. To avoid that, it sleeps near magma."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"YAWN"
    m.at 1, :"SMOG"
    m.at 5, :"EMBER"
    m.at 10, :"ROCKTHROW"
    m.at 14, :"HARDEN"
    m.at 19, :"RECOVER"
    m.at 23, :"FLAMEBURST"
    m.at 28, :"ANCIENTPOWER"
    m.at 32, :"AMNESIA"
    m.at 37, :"LAVAPLUME"
    m.at 41, :"ROCKSLIDE"
    m.at 46, :"BODYSLAM"
    m.at 50, :"FLAMETHROWER"
    m.at 55, :"EARTHPOWER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONDEFENSE", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PAINSPLIT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"WILLOWISP"
  pkmn.egg_moves :"ACIDARMOR", :"CURSE", :"EARTHPOWER", :"HEATWAVE", :"INFERNO", :"MEMENTO", :"ROLLOUT", :"SMOKESCREEN", :"SPITUP", :"STOCKPILE", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"SLUGMA" do |m|
  m.back_sprite -5, 0
  m.front_sprite -1, 22
  m.shadow_sprite 0, 0, 2
end