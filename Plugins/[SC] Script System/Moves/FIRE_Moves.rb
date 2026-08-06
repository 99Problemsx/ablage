#=============================================================================
# FIRE Type Moves
#=============================================================================

GameData::Move.define :VCREATE do |m|
  m.name "V-create"
  m.type :FIRE
  m.category :Physical
  m.power 180
  m.accuracy 95
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserDefSpDefSpd1"
  m.makes_contact
  m.description "With a fiery forehead, the user hurls itself at the foe. It lowers the user's Defense, Sp. Def, and Speed."
end

GameData::Move.define :BLASTBURN do |m|
  m.name "Blast Burn"
  m.type :FIRE
  m.category :Special
  m.power 150
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.description "The target is razed by a fiery explosion. The user must rest on the next turn, however."
end

GameData::Move.define :ERUPTION do |m|
  m.name "Eruption"
  m.type :FIRE
  m.category :Special
  m.power 150
  m.accuracy 100
  m.pp 5
  m.target :AllNearFoes
  m.function_code "PowerHigherWithUserHP"
  m.description "The user attacks in an explosive fury. The lower the user's HP, the less powerful this attack becomes."
end

GameData::Move.define :OVERHEAT do |m|
  m.name "Overheat"
  m.type :FIRE
  m.category :Special
  m.power 130
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserSpAtk2"
  m.description "The user attacks the target at full power. The attack's recoil sharply reduces the user's Sp. Atk stat."
end

GameData::Move.define :BLUEFLARE do |m|
  m.name "Blue Flare"
  m.type :FIRE
  m.category :Special
  m.power 130
  m.accuracy 85
  m.pp 5
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 20
  m.description "The user attacks by engulfing the foe in a beautiful, yet intense, blue flame. It may also burn the foe."
end

GameData::Move.define :FIREBLAST do |m|
  m.name "Fire Blast"
  m.type :FIRE
  m.category :Special
  m.power 110
  m.accuracy 85
  m.pp 5
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.description "The foe is attacked with an intense blast of all-consuming fire. It may also leave the target with a burn."
end

GameData::Move.define :FLAREBLITZ do |m|
  m.name "Flare Blitz"
  m.type :FIRE
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RecoilThirdOfDamageDealtBurnTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The user cloaks itself in fire and charges at the foe. The user also takes damage and may burn the target."
end

GameData::Move.define :MAGMASTORM do |m|
  m.name "Magma Storm"
  m.type :FIRE
  m.category :Special
  m.power 100
  m.accuracy 75
  m.pp 5
  m.target :NearOther
  m.function_code "BindTarget"
  m.description "The target becomes trapped within a maelstrom of fire that rages for four to five turns."
end

GameData::Move.define :FUSIONFLARE do |m|
  m.name "Fusion Flare"
  m.type :FIRE
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "DoublePowerAfterFusionBolt"
  m.description "The user brings down a giant flame. It does more damage if influenced by an enormous thunderbolt."
end

GameData::Move.define :HEATWAVE do |m|
  m.name "Heat Wave"
  m.type :FIRE
  m.category :Special
  m.power 95
  m.accuracy 90
  m.pp 10
  m.target :AllNearFoes
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.description "The user attacks by exhaling hot breath on the opposing team. It may also leave targets with a burn."
end

GameData::Move.define :INFERNO do |m|
  m.name "Inferno"
  m.type :FIRE
  m.category :Special
  m.power 100
  m.accuracy 50
  m.pp 5
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 100
  m.description "The user attacks by engulfing the target in an intense fire. It leaves the target with a burn."
end

GameData::Move.define :SACREDFIRE do |m|
  m.name "Sacred Fire"
  m.type :FIRE
  m.category :Physical
  m.power 100
  m.accuracy 95
  m.pp 5
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 50
  m.description "The target is razed with a mystical fire of great intensity. It may also leave the target with a burn."
end

GameData::Move.define :SEARINGSHOT do |m|
  m.name "Searing Shot"
  m.type :FIRE
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :AllNearOthers
  m.function_code "BurnTarget"
  m.effect_chance 30
  m.description "An inferno of scarlet flames torches everything around the user. It may leave the foe with a burn."
end

