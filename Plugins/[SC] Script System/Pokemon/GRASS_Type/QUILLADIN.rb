#=============================================================================
# Quilladin - GRASS Type
#=============================================================================

GameData::Species.define :"QUILLADIN" do |pkmn|
  pkmn.name "Quilladin"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 61, attack: 78, defense: 95,
                  sp_atk: 57, sp_def: 56, speed: 58
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"BULLETPROOF"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 29.0
  pkmn.category "Spiny Armor"
  pkmn.pokedex_entry "They strengthen their lower bodies by running into one another. They are very kind and won't start fights."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"NEEDLEARM"
    m.at 1, :"GROWL"
    m.at 1, :"VINEWHIP"
    m.at 5, :"VINEWHIP"
    m.at 8, :"ROLLOUT"
    m.at 11, :"BITE"
    m.at 15, :"LEECHSEED"
    m.at 19, :"PINMISSILE"
    m.at 29, :"TAKEDOWN"
    m.at 35, :"SEEDBOMB"
    m.at 39, :"MUDSHOT"
    m.at 44, :"BULKUP"
    m.at 48, :"BODYSLAM"
    m.at 52, :"PAINSPLIT"
    m.at 56, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"GYROBALL", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"QUILLADIN" do |m|
  m.back_sprite 4, 18
  m.front_sprite -4, 6
end