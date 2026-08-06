#=============================================================================
# Breloom - GRASS Type
#=============================================================================

GameData::Species.define :"BRELOOM" do |pkmn|
  pkmn.name "Breloom"
  pkmn.types :"GRASS", :"FIGHTING"
  pkmn.base_stats hp: 60, attack: 130, defense: 80,
                  sp_atk: 70, sp_def: 60, speed: 60
  pkmn.abilities :"EFFECTSPORE", :"POISONHEAL"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 161
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 39.2
  pkmn.category "Mushroom"
  pkmn.pokedex_entry "It scatters spores from holes in the cap on its head. It loves warm and humid climates. It feeds on trees and plants in fields and forests."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"TACKLE"
    m.at 1, :"STUNSPORE"
    m.at 1, :"LEECHSEED"
    m.at 5, :"TACKLE"
    m.at 9, :"STUNSPORE"
    m.at 13, :"LEECHSEED"
    m.at 17, :"MEGADRAIN"
    m.at 21, :"HEADBUTT"
    m.at 23, :"MACHPUNCH"
    m.at 25, :"COUNTER"
    m.at 29, :"FORCEPALM"
    m.at 33, :"SKYUPPERCUT"
    m.at 37, :"MINDREADER"
    m.at 41, :"SEEDBOMB"
    m.at 45, :"DYNAMICPUNCH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"VENOSHOCK", :"WORKUP", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"BRELOOM" do |m|
  m.back_sprite -15, 0
  m.front_sprite 4, 13
  m.shadow_sprite 0, 0, 2
end