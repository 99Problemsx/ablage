#=============================================================================
# Larvesta - BUG Type
#=============================================================================

GameData::Species.define :"LARVESTA" do |pkmn|
  pkmn.name "Larvesta"
  pkmn.types :"BUG", :"FIRE"
  pkmn.base_stats hp: 55, attack: 85, defense: 55,
                  sp_atk: 60, sp_def: 50, speed: 55
  pkmn.abilities :"FLAMEBODY"
  pkmn.hidden_abilities :"SWARM"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 72
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.1
  pkmn.weight 28.8
  pkmn.category "Torch"
  pkmn.pokedex_entry "The base of volcanoes is where they make their homes. They shoot fire from their five horns to repel attacking enemies."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 1, :"STRINGSHOT"
    m.at 10, :"LEECHLIFE"
    m.at 20, :"TAKEDOWN"
    m.at 30, :"FLAMECHARGE"
    m.at 40, :"BUGBITE"
    m.at 50, :"DOUBLEEDGE"
    m.at 60, :"FLAMEWHEEL"
    m.at 70, :"BUGBUZZ"
    m.at 80, :"AMNESIA"
    m.at 90, :"THRASH"
    m.at 100, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"BUGBITE", :"CALMMIND", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GIGADRAIN", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"UTURN", :"WILDCHARGE", :"WILLOWISP", :"ZENHEADBUTT"
  pkmn.egg_moves :"ENDURE", :"FORESIGHT", :"HARDEN", :"MAGNETRISE", :"MORNINGSUN", :"STRINGSHOT", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LARVESTA" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 29
  m.shadow_sprite 0, 0, 2
end