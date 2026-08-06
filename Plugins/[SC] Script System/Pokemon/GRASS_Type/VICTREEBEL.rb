#=============================================================================
# Victreebel - GRASS Type
#=============================================================================

GameData::Species.define :"VICTREEBEL" do |pkmn|
  pkmn.name "Victreebel"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 80, attack: 105, defense: 65,
                  sp_atk: 70, sp_def: 100, speed: 60
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 216
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 15.5
  pkmn.category "Flycatcher"
  pkmn.pokedex_entry "The long vine extending from its head is waved about as if it were a living thing to attract prey. When an unsuspecting victim approaches, it is swallowed whole."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"STOCKPILE"
    m.at 1, :"SWALLOW"
    m.at 1, :"SPITUP"
    m.at 1, :"VINEWHIP"
    m.at 1, :"SLEEPPOWDER"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"RAZORLEAF"
    m.at 27, :"LEAFTORNADO"
    m.at 47, :"LEAFSTORM"
    m.at 47, :"LEAFBLADE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BODYSLAM", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"VICTREEBEL" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Victreebel
GameData::Species.define :"VICTREEBEL_1" do |pkmn|
  pkmn.species :"VICTREEBEL"
  pkmn.form 1
  pkmn.name "Victreebel"
  pkmn.form_name "Mega Victreebel"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 80, attack: 125, defense: 85,
                  sp_atk: 135, sp_def: 95, speed: 70
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 216
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 4.5
  pkmn.weight 125.5
  pkmn.category "Flycatcher"
  pkmn.pokedex_entry "The volume of this Pokémon's acid has increased and filling its mouth. If it's not careful, it will overflow and spill out."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"STOCKPILE"
    m.at 1, :"SWALLOW"
    m.at 1, :"SPITUP"
    m.at 1, :"VINEWHIP"
    m.at 1, :"SLEEPPOWDER"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"RAZORLEAF"
    m.at 27, :"LEAFTORNADO"
    m.at 47, :"LEAFSTORM"
    m.at 47, :"LEAFBLADE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BODYSLAM", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"VICTREEBEL_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 3
end