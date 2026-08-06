#=============================================================================
# FIGHTING Type Moves
#=============================================================================

GameData::Move.define :FOCUSPUNCH do |m|
  m.name "Focus Punch"
  m.type :FIGHTING
  m.category :Physical
  m.power 150
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.priority -3
  m.function_code "FailsIfUserDamagedThisTurn"
  m.makes_contact
  m.description "The user focuses its mind before launching a punch. It will fail if the user is hit before it is used."
end

GameData::Move.define :HIGHJUMPKICK do |m|
  m.name "High Jump Kick"
  m.type :FIGHTING
  m.category :Physical
  m.power 130
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "CrashDamageIfFailsUnusableInGravity"
  m.makes_contact
  m.description "The target is attacked with a knee kick from a jump. If it misses, the user is hurt instead."
end

GameData::Move.define :CLOSECOMBAT do |m|
  m.name "Close Combat"
  m.type :FIGHTING
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserDefSpDef1"
  m.makes_contact
  m.description "The user fights the foe up close without guarding itself. It also cuts the user's Defense and Sp. Def."
end

GameData::Move.define :FOCUSBLAST do |m|
  m.name "Focus Blast"
  m.type :FIGHTING
  m.category :Special
  m.power 120
  m.accuracy 70
  m.pp 5
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 10
  m.description "The user heightens its mental focus and unleashes its power. It may also lower the target's Sp. Def."
end

GameData::Move.define :SUPERPOWER do |m|
  m.name "Superpower"
  m.type :FIGHTING
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserAtkDef1"
  m.makes_contact
  m.description "The user attacks the target with great power. However, it also lowers the user's Attack and Defense."
end

GameData::Move.define :CROSSCHOP do |m|
  m.name "Cross Chop"
  m.type :FIGHTING
  m.category :Physical
  m.power 100
  m.accuracy 80
  m.pp 5
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user delivers a double chop with its forearms crossed. Critical hits land more easily."
end

GameData::Move.define :DYNAMICPUNCH do |m|
  m.name "Dynamic Punch"
  m.type :FIGHTING
  m.category :Physical
  m.power 100
  m.accuracy 50
  m.pp 5
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.effect_chance 100
  m.makes_contact
  m.description "The user punches the target with full, concentrated power. It confuses the target if it hits."
end

GameData::Move.define :HAMMERARM do |m|
  m.name "Hammer Arm"
  m.type :FIGHTING
  m.category :Physical
  m.power 100
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "LowerUserSpeed1"
  m.makes_contact
  m.description "The user swings and hits with its strong and heavy fist. It lowers the user's Speed, however."
end

GameData::Move.define :JUMPKICK do |m|
  m.name "Jump Kick"
  m.type :FIGHTING
  m.category :Physical
  m.power 100
  m.accuracy 95
  m.pp 10
  m.target :NearOther
  m.function_code "CrashDamageIfFailsUnusableInGravity"
  m.makes_contact
  m.description "The user jumps up high, then strikes with a kick. If the kick misses, the user hurts itself."
end

GameData::Move.define :AURASPHERE do |m|
  m.name "Aura Sphere"
  m.type :FIGHTING
  m.category :Special
  m.power 80
  m.accuracy 0
  m.pp 20
  m.target :Other
  m.function_code "None"
  m.description "The user looses a blast of aura power from deep within its body. This move is certain to hit."
end

GameData::Move.define :SACREDSWORD do |m|
  m.name "Sacred Sword"
  m.type :FIGHTING
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "IgnoreTargetDefSpDefEvaStatStages"
  m.makes_contact
  m.description "The user attacks by slicing with its long horns. The target's stat changes don't affect the damage."
end

GameData::Move.define :SECRETSWORD do |m|
  m.name "Secret Sword"
  m.type :FIGHTING
  m.category :Special
  m.power 85
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "UseTargetDefenseInsteadOfTargetSpDef"
  m.description "The user cuts with its long horn. The odd power contained in it does physical damage to the foe."
end

