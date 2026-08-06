#=============================================================================
# Manectric - ELECTRIC Type
#=============================================================================

GameData::Species.define :"MANECTRIC" do |pkmn|
  pkmn.name "Manectric"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 70, attack: 75, defense: 60,
                  sp_atk: 105, sp_def: 105, speed: 60
  pkmn.abilities :"STATIC", :"LIGHTNINGROD"
  pkmn.hidden_abilities :"MINUS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 166
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 40.2
  pkmn.category "Discharge"
  pkmn.pokedex_entry "Because lightning falls in their vicinities, Manectric were thought to have been born from lightning. In battle, they create thunderclouds."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"FIREFANG"
    m.at 1, :"TACKLE"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"LEER"
    m.at 1, :"HOWL"
    m.at 4, :"THUNDERWAVE"
    m.at 9, :"LEER"
    m.at 12, :"HOWL"
    m.at 17, :"QUICKATTACK"
    m.at 20, :"SPARK"
    m.at 25, :"ODORSLEUTH"
    m.at 30, :"BITE"
    m.at 37, :"THUNDERFANG"
    m.at 42, :"ROAR"
    m.at 49, :"DISCHARGE"
    m.at 54, :"CHARGE"
    m.at 61, :"WILDCHARGE"
    m.at 66, :"THUNDER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"MANECTRIC" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 3
end