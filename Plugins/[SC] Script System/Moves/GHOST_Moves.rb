#=============================================================================
# GHOST Type Moves
#=============================================================================

GameData::Move.define :SHADOWFORCE do |m|
  m.name "Shadow Force"
  m.type :GHOST
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "TwoTurnAttackInvulnerableRemoveProtections"
  m.makes_contact
  m.description "The user disappears, then strikes the foe on the second turn. It hits even if the foe protects itself."
end

GameData::Move.define :SHADOWBALL do |m|
  m.name "Shadow Ball"
  m.type :GHOST
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 20
  m.description "The user hurls a shadowy blob at the target. It may also lower the target's Sp. Def stat."
end

GameData::Move.define :SHADOWCLAW do |m|
  m.name "Shadow Claw"
  m.type :GHOST
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user slashes with a sharp claw made from shadows. Critical hits land more easily."
end

GameData::Move.define :OMINOUSWIND do |m|
  m.name "Ominous Wind"
  m.type :GHOST
  m.category :Special
  m.power 60
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "RaiseUserMainStats1"
  m.effect_chance 10
  m.description "The user blasts the target with a gust of repulsive wind. It may also raise all the user's stats at once."
end

GameData::Move.define :SHADOWPUNCH do |m|
  m.name "Shadow Punch"
  m.type :GHOST
  m.category :Physical
  m.power 60
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user throws a punch from the shadows. The punch lands without fail."
end

GameData::Move.define :HEX do |m|
  m.name "Hex"
  m.type :GHOST
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetStatusProblem"
  m.description "This relentless attack does massive damage to a target affected by status problems."
end

GameData::Move.define :SHADOWSNEAK do |m|
  m.name "Shadow Sneak"
  m.type :GHOST
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.makes_contact
  m.description "The user extends its shadow and attacks the target from behind. This move always goes first."
end

GameData::Move.define :ASTONISH do |m|
  m.name "Astonish"
  m.type :GHOST
  m.category :Physical
  m.power 30
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user attacks the target while shouting in a startling fashion. It may also make the target flinch."
end

GameData::Move.define :LICK do |m|
  m.name "Lick"
  m.type :GHOST
  m.category :Physical
  m.power 30
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The target is licked with a long tongue, causing damage. It may also leave the target with paralysis."
end

GameData::Move.define :NIGHTSHADE do |m|
  m.name "Night Shade"
  m.type :GHOST
  m.category :Special
  m.power 1
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FixedDamageUserLevel"
  m.description "The user makes the foe see a frightening mirage. It inflicts damage matching the user's level."
end

GameData::Move.define :CONFUSERAY do |m|
  m.name "Confuse Ray"
  m.type :GHOST
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.description "The target is exposed to a sinister ray that triggers confusion."
end

GameData::Move.define :CURSE do |m|
  m.name "Curse"
  m.type :GHOST
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "CurseTargetOrLowerUserSpd1RaiseUserAtkDef1"
  m.description "A move that works differently for the Ghost type than for all the other types."
end

GameData::Move.define :DESTINYBOND do |m|
  m.name "Destiny Bond"
  m.type :GHOST
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :User
  m.function_code "AttackerFaintsIfUserFaints"
  m.description "When this move is used, if the user faints, the foe that landed the knockout hit also faints."
end

GameData::Move.define :GRUDGE do |m|
  m.name "Grudge"
  m.type :GHOST
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :User
  m.function_code "SetAttackerMovePPTo0IfUserFaints"
  m.description "If the user faints, the user's grudge fully depletes the PP of the foe's move that knocked it out."
end

GameData::Move.define :NIGHTMARE do |m|
  m.name "Nightmare"
  m.type :GHOST
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "StartDamageTargetEachTurnIfTargetAsleep"
  m.description "A sleeping target sees a nightmare that inflicts some damage every turn."
end

GameData::Move.define :SPITE do |m|
  m.name "Spite"
  m.type :GHOST
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerPPOfTargetLastMoveBy4"
  m.description "The user unleashes its grudge on the move last used by the target by cutting 4 PP from it."
end

GameData::Move.define :PHANTOMFORCE do |m|
  m.name "Phantom Force"
  m.type :GHOST
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TwoTurnAttackInvulnerableRemoveProtections"
  m.makes_contact
  m.description "The user vanishes somewhere, then strikes on the next turn. Hits through protections."
end

GameData::Move.define :TRICKORTREAT do |m|
  m.name "Trick-or-Treat"
  m.type :GHOST
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "AddGhostTypeToTarget"
  m.description "The user takes the target trick-or-treating. This adds Ghost type to the target's type."
end

GameData::Move.define :MOONGEISTBEAM do |m|
  m.name "Moongeist Beam"
  m.type :GHOST
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "IgnoreTargetAbility"
  m.description "The user emits a sinister ray. This move can be used on the target regardless of its Abilities."
end

GameData::Move.define :SPECTRALTHIEF do |m|
  m.name "Spectral Thief"
  m.type :GHOST
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "UserStealTargetPositiveStatStages"
  m.makes_contact
  m.description "The user hides in the target's shadow, steals the target's stat boosts, and then attacks."
end

GameData::Move.define :SHADOWBONE do |m|
  m.name "Shadow Bone"
  m.type :GHOST
  m.category :Physical
  m.power 85
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 20
  m.description "The user beats the target with a bone containing a spirit. May lower the target's Defense stat."
end

GameData::Move.define :SPIRITSHACKLE do |m|
  m.name "Spirit Shackle"
  m.type :GHOST
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TrapTargetInBattle"
  m.effect_chance 100
  m.description "The user attacks while also stitching the target's shadow to the ground to prevent it fleeing."
end

GameData::Move.define :ASTRALBARRAGE do |m|
  m.name "Astral Barrage"
  m.type :GHOST
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :AllNearFoes
  m.function_code "None"
  m.description "The user attacks by sending a frightful amount of small ghosts at opposing Pokémon."
end

GameData::Move.define :POLTERGEIST do |m|
  m.name "Poltergeist"
  m.type :GHOST
  m.category :Physical
  m.power 110
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "FailsIfTargetHasNoItem"
  m.description "Attacks the target by controlling its item. The move fails if the target doesn't have an item."
end

GameData::Move.define :BITTERMALICE do |m|
  m.name "Bitter Malice"
  m.type :GHOST
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetAttack1"
  m.effect_chance 100
  m.description "The user attacks the target with spine-chilling resentment. This also lowers the target’s Attack stat."
end

GameData::Move.define :INFERNALPARADE do |m|
  m.name "Infernal Parade"
  m.type :GHOST
  m.category :Special
  m.power 60
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "DoublePowerIfTargetStatusProblemBurnTarget"
  m.effect_chance 30
  m.description "Hurls fireballs which may cause burns. Power is doubled if the target has a status condition."
end

GameData::Move.define :LASTRESPECTS do |m|
  m.name "Last Respects"
  m.type :GHOST
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "IncreasePowerEachFaintedAlly"
  m.description "The user attacks to avenge its allies. The move’s power increases for each defeated ally."
end

GameData::Move.define :RAGEFIST do |m|
  m.name "Rage Fist"
  m.type :GHOST
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "IncreasePowerEachTimeHit"
  m.makes_contact
  m.description "The user converts its rage into energy to attack. The move’s power increases every time the user is hit."
end
