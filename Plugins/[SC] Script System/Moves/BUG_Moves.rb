#=============================================================================
# BUG Type Moves
#=============================================================================

GameData::Move.define :MEGAHORN do |m|
  m.name "Megahorn"
  m.type :BUG
  m.category :Physical
  m.power 120
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "Using its tough and impressive horn, the user rams into the target with no letup."
end

GameData::Move.define :ATTACKORDER do |m|
  m.name "Attack Order"
  m.type :BUG
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "None"
  m.description "The user calls out its underlings to pummel the target. Critical hits land more easily."
end

GameData::Move.define :BUGBUZZ do |m|
  m.name "Bug Buzz"
  m.type :BUG
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 10
  m.sound_based
  m.description "The user vibrates its wings to generate a damaging sound wave. It may also lower the target's Sp. Def stat."
end

GameData::Move.define :XSCISSOR do |m|
  m.name "X-Scissor"
  m.type :BUG
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user slashes at the foe by crossing its scythes or claws as if they were a pair of scissors."
end

GameData::Move.define :SIGNALBEAM do |m|
  m.name "Signal Beam"
  m.type :BUG
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.effect_chance 10
  m.description "The user attacks with a sinister beam of light. It may also confuse the target."
end

GameData::Move.define :UTURN do |m|
  m.name "U-turn"
  m.type :BUG
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "SwitchOutUserDamagingMove"
  m.makes_contact
  m.description "After making its attack, the user rushes back to switch places with a party Pokémon in waiting."
end

GameData::Move.define :STEAMROLLER do |m|
  m.name "Steamroller"
  m.type :BUG
  m.category :Physical
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user crushes its foes by rolling over them. This attack may make the target flinch."
end

GameData::Move.define :BUGBITE do |m|
  m.name "Bug Bite"
  m.type :BUG
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "UserConsumeTargetBerry"
  m.makes_contact
  m.description "The user bites the target. If the target is holding a Berry, the user eats it and gains its effect."
end

GameData::Move.define :SILVERWIND do |m|
  m.name "Silver Wind"
  m.type :BUG
  m.category :Special
  m.power 60
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "RaiseUserMainStats1"
  m.effect_chance 10
  m.description "The foe is attacked with powdery scales blown by wind. It may also raise all the user's stats."
end

GameData::Move.define :STRUGGLEBUG do |m|
  m.name "Struggle Bug"
  m.type :BUG
  m.category :Special
  m.power 50
  m.accuracy 100
  m.pp 20
  m.target :AllNearFoes
  m.function_code "LowerTargetSpAtk1"
  m.effect_chance 100
  m.description "While resisting, the user attacks the opposing Pokémon. The targets' Sp. Atk stat is reduced."
end

GameData::Move.define :TWINEEDLE do |m|
  m.name "Twineedle"
  m.type :BUG
  m.category :Physical
  m.power 25
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "HitTwoTimesPoisonTarget"
  m.effect_chance 20
  m.description "The foe is stabbed twice by a pair of stingers. It may also poison the target."
end

GameData::Move.define :FURYCUTTER do |m|
  m.name "Fury Cutter"
  m.type :BUG
  m.category :Physical
  m.power 40
  m.accuracy 95
  m.pp 20
  m.target :NearOther
  m.function_code "PowerHigherWithConsecutiveUse"
  m.makes_contact
  m.description "The target is slashed with scythes or claws. Its power increases if it hits in succession."
end

GameData::Move.define :LEECHLIFE do |m|
  m.name "Leech Life"
  m.type :BUG
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HealUserByHalfOfDamageDone"
  m.makes_contact
  m.description "The user drains the target's blood. The user's HP is restored by half the damage taken by the target."
end

GameData::Move.define :PINMISSILE do |m|
  m.name "Pin Missile"
  m.type :BUG
  m.category :Physical
  m.power 25
  m.accuracy 95
  m.pp 20
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.description "Sharp spikes are shot at the target in rapid succession. They hit two to five times in a row."
end

GameData::Move.define :DEFENDORDER do |m|
  m.name "Defend Order"
  m.type :BUG
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserDefSpDef1"
  m.description "The user calls out its underlings to shield its body, raising its Defense and Sp. Def stats."
