#=============================================================================
# Electrode - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ELECTRODE" do |pkmn|
  pkmn.name "Electrode"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 50, defense: 70,
                  sp_atk: 140, sp_def: 80, speed: 80
  pkmn.abilities :"SOUNDPROOF", :"STATIC"
  pkmn.hidden_abilities :"AFTERMATH"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 66.6
  pkmn.category "Ball"
  pkmn.pokedex_entry "They appear in great numbers at electric power plants. Because they feed on electricity, they cause massive and chaotic blackouts in nearby cities."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"CHARGE"
    m.at 1, :"TACKLE"
    m.at 1, :"SONICBOOM"
    m.at 1, :"SPARK"
    m.at 5, :"TACKLE"
    m.at 8, :"SONICBOOM"
    m.at 12, :"SPARK"
    m.at 15, :"ROLLOUT"
    m.at 19, :"SCREECH"
    m.at 22, :"CHARGEBEAM"
    m.at 26, :"LIGHTSCREEN"
    m.at 29, :"ELECTROBALL"
    m.at 35, :"SELFDESTRUCT"
    m.at 40, :"SWIFT"
    m.at 46, :"MAGNETRISE"
    m.at 51, :"GYROBALL"
    m.at 57, :"EXPLOSION"
    m.at 62, :"MIRRORCOAT"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"ELECTRODE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 17
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Hisuian
GameData::Species.define :"ELECTRODE_1" do |pkmn|
  pkmn.species :"ELECTRODE"
  pkmn.form 1
  pkmn.name "Electrode"
  pkmn.form_name "Hisuian"
  pkmn.types :"ELECTRIC", :"GRASS"
  pkmn.base_stats hp: 60, attack: 50, defense: 70,
                  sp_atk: 140, sp_def: 80, speed: 80
  pkmn.abilities :"SOUNDPROOF", :"STATIC"
  pkmn.hidden_abilities :"AFTERMATH"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 71.0
  pkmn.category "Sphere"
  pkmn.pokedex_entry "The tissue on the surface of its body is curiously similar in composition to an Apricorn. When irritated, this Pokémon lets loose an electric current equal to 20 lightning bolts."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"CHLOROBLAST"
    m.at 1, :"TACKLE"
    m.at 1, :"CHARGE"
    m.at 4, :"THUNDERSHOCK"
    m.at 6, :"STUNSPORE"
    m.at 9, :"BULLETSEED"
    m.at 11, :"ROLLOUT"
    m.at 13, :"SCREECH"
    m.at 16, :"CHARGEBEAM"
    m.at 20, :"SWIFT"
    m.at 22, :"ELECTROBALL"
    m.at 26, :"SELFDESTRUCT"
    m.at 29, :"ENERGYBALL"
    m.at 34, :"DISCHARGE"
    m.at 34, :"SEEDBOMB"
    m.at 41, :"EXPLOSION"
    m.at 46, :"GYROBALL"
    m.at 50, :"GRASSYTERRAIN"
  end
  pkmn.tutor_moves :"AGILITY", :"BULLETSEED", :"CHARGE", :"CHARGEBEAM", :"CURSE", :"DOUBLEEDGE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FOULPLAY", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"GYROBALL", :"HYPERBEAM", :"LEAFSTORM", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SUBSTITUTE", :"SUPERCELLSLAM", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"ELECTRODE_1" do |m|
  m.back_sprite 0, 40
  m.front_sprite 0, 2
  m.shadow_sprite 0, 0, 2
end