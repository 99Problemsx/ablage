#=============================================================================
# Chesnaught - GRASS Type
#=============================================================================

GameData::Species.define :"CHESNAUGHT" do |pkmn|
  pkmn.name "Chesnaught"
  pkmn.types :"GRASS", :"FIGHTING"
  pkmn.base_stats hp: 88, attack: 107, defense: 122,
                  sp_atk: 64, sp_def: 74, speed: 75
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"BULLETPROOF"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.6
  pkmn.weight 90.0
  pkmn.category "Spiny Armor"
  pkmn.pokedex_entry "Its Tackle is forceful enough to flip a 50-ton tank. It shields its allies from danger with its own body."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"SPIKYSHIELD"
    m.at 1, :"NEEDLEARM"
    m.at 1, :"HAMMERARM"
    m.at 1, :"FEINT"
    m.at 1, :"BELLYDRUM"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"VINEWHIP"
    m.at 1, :"ROLLOUT"
    m.at 5, :"VINEWHIP"
    m.at 8, :"ROLLOUT"
    m.at 11, :"BITE"
    m.at 15, :"LEECHSEED"
    m.at 19, :"PINMISSILE"
    m.at 29, :"TAKEDOWN"
    m.at 35, :"SEEDBOMB"
    m.at 41, :"MUDSHOT"
    m.at 48, :"BULKUP"
    m.at 54, :"BODYSLAM"
    m.at 60, :"PAINSPLIT"
    m.at 66, :"WOODHAMMER"
    m.at 72, :"HAMMERARM"
    m.at 78, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRENZYPLANT", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"GYROBALL", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CHESNAUGHT" do |m|
  m.back_sprite 4, 44
  m.front_sprite 2, 8
end

# Form 1 - Mega Chesnaught
GameData::Species.define :"CHESNAUGHT_1" do |pkmn|
  pkmn.species :"CHESNAUGHT"
  pkmn.form 1
  pkmn.name "Chesnaught"
  pkmn.form_name "Mega Chesnaught"
  pkmn.types :"GRASS", :"FIGHTING"
  pkmn.base_stats hp: 88, attack: 137, defense: 172,
                  sp_atk: 74, sp_def: 115, speed: 44
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"BULLETPROOF"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.6
  pkmn.weight 90.0
  pkmn.category "Spiny Armor"
  pkmn.pokedex_entry "It has fortified armor and a will to defend at all costs. Both are absurdly strong."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"SPIKYSHIELD"
    m.at 1, :"NEEDLEARM"
    m.at 1, :"HAMMERARM"
    m.at 1, :"FEINT"
    m.at 1, :"BELLYDRUM"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"VINEWHIP"
    m.at 1, :"ROLLOUT"
    m.at 5, :"VINEWHIP"
    m.at 8, :"ROLLOUT"
    m.at 11, :"BITE"
    m.at 15, :"LEECHSEED"
    m.at 19, :"PINMISSILE"
    m.at 29, :"TAKEDOWN"
    m.at 35, :"SEEDBOMB"
    m.at 41, :"MUDSHOT"
    m.at 48, :"BULKUP"
    m.at 54, :"BODYSLAM"
    m.at 60, :"PAINSPLIT"
    m.at 66, :"WOODHAMMER"
    m.at 72, :"HAMMERARM"
    m.at 78, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRENZYPLANT", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"GYROBALL", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CHESNAUGHT_1" do |m|
  m.back_sprite 4, 44
  m.front_sprite 2, 8
end