GameData::Move.define :SKYUPPERCUT do |m|
  m.name "Sky Uppercut"
  m.type :FIGHTING
  m.category :Physical
  m.power 85
  m.accuracy 90
  m.pp 15
  m.target :NearOther
  m.function_code "HitsTargetInSky"
  m.makes_contact
  m.description "The user attacks the target with an uppercut thrown skyward with force."
end

GameData::Move.define :SUBMISSION do |m|
  m.name "Submission"
  m.type :FIGHTING
  m.category :Physical
  m.power 80
  m.accuracy 80
  m.pp 20
  m.target :NearOther
  m.function_code "RecoilQuarterOfDamageDealt"
  m.makes_contact
  m.description "The user grabs the target and recklessly dives for the ground. It also hurts the user slightly."
end

GameData::Move.define :BRICKBREAK do |m|
  m.name "Brick Break"
  m.type :FIGHTING
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RemoveScreens"
  m.makes_contact
  m.description "The user attacks with a swift chop. It can also break any barrier such as Light Screen and Reflect."
end

GameData::Move.define :DRAINPUNCH do |m|
  m.name "Drain Punch"
  m.type :FIGHTING
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HealUserByHalfOfDamageDone"
  m.makes_contact
  m.description "An energy-draining punch. The user's HP is restored by half the damage taken by the target."
end

GameData::Move.define :VITALTHROW do |m|
  m.name "Vital Throw"
  m.type :FIGHTING
  m.category :Physical
  m.power 70
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.priority -1
  m.function_code "None"
  m.makes_contact
  m.description "The user attacks last. In return, this throw move is guaranteed not to miss."
end

GameData::Move.define :CIRCLETHROW do |m|
  m.name "Circle Throw"
  m.type :FIGHTING
  m.category :Physical
  m.power 60
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.priority -6
  m.function_code "SwitchOutTargetDamagingMove"
  m.makes_contact
  m.description "The user throws the target and drags out another Pokémon in its party. In the wild, the battle ends."
end

GameData::Move.define :FORCEPALM do |m|
  m.name "Force Palm"
  m.type :FIGHTING
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The target is attacked with a shock wave. It may also leave the target with paralysis."
end

GameData::Move.define :LOWSWEEP do |m|
  m.name "Low Sweep"
  m.type :FIGHTING
  m.category :Physical
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user attacks the target's legs swiftly, reducing the target's Speed stat."
end

GameData::Move.define :REVENGE do |m|
  m.name "Revenge"
  m.type :FIGHTING
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.priority -4
  m.function_code "DoublePowerIfUserLostHPThisTurn"
  m.makes_contact
  m.description "An attack move that inflicts double the damage if the user has been hurt by the foe in the same turn."
end

GameData::Move.define :ROLLINGKICK do |m|
  m.name "Rolling Kick"
  m.type :FIGHTING
  m.category :Physical
  m.power 60
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user lashes out with a quick, spinning kick. It may also make the target flinch."
end

GameData::Move.define :WAKEUPSLAP do |m|
  m.name "Wake-Up Slap"
  m.type :FIGHTING
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetAsleepCureTarget"
  m.makes_contact
  m.description "This attack inflicts big damage on a sleeping target. It also wakes the target up, however."
end

GameData::Move.define :KARATECHOP do |m|
  m.name "Karate Chop"
  m.type :FIGHTING
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is attacked with a sharp chop. Critical hits land more easily."
end

GameData::Move.define :MACHPUNCH do |m|
  m.name "Mach Punch"
  m.type :FIGHTING
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.makes_contact
  m.description "The user throws a punch at blinding speed. It is certain to strike first."
end

GameData::Move.define :ROCKSMASH do |m|
  m.name "Rock Smash"
  m.type :FIGHTING
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 50
  m.makes_contact
  m.description "The user attacks with a punch that can shatter a rock. It may also lower the foe's Defense stat."
end

