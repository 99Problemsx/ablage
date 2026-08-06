#=============================================================================
# Plusle - ELECTRIC Type
#=============================================================================

GameData::Species.define :"PLUSLE" do |pkmn|
  pkmn.name "Plusle"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 50, defense: 40,
                  sp_atk: 95, sp_def: 85, speed: 75
  pkmn.abilities :"PLUS"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 4.2
  pkmn.category "Cheering"
  pkmn.pokedex_entry "It has the trait of cheering on its fellow Pokémon. By shorting out the electricity it releases from its paws, it creates pom-poms for cheering."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 3, :"THUNDERWAVE"
    m.at 7, :"QUICKATTACK"
    m.at 10, :"HELPINGHAND"
    m.at 15, :"SPARK"
    m.at 17, :"ENCORE"
    m.at 21, :"FAKETEARS"
    m.at 24, :"COPYCAT"
    m.at 29, :"ELECTROBALL"
    m.at 31, :"SWIFT"
    m.at 35, :"FAKETEARS"
    m.at 38, :"CHARGE"
    m.at 42, :"THUNDER"
    m.at 44, :"BATONPASS"
    m.at 48, :"AGILITY"
    m.at 51, :"LASTRESORT"
    m.at 56, :"NASTYPLOT"
    m.at 63, :"ENTRAINMENT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"DISCHARGE", :"LUCKYCHANT", :"SING", :"SWEETKISS", :"WISH"
end

GameData::SpeciesMetrics.define :"PLUSLE" do |m|
  m.back_sprite -12, 0
  m.front_sprite 2, 19
  m.shadow_sprite 0, 0, 1
end