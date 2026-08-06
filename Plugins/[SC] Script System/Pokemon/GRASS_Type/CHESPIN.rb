#=============================================================================
# Chespin - GRASS Type
#=============================================================================

GameData::Species.define :"CHESPIN" do |pkmn|
  pkmn.name "Chespin"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 56, attack: 61, defense: 65,
                  sp_atk: 38, sp_def: 48, speed: 45
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"BULLETPROOF"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 63
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 9.0
  pkmn.category "Spiny Nut"
  pkmn.pokedex_entry "The quills on its head are usually soft. When it flexes them, the points become so hard and sharp that they can pierce rock."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"VINEWHIP"
    m.at 5, :"VINEWHIP"
    m.at 8, :"ROLLOUT"
    m.at 11, :"BITE"
    m.at 15, :"LEECHSEED"
    m.at 18, :"PINMISSILE"
    m.at 27, :"TAKEDOWN"
    m.at 32, :"SEEDBOMB"
    m.at 35, :"MUDSHOT"
    m.at 39, :"BULKUP"
    m.at 42, :"BODYSLAM"
    m.at 45, :"PAINSPLIT"
    m.at 48, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"GYROBALL", :"HELPINGHAND", :"HIDDENPOWER", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"BELLYDRUM", :"CURSE", :"DEFENSECURL", :"POWERUPPUNCH", :"QUICKGUARD", :"ROLLOUT", :"SPIKES", :"SYNTHESIS"
end

GameData::SpeciesMetrics.define :"CHESPIN" do |m|
  m.back_sprite 7, 6
  m.front_sprite 2, 2
end