GameData::Move.define :FLAMETHROWER do |m|
  m.name "Flamethrower"
  m.type :FIRE
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.description "The target is scorched with an intense blast of fire. It may also leave the target with a burn."
end

GameData::Move.define :BLAZEKICK do |m|
  m.name "Blaze Kick"
  m.type :FIRE
  m.category :Physical
  m.power 85
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The user launches a kick with a high critical-hit ratio. It may also leave the target with a burn."
end

GameData::Move.define :FIERYDANCE do |m|
  m.name "Fiery Dance"
  m.type :FIRE
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "RaiseUserSpAtk1"
  m.effect_chance 50
  m.description "Cloaked in flames, the user dances and flaps its wings. It may also raise the user's Sp. Atk stat."
end

GameData::Move.define :LAVAPLUME do |m|
  m.name "Lava Plume"
  m.type :FIRE
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :AllNearOthers
  m.function_code "BurnTarget"
  m.effect_chance 30
  m.description "An inferno of scarlet flames torches everything around the user. It may leave targets with a burn."
end

GameData::Move.define :FIREPUNCH do |m|
  m.name "Fire Punch"
  m.type :FIRE
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The target is punched with a fiery fist. It may leave the target with a burn."
end

GameData::Move.define :FLAMEBURST do |m|
  m.name "Flame Burst"
  m.type :FIRE
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "DamageTargetAlly"
  m.description "The user attacks the foe with a bursting flame. It also damages Pokémon next to the target."
end

GameData::Move.define :FIREFANG do |m|
  m.name "Fire Fang"
  m.type :FIRE
  m.category :Physical
  m.power 65
  m.accuracy 95
  m.pp 15
  m.target :NearOther
  m.function_code "BurnFlinchTarget"
  m.effect_chance 101
  m.makes_contact
  m.description "The user bites with flame-cloaked fangs. It may also make the target flinch or leave it burned."
end

GameData::Move.define :FLAMEWHEEL do |m|
  m.name "Flame Wheel"
  m.type :FIRE
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The user cloaks itself in fire and charges at the target. It may also leave the target with a burn."
end

GameData::Move.define :FIREPLEDGE do |m|
  m.name "Fire Pledge"
  m.type :FIRE
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "FirePledge"
  m.description "A column of fire hits opposing Pokémon. When used with its Grass equivalent, it makes a sea of fire."
end

GameData::Move.define :FLAMECHARGE do |m|
  m.name "Flame Charge"
  m.type :FIRE
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "RaiseUserSpeed1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user cloaks itself in flame and attacks. Building up more power, it raises the user's Speed stat."
end

GameData::Move.define :EMBER do |m|
  m.name "Ember"
  m.type :FIRE
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.description "The target is attacked with small flames. It may also leave the target with a burn."
end

GameData::Move.define :FIRESPIN do |m|
  m.name "Fire Spin"
  m.type :FIRE
  m.category :Special
  m.power 35
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "BindTarget"
  m.description "The target becomes trapped within a fierce vortex of fire that rages for four to five turns."
end

GameData::Move.define :INCINERATE do |m|
  m.name "Incinerate"
  m.type :FIRE
  m.category :Special
  m.power 60
  m.accuracy 100
  m.pp 15
  m.target :AllNearFoes
  m.function_code "DestroyTargetBerryOrGem"
  m.description "The user attacks the foe with fire. The target's held Berry becomes burnt up and unusable."
end

GameData::Move.define :HEATCRASH do |m|
  m.name "Heat Crash"
  m.type :FIRE
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "PowerHigherWithUserHeavierThanTarget"
  m.makes_contact
  m.description "The user slams the foe with its flaming body. The heavier the user is, the greater the damage."
end

GameData::Move.define :SUNNYDAY do |m|
  m.name "Sunny Day"
  m.type :FIRE
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :BothSides
  m.function_code "StartSunWeather"
  m.description "The user intensifies the sun for five turns, powering up Fire-type moves."
end

GameData::Move.define :WILLOWISP do |m|
  m.name "Will-O-Wisp"
  m.type :FIRE
  m.category :Status
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "BurnTarget"
  m.description "The user shoots a sinister, bluish-white flame at the target to inflict a burn."
