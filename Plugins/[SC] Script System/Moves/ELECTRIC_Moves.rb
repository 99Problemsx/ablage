#=============================================================================
# ELECTRIC Type Moves
#=============================================================================

GameData::Move.define :BOLTSTRIKE do |m|
  m.name "Bolt Strike"
  m.type :ELECTRIC
  m.category :Physical
  m.power 130
  m.accuracy 85
  m.pp 5
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 20
  m.makes_contact
  m.description "The user charges at its foe, surrounding itself with lightning. It may also leave the target paralyzed."
end

GameData::Move.define :THUNDER do |m|
  m.name "Thunder"
  m.type :ELECTRIC
  m.category :Special
  m.power 110
  m.accuracy 70
  m.pp 10
  m.target :NearOther
  m.function_code "ParalyzeTargetAlwaysHitsInRainHitsTargetInSky"
  m.effect_chance 30
  m.description "A wicked thunderbolt is dropped on the foe to inflict damage. It may also leave the target paralyzed."
end

GameData::Move.define :VOLTTACKLE do |m|
  m.name "Volt Tackle"
  m.type :ELECTRIC
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RecoilThirdOfDamageDealtParalyzeTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The user electrifies itself, then charges at the foe. It causes considerable damage to the user as well."
end

GameData::Move.define :ZAPCANNON do |m|
  m.name "Zap Cannon"
  m.type :ELECTRIC
  m.category :Special
  m.power 120
  m.accuracy 50
  m.pp 5
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 100
  m.description "The user fires an electric blast like a cannon to inflict damage and cause paralysis."
end

GameData::Move.define :FUSIONBOLT do |m|
  m.name "Fusion Bolt"
  m.type :ELECTRIC
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "DoublePowerAfterFusionFlare"
  m.description "The user throws down a giant thunderbolt. It does more damage if influenced by an enormous flame."
end

GameData::Move.define :THUNDERBOLT do |m|
  m.name "Thunderbolt"
  m.type :ELECTRIC
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 10
  m.description "A strong electric blast is loosed at the target. It may also leave the target with paralysis."
end

GameData::Move.define :WILDCHARGE do |m|
  m.name "Wild Charge"
  m.type :ELECTRIC
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RecoilQuarterOfDamageDealt"
  m.makes_contact
  m.description "The user shrouds itself in electricity and smashes into its foe. It also damages the user a little."
end

GameData::Move.define :DISCHARGE do |m|
  m.name "Discharge"
  m.type :ELECTRIC
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :AllNearOthers
  m.function_code "ParalyzeTarget"
  m.effect_chance 30
  m.description "A flare of electricity is loosed to strike the area around the user. It may also cause paralysis."
end

GameData::Move.define :THUNDERPUNCH do |m|
  m.name "Thunder Punch"
  m.type :ELECTRIC
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The target is punched with an electrified fist. It may also leave the target with paralysis."
end

GameData::Move.define :VOLTSWITCH do |m|
  m.name "Volt Switch"
  m.type :ELECTRIC
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "SwitchOutUserDamagingMove"
  m.description "After making its attack, the user rushes back to switch places with a party Pokémon in waiting."
end

GameData::Move.define :SPARK do |m|
  m.name "Spark"
  m.type :ELECTRIC
  m.category :Physical
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user throws an electrically charged tackle at the target. It may also leave the target with paralysis."
end

GameData::Move.define :THUNDERFANG do |m|
  m.name "Thunder Fang"
  m.type :ELECTRIC
  m.category :Physical
  m.power 65
  m.accuracy 95
  m.pp 15
  m.target :NearOther
  m.function_code "ParalyzeFlinchTarget"
  m.effect_chance 101
  m.makes_contact
  m.description "The user bites with electrified fangs. It may also make the target flinch or leave it with paralysis."
end

GameData::Move.define :SHOCKWAVE do |m|
  m.name "Shock Wave"
  m.type :ELECTRIC
  m.category :Special
  m.power 60
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.description "The user strikes the target with a quick jolt of electricity. This attack cannot be evaded."
end

