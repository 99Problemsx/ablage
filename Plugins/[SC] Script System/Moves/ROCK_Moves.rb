#=============================================================================
# ROCK Type Moves
#=============================================================================

GameData::Move.define :HEADSMASH do |m|
  m.name "Head Smash"
  m.type :ROCK
  m.category :Physical
  m.power 150
  m.accuracy 80
  m.pp 5
  m.target :NearOther
  m.function_code "RecoilHalfOfDamageDealt"
  m.makes_contact
  m.description "The user attacks the foe with a hazardous, full-power headbutt. The user also takes terrible damage."
end

GameData::Move.define :ROCKWRECKER do |m|
  m.name "Rock Wrecker"
  m.type :ROCK
  m.category :Physical
  m.power 150
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.description "The user launches a huge boulder at the target to attack. It must rest on the next turn, however."
end

GameData::Move.define :STONEEDGE do |m|
  m.name "Stone Edge"
  m.type :ROCK
  m.category :Physical
  m.power 100
  m.accuracy 80
  m.pp 5
  m.target :NearOther
  m.function_code "None"
  m.description "The user stabs the foe with sharpened stones from below. It has a high critical-hit ratio."
end

GameData::Move.define :ROCKSLIDE do |m|
  m.name "Rock Slide"
  m.type :ROCK
  m.category :Physical
  m.power 75
  m.accuracy 90
  m.pp 10
  m.target :AllNearFoes
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.description "Large boulders are hurled at the foes to inflict damage. It may also make the targets flinch."
end

GameData::Move.define :POWERGEM do |m|
  m.name "Power Gem"
  m.type :ROCK
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.description "The user attacks with a ray of light that sparkles as if it were made of gemstones."
end

GameData::Move.define :ANCIENTPOWER do |m|
  m.name "Ancient Power"
  m.type :ROCK
  m.category :Special
  m.power 60
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "RaiseUserMainStats1"
  m.effect_chance 10
  m.description "The user attacks with a prehistoric power. It may also raise all the user's stats at once."
end

GameData::Move.define :ROCKTHROW do |m|
  m.name "Rock Throw"
  m.type :ROCK
  m.category :Physical
  m.power 50
  m.accuracy 90
  m.pp 15
  m.target :NearOther
  m.function_code "None"
  m.description "The user picks up and throws a small rock at the target to attack."
end

GameData::Move.define :ROCKTOMB do |m|
  m.name "Rock Tomb"
  m.type :ROCK
  m.category :Physical
  m.power 60
  m.accuracy 95
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.description "Boulders are hurled at the target. It also lowers the target's Speed by preventing its movement."
end

GameData::Move.define :SMACKDOWN do |m|
  m.name "Smack Down"
  m.type :ROCK
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "HitsTargetInSkyGroundsTarget"
  m.description "The user throws a stone or projectile to attack. A flying Pokémon will fall to the ground when hit."
end

GameData::Move.define :ROLLOUT do |m|
  m.name "Rollout"
  m.type :ROCK
  m.category :Physical
  m.power 30
  m.accuracy 90
  m.pp 20
  m.target :NearOther
  m.function_code "MultiTurnAttackPowersUpEachTurn"
  m.makes_contact
  m.description "The user continually rolls into the target over five turns. It becomes stronger each time it hits."
end

GameData::Move.define :ROCKBLAST do |m|
  m.name "Rock Blast"
  m.type :ROCK
  m.category :Physical
  m.power 25
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.description "The user hurls hard rocks at the target. Two to five rocks are launched in quick succession."
end

GameData::Move.define :ROCKPOLISH do |m|
  m.name "Rock Polish"
  m.type :ROCK
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserSpeed2"
  m.description "The user polishes its body to reduce drag. It can sharply raise the Speed stat."
end

GameData::Move.define :SANDSTORM do |m|
  m.name "Sandstorm"
  m.type :ROCK
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "StartSandstormWeather"
  m.description "Summons a five-turn sandstorm to hurt all combatants except the Rock, Ground, and Steel types."
end

GameData::Move.define :STEALTHROCK do |m|
  m.name "Stealth Rock"
  m.type :ROCK
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :FoeSide
  m.function_code "AddStealthRocksToFoeSide"
  m.description "The user lays a trap of levitating stones around the foe. The trap hurts foes that switch into battle."
end

GameData::Move.define :WIDEGUARD do |m|
  m.name "Wide Guard"
  m.type :ROCK
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :UserSide
  m.priority 3
  m.function_code "ProtectUserSideFromMultiTargetDamagingMoves"
  m.description "The user and its allies are protected from wide-ranging attacks for a turn. May fail if used in succession."
end

GameData::Move.define :DIAMONDSTORM do |m|
  m.name "Diamond Storm"
  m.type :ROCK
  m.category :Physical
  m.power 100
  m.accuracy 95
  m.pp 5
  m.target :AllNearFoes
  m.function_code "RaiseUserDefense2"
  m.effect_chance 50
  m.description "The user whips up a storm of diamonds to damage foes. This may also sharply raise the user's Defense stat."
end

GameData::Move.define :ACCELEROCK do |m|
  m.name "Accelerock"
  m.type :ROCK
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.makes_contact
  m.description "The user smashes into the target at high speed. This move always goes first."
end

GameData::Move.define :METEORBEAM do |m|
  m.name "Meteor Beam"
  m.type :ROCK
  m.category :Special
  m.power 120
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "TwoTurnAttackChargeRaiseUserSpAtk1"
  m.description "Gathers space power and boosts its Sp. Atk stat on the first turn, attacks on the next turn."
end

GameData::Move.define :TARSHOT do |m|
  m.name "Tar Shot"
  m.type :ROCK
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetSpeed1MakeTargetWeakerToFire"
  m.description "Pours sticky tar over the target, lowering its Speed and making it weaker to Fire-type moves."
end

GameData::Move.define :STONEAXE do |m|
  m.name "Stone Axe"
  m.type :ROCK
  m.category :Physical
  m.power 65
  m.accuracy 90
  m.pp 15
  m.target :NearOther
  m.function_code "SplintersTargetGen8AddStealthRocksGen9"
  m.effect_chance 100
  m.makes_contact
  m.description "The user swings at the opponent with its stone axes. May leave floating rocks around the target."
end

GameData::Move.define :SALTCURE do |m|
  m.name "Salt Cure"
  m.type :ROCK
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "StartSaltCureTarget"
  m.effect_chance 100
  m.description "The user salt cures the target, inflicting damage every turn. Steel and Water types take more damage."
end

GameData::Move.define :MIGHTYCLEAVE do |m|
  m.name "Mighty Cleave"
  m.type :ROCK
  m.category :Physical
  m.power 95
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user cleaves the target. This move hits even if the target protects itself."
end