end

GameData::Move.define :MYSTICALFIRE do |m|
  m.name "Mystical Fire"
  m.type :FIRE
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpAtk1"
  m.effect_chance 100
  m.description "The user attacks by breathing a special, hot fire. This also lowers the target's Sp. Atk stat."
end

GameData::Move.define :MINDBLOWN do |m|
  m.name "Mind Blown"
  m.type :FIRE
  m.category :Special
  m.power 150
  m.accuracy 100
  m.pp 5
  m.target :AllNearOthers
  m.function_code "UserLosesHalfOfTotalHPExplosive"
  m.description "The user attacks everything by causing its own head to explode. This also damages the user."
end

GameData::Move.define :SHELLTRAP do |m|
  m.name "Shell Trap"
  m.type :FIRE
  m.category :Special
  m.power 150
  m.accuracy 100
  m.pp 5
  m.target :AllNearFoes
  m.priority -3
  m.function_code "UsedAfterUserTakesPhysicalDamage"
  m.description "The user sets a shell trap. If it is hit by a physical move, the trap explodes and hurt the attacker."
end

GameData::Move.define :BURNUP do |m|
  m.name "Burn Up"
  m.type :FIRE
  m.category :Special
  m.power 130
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "UserLosesFireType"
  m.description "To inflict massive damage, the user burns itself out. The user will no longer be Fire type."
end

GameData::Move.define :FIRELASH do |m|
  m.name "Fire Lash"
  m.type :FIRE
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user strikes the target with a burning lash. This also lowers the target's Defense stat."
end

GameData::Move.define :PYROBALL do |m|
  m.name "Pyro Ball"
  m.type :FIRE
  m.category :Physical
  m.power 120
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 10
  m.description "Attacks by igniting a small stone and launching it as a fiery ball. May also burn the target."
end

GameData::Move.define :BURNINGJEALOUSY do |m|
  m.name "Burning Jealousy"
  m.type :FIRE
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 5
  m.target :AllNearFoes
  m.function_code "BurnTargetIfTargetStatsRaisedThisTurn"
  m.effect_chance 100
  m.description "The user attacks with energy from jealousy. This burns all foes that had their stats boosted this turn."
end

GameData::Move.define :RAGINGFURY do |m|
  m.name "Raging Fury"
  m.type :FIRE
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 10
  m.target :RandomNearFoe
  m.function_code "MultiTurnAttackConfuseUserAtEnd"
  m.description "The user rampages around spewing flames for two to three turns. The user then becomes confused."
end

GameData::Move.define :ARMORCANNON do |m|
  m.name "Armor Cannon"
  m.type :FIRE
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserDefSpDef1"
  m.effect_chance 100
  m.description "The user shoots its own armor out as blazing projectiles. This lowers the user’s Defense and Sp. Def."
end

GameData::Move.define :BITTERBLADE do |m|
  m.name "Bitter Blade"
  m.type :FIRE
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HealUserByHalfOfDamageDone"
  m.makes_contact
  m.description "A spiteful slashing attack. The user’s HP is restored by up to half the damage taken by the target."
end

GameData::Move.define :BLAZINGTORQUE do |m|
  m.name "Blazing Torque"
  m.type :FIRE
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "StarmobileBurnTarget"
  m.effect_chance 30
  m.description "This move is only used by a Starmobile. It may leave the target with a burn."
end

GameData::Move.define :TORCHSONG do |m|
  m.name "Torch Song"
  m.type :FIRE
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "RaiseUserSpAtk1"
  m.effect_chance 100
  m.sound_based
  m.description "The user blows out raging flames as if singing a song. This also boosts the user’s Sp. Atk stat."
end

GameData::Move.define :BURNINGBULWARK do |m|
  m.name "Burning Bulwark"
  m.type :FIRE
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "ProtectUserBurningBulwark"
  m.description "Protects the user from attacks. Also burns any attacker that makes contact with the user."
end

GameData::Move.define :TEMPERFLARE do |m|
  m.name "Temper Flare"
  m.type :FIRE
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfUserLastMoveFailed"
  m.makes_contact
  m.description "The user attacks driven by frustration. Power increases if the user's previous move failed."
end
