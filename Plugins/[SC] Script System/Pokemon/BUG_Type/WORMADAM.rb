#=============================================================================
# Wormadam - BUG Type
#=============================================================================

GameData::Species.define :"WORMADAM" do |pkmn|
  pkmn.name "Wormadam"
  pkmn.form_name "Plant Cloak"
  pkmn.types :"BUG", :"GRASS"
  pkmn.base_stats hp: 60, attack: 59, defense: 85,
                  sp_atk: 36, sp_def: 79, speed: 105
  pkmn.abilities :"ANTICIPATION"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.flags :"InheritFormFromMother"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 148
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 6.5
  pkmn.category "Bagworm"
  pkmn.pokedex_entry "When Burmy evolved, its cloak became a part of this Pokémon's body. The cloak is never shed."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 10, :"PROTECT"
    m.at 15, :"BUGBITE"
    m.at 20, :"HIDDENPOWER"
    m.at 23, :"CONFUSION"
    m.at 26, :"RAZORLEAF"
    m.at 29, :"GROWTH"
    m.at 32, :"PSYBEAM"
    m.at 35, :"CAPTIVATE"
    m.at 38, :"FLAIL"
    m.at 41, :"ATTRACT"
    m.at 44, :"PSYCHIC"
    m.at 47, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"THIEF", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"WORMADAM" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 5
  m.shadow_sprite 0, 0, 2
end