#=============================================================================
# POISON Type Moves
#=============================================================================

GameData::Move.define :GUNKSHOT do |m|
  m.name "Gunk Shot"
  m.type :POISON
  m.category :Physical
  m.power 120
  m.accuracy 80
  m.pp 5
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.effect_chance 30
  m.description "The user shoots filthy garbage at the target to attack. It may also poison the target."
end

GameData::Move.define :SLUDGEWAVE do |m|
  m.name "Sludge Wave"
  m.type :POISON
  m.category :Special
  m.power 95
  m.accuracy 100
  m.pp 10
  m.target :AllNearOthers
  m.function_code "PoisonTarget"
  m.effect_chance 10
  m.description "It swamps the area around the user with a giant sludge wave. It may also poison those hit."
end

GameData::Move.define :SLUDGEBOMB do |m|
  m.name "Sludge Bomb"
  m.type :POISON
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.effect_chance 30
  m.description "Unsanitary sludge is hurled at the target. It may also poison the target."
end

GameData::Move.define :POISONJAB do |m|
  m.name "Poison Jab"
  m.type :POISON
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The target is stabbed with a tentacle or arm seeped with poison. It may also poison the target."
end

GameData::Move.define :CROSSPOISON do |m|
  m.name "Cross Poison"
  m.type :POISON
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "A slashing attack with a poisonous blade that may also poison the foe. Critical hits land more easily."
end

GameData::Move.define :SLUDGE do |m|
  m.name "Sludge"
  m.type :POISON
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.effect_chance 30
  m.description "Unsanitary sludge is hurled at the target. It may also poison the target."
end

GameData::Move.define :VENOSHOCK do |m|
  m.name "Venoshock"
  m.type :POISON
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetPoisoned"
  m.description "The user drenches the foe in a special poisonous liquid. Its power doubles if the target is poisoned."
end

GameData::Move.define :CLEARSMOG do |m|
  m.name "Clear Smog"
  m.type :POISON
  m.category :Special
  m.power 50
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "ResetTargetStatStages"
  m.description "The user attacks by throwing a clump of special mud. All status changes are returned to normal."
end

GameData::Move.define :POISONFANG do |m|
  m.name "Poison Fang"
  m.type :POISON
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "BadPoisonTarget"
  m.effect_chance 50
  m.makes_contact
  m.description "The user bites the target with toxic fangs. It may also leave the target badly poisoned."
end

GameData::Move.define :POISONTAIL do |m|
  m.name "Poison Tail"
  m.type :POISON
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The user hits the target with its tail. It may also poison the target. Critical hits land more easily."
end

GameData::Move.define :ACID do |m|
  m.name "Acid"
  m.type :POISON
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :AllNearFoes
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 10
  m.description "The foe is attacked with a spray of harsh acid. It may also lower the target's Sp. Def stat."
end

GameData::Move.define :ACIDSPRAY do |m|
  m.name "Acid Spray"
  m.type :POISON
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetSpDef2"
  m.effect_chance 100
  m.description "The user spits fluid that works to melt the target. This harshly reduces the target's Sp. Def stat."
end

GameData::Move.define :SMOG do |m|
  m.name "Smog"
  m.type :POISON
  m.category :Special
  m.power 30
  m.accuracy 70
  m.pp 20
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.effect_chance 40
  m.description "The target is attacked with a discharge of filthy gases. It may also poison the target."
end

GameData::Move.define :POISONSTING do |m|
  m.name "Poison Sting"
  m.type :POISON
  m.category :Physical
  m.power 15
  m.accuracy 100
  m.pp 35
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.effect_chance 30
  m.description "The user stabs the target with a poisonous stinger. This may also poison the target."
end

GameData::Move.define :ACIDARMOR do |m|
  m.name "Acid Armor"
  m.type :POISON
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserDefense2"
  m.description "The user alters its cellular structure to liquefy itself, sharply raising its Defense stat."
end

GameData::Move.define :COIL do |m|
  m.name "Coil"
  m.type :POISON
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserAtkDefAcc1"
  m.description "The user coils up and concentrates. This raises its Attack and Defense stats as well as its accuracy."
end

GameData::Move.define :GASTROACID do |m|
  m.name "Gastro Acid"
  m.type :POISON
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "NegateTargetAbility"
  m.description "The user hurls up its stomach acids on the foe. The fluid negates the effect of the target's Ability."
end

GameData::Move.define :POISONGAS do |m|
  m.name "Poison Gas"
  m.type :POISON
  m.category :Status
  m.accuracy 90
  m.pp 40
  m.target :AllNearFoes
  m.function_code "PoisonTarget"
  m.description "A cloud of poison gas is sprayed in the face of opposing Pokémon. It may poison those hit."
