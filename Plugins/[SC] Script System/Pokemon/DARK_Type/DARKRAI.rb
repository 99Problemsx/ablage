#=============================================================================
# Darkrai - DARK Type
#=============================================================================

GameData::Species.define :"DARKRAI" do |pkmn|
  pkmn.name "Darkrai"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 70, attack: 90, defense: 90,
                  sp_atk: 125, sp_def: 135, speed: 90
  pkmn.abilities :"BADDREAMS"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 50.5
  pkmn.category "Pitch-Black"
  pkmn.pokedex_entry "It can lull people to sleep and make them dream. It is active during nights of the new moon."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"OMINOUSWIND"
    m.at 1, :"DISABLE"
    m.at 11, :"QUICKATTACK"
    m.at 20, :"HYPNOSIS"
    m.at 29, :"FEINTATTACK"
    m.at 38, :"NIGHTMARE"
    m.at 47, :"DOUBLETEAM"
    m.at 57, :"HAZE"
    m.at 66, :"DARKVOID"
    m.at 75, :"NASTYPLOT"
    m.at 84, :"DREAMEATER"
    m.at 93, :"DARKPULSE"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLIZZARD", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"WILLOWISP", :"WONDERROOM", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"DARKRAI" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 1
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Mega Darkrai
GameData::Species.define :"DARKRAI_1" do |pkmn|
  pkmn.species :"DARKRAI"
  pkmn.form 1
  pkmn.name "Darkrai"
  pkmn.form_name "Mega Darkrai"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 70, attack: 120, defense: 130,
                  sp_atk: 85, sp_def: 165, speed: 130
  pkmn.abilities :"BADDREAMS"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.0
  pkmn.weight 240.0
  pkmn.category "Pitch-Black"
  pkmn.pokedex_entry "Its dark power blocks out the sun, plunging the surrounding area into darkness. There is no escaping its evil eye."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"OMINOUSWIND"
    m.at 1, :"DISABLE"
    m.at 11, :"QUICKATTACK"
    m.at 20, :"HYPNOSIS"
    m.at 29, :"FEINTATTACK"
    m.at 38, :"NIGHTMARE"
    m.at 47, :"DOUBLETEAM"
    m.at 57, :"HAZE"
    m.at 66, :"DARKVOID"
    m.at 75, :"NASTYPLOT"
    m.at 84, :"DREAMEATER"
    m.at 93, :"DARKPULSE"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLIZZARD", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"WILLOWISP", :"WONDERROOM", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"DARKRAI_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 1
  m.shadow_sprite 0, 0, 2
end