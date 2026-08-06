#=============================================================================
# DARK Type Moves
#=============================================================================

GameData::Move.define :FOULPLAY do |m|
  m.name "Foul Play"
  m.type :DARK
  m.category :Physical
  m.power 95
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "UseTargetAttackInsteadOfUserAttack"
  m.makes_contact
  m.description "The user turns the foe's power against it. It does more damage the higher the target's Attack stat."
end

GameData::Move.define :NIGHTDAZE do |m|
  m.name "Night Daze"
  m.type :DARK
  m.category :Special
  m.power 85
  m.accuracy 95
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.effect_chance 40
  m.description "The user lets loose a pitch-black shock wave at its target. It may also lower the target's accuracy."
end

GameData::Move.define :CRUNCH do |m|
  m.name "Crunch"
  m.type :DARK
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 20
  m.makes_contact
  m.description "The user crunches up the target with sharp fangs. It may also lower the target's Defense stat."
end

GameData::Move.define :DARKPULSE do |m|
  m.name "Dark Pulse"
  m.type :DARK
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :Other
  m.function_code "FlinchTarget"
  m.effect_chance 20
  m.description "The user releases a horrible aura imbued with dark thoughts. It may also make the target flinch."
end

GameData::Move.define :SUCKERPUNCH do |m|
  m.name "Sucker Punch"
  m.type :DARK
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.priority 1
  m.function_code "FailsIfTargetActed"
  m.makes_contact
  m.description "This move enables the user to attack first. It fails if the target is not readying an attack, however."
end

GameData::Move.define :NIGHTSLASH do |m|
  m.name "Night Slash"
  m.type :DARK
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user slashes the target the instant an opportunity arises. Critical hits land more easily."
end

GameData::Move.define :BITE do |m|
  m.name "Bite"
  m.type :DARK
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The target is bitten with viciously sharp fangs. It may make the target flinch."
end

GameData::Move.define :FEINTATTACK do |m|
  m.name "Feint Attack"
  m.type :DARK
  m.category :Physical
  m.power 60
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user draws up to the foe disarmingly, then throws a sucker punch. It hits without fail."
end

GameData::Move.define :SNARL do |m|
  m.name "Snarl"
  m.type :DARK
  m.category :Special
  m.power 55
  m.accuracy 95
  m.pp 15
  m.target :AllNearFoes
  m.function_code "LowerTargetSpAtk1"
  m.effect_chance 100
  m.sound_based
  m.description "The user yells as if it is ranting about something, making the target's Sp. Atk stat decrease."
end

GameData::Move.define :ASSURANCE do |m|
  m.name "Assurance"
  m.type :DARK
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetLostHPThisTurn"
  m.makes_contact
  m.description "If the target has already taken some damage in the same turn, this attack's power is doubled."
end

GameData::Move.define :PAYBACK do |m|
  m.name "Payback"
  m.type :DARK
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetActed"
  m.makes_contact
  m.description "If the user moves after the target, this attack's power will be doubled."
end

GameData::Move.define :PURSUIT do |m|
  m.name "Pursuit"
  m.type :DARK
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PursueSwitchingFoe"
  m.makes_contact
  m.description "An attack move that inflicts double damage if used on a target that is switching out of battle."
end

GameData::Move.define :THIEF do |m|
  m.name "Thief"
  m.type :DARK
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "UserTakesTargetItem"
  m.makes_contact
  m.description "The user attacks and steals the foe's held item simultaneously. It can't steal if the user holds an item."
end

GameData::Move.define :KNOCKOFF do |m|
  m.name "Knock Off"
  m.type :DARK
  m.category :Physical
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "RemoveTargetItem"
  m.makes_contact
  m.description "The user slaps down the target's held item, preventing that item from being used in the battle."
end

GameData::Move.define :BEATUP do |m|
  m.name "Beat Up"
  m.type :DARK
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HitOncePerUserTeamMember"
  m.description "The user gets all the party Pokémon to attack the foe. The more party Pokémon, the more damage."
end

GameData::Move.define :FLING do |m|
  m.name "Fling"
  m.type :DARK
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "ThrowUserItemAtTarget"
  m.description "The user flings its held item at the target to attack. Its power and effects depend on the item."
