#=============================================================================
# Riolu - FIGHTING Type
#=============================================================================

GameData::Species.define :"RIOLU" do |pkmn|
  pkmn.name "Riolu"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 40, attack: 70, defense: 40,
                  sp_atk: 60, sp_def: 35, speed: 40
  pkmn.abilities :"STEADFAST", :"INNERFOCUS"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 57
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.7
  pkmn.weight 20.2
  pkmn.category "Emanation"
  pkmn.pokedex_entry "The aura that emanates from its body intensifies to alert others if it is afraid or sad."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FORESIGHT"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"ENDURE"
    m.at 6, :"COUNTER"
    m.at 11, :"FEINT"
    m.at 15, :"FORCEPALM"
    m.at 19, :"COPYCAT"
    m.at 24, :"SCREECH"
    m.at 29, :"REVERSAL"
    m.at 47, :"NASTYPLOT"
    m.at 55, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"IRONDEFENSE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AGILITY", :"BITE", :"BLAZEKICK", :"BULLETPUNCH", :"CIRCLETHROW", :"CROSSCHOP", :"CRUNCH", :"DETECT", :"FOLLOWME", :"HIGHJUMPKICK", :"IRONDEFENSE", :"LOWKICK", :"MINDREADER", :"SKYUPPERCUT", :"VACUUMWAVE"
end

GameData::SpeciesMetrics.define :"RIOLU" do |m|
  m.back_sprite -9, 0
  m.front_sprite -2, 19
  m.shadow_sprite 0, 0, 1
end