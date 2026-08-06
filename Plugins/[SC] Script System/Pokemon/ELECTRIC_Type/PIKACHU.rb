#=============================================================================
# Pikachu - ELECTRIC Type
#=============================================================================

GameData::Species.define :"PIKACHU" do |pkmn|
  pkmn.name "Pikachu"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 35, attack: 55, defense: 30,
                  sp_atk: 90, sp_def: 50, speed: 40
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 105
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.4
  pkmn.weight 6.0
  pkmn.category "Mouse"
  pkmn.pokedex_entry "It stores electricity in the electric sacs on its cheeks. When it releases pent-up energy in a burst, the electric power is equal to a lightning bolt."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"THUNDERSHOCK"
    m.at 5, :"TAILWHIP"
    m.at 10, :"THUNDERWAVE"
    m.at 13, :"QUICKATTACK"
    m.at 18, :"ELECTROBALL"
    m.at 21, :"DOUBLETEAM"
    m.at 26, :"SLAM"
    m.at 29, :"THUNDERBOLT"
    m.at 34, :"FEINT"
    m.at 37, :"AGILITY"
    m.at 42, :"DISCHARGE"
    m.at 45, :"LIGHTSCREEN"
    m.at 50, :"THUNDER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"PIKACHU" do |m|
  m.back_sprite -5, 0
  m.front_sprite 4, 14
  m.shadow_sprite 0, 0, 1
end