end

GameData::Move.define :PUNISHMENT do |m|
  m.name "Punishment"
  m.type :DARK
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "PowerHigherWithTargetPositiveStatStages"
  m.makes_contact
  m.description "This attack's power increases the more the target has powered up with stat changes."
end

GameData::Move.define :DARKVOID do |m|
  m.name "Dark Void"
  m.type :DARK
  m.category :Status
  m.accuracy 50
  m.pp 10
  m.target :AllNearFoes
  m.function_code "SleepTargetIfUserDarkrai"
  m.description "Opposing Pokémon are dragged into a world of total darkness that makes them sleep."
end

GameData::Move.define :EMBARGO do |m|
  m.name "Embargo"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "StartTargetCannotUseItem"
  m.description "It prevents the target from using its held item. Its Trainer is also prevented from using items on it."
end

GameData::Move.define :FAKETEARS do |m|
  m.name "Fake Tears"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetSpDef2"
  m.description "The user feigns crying to fluster the target, harshly lowering its Sp. Def stat."
end

GameData::Move.define :FLATTER do |m|
  m.name "Flatter"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RaiseTargetSpAtk1ConfuseTarget"
  m.description "Flattery is used to confuse the target. However, it also raises the target's Sp. Atk stat."
end

GameData::Move.define :HONECLAWS do |m|
  m.name "Hone Claws"
  m.type :DARK
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :User
  m.function_code "RaiseUserAtkAcc1"
  m.description "The user sharpens its claws to boost its Attack stat and accuracy."
end

GameData::Move.define :MEMENTO do |m|
  m.name "Memento"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "UserFaintsLowerTargetAtkSpAtk2"
  m.description "The user faints when using this move. In return, it harshly lowers the target's Attack and Sp. Atk."
end

GameData::Move.define :NASTYPLOT do |m|
  m.name "Nasty Plot"
  m.type :DARK
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserSpAtk2"
  m.description "The user stimulates its brain by thinking bad thoughts. It sharply raises the user's Sp. Atk."
end

GameData::Move.define :QUASH do |m|
  m.name "Quash"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "TargetActsLast"
  m.description "The user suppresses the target and makes its move go last."
end

GameData::Move.define :SNATCH do |m|
  m.name "Snatch"
  m.type :DARK
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "StealAndUseBeneficialStatusMove"
  m.description "The user steals the effects of any healing or stat-changing move the foe attempts to use."
end

GameData::Move.define :SWITCHEROO do |m|
  m.name "Switcheroo"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetSwapItems"
  m.description "The user trades held items with the target faster than the eye can follow."
end

GameData::Move.define :TAUNT do |m|
  m.name "Taunt"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "DisableTargetStatusMoves"
  m.description "The target is taunted into a rage that allows it to use only attack moves for three turns."
end

GameData::Move.define :TORMENT do |m|
  m.name "Torment"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "DisableTargetUsingSameMoveConsecutively"
  m.description "The user torments and enrages the foe, making it incapable of using the same move twice in a row."
end

GameData::Move.define :HYPERSPACEFURY do |m|
  m.name "Hyperspace Fury"
  m.type :DARK
  m.category :Physical
  m.power 100
  m.accuracy 0
  m.pp 5
  m.target :NearOther
  m.function_code "HoopaRemoveProtectionsBypassSubstituteLowerUserDef1"
  m.description "Unleashes a barrage of multi-arm attacks, skipping protections. The user's Defense stat falls."
end

GameData::Move.define :PARTINGSHOT do |m|
  m.name "Parting Shot"
  m.type :DARK
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAtkSpAtk1SwitchOutUser"
  m.description "With a parting threat, the user lowers the target's Attack and Sp. Atk stats. Then it switches out."
end

GameData::Move.define :TOPSYTURVY do |m|
  m.name "Topsy-Turvy"
  m.type :DARK
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "InvertTargetStatStages"
  m.description "All stat changes affecting the target turn topsy-turvy and become the opposite of what they were."
end