GameData::Move.define :ELECTROWEB do |m|
  m.name "Electroweb"
  m.type :ELECTRIC
  m.category :Special
  m.power 55
  m.accuracy 95
  m.pp 15
  m.target :AllNearFoes
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.description "The user captures and attacks foes by using an electric net, which lowers their Speed stat."
end

GameData::Move.define :CHARGEBEAM do |m|
  m.name "Charge Beam"
  m.type :ELECTRIC
  m.category :Special
  m.power 50
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "RaiseUserSpAtk1"
  m.effect_chance 70
  m.description "The user fires a concentrated bundle of electricity. It may also raise the user's Sp. Atk stat."
end

GameData::Move.define :THUNDERSHOCK do |m|
  m.name "Thunder Shock"
  m.type :ELECTRIC
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 10
  m.description "A jolt of electricity is hurled at the foe to inflict damage. It may also leave the target with paralysis."
end

GameData::Move.define :ELECTROBALL do |m|
  m.name "Electro Ball"
  m.type :ELECTRIC
  m.category :Special
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "PowerHigherWithUserFasterThanTarget"
  m.description "The user hurls an electric orb at the foe. It does more damage the faster the user is."
end

GameData::Move.define :CHARGE do |m|
  m.name "Charge"
  m.type :ELECTRIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserSpDef1PowerUpElectricMove"
  m.description "The user boosts the power of the Electric move it uses next. It also raises the user's Sp. Def stat."
end

GameData::Move.define :MAGNETRISE do |m|
  m.name "Magnet Rise"
  m.type :ELECTRIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "StartUserAirborne"
  m.description "The user levitates using electrically generated magnetism for five turns."
end

GameData::Move.define :THUNDERWAVE do |m|
  m.name "Thunder Wave"
  m.type :ELECTRIC
  m.category :Status
  m.accuracy 90
  m.pp 20
  m.target :NearOther
  m.function_code "ParalyzeTargetIfNotTypeImmune"
  m.description "A weak electric charge is launched at the target. It causes paralysis if it hits."
end

GameData::Move.define :PARABOLICCHARGE do |m|
  m.name "Parabolic Charge"
  m.type :ELECTRIC
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :AllNearOthers
  m.function_code "HealUserByHalfOfDamageDone"
  m.description "The user attacks everything around it. The user's HP is restored by half the damage dealt."
end

GameData::Move.define :NUZZLE do |m|
  m.name "Nuzzle"
  m.type :ELECTRIC
  m.category :Physical
  m.power 20
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 100
  m.makes_contact
  m.description "The user nuzzles its electrified cheeks against the target. This also leaves the target with paralysis."
end

GameData::Move.define :EERIEIMPULSE do |m|
  m.name "Eerie Impulse"
  m.type :ELECTRIC
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetSpAtk2"
  m.description "The user's body generates an eerie impulse. Harshly lowers the target's Sp. Atk stat."
end

GameData::Move.define :ELECTRICTERRAIN do |m|
  m.name "Electric Terrain"
  m.type :ELECTRIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "StartElectricTerrain"
  m.description "The user electrifies the ground for five turns. Pokémon on the ground no longer fall asleep."
end

GameData::Move.define :ELECTRIFY do |m|
  m.name "Electrify"
  m.type :ELECTRIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "TargetMovesBecomeElectric"
  m.description "If the target uses a move after being electrified, that move becomes Electric-type."
end

GameData::Move.define :IONDELUGE do |m|
  m.name "Ion Deluge"
  m.type :ELECTRIC
  m.category :Status
  m.accuracy 0
  m.pp 25
  m.target :BothSides
  m.priority 1
  m.function_code "NormalMovesBecomeElectric"
  m.description "The user disperses electrically charged particles. Normal-type moves become Electric-type."
end

GameData::Move.define :MAGNETICFLUX do |m|
  m.name "Magnetic Flux"
  m.type :ELECTRIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :UserAndAllies
  m.function_code "RaisePlusMinusUserAndAlliesDefSpDef1"
  m.description "Manipulates magnetic fields to raise the Defense and Sp. Def stats of allies with Plus or Minus Abilities."
end

