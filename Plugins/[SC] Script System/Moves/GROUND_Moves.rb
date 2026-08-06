#=============================================================================
# GROUND Type Moves
#=============================================================================

GameData::Move.define :EARTHQUAKE do |m|
  m.name "Earthquake"
  m.type :GROUND
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 10
  m.target :AllNearOthers
  m.function_code "DoublePowerIfTargetUnderground"
  m.description "The user sets off an earthquake that strikes every Pokémon around it."
end

GameData::Move.define :EARTHPOWER do |m|
  m.name "Earth Power"
  m.type :GROUND
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 10
  m.description "The user makes the ground under the foe erupt with power. It may also lower the target's Sp. Def."
end

GameData::Move.define :DIG do |m|
  m.name "Dig"
  m.type :GROUND
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TwoTurnAttackInvulnerableUnderground"
  m.makes_contact
  m.description "The user burrows, then attacks on the second turn. It can also be used to exit dungeons."
end

GameData::Move.define :DRILLRUN do |m|
  m.name "Drill Run"
  m.type :GROUND
  m.category :Physical
  m.power 80
  m.accuracy 95
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user crashes into its target while rotating its body like a drill. Critical hits land more easily."
end

GameData::Move.define :BONECLUB do |m|
  m.name "Bone Club"
  m.type :GROUND
  m.category :Physical
  m.power 65
  m.accuracy 85
  m.pp 20
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 10
  m.description "The user clubs the target with a bone. It may also make the target flinch."
end

GameData::Move.define :MUDBOMB do |m|
  m.name "Mud Bomb"
  m.type :GROUND
  m.category :Special
  m.power 65
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.effect_chance 30
  m.description "The user launches a hard-packed mud ball to attack. It may also lower the target's accuracy."
end

GameData::Move.define :BULLDOZE do |m|
  m.name "Bulldoze"
  m.type :GROUND
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 20
  m.target :AllNearOthers
  m.function_code "LowerTargetSpeed1WeakerInGrassyTerrain"
  m.effect_chance 100
  m.description "The user strikes everything around it by stomping on the ground. It reduces hit Pokémon's Speed."
end

GameData::Move.define :MUDSHOT do |m|
  m.name "Mud Shot"
  m.type :GROUND
  m.category :Special
  m.power 55
  m.accuracy 95
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.description "The user attacks by hurling a blob of mud at the target. It also reduces the target's Speed."
end

GameData::Move.define :BONEMERANG do |m|
  m.name "Bonemerang"
  m.type :GROUND
  m.category :Physical
  m.power 50
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoTimes"
  m.description "The user throws the bone it holds. The bone loops to hit the target twice, coming and going."
end

GameData::Move.define :SANDTOMB do |m|
  m.name "Sand Tomb"
  m.type :GROUND
  m.category :Physical
  m.power 35
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "BindTarget"
  m.description "The user traps the target inside a harshly raging sandstorm for four to five turns."
end

GameData::Move.define :BONERUSH do |m|
  m.name "Bone Rush"
  m.type :GROUND
  m.category :Physical
  m.power 25
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.description "The user strikes the target with a hard bone two to five times in a row."
end

GameData::Move.define :MUDSLAP do |m|
  m.name "Mud-Slap"
  m.type :GROUND
  m.category :Special
  m.power 20
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.effect_chance 100
  m.description "The user hurls mud in the target's face to inflict damage and lower its accuracy."
end

GameData::Move.define :FISSURE do |m|
  m.name "Fissure"
  m.type :GROUND
  m.category :Physical
  m.power 1
  m.accuracy 30
  m.pp 5
  m.target :NearOther
  m.function_code "OHKOHitsUndergroundTarget"
  m.description "The user opens up a fissure in the ground and drops the foe in. The target instantly faints if it hits."
end

GameData::Move.define :MAGNITUDE do |m|
  m.name "Magnitude"
  m.type :GROUND
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 30
  m.target :AllNearOthers
  m.function_code "RandomPowerDoublePowerIfTargetUnderground"
  m.description "The user looses a ground-shaking quake affecting everyone around the user. Its power varies."
