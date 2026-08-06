#=============================================================================
# Magnezone - ELECTRIC Type
#=============================================================================

GameData::Species.define :"MAGNEZONE" do |pkmn|
  pkmn.name "Magnezone"
  pkmn.types :"ELECTRIC", :"STEEL"
  pkmn.base_stats hp: 70, attack: 70, defense: 115,
                  sp_atk: 60, sp_def: 130, speed: 90
  pkmn.abilities :"MAGNETPULL", :"STURDY"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 241
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 180.0
  pkmn.category "Magnet Area"
  pkmn.pokedex_entry "It evolved from exposure to a special magnetic field. Three units generate magnetism."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"MIRRORCOAT"
    m.at 1, :"BARRIER"
    m.at 1, :"TACKLE"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"SONICBOOM"
    m.at 4, :"SUPERSONIC"
    m.at 7, :"THUNDERSHOCK"
    m.at 11, :"SONICBOOM"
    m.at 15, :"THUNDERWAVE"
    m.at 18, :"MAGNETBOMB"
    m.at 21, :"SPARK"
    m.at 25, :"MIRRORSHOT"
    m.at 29, :"METALSOUND"
    m.at 34, :"ELECTROBALL"
    m.at 39, :"FLASHCANNON"
    m.at 45, :"SCREECH"
    m.at 51, :"DISCHARGE"
    m.at 56, :"LOCKON"
    m.at 62, :"MAGNETRISE"
    m.at 67, :"GYROBALL"
    m.at 73, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"MAGNEZONE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, -5
  m.shadow_sprite 0, 0, 3
end