GameData::Move.define :STORMTHROW do |m|
  m.name "Storm Throw"
  m.type :FIGHTING
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "AlwaysCriticalHit"
  m.makes_contact
  m.description "The user strikes the target with a fierce blow. This attack always results in a critical hit."
end

GameData::Move.define :VACUUMWAVE do |m|
  m.name "Vacuum Wave"
  m.type :FIGHTING
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.description "The user whirls its fists to send a wave of pure vacuum at the target. This move always goes first."
end

GameData::Move.define :DOUBLEKICK do |m|
  m.name "Double Kick"
  m.type :FIGHTING
  m.category :Physical
  m.power 30
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "HitTwoTimes"
  m.makes_contact
  m.description "The target is quickly kicked twice in succession using both feet."
end

GameData::Move.define :ARMTHRUST do |m|
  m.name "Arm Thrust"
  m.type :FIGHTING
  m.category :Physical
  m.power 15
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.makes_contact
  m.description "The user looses a flurry of open-palmed arm thrusts that hit two to five times in a row."
end

GameData::Move.define :TRIPLEKICK do |m|
  m.name "Triple Kick"
  m.type :FIGHTING
  m.category :Physical
  m.power 10
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "HitThreeTimesPowersUpWithEachHit"
  m.makes_contact
  m.description "A consecutive three-kick attack that becomes more powerful with each successive hit."
end

GameData::Move.define :COUNTER do |m|
  m.name "Counter"
  m.type :FIGHTING
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 20
  m.target :None
  m.priority -5
  m.function_code "CounterPhysicalDamage"
  m.makes_contact
  m.description "A retaliation move that counters any physical attack, inflicting double the damage taken."
end

GameData::Move.define :FINALGAMBIT do |m|
  m.name "Final Gambit"
  m.type :FIGHTING
  m.category :Special
  m.power 1
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "UserFaintsFixedDamageUserHP"
  m.description "The user risks all to attack the foe. The user faints but does damage equal to its HP."
end

GameData::Move.define :LOWKICK do |m|
  m.name "Low Kick"
  m.type :FIGHTING
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PowerHigherWithTargetWeight"
  m.makes_contact
  m.description "A powerful low kick that makes the foe fall over. It inflicts greater damage on heavier foes."
end

GameData::Move.define :REVERSAL do |m|
  m.name "Reversal"
  m.type :FIGHTING
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "PowerLowerWithUserHP"
  m.makes_contact
  m.description "An all-out attack that becomes more powerful the less HP the user has."
end

GameData::Move.define :SEISMICTOSS do |m|
  m.name "Seismic Toss"
  m.type :FIGHTING
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "FixedDamageUserLevel"
  m.makes_contact
  m.description "The target is thrown using the power of gravity. It inflicts damage equal to the user's level."
end

GameData::Move.define :BULKUP do |m|
  m.name "Bulk Up"
  m.type :FIGHTING
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserAtkDef1"
  m.description "The user tenses its muscles to bulk up its body, boosting both its Attack and Defense stats."
end

GameData::Move.define :DETECT do |m|
  m.name "Detect"
  m.type :FIGHTING
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :User
  m.priority 4
  m.function_code "ProtectUser"
  m.description "It enables the user to evade all attacks. Its chance of failing rises if it is used in succession."
end

GameData::Move.define :QUICKGUARD do |m|
  m.name "Quick Guard"
  m.type :FIGHTING
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :UserSide
  m.priority 3
  m.function_code "ProtectUserSideFromPriorityMoves"
  m.description "The user protects itself and its allies from priority moves. If may fail if used in succession."
end

GameData::Move.define :FLYINGPRESS do |m|
  m.name "Flying Press"
  m.type :FIGHTING
  m.category :Physical
  m.power 100
  m.accuracy 95
  m.pp 10
  m.target :Other
  m.function_code "EffectivenessIncludesFlyingType"
  m.makes_contact
  m.description "The user dives down onto the target from the sky. This move is Fighting and Flying type simultaneously."
end

