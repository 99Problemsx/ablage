#=============================================================================
# STEEL Type Moves
#=============================================================================

GameData::Move.define :DOOMDESIRE do |m|
  m.name "Doom Desire"
  m.type :STEEL
  m.category :Special
  m.power 140
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "AttackTwoTurnsLater"
  m.description "Two turns after this move is used, the user blasts the target with a concentrated bundle of light."
end

GameData::Move.define :IRONTAIL do |m|
  m.name "Iron Tail"
  m.type :STEEL
  m.category :Physical
  m.power 100
  m.accuracy 75
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 30
  m.makes_contact
  m.description "The target is slammed with a steel-hard tail. It may also lower the target's Defense stat."
end

GameData::Move.define :METEORMASH do |m|
  m.name "Meteor Mash"
  m.type :STEEL
  m.category :Physical
  m.power 90
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "RaiseUserAttack1"
  m.effect_chance 20
  m.makes_contact
  m.description "The target is hit with a hard punch fired like a meteor. It may also raise the user's Attack."
end

GameData::Move.define :FLASHCANNON do |m|
  m.name "Flash Cannon"
  m.type :STEEL
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 10
  m.description "The user gathers all its light energy and releases it at once. It may also lower the target's Sp. Def stat."
end

GameData::Move.define :IRONHEAD do |m|
  m.name "Iron Head"
  m.type :STEEL
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The foe slams the target with its steel-hard head. It may also make the target flinch."
end

GameData::Move.define :STEELWING do |m|
  m.name "Steel Wing"
  m.type :STEEL
  m.category :Physical
  m.power 70
  m.accuracy 90
  m.pp 25
  m.target :NearOther
  m.function_code "RaiseUserDefense1"
  m.effect_chance 10
  m.makes_contact
  m.description "The target is hit with wings of steel. It may also raise the user's Defense stat."
end

GameData::Move.define :MIRRORSHOT do |m|
  m.name "Mirror Shot"
  m.type :STEEL
  m.category :Special
  m.power 65
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.effect_chance 30
  m.description "The user looses a flash of energy from its polished body. It may also lower the target's accuracy."
end

GameData::Move.define :MAGNETBOMB do |m|
  m.name "Magnet Bomb"
  m.type :STEEL
  m.category :Physical
  m.power 60
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.description "The user launches steel bombs that stick to the target. This attack will not miss."
end

GameData::Move.define :GEARGRIND do |m|
  m.name "Gear Grind"
  m.type :STEEL
  m.category :Physical
  m.power 50
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "HitTwoTimes"
  m.makes_contact
  m.description "The user attacks by throwing two steel gears at its target."
end

GameData::Move.define :METALCLAW do |m|
  m.name "Metal Claw"
  m.type :STEEL
  m.category :Physical
  m.power 50
  m.accuracy 95
  m.pp 35
  m.target :NearOther
  m.function_code "RaiseUserAttack1"
  m.effect_chance 10
  m.makes_contact
  m.description "The target is raked with steel claws. It may also raise the user's Attack stat."
end

GameData::Move.define :BULLETPUNCH do |m|
  m.name "Bullet Punch"
  m.type :STEEL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.makes_contact
  m.description "The user strikes the target with tough punches as fast as bullets. This move always goes first."
end

GameData::Move.define :GYROBALL do |m|
  m.name "Gyro Ball"
  m.type :STEEL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "PowerHigherWithTargetFasterThanUser"
  m.makes_contact
  m.description "The user tackles the target with a high-speed spin. The slower the user, the greater the damage."
end

GameData::Move.define :HEAVYSLAM do |m|
  m.name "Heavy Slam"
  m.type :STEEL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "PowerHigherWithUserHeavierThanTarget"
  m.makes_contact
  m.description "The user slams into the foe with its heavy body. The heavier the user, the greater the damage."
end

GameData::Move.define :METALBURST do |m|
  m.name "Metal Burst"
  m.type :STEEL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :None
  m.function_code "CounterDamagePlusHalf"
  m.description "The user retaliates with much greater power against the target that last inflicted damage on it."
end

GameData::Move.define :AUTOTOMIZE do |m|
  m.name "Autotomize"
  m.type :STEEL
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :User
  m.function_code "RaiseUserSpeed2LowerUserWeight"
  m.description "The user sheds part of its body to make itself lighter and sharply raise its Speed stat."
end

GameData::Move.define :IRONDEFENSE do |m|
  m.name "Iron Defense"
  m.type :STEEL
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :User
  m.function_code "RaiseUserDefense2"
  m.description "The user hardens its body's surface like iron, sharply raising its Defense stat."
end

GameData::Move.define :METALSOUND do |m|
  m.name "Metal Sound"
  m.type :STEEL
  m.category :Status
  m.accuracy 85
  m.pp 40
  m.target :NearOther
  m.function_code "LowerTargetSpDef2"
  m.description "A horrible sound like scraping metal harshly reduces the target's Sp. Def stat."