GameData::Move.define :PLASMAFISTS do |m|
  m.name "Plasma Fists"
  m.type :ELECTRIC
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "NormalMovesBecomeElectric"
  m.makes_contact
  m.description "The user attacks with electrically charged fists. Normal-type moves become Electric-type."
end

GameData::Move.define :ZINGZAP do |m|
  m.name "Zing Zap"
  m.type :ELECTRIC
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "A strong electric blast crashes down on the target. This may also make the target flinch."
end

GameData::Move.define :AURAWHEEL do |m|
  m.name "Aura Wheel"
  m.type :ELECTRIC
  m.category :Physical
  m.power 110
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TypeDependsOnUserMorpekoFormRaiseUserSpeed1"
  m.effect_chance 100
  m.description "Morpeko attacks and raises its Speed with energy stored in its cheeks. Type changes with the user's form."
end

GameData::Move.define :BOLTBEAK do |m|
  m.name "Bolt Beak"
  m.type :ELECTRIC
  m.category :Physical
  m.power 85
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetNotActed"
  m.makes_contact
  m.description "Stabs the target with an electrified beak. Power is doubled if the user attacks first."
end

GameData::Move.define :OVERDRIVE do |m|
  m.name "Overdrive"
  m.type :ELECTRIC
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "None"
  m.sound_based
  m.description "The user attacks all foes by twanging a guitar or bass guitar, causing a huge echo and strong vibration."
end

GameData::Move.define :THUNDERCAGE do |m|
  m.name "Thunder Cage"
  m.type :ELECTRIC
  m.category :Special
  m.power 80
  m.accuracy 90
  m.pp 15
  m.target :NearOther
  m.function_code "BindTarget"
  m.description "The user traps the target in a cage of sparking electricity for four to five turns."
end

GameData::Move.define :RISINGVOLTAGE do |m|
  m.name "Rising Voltage"
  m.type :ELECTRIC
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "DoublePowerInElectricTerrain"
  m.description "The user attacks with electric voltage rising from the ground. Power is doubled on Electric Terrain."
end

GameData::Move.define :WILDBOLTSTORM do |m|
  m.name "Wildbolt Storm"
  m.type :ELECTRIC
  m.category :Special
  m.power 100
  m.accuracy 80
  m.pp 10
  m.target :AllNearFoes
  m.function_code "ParalyzeTargetAlwaysHitsInRain"
  m.effect_chance 20
  m.description "The user attacks opposing Pokémon with a thunderous tempest. This may also leave them paralyzed."
end

GameData::Move.define :DOUBLESHOCK do |m|
  m.name "Double Shock"
  m.type :ELECTRIC
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "UserLosesElectricType"
  m.makes_contact
  m.description "The user attacks by discharging all of its electricity. The user will no longer be Electric type."
end

GameData::Move.define :ELECTRODRIFT do |m|
  m.name "Electro Drift"
  m.type :ELECTRIC
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "IncreasePowerSuperEffective"
  m.makes_contact
  m.description "A futuristic electric strike. This move’s power is boosted more than usual if it’s a supereffective hit."
end

GameData::Move.define :ELECTROSHOT do |m|
  m.name "Electro Shot"
  m.type :ELECTRIC
  m.category :Special
  m.power 130
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TwoTurnAttackOneTurnInRainRaiseUserSpAtk1"
  m.effect_chance 100
  m.description "A two-turn attack. The user boosts its Sp. Atk and then fires a high-voltage shot."
end

GameData::Move.define :THUNDERCLAP do |m|
  m.name "Thunderclap"
  m.type :ELECTRIC
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.priority 1
  m.function_code "FailsIfTargetActed"
  m.description "This move enables the user to attack first. It fails if the target is not readying an attack, however."
end

GameData::Move.define :SUPERCELLSLAM do |m|
  m.name "Supercell Slam"
  m.type :ELECTRIC
  m.category :Physical
  m.power 100
  m.accuracy 95
  m.pp 15
  m.target :NearOther
  m.function_code "CrashDamageIfFails"
  m.makes_contact
  m.description "The user drops onto the target with its electrified body. If it misses, the user is hurt instead."
end