GameData::Move.define :POWERUPPUNCH do |m|
  m.name "Power-Up Punch"
  m.type :FIGHTING
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "RaiseUserAttack1"
  m.effect_chance 100
  m.makes_contact
  m.description "Striking opponents repeatedly makes the user's fists harder, raising the user's Attack stat."
end

GameData::Move.define :MATBLOCK do |m|
  m.name "Mat Block"
  m.type :FIGHTING
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :UserSide
  m.function_code "ProtectUserSideFromDamagingMovesIfUserFirstTurn"
  m.description "Using a pulled-up mat as a shield, the user protects itself and its allies from damaging moves."
end

GameData::Move.define :METEORASSAULT do |m|
  m.name "Meteor Assault"
  m.type :FIGHTING
  m.category :Physical
  m.power 150
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.description "The user attacks wildly with its thick leek. The user can't move on the next turn."
end

GameData::Move.define :THUNDEROUSKICK do |m|
  m.name "Thunderous Kick"
  m.type :FIGHTING
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 100
  m.makes_contact
  m.description "Overwhelms the target with lightning-like movement, then kicks. Lowers the target's Defense stat."
end

GameData::Move.define :BODYPRESS do |m|
  m.name "Body Press"
  m.type :FIGHTING
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "UseUserDefenseInsteadOfUserAttack"
  m.makes_contact
  m.description "The user attacks by slamming its body into the target. Power increases the higher the user's Defense is."
end

GameData::Move.define :COACHING do |m|
  m.name "Coaching"
  m.type :FIGHTING
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :AllAllies
  m.function_code "RaiseAlliesAtkDef1"
  m.description "The user properly coaches its ally Pokémon, boosting their Attack and Defense stats."
end

GameData::Move.define :NORETREAT do |m|
  m.name "No Retreat"
  m.type :FIGHTING
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :User
  m.function_code "RaiseUserMainStats1TrapUserInBattle"
  m.description "This move raises all the user's stats but prevents the user from switching out or fleeing."
end

GameData::Move.define :OCTOLOCK do |m|
  m.name "Octolock"
  m.type :FIGHTING
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "TrapTargetInBattleLowerTargetDefSpDef1EachTurn"
  m.description "Locks the target in and prevents it from fleeing. Also lowers the target's Defense and Sp. Def each turn."
end

GameData::Move.define :TRIPLEARROWS do |m|
  m.name "Triple Arrows"
  m.type :FIGHTING
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetDefense1FlinchTarget"
  m.effect_chance 100
  m.description "The user fires arrows which may lower the target’s Defense or make it flinch. Critical hits land more easily."
end

GameData::Move.define :VICTORYDANCE do |m|
  m.name "Victory Dance"
  m.type :FIGHTING
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserAtkDefSpd1"
  m.description "The user performs an intense dance to usher in victory, raising its Attack, Defense, and Speed."
end

GameData::Move.define :AXEKICK do |m|
  m.name "Axe Kick"
  m.type :FIGHTING
  m.category :Physical
  m.power 120
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "CrashDamageIfFailsConfuseTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "Performs a downward kick which may confuse the target. The user takes damage if it misses."
end

GameData::Move.define :COLLISIONCOURSE do |m|
  m.name "Collision Course"
  m.type :FIGHTING
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "IncreasePowerSuperEffective"
  m.makes_contact
  m.description "A massive prehistoric explosion. This move’s power is boosted more than usual if it’s a supereffective hit."
end

GameData::Move.define :COMBATTORQUE do |m|
  m.name "Combat Torque"
  m.type :FIGHTING
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "StarmobileParalyzeTarget"
  m.effect_chance 30
  m.description "This move is only used by a Starmobile. It may paralyze the target."
end

GameData::Move.define :UPPERHAND do |m|
  m.name "Upper Hand"
  m.type :FIGHTING
  m.category :Physical
  m.power 65
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.priority 3
  m.function_code "FlinchTargetFailsIfTargetNotUsingPriorityMove"
  m.effect_chance 100
  m.makes_contact
  m.description "An attack that hits first and makes the target flinch. Fails if the target isn't using a high priority move."
end