end

GameData::Move.define :SHIFTGEAR do |m|
  m.name "Shift Gear"
  m.type :STEEL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserAtk1Spd2"
  m.description "The user rotates its gears, raising its Attack and sharply raising its Speed."
end

GameData::Move.define :KINGSSHIELD do |m|
  m.name "King's Shield"
  m.type :STEEL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "ProtectUserFromDamagingMovesKingsShield"
  m.description "Protects itself from damage. It also harshly lowers the Attack of attackers that make contact."
end

GameData::Move.define :SUNSTEELSTRIKE do |m|
  m.name "Sunsteel Strike"
  m.type :STEEL
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "IgnoreTargetAbility"
  m.makes_contact
  m.description "The user slams into the target with the force of a meteor. Can't be stopped by the target's Ability."
end

GameData::Move.define :ANCHORSHOT do |m|
  m.name "Anchor Shot"
  m.type :STEEL
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "TrapTargetInBattle"
  m.effect_chance 100
  m.makes_contact
  m.description "The user entangles the target with its anchor chain. The target becomes unable to flee."
end

GameData::Move.define :SMARTSTRIKE do |m|
  m.name "Smart Strike"
  m.type :STEEL
  m.category :Physical
  m.power 70
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user stabs the target with a sharp horn. This attack never misses."
end

GameData::Move.define :DOUBLEIRONBASH do |m|
  m.name "Double Iron Bash"
  m.type :STEEL
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "HitTwoTimesFlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user rotates, centering the hex nut in its chest, and then strikes twice. May cause flinching."
end

GameData::Move.define :GEARUP do |m|
  m.name "Gear Up"
  m.type :STEEL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :UserAndAllies
  m.function_code "RaisePlusMinusUserAndAlliesAtkSpAtk1"
  m.description "The user engages its gears to raise the Attack and Sp. Atk of allies with the Plus or Minus Ability."
end

GameData::Move.define :STEELBEAM do |m|
  m.name "Steel Beam"
  m.type :STEEL
  m.category :Special
  m.power 140
  m.accuracy 95
  m.pp 5
  m.target :NearOther
  m.function_code "UserLosesHalfOfTotalHP"
  m.description "The user fires a beam of steel that it collected from its entire body. This also damages the user."
end

GameData::Move.define :STEELROLLER do |m|
  m.name "Steel Roller"
  m.type :STEEL
  m.category :Physical
  m.power 130
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "RemoveTerrain"
  m.makes_contact
  m.description "The user attacks while destroying the terrain. This move fails when the ground isn't a terrain."
end

GameData::Move.define :BEHEMOTHBASH do |m|
  m.name "Behemoth Bash"
  m.type :STEEL
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "DoubleDamageOnDynamaxTargets"
  m.makes_contact
  m.description "The user becomes a gigantic shield and slams into the target."
end

GameData::Move.define :BEHEMOTHBLADE do |m|
  m.name "Behemoth Blade"
  m.type :STEEL
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "DoubleDamageOnDynamaxTargets"
  m.makes_contact
  m.description "The user becomes a gigantic sword and cuts the target."
end

GameData::Move.define :SHELTER do |m|
  m.name "Shelter"
  m.type :STEEL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserDefense2"
  m.description "The user makes its skin as hard as an iron shield, sharply boosting its Defense stat."
end

GameData::Move.define :GIGATONHAMMER do |m|
  m.name "Gigaton Hammer"
  m.type :STEEL
  m.category :Physical
  m.power 160
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "CantSelectConsecutiveTurns"
  m.description "The user attacks with its huge hammer. This move can’t be used twice in a row."
end

GameData::Move.define :MAKEITRAIN do |m|
  m.name "Make It Rain"
  m.type :STEEL
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :AllNearFoes
  m.function_code "AddMoneyGainedFromBattleLowerUserSpAtk1"
  m.description "The user throws out a huge mass of coins, lowering its Sp. Atk stat. Money is earned after the battle."
end

GameData::Move.define :SPINOUT do |m|
  m.name "Spin Out"
  m.type :STEEL
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserSpeed2"
  m.makes_contact
  m.description "The user inflicts damage on the target with a furious spin. This harshly lowers the user’s Speed."
end

GameData::Move.define :TACHYONCUTTER do |m|
  m.name "Tachyon Cutter"
  m.type :STEEL
  m.category :Special
  m.power 50
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoTimes"
  m.description "The user attacks by launching particle blades at the target twice in a row. This attack never misses."
end

GameData::Move.define :HARDPRESS do |m|
  m.name "Hard Press"
  m.type :STEEL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "PowerHigherWithTargetHP100PowerRange"
  m.makes_contact
  m.description "The target is crushed with great force. The attack is more powerful the more HP the target has left."
end
