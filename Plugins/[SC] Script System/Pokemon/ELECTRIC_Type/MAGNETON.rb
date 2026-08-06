#=============================================================================
# Magneton - ELECTRIC Type
#=============================================================================

GameData::Species.define :"MAGNETON" do |pkmn|
  pkmn.name "Magneton"
  pkmn.types :"ELECTRIC", :"STEEL"
  pkmn.base_stats hp: 50, attack: 60, defense: 95,
                  sp_atk: 70, sp_def: 120, speed: 70
  pkmn.abilities :"MAGNETPULL", :"STURDY"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 163
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 60.0
  pkmn.category "Magnet"
  pkmn.pokedex_entry "It is actually three Magnemite linked by magnetism. It generates powerful radio waves that raise temperatures by 3.6 degrees F within a 3,300-foot radius."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TRIATTACK"
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
  pkmn.tutor_moves :"CHARGEBEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"MAGNETON" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, -2
  m.shadow_sprite 0, 0, 2
end