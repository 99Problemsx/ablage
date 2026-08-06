#=============================================================================
# Sewaddle - BUG Type
#=============================================================================

GameData::Species.define :"SEWADDLE" do |pkmn|
  pkmn.name "Sewaddle"
  pkmn.types :"BUG", :"GRASS"
  pkmn.base_stats hp: 45, attack: 53, defense: 70,
                  sp_atk: 42, sp_def: 40, speed: 60
  pkmn.abilities :"SWARM", :"CHLOROPHYLL"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 62
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 2.5
  pkmn.category "Sewing"
  pkmn.pokedex_entry "This Pokémon makes clothes for itself. It chews up leaves and sews them with sticky thread extruded from its mouth."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"STRINGSHOT"
    m.at 8, :"BUGBITE"
    m.at 15, :"RAZORLEAF"
    m.at 22, :"STRUGGLEBUG"
    m.at 29, :"ENDURE"
    m.at 36, :"BUGBUZZ"
    m.at 43, :"FLAIL"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"CALMMIND", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"AGILITY", :"AIRSLASH", :"BATONPASS", :"CAMOUFLAGE", :"MEFIRST", :"MINDREADER", :"RAZORWIND", :"SCREECH", :"SILVERWIND"
end

GameData::SpeciesMetrics.define :"SEWADDLE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 32
  m.shadow_sprite 0, 0, 1
end