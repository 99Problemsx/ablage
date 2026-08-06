#=============================================================================
# Morpeko - ELECTRIC Type
#=============================================================================

GameData::Species.define :"MORPEKO" do |pkmn|
  pkmn.name "Morpeko"
  pkmn.form_name "Full Belly Mode"
  pkmn.types :"ELECTRIC", :"DARK"
  pkmn.base_stats hp: 58, attack: 95, defense: 58,
                  sp_atk: 97, sp_def: 70, speed: 58
  pkmn.abilities :"HUNGERSWITCH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 153
  pkmn.catch_rate 180
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 0.3
  pkmn.weight 3.0
  pkmn.category "Two-Sided"
  pkmn.pokedex_entry "As it eats the seeds stored up in its pocket-like pouches, this Pokémon is not just satisfying its constant hunger. It's also generating electricity."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"TAILWHIP"
    m.at 5, :"LEER"
    m.at 10, :"POWERTRIP"
    m.at 15, :"QUICKATTACK"
    m.at 20, :"FLATTER"
    m.at 25, :"BITE"
    m.at 30, :"SPARK"
    m.at 35, :"TORMENT"
    m.at 40, :"AGILITY"
    m.at 45, :"BULLETSEED"
    m.at 50, :"CRUNCH"
    m.at 55, :"AURAWHEEL"
    m.at 60, :"THRASH"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"ATTRACT", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DARKPULSE", :"DOUBLETEAM", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FAKETEARS", :"FIREFANG", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"HIDDENPOWER", :"ICEFANG", :"LASHOUT", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETURN", :"REVENGE", :"RISINGVOLTAGE", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNARL", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
  pkmn.egg_moves :"CHARGE", :"FAKEOUT", :"PARTINGSHOT", :"QUASH", :"RAPIDSPIN", :"SUPERFANG", :"SWAGGER", :"TICKLE"
end

GameData::SpeciesMetrics.define :"MORPEKO" do |m|
  m.back_sprite -6, 12
  m.front_sprite 1, 1
end