GameData::Move.define :DARKESTLARIAT do |m|
  m.name "Darkest Lariat"
  m.type :DARK
  m.category :Physical
  m.power 85
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "IgnoreTargetDefSpDefEvaStatStages"
  m.makes_contact
  m.description "The user swings both arms and hits the target. Ignores the target's stat changes."
end

GameData::Move.define :THROATCHOP do |m|
  m.name "Throat Chop"
  m.type :DARK
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "DisableTargetSoundMoves"
  m.effect_chance 100
  m.makes_contact
  m.description "The user attacks the target's throat. The target cannot use sound-based moves for two turns."
end

GameData::Move.define :BRUTALSWING do |m|
  m.name "Brutal Swing"
  m.type :DARK
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 20
  m.target :AllNearOthers
  m.function_code "None"
  m.makes_contact
  m.description "The user swings its body around violently to inflict damage on everything in its vicinity."
end

GameData::Move.define :POWERTRIP do |m|
  m.name "Power Trip"
  m.type :DARK
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "PowerHigherWithUserPositiveStatStages"
  m.makes_contact
  m.description "The user boasts of its strength. Power increases the more the user's stats are raised."
end

GameData::Move.define :FIERYWRATH do |m|
  m.name "Fiery Wrath"
  m.type :DARK
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "FlinchTarget"
  m.effect_chance 20
  m.description "The user transforms its wrath into a fire-like aura to attack. This may also make foes flinch."
end

GameData::Move.define :FALSESURRENDER do |m|
  m.name "False Surrender"
  m.type :DARK
  m.category :Physical
  m.power 80
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user pretends to bow its head, but then it stabs the target with its disheveled hair. Never misses."
end

GameData::Move.define :JAWLOCK do |m|
  m.name "Jaw Lock"
  m.type :DARK
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TrapUserAndTargetInBattle"
  m.makes_contact
  m.description "This move prevents the user and the target from switching out until either of them faints."
end

GameData::Move.define :WICKEDBLOW do |m|
  m.name "Wicked Blow"
  m.type :DARK
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "AlwaysCriticalHit"
  m.makes_contact
  m.description "Strikes with a fierce blow through mastery of the Dark style. Always results in a critical hit."
end

GameData::Move.define :LASHOUT do |m|
  m.name "Lash Out"
  m.type :DARK
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "DoublePowerIfUserStatsLoweredThisTurn"
  m.makes_contact
  m.description "The user lashes out to vent its frustration. Power is doubled if its stats dropped this turn."
end

GameData::Move.define :OBSTRUCT do |m|
  m.name "Obstruct"
  m.type :DARK
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "ProtectUserFromDamagingMovesObstruct"
  m.description "The user protects itself from all attacks. Direct contact lowers the attacker's Defense."
end

GameData::Move.define :CEASELESSEDGE do |m|
  m.name "Ceaseless Edge"
  m.type :DARK
  m.category :Physical
  m.power 65
  m.accuracy 90
  m.pp 15
  m.target :NearOther
  m.function_code "SplintersTargetGen8AddSpikesGen9"
  m.effect_chance 100
  m.makes_contact
  m.description "The user slashes the opponent with its shell blade. May leave spikes around the target."
end

GameData::Move.define :COMEUPPANCE do |m|
  m.name "Comeuppance"
  m.type :DARK
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :None
  m.function_code "CounterDamagePlusHalf"
  m.makes_contact
  m.description "The user retaliates with much greater force against the opponent that last inflicted damage on it."
end

GameData::Move.define :KOWTOWCLEAVE do |m|
  m.name "Kowtow Cleave"
  m.type :DARK
  m.category :Physical
  m.power 85
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user kowtows to make the target lower its guard, then slashes. This attack never misses."
end

GameData::Move.define :RUINATION do |m|
  m.name "Ruination"
  m.type :DARK
  m.category :Special
  m.power 1
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "FixedDamageHalfTargetHP"
  m.description "The user summons a ruinous disaster. This cuts the target’s HP in half."
end

GameData::Move.define :WICKEDTORQUE do |m|
  m.name "Wicked Torque"
  m.type :DARK
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "StarmobileSleepTarget"
  m.effect_chance 10
  m.description "This move is only used by a Starmobile. It may put the target to sleep."
end
