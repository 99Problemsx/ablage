#=============================================================================
# Rattata - NORMAL Type
#=============================================================================

GameData::Species.define :"RATTATA" do |pkmn|
  pkmn.name "Rattata"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 30, attack: 56, defense: 35,
                  sp_atk: 72, sp_def: 25, speed: 35
  pkmn.abilities :"RUNAWAY", :"GUTS"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 51
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 3.5
  pkmn.category "Mouse"
  pkmn.pokedex_entry "A Rattata is cautious in the extreme. Even while it is asleep, it constantly moves its ears and listens for danger. It will make its nest anywhere."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 4, :"QUICKATTACK"
    m.at 7, :"FOCUSENERGY"
    m.at 10, :"BITE"
    m.at 13, :"PURSUIT"
    m.at 16, :"HYPERFANG"
    m.at 19, :"SUCKERPUNCH"
    m.at 22, :"CRUNCH"
    m.at 25, :"ASSURANCE"
    m.at 28, :"SUPERFANG"
    m.at 31, :"DOUBLEEDGE"
    m.at 34, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"BITE", :"COUNTER", :"FINALGAMBIT", :"FLAMEWHEEL", :"FURYSWIPES", :"LASTRESORT", :"MEFIRST", :"REVENGE", :"REVERSAL", :"SCREECH", :"UPROAR"
end

GameData::SpeciesMetrics.define :"RATTATA" do |m|
  m.back_sprite -5, 0
  m.front_sprite -1, 22
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"RATTATA_1" do |pkmn|
  pkmn.species :"RATTATA"
  pkmn.form 1
  pkmn.name "Rattata"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 30, attack: 56, defense: 35,
                  sp_atk: 72, sp_def: 25, speed: 35
  pkmn.abilities :"RUNAWAY", :"GUTS"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 51
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 3.5
  pkmn.category "Mouse"
  pkmn.pokedex_entry "A Rattata is cautious in the extreme. Even while it is asleep, it constantly moves its ears and listens for danger. It will make its nest anywhere."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 4, :"QUICKATTACK"
    m.at 7, :"FOCUSENERGY"
    m.at 10, :"BITE"
    m.at 13, :"PURSUIT"
    m.at 16, :"HYPERFANG"
    m.at 19, :"SUCKERPUNCH"
    m.at 22, :"CRUNCH"
    m.at 25, :"ASSURANCE"
    m.at 28, :"SUPERFANG"
    m.at 31, :"DOUBLEEDGE"
    m.at 34, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"BITE", :"COUNTER", :"FINALGAMBIT", :"FLAMEWHEEL", :"FURYSWIPES", :"LASTRESORT", :"MEFIRST", :"REVENGE", :"REVERSAL", :"SCREECH", :"UPROAR"
end

GameData::SpeciesMetrics.define :"RATTATA_1" do |m|
  m.back_sprite -5, 0
  m.front_sprite -1, 22
  m.shadow_sprite 0, 0, 2
end