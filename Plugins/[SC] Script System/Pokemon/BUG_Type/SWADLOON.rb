#=============================================================================
# Swadloon - BUG Type
#=============================================================================

GameData::Species.define :"SWADLOON" do |pkmn|
  pkmn.name "Swadloon"
  pkmn.types :"BUG", :"GRASS"
  pkmn.base_stats hp: 55, attack: 63, defense: 90,
                  sp_atk: 42, sp_def: 50, speed: 80
  pkmn.abilities :"LEAFGUARD", :"CHLOROPHYLL"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 133
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 7.3
  pkmn.category "Leaf-Wrapped"
  pkmn.pokedex_entry "It protects itself from the cold by wrapping up in leaves. It stays on the move, eating leaves in forests."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"GRASSWHISTLE"
    m.at 1, :"TACKLE"
    m.at 1, :"STRINGSHOT"
    m.at 1, :"BUGBITE"
    m.at 1, :"RAZORLEAF"
    m.at 20, :"PROTECT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"CALMMIND", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SWADLOON" do |m|
  m.back_sprite 1, 0
  m.front_sprite 1, 31
  m.shadow_sprite 0, 0, 2
end