end

GameData::Move.define :HEALORDER do |m|
  m.name "Heal Order"
  m.type :BUG
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserHalfOfTotalHP"
  m.description "The user calls out its underlings to heal it. The user regains up to half of its max HP."
end

GameData::Move.define :QUIVERDANCE do |m|
  m.name "Quiver Dance"
  m.type :BUG
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserSpAtkSpDefSpd1"
  m.description "The user performs a beautiful dance. It boosts the user's Sp. Atk, Sp. Def, and Speed stats."
end

GameData::Move.define :RAGEPOWDER do |m|
  m.name "Rage Powder"
  m.type :BUG
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.priority 2
  m.function_code "RedirectAllMovesToUser"
  m.description "The user scatters irritating powder to draw attention to itself. Opponents aim only at the user."
end

GameData::Move.define :SPIDERWEB do |m|
  m.name "Spider Web"
  m.type :BUG
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "TrapTargetInBattle"
  m.description "The user ensnares the target with thin, gooey silk so it can't flee from battle."
end

GameData::Move.define :STRINGSHOT do |m|
  m.name "String Shot"
  m.type :BUG
  m.category :Status
  m.accuracy 95
  m.pp 40
  m.target :AllNearFoes
  m.function_code "LowerTargetSpeed2"
  m.description "The foe is bound with silk blown from the user's mouth. This silk reduces the target's Speed."
end

GameData::Move.define :TAILGLOW do |m|
  m.name "Tail Glow"
  m.type :BUG
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserSpAtk3"
  m.description "The user stares at flashing lights to focus its mind, drastically raising its Sp. Atk stat."
end

GameData::Move.define :FELLSTINGER do |m|
  m.name "Fell Stinger"
  m.type :BUG
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "RaiseUserAttack3IfTargetFaints"
  m.makes_contact
  m.description "When the user knocks out a target with this move, the user's Attack stat rises drastically."
end

GameData::Move.define :INFESTATION do |m|
  m.name "Infestation"
  m.type :BUG
  m.category :Special
  m.power 20
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "BindTarget"
  m.makes_contact
  m.description "The target is infested and unable to flee for four to five turns."
end

GameData::Move.define :POWDER do |m|
  m.name "Powder"
  m.type :BUG
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "TargetNextFireMoveDamagesTarget"
  m.description "The target is covered in a powder that explodes and damages it if it uses a Fire-type move."
end

GameData::Move.define :STICKYWEB do |m|
  m.name "Sticky Web"
  m.type :BUG
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :FoeSide
  m.function_code "AddStickyWebToFoeSide"
  m.description "Weaves a sticky net around the opposing team, which lowers their Speed stats upon switching in."
end

GameData::Move.define :FIRSTIMPRESSION do |m|
  m.name "First Impression"
  m.type :BUG
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.priority 2
  m.function_code "FailsIfNotUserFirstTurn"
  m.makes_contact
  m.description "Although this move has great power, it only works the first turn the user is in battle."
end

GameData::Move.define :POLLENPUFF do |m|
  m.name "Pollen Puff"
  m.type :BUG
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "HealAllyOrDamageFoe"
  m.description "Fires an exploding pollen puff at enemies, or a HP-restoring one at allies."
end

GameData::Move.define :LUNGE do |m|
  m.name "Lunge"
  m.type :BUG
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetAttack1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user makes a lunge at the target, attacking with full force. This lowers the target's Attack stat."
end

GameData::Move.define :SKITTERSMACK do |m|
  m.name "Skitter Smack"
  m.type :BUG
  m.category :Physical
  m.power 70
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpAtk1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user skitters behind the target to attack. This also lowers the target's Sp. Atk stat."
end

GameData::Move.define :POUNCE do |m|
  m.name "Pounce"
  m.type :BUG
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user attacks by pouncing on the target. This also lowers the target’s Speed stat."
end

GameData::Move.define :SILKTRAP do |m|
  m.name "Silk Trap"
  m.type :BUG
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "ProtectUserFromDamagingMovesSilkTrap"
  m.description "User spins a silken trap to protect itself. Lowers the Speed of any that make direct contact."
end
