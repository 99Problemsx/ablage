#=============================================================================
# Minun - ELECTRIC Type
#=============================================================================

GameData::Species.define :"MINUN" do |pkmn|
  pkmn.name "Minun"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 40, defense: 50,
                  sp_atk: 95, sp_def: 75, speed: 85
  pkmn.abilities :"MINUS"
  pkmn.hidden_abilities :"VOLTABSORB"
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
  pkmn.pokedex_entry "At a meeting of Pokémon academics, it was announced that simultaneous exposure to electricity from a Plusle and Minun will promote circulation and boost vitality."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 3, :"THUNDERWAVE"
    m.at 7, :"QUICKATTACK"
    m.at 10, :"HELPINGHAND"
    m.at 15, :"SPARK"
    m.at 17, :"ENCORE"
    m.at 21, :"CHARM"
    m.at 24, :"COPYCAT"
    m.at 29, :"ELECTROBALL"
    m.at 31, :"SWIFT"
    m.at 35, :"FAKETEARS"
    m.at 38, :"CHARGE"
    m.at 42, :"THUNDER"
    m.at 44, :"BATONPASS"
    m.at 48, :"AGILITY"
    m.at 51, :"TRUMPCARD"
    m.at 56, :"NASTYPLOT"
    m.at 63, :"ENTRAINMENT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"DISCHARGE", :"LUCKYCHANT", :"SING", :"SWEETKISS", :"WISH"
end

GameData::SpeciesMetrics.define :"MINUN" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 1
end