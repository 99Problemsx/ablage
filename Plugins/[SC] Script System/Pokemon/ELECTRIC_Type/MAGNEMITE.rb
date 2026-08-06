#=============================================================================
# Magnemite - ELECTRIC Type
#=============================================================================

GameData::Species.define :"MAGNEMITE" do |pkmn|
  pkmn.name "Magnemite"
  pkmn.types :"ELECTRIC", :"STEEL"
  pkmn.base_stats hp: 25, attack: 35, defense: 70,
                  sp_atk: 45, sp_def: 95, speed: 55
  pkmn.abilities :"MAGNETPULL", :"STURDY"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 65
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 6.0
  pkmn.category "Magnet"
  pkmn.pokedex_entry "The units at its sides are extremely powerful magnets. They generate enough magnetism to draw in iron objects from over 300 feet away."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"SUPERSONIC"
    m.at 7, :"THUNDERSHOCK"
    m.at 11, :"SONICBOOM"
    m.at 15, :"THUNDERWAVE"
    m.at 18, :"MAGNETBOMB"
    m.at 21, :"SPARK"
    m.at 25, :"MIRRORSHOT"
    m.at 29, :"METALSOUND"
    m.at 32, :"ELECTROBALL"
    m.at 35, :"FLASHCANNON"
    m.at 39, :"SCREECH"
    m.at 43, :"DISCHARGE"
    m.at 46, :"LOCKON"
    m.at 49, :"MAGNETRISE"
    m.at 53, :"GYROBALL"
    m.at 57, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"ELECTROWEB", :"EXPLOSION"
end

GameData::SpeciesMetrics.define :"MAGNEMITE" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 6
  m.shadow_sprite 0, 0, 1
end