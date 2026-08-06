#=============================================================================
# Voltorb - ELECTRIC Type
#=============================================================================

GameData::Species.define :"VOLTORB" do |pkmn|
  pkmn.name "Voltorb"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 40, attack: 30, defense: 50,
                  sp_atk: 100, sp_def: 55, speed: 55
  pkmn.abilities :"SOUNDPROOF", :"STATIC"
  pkmn.hidden_abilities :"AFTERMATH"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 66
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 10.4
  pkmn.category "Ball"
  pkmn.pokedex_entry "It bears an uncanny and unexplained resemblance to a Poké Ball. Because it explodes at the slightest shock, even veteran trainers treat it with caution."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"CHARGE"
    m.at 5, :"TACKLE"
    m.at 8, :"SONICBOOM"
    m.at 12, :"SPARK"
    m.at 15, :"ROLLOUT"
    m.at 19, :"SCREECH"
    m.at 22, :"CHARGEBEAM"
    m.at 26, :"LIGHTSCREEN"
    m.at 29, :"ELECTROBALL"
    m.at 33, :"SELFDESTRUCT"
    m.at 36, :"SWIFT"
    m.at 40, :"MAGNETRISE"
    m.at 43, :"GYROBALL"
    m.at 47, :"EXPLOSION"
    m.at 50, :"MIRRORCOAT"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"METALSOUND", :"RECYCLE"
end

GameData::SpeciesMetrics.define :"VOLTORB" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 24
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Hisuian
GameData::Species.define :"VOLTORB_1" do |pkmn|
  pkmn.species :"VOLTORB"
  pkmn.form 1
  pkmn.name "Voltorb"
  pkmn.form_name "Hisuian"
  pkmn.types :"ELECTRIC", :"GRASS"
  pkmn.base_stats hp: 40, attack: 30, defense: 50,
                  sp_atk: 100, sp_def: 55, speed: 55
  pkmn.abilities :"SOUNDPROOF", :"STATIC"
  pkmn.hidden_abilities :"AFTERMATH"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 66
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 13.0
  pkmn.category "Sphere"
  pkmn.pokedex_entry "An enigmatic Pokémon that happens to bear a resemblance to a Poké Ball. When excited, it discharges the electric current it has stored in its belly, then lets out a great, uproarious laugh."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
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
  pkmn.tutor_moves :"AGILITY", :"BULLETSEED", :"CHARGE", :"CHARGEBEAM", :"DOUBLEEDGE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FOULPLAY", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"GYROBALL", :"LEAFSTORM", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SUBSTITUTE", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"LEECHSEED", :"RECYCLE", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"VOLTORB_1" do |m|
  m.back_sprite 0, 54
  m.front_sprite -2, 34
  m.shadow_sprite 0, 0, 1
end