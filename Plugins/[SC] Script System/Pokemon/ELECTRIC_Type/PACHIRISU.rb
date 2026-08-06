#=============================================================================
# Pachirisu - ELECTRIC Type
#=============================================================================

GameData::Species.define :"PACHIRISU" do |pkmn|
  pkmn.name "Pachirisu"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 45, defense: 70,
                  sp_atk: 95, sp_def: 45, speed: 90
  pkmn.abilities :"RUNAWAY", :"PICKUP"
  pkmn.hidden_abilities :"VOLTABSORB"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 142
  pkmn.catch_rate 200
  pkmn.happiness 100
  pkmn.hatch_steps 2570
  pkmn.height 0.4
  pkmn.weight 3.9
  pkmn.category "EleSquirrel"
  pkmn.pokedex_entry "It makes fur balls that crackle with static electricity. It stores them with berries in tree holes."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"BIDE"
    m.at 5, :"QUICKATTACK"
    m.at 9, :"CHARM"
    m.at 13, :"SPARK"
    m.at 17, :"ENDURE"
    m.at 21, :"SWIFT"
    m.at 25, :"ELECTROBALL"
    m.at 29, :"SWEETKISS"
    m.at 33, :"THUNDERWAVE"
    m.at 37, :"SUPERFANG"
    m.at 41, :"DISCHARGE"
    m.at 45, :"LASTRESORT"
    m.at 49, :"HYPERFANG"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"VOLTSWITCH"
  pkmn.egg_moves :"BESTOW", :"BITE", :"CHARGE", :"COVET", :"DEFENSECURL", :"FAKETEARS", :"FLAIL", :"FLATTER", :"FOLLOWME", :"IRONTAIL", :"ROLLOUT", :"TAILWHIP"
end

GameData::SpeciesMetrics.define :"PACHIRISU" do |m|
  m.back_sprite -5, 0
  m.front_sprite 4, 16
  m.shadow_sprite 0, 0, 1
end