end

GameData::Move.define :POISONPOWDER do |m|
  m.name "Poison Powder"
  m.type :POISON
  m.category :Status
  m.accuracy 75
  m.pp 35
  m.target :NearOther
  m.function_code "PoisonTarget"
  m.description "The user scatters a cloud of poisonous dust on the target. It may poison the target."
end

GameData::Move.define :TOXIC do |m|
  m.name "Toxic"
  m.type :POISON
  m.category :Status
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "BadPoisonTarget"
  m.description "A move that leaves the target badly poisoned. Its poison damage worsens every turn."
end

GameData::Move.define :TOXICSPIKES do |m|
  m.name "Toxic Spikes"
  m.type :POISON
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :FoeSide
  m.function_code "AddToxicSpikesToFoeSide"
  m.description "The user lays a trap of poison spikes at the foe's feet. They poison foes that switch into battle."
end

GameData::Move.define :BELCH do |m|
  m.name "Belch"
  m.type :POISON
  m.category :Special
  m.power 120
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "FailsIfUserNotConsumedBerry"
  m.description "The user lets out a damaging belch at the target. The user must eat a held Berry to use this move."
end

GameData::Move.define :VENOMDRENCH do |m|
  m.name "Venom Drench"
  m.type :POISON
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :AllNearFoes
  m.function_code "LowerPoisonedTargetAtkSpAtkSpd1"
  m.description "Foes are drenched in an odd liquid that lowers the Attack, Sp. Atk, and Speed of poisoned Pokémon."
end

GameData::Move.define :BANEFULBUNKER do |m|
  m.name "Baneful Bunker"
  m.type :POISON
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "ProtectUserBanefulBunker"
  m.description "Protects the user from attacks. Also poisons any attacker that makes contact with the user."
end

GameData::Move.define :PURIFY do |m|
  m.name "Purify"
  m.type :POISON
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "CureTargetStatusHealUserHalfOfTotalHP"
  m.description "The user heals the target's status condition. If so, it also restores the user's own HP."
end

GameData::Move.define :TOXICTHREAD do |m|
  m.name "Toxic Thread"
  m.type :POISON
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PoisonTargetLowerTargetSpeed1"
  m.description "The user shoots poisonous threads to poison the target and lower the target's Speed stat."
end

GameData::Move.define :SHELLSIDEARM do |m|
  m.name "Shell Side Arm"
  m.type :POISON
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "CategoryDependsOnHigherDamagePoisonTarget"
  m.effect_chance 20
  m.description "Inflicts physical or special damage, whichever will be more effective. May also poison the target."
end

GameData::Move.define :CORROSIVEGAS do |m|
  m.name "Corrosive Gas"
  m.type :POISON
  m.category :Status
  m.accuracy 100
  m.pp 40
  m.target :AllNearOthers
  m.function_code "CorrodeTargetItem"
  m.description "The user surrounds everything around it with highly acidic gas and melts away items they hold."
end

GameData::Move.define :DIRECLAW do |m|
  m.name "Dire Claw"
  m.type :POISON
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "PoisonParalyzeOrSleepTarget"
  m.effect_chance 50
  m.makes_contact
  m.description "The user may critically hit with its ruinous claws. May also leave the target poisoned, paralyzed, or asleep."
end

GameData::Move.define :BARBBARRAGE do |m|
  m.name "Barb Barrage"
  m.type :POISON
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetPoisonedPoisonTarget"
  m.effect_chance 50
  m.description "Fires toxic barbs which may poison the target. Power is doubled if the target is poisoned."
end

GameData::Move.define :MORTALSPIN do |m|
  m.name "Mortal Spin"
  m.type :POISON
  m.category :Physical
  m.power 30
  m.accuracy 100
  m.pp 15
  m.target :AllNearFoes
  m.function_code "RemoveUserBindingAndEntryHazardsPoisonTarget"
  m.effect_chance 100
  m.makes_contact
  m.description "Performs a spin that eliminates certain traps and hazards. This also poisons opposing Pokémon."
end

GameData::Move.define :NOXIOUSTORQUE do |m|
  m.name "Noxious Torque"
  m.type :POISON
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "StarmobilePoisonTarget"
  m.effect_chance 30
  m.description "This move is only used by a Starmobile. It may poison the target."
end

GameData::Move.define :MALIGNANTCHAIN do |m|
  m.name "Malignant Chain"
  m.type :POISON
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "BadPoisonTarget"
  m.effect_chance 50
  m.description "Wraps the target in a toxic, corrosive chain. This may also leave the target badly poisoned."
end