end

GameData::Move.define :MUDSPORT do |m|
  m.name "Mud Sport"
  m.type :GROUND
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :BothSides
  m.function_code "StartWeakenElectricMoves"
  m.description "The user covers itself with mud. It weakens Electric-type moves while the user is in the battle."
end

GameData::Move.define :SANDATTACK do |m|
  m.name "Sand Attack"
  m.type :GROUND
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.description "Sand is hurled in the target's face, reducing its accuracy."
end

GameData::Move.define :SPIKES do |m|
  m.name "Spikes"
  m.type :GROUND
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :FoeSide
  m.function_code "AddSpikesToFoeSide"
  m.description "The user lays a trap of spikes at the foe's feet. The trap hurts foes that switch into battle."
end

GameData::Move.define :PRECIPICEBLADES do |m|
  m.name "Precipice Blades"
  m.type :GROUND
  m.category :Physical
  m.power 120
  m.accuracy 85
  m.pp 10
  m.target :AllNearFoes
  m.function_code "None"
  m.description "The user attacks its foes by manifesting the power of the land in fearsome blades of stone."
end

GameData::Move.define :LANDSWRATH do |m|
  m.name "Land's Wrath"
  m.type :GROUND
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "None"
  m.description "The user gathers the energy of the land and focuses that power on foes to damage them."
end

GameData::Move.define :THOUSANDARROWS do |m|
  m.name "Thousand Arrows"
  m.type :GROUND
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "HitsTargetInSkyGroundsTarget"
  m.description "This move also hits Pokémon that are in the air. Those Pokémon are knocked down to the ground."
end

GameData::Move.define :THOUSANDWAVES do |m|
  m.name "Thousand Waves"
  m.type :GROUND
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "TrapTargetInBattleMainEffect"
  m.description "The user attacks with a wave that crawls along the ground. Those it hits can't flee from battle."
end

GameData::Move.define :ROTOTILLER do |m|
  m.name "Rototiller"
  m.type :GROUND
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :AllBattlers
  m.function_code "RaiseGroundedGrassBattlersAtkSpAtk1"
  m.description "The user tills the soil to encourage plant growth. This raises the Attack and Sp. Atk of Grass types."
end

GameData::Move.define :HIGHHORSEPOWER do |m|
  m.name "High Horsepower"
  m.type :GROUND
  m.category :Physical
  m.power 95
  m.accuracy 95
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user fiercely attacks the target using its entire body."
end

GameData::Move.define :STOMPINGTANTRUM do |m|
  m.name "Stomping Tantrum"
  m.type :GROUND
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfUserLastMoveFailed"
  m.makes_contact
  m.description "The user attacks driven by frustration. Power increases if the user's previous move failed."
end

GameData::Move.define :SHOREUP do |m|
  m.name "Shore Up"
  m.type :GROUND
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserDependingOnSandstorm"
  m.description "The user regains up to half of its max HP. It restores more HP in a sandstorm."
end

GameData::Move.define :SCORCHINGSANDS do |m|
  m.name "Scorching Sands"
  m.type :GROUND
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 30
  m.description "The user throws scorching sand at the target to attack. This may also burn the target."
end

GameData::Move.define :HEADLONGRUSH do |m|
  m.name "Headlong Rush"
  m.type :GROUND
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserDefSpDef1"
  m.makes_contact
  m.description "The user rams into the target in a full-body tackle. This lowers the user’s Defense and Sp. Def stats."
end

GameData::Move.define :SANDSEARSTORM do |m|
  m.name "Sandsear Storm"
  m.type :GROUND
  m.category :Special
  m.power 100
  m.accuracy 80
  m.pp 10
  m.target :AllNearFoes
  m.function_code "BurnTargetAlwaysHitsInRain"
  m.effect_chance 20
  m.description "The user wraps fierce winds and hot sand around opponents. This may leave them with a burn."
end
