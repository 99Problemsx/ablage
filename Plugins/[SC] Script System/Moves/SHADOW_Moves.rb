#=============================================================================
# SHADOW Type Definition
# Required for Shadow Pokémon moves (from types_shadow_pkmn.txt backup)
#=============================================================================

GameData::Type.define :SHADOW do |type|
  type.name "Shadow"
  type.icon_position 19
  type.special_type
  type.resistances :SHADOW
end

#=============================================================================
# SHADOW Type Moves
#=============================================================================

GameData::Move.define :SHADOWEND do |m|
  m.name "Shadow End"
  m.type :SHADOW
  m.category :Special
  m.power 120
  m.accuracy 60
  m.pp 0
  m.target :NearOther
  m.function_code "UserLosesHalfHP"
  m.makes_contact
  m.description "A shadowy aura ram attack that also rebounds on the user."
end

GameData::Move.define :SHADOWSTORM do |m|
  m.name "Shadow Storm"
  m.type :SHADOW
  m.category :Special
  m.power 95
  m.accuracy 100
  m.pp 0
  m.target :AllFoes
  m.function_code "DoublePowerIfTargetUnderwater"
  m.description "A shadowy aura is used to whip up a vicious tornado."
end

GameData::Move.define :SHADOWBLAST do |m|
  m.name "Shadow Blast"
  m.type :SHADOW
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 0
  m.target :NearOther
  m.function_code "None"
  m.description "A wicked blade of air is formed using a shadowy aura."
end

GameData::Move.define :SHADOWBOLT do |m|
  m.name "Shadow Bolt"
  m.type :SHADOW
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 0
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 10
  m.description "A shadowy thunder attack that may paralyze."
end

GameData::Move.define :SHADOWBREAK do |m|
  m.name "Shadow Break"
  m.type :SHADOW
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 0
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "A shattering ram attack with a shadowy aura."
end

GameData::Move.define :SHADOWCHILL do |m|
  m.name "Shadow Chill"
  m.type :SHADOW
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 0
  m.target :NearOther
  m.function_code "FreezeTarget"
  m.effect_chance 10
  m.description "A shadowy ice attack that may freeze."
end

GameData::Move.define :SHADOWFIRE do |m|
  m.name "Shadow Fire"
  m.type :SHADOW
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 0
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.description "A shadowy fireball attack that may inflict a burn."
end

GameData::Move.define :SHADOWRAVE do |m|
  m.name "Shadow Rave"
  m.type :SHADOW
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 0
  m.target :AllFoes
  m.function_code "None"
  m.description "A shadowy aura in the ground is used to launch spikes."
end

GameData::Move.define :SHADOWRUSH do |m|
  m.name "Shadow Rush"
  m.type :SHADOW
  m.category :Physical
  m.power 55
  m.accuracy 100
  m.pp 0
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "A reckless move that also hurts the user."
end

GameData::Move.define :SHADOWWAVE do |m|
  m.name "Shadow Wave"
  m.type :SHADOW
  m.category :Special
  m.power 50
  m.accuracy 100
  m.pp 0
  m.target :AllFoes
  m.function_code "None"
  m.description "Shadowy aura waves are loosed to inflict damage."
end

GameData::Move.define :SHADOWBLITZ do |m|
  m.name "Shadow Blitz"
  m.type :SHADOW
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 0
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "A Pokémon throws this tackle while casting a shadowy aura."
end

GameData::Move.define :SHADOWDOWN do |m|
  m.name "Shadow Down"
  m.type :SHADOW
  m.category :Status
  m.accuracy 100
  m.pp 0
  m.target :AllFoes
  m.function_code "LowerTargetDefense2"
  m.description "A shadowy aura sharply cuts the foe's Defense."
end

GameData::Move.define :SHADOWHALF do |m|
  m.name "Shadow Half"
  m.type :SHADOW
  m.category :Status
  m.accuracy 100
  m.pp 0
  m.target :AllBattlers
  m.function_code "AllBattlersLoseHalfHPUserSkipsNextTurn"
  m.description "A shadowy aura's energy cuts everyone's HP by half."
end

GameData::Move.define :SHADOWHOLD do |m|
  m.name "Shadow Hold"
  m.type :SHADOW
  m.category :Status
  m.accuracy 100
  m.pp 0
  m.target :AllFoes
  m.function_code "TrapTargetInBattle"
  m.description "The opponent Pokémon cannot escape."
end

GameData::Move.define :SHADOWMIST do |m|
  m.name "Shadow Mist"
  m.type :SHADOW
  m.category :Status
  m.accuracy 100
  m.pp 0
  m.target :AllFoes
  m.function_code "LowerTargetEvasion2"
  m.description "A shadowy aura sharply cuts the foe's evasiveness."
end

GameData::Move.define :SHADOWPANIC do |m|
  m.name "Shadow Panic"
  m.type :SHADOW
  m.category :Status
  m.accuracy 90
  m.pp 0
  m.target :AllFoes
  m.function_code "ConfuseTarget"
  m.sound_based
  m.description "A shadowy aura emanates to confuse the foe."
end

GameData::Move.define :SHADOWSHED do |m|
  m.name "Shadow Shed"
  m.type :SHADOW
  m.category :Status
  m.accuracy 100
  m.pp 0
  m.target :BothSides
  # Implemented as Battle::Move::RemoveAllScreensAndSafeguard in
  # 002_ShadowPokemon_Other.rb — "RemoveAllScreens" has no move class, which
  # silently turned this move into a do-nothing generic Battle::Move.
  m.function_code "RemoveAllScreensAndSafeguard"
  m.description "A shadowy aura eliminates Reflect and similar moves."
end

GameData::Move.define :SHADOWSKY do |m|
  m.name "Shadow Sky"
  m.type :SHADOW
  m.category :Status
  m.accuracy 100
  m.pp 0
  m.target :BothSides
  m.function_code "StartShadowSkyWeather"
  m.description "Darkness hurts all but Shadow Pokémon for 5 turns."
end
