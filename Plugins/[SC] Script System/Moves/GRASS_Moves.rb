#=============================================================================
# GRASS Type Moves
#=============================================================================

GameData::Move.define :FRENZYPLANT do |m|
  m.name "Frenzy Plant"
  m.type :GRASS
  m.category :Special
  m.power 150
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.description "The user slams the target with an enormous tree. The user can't move on the next turn."
end

GameData::Move.define :LEAFSTORM do |m|
  m.name "Leaf Storm"
  m.type :GRASS
  m.category :Special
  m.power 130
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserSpAtk2"
  m.description "A storm of sharp is whipped up. The attack's recoil harshly reduces the user's Sp. Atk stat."
end

GameData::Move.define :PETALDANCE do |m|
  m.name "Petal Dance"
  m.type :GRASS
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 10
  m.target :RandomNearFoe
  m.function_code "MultiTurnAttackConfuseUserAtEnd"
  m.makes_contact
  m.description "The user attacks by scattering petals for two to three turns. The user then becomes confused."
end

GameData::Move.define :POWERWHIP do |m|
  m.name "Power Whip"
  m.type :GRASS
  m.category :Physical
  m.power 120
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user violently whirls its vines or tentacles to harshly lash the target."
end

GameData::Move.define :SEEDFLARE do |m|
  m.name "Seed Flare"
  m.type :GRASS
  m.category :Special
  m.power 120
  m.accuracy 85
  m.pp 5
  m.target :NearOther
  m.function_code "LowerTargetSpDef2"
  m.effect_chance 40
  m.description "The user generates a shock wave from within its body. It may harshly lower the target's Sp. Def."
end

GameData::Move.define :SOLARBEAM do |m|
  m.name "Solar Beam"
  m.type :GRASS
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TwoTurnAttackOneTurnInSun"
  m.description "A two-turn attack. The user gathers light, then blasts a bundled beam on the second turn."
end

GameData::Move.define :WOODHAMMER do |m|
  m.name "Wood Hammer"
  m.type :GRASS
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RecoilThirdOfDamageDealt"
  m.makes_contact
  m.description "The user slams its rugged body into the target to attack. The user also sustains serious damage."
end

GameData::Move.define :LEAFBLADE do |m|
  m.name "Leaf Blade"
  m.type :GRASS
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user handles a sharp leaf like a sword and attacks by slashing. It has a high critical-hit ratio."
end

GameData::Move.define :ENERGYBALL do |m|
  m.name "Energy Ball"
  m.type :GRASS
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 10
  m.description "The user draws power from nature and fires it at the target. It may also lower the target's Sp. Def."
end

GameData::Move.define :SEEDBOMB do |m|
  m.name "Seed Bomb"
  m.type :GRASS
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "None"
  m.description "The user slams a barrage of hard-shelled seeds down on the target from above."
end

GameData::Move.define :GIGADRAIN do |m|
  m.name "Giga Drain"
  m.type :GRASS
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HealUserByHalfOfDamageDone"
  m.description "A nutrient-draining attack. The user's HP is restored by half the damage taken by the target."
end

GameData::Move.define :HORNLEECH do |m|
  m.name "Horn Leech"
  m.type :GRASS
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HealUserByHalfOfDamageDone"
  m.makes_contact
  m.description "The user drains the foe's energy with its horns. The user's HP is restored by half the damage inflicted."
end

GameData::Move.define :LEAFTORNADO do |m|
  m.name "Leaf Tornado"
  m.type :GRASS
  m.category :Special
  m.power 65
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.effect_chance 50
  m.description "The user attacks its foe by encircling it in sharp leaves. This attack may also lower the foe's accuracy."
end

GameData::Move.define :MAGICALLEAF do |m|
  m.name "Magical Leaf"
  m.type :GRASS
  m.category :Special
  m.power 60
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.description "The user scatters curious leaves that chase the target. This attack will not miss."
end

GameData::Move.define :NEEDLEARM do |m|
  m.name "Needle Arm"
  m.type :GRASS
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user attacks by wildly swinging its thorny arms. It may also make the target flinch."
end

GameData::Move.define :RAZORLEAF do |m|
  m.name "Razor Leaf"
  m.type :GRASS
  m.category :Physical
  m.power 55
  m.accuracy 95
  m.pp 25
  m.target :AllNearFoes
  m.function_code "None"
  m.description "Sharp-edged leaves are launched to slash at the opposing team. Critical hits land more easily."
end

GameData::Move.define :GRASSPLEDGE do |m|
  m.name "Grass Pledge"
  m.type :GRASS
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "GrassPledge"
  m.description "A column of grass hits the foes. When used with its water equivalent, it creates a vast swamp."
end

GameData::Move.define :MEGADRAIN do |m|
  m.name "Mega Drain"
  m.type :GRASS
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "HealUserByHalfOfDamageDone"
  m.description "A nutrient-draining attack. The user's HP is restored by half the damage taken by the target."
end

GameData::Move.define :VINEWHIP do |m|
  m.name "Vine Whip"
  m.type :GRASS
  m.category :Physical
  m.power 45
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is struck with slender, whiplike vines to inflict damage."
end

GameData::Move.define :BULLETSEED do |m|
  m.name "Bullet Seed"
  m.type :GRASS
  m.category :Physical
  m.power 25
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.description "The user forcefully shoots seeds at the target. Two to five seeds are shot in rapid succession."
end

GameData::Move.define :ABSORB do |m|
  m.name "Absorb"
  m.type :GRASS
  m.category :Special
  m.power 20
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "HealUserByHalfOfDamageDone"
  m.description "A nutrient-draining attack. The user's HP is restored by half the damage taken by the target."
end

GameData::Move.define :GRASSKNOT do |m|
  m.name "Grass Knot"
  m.type :GRASS
  m.category :Special
  m.power 1
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PowerHigherWithTargetWeight"
  m.makes_contact
  m.description "The user snares the target with grass and trips it. The heavier the target, the greater the damage."
end

GameData::Move.define :AROMATHERAPY do |m|
  m.name "Aromatherapy"
  m.type :GRASS
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :UserAndAllies
  m.function_code "CureUserPartyStatus"
  m.description "The user releases a soothing scent that heals all status problems affecting the user's party."
end

GameData::Move.define :COTTONGUARD do |m|
  m.name "Cotton Guard"
  m.type :GRASS
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserDefense3"
  m.description "The user protects itself by wrapping its body in soft cotton, drastically raising its Defense stat."
end

GameData::Move.define :COTTONSPORE do |m|
  m.name "Cotton Spore"
  m.type :GRASS
  m.category :Status
  m.accuracy 100
  m.pp 40
  m.target :AllNearFoes
  m.function_code "LowerTargetSpeed2"
  m.description "The user releases cotton-like spores that cling to the foe, harshly reducing its Speed stat."
end

GameData::Move.define :GRASSWHISTLE do |m|
  m.name "Grass Whistle"
  m.type :GRASS
  m.category :Status
  m.accuracy 55
  m.pp 15
  m.target :NearOther
  m.function_code "SleepTarget"
  m.description "The user plays a pleasant melody that lulls the target into a deep sleep."
end

GameData::Move.define :INGRAIN do |m|
  m.name "Ingrain"
  m.type :GRASS
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "StartHealUserEachTurnTrapUserInBattle"
  m.description "The user lays roots that restore its HP on every turn. Because it is rooted, it can't switch out."
end

GameData::Move.define :LEECHSEED do |m|
  m.name "Leech Seed"
  m.type :GRASS
  m.category :Status
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "StartLeechSeedTarget"
  m.description "A seed is planted on the target. It steals some HP from the target every turn."
end

GameData::Move.define :SLEEPPOWDER do |m|
  m.name "Sleep Powder"
  m.type :GRASS
  m.category :Status
  m.accuracy 75
  m.pp 15
  m.target :NearOther
  m.function_code "SleepTarget"
  m.description "The user scatters a big cloud of sleep-inducing dust around the target."
end

GameData::Move.define :SPORE do |m|
  m.name "Spore"
  m.type :GRASS
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "SleepTarget"
  m.description "The user scatters bursts of spores that induce sleep."
end

GameData::Move.define :STUNSPORE do |m|
  m.name "Stun Spore"
  m.type :GRASS
  m.category :Status
  m.accuracy 75
  m.pp 30
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.description "The user scatters a cloud of paralyzing powder. It may leave the target with paralysis."
end

GameData::Move.define :SYNTHESIS do |m|
  m.name "Synthesis"
  m.type :GRASS
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :User
  m.function_code "HealUserDependingOnWeather"
  m.description "The user restores its own HP. The amount of HP regained varies with the weather."
end

GameData::Move.define :WORRYSEED do |m|
  m.name "Worry Seed"
  m.type :GRASS
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "SetTargetAbilityToInsomnia"
  m.description "A seed that causes worry is planted on the foe. It prevents sleep by making its Ability Insomnia."
end

GameData::Move.define :PETALBLIZZARD do |m|
  m.name "Petal Blizzard"
  m.type :GRASS
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :AllNearOthers
  m.function_code "None"
  m.description "The user stirs up a violent petal blizzard and attacks everything around it."
end

GameData::Move.define :FORESTSCURSE do |m|
  m.name "Forest's Curse"
  m.type :GRASS
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "AddGrassTypeToTarget"
  m.description "The user puts a forest curse on the target. The target is now Grass type as well."
end

GameData::Move.define :GRASSYTERRAIN do |m|
  m.name "Grassy Terrain"
  m.type :GRASS
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "StartGrassyTerrain"
  m.description "The user turns the ground to grass for five turns. Grounded Pokémon restore a little HP every turn."
end

GameData::Move.define :SPIKYSHIELD do |m|
  m.name "Spiky Shield"
  m.type :GRASS
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "ProtectUserFromTargetingMovesSpikyShield"
  m.description "Protects the user from attacks. Also damages attackers that make contact with the user."
end

GameData::Move.define :SOLARBLADE do |m|
  m.name "Solar Blade"
  m.type :GRASS
  m.category :Physical
  m.power 125
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TwoTurnAttackOneTurnInSun"
  m.makes_contact
  m.description "The user gathers light energy into a blade, attacking the target on the next turn."
end

GameData::Move.define :TROPKICK do |m|
  m.name "Trop Kick"
  m.type :GRASS
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetAttack1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user lands an intense tropical kick on the target. This also lowers the target's Attack stat."
end

GameData::Move.define :LEAFAGE do |m|
  m.name "Leafage"
  m.type :GRASS
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 40
  m.target :NearOther
  m.function_code "None"
  m.description "The user attacks by pelting the target with leaves."
end

GameData::Move.define :STRENGTHSAP do |m|
  m.name "Strength Sap"
  m.type :GRASS
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HealUserByTargetAttackLowerTargetAttack1"
  m.description "The user restores its HP by the target's Attack stat amount. Then lowers the target's Attack stat."
end

GameData::Move.define :APPLEACID do |m|
  m.name "Apple Acid"
  m.type :GRASS
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 100
  m.description "Attacks with an acidic liquid created from tart apples. This also lowers the target's Sp. Def."
end

GameData::Move.define :DRUMBEATING do |m|
  m.name "Drum Beating"
  m.type :GRASS
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.description "The user plays its drum, controlling roots to attack. This also lowers the target's Speed stat."
end

GameData::Move.define :GRAVAPPLE do |m|
  m.name "Grav Apple"
  m.type :GRASS
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetDefense1PowersUpInGravity"
  m.effect_chance 100
  m.description "The user inflicts damage by dropping an apple from high above. This also lowers the target's Defense."
end

GameData::Move.define :GRASSYGLIDE do |m|
  m.name "Grassy Glide"
  m.type :GRASS
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "HigherPriorityInGrassyTerrain"
  m.makes_contact
  m.description "Gliding on the ground, the user attacks the target. This move always goes first on Grassy Terrain."
end

GameData::Move.define :BRANCHPOKE do |m|
  m.name "Branch Poke"
  m.type :GRASS
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 40
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user attacks the target by poking it with a sharply pointed branch."
end

GameData::Move.define :SNAPTRAP do |m|
  m.name "Snap Trap"
  m.type :GRASS
  m.category :Physical
  m.power 35
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "BindTarget"
  m.makes_contact
  m.description "The user snares the target in a snap trap for four to five turns."
end

GameData::Move.define :JUNGLEHEALING do |m|
  m.name "Jungle Healing"
  m.type :GRASS
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :UserAndAllies
  m.function_code "HealUserAndAlliesQuarterOfTotalHPCureStatus"
  m.description "The user becomes one with the jungle, and restores HP and cures status conditions of itself and allies."
end

GameData::Move.define :CHLOROBLAST do |m|
  m.name "Chloroblast"
  m.type :GRASS
  m.category :Special
  m.power 150
  m.accuracy 95
  m.pp 5
  m.target :NearOther
  m.function_code "RecoilHalfOfTotalHP"
  m.description "The user launches its amassed chlorophyll to inflict damage on the target. This also damages the user."
end

GameData::Move.define :FLOWERTRICK do |m|
  m.name "Flower Trick"
  m.type :GRASS
  m.category :Physical
  m.power 70
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "AlwaysCriticalHit"
  m.description "The user throws a rigged bouquet of flowers at the target, which always hits and lands a critical hit."
end

GameData::Move.define :SPICYEXTRACT do |m|
  m.name "Spicy Extract"
  m.type :GRASS
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "RaiseTargetAtkLowerTargetDef2"
  m.description "Emits a spicy extract which raises the target’s Attack and lowers Defense by two stages each."
end

GameData::Move.define :TRAILBLAZE do |m|
  m.name "Trailblaze"
  m.type :GRASS
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "RaiseUserSpeed1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user attacks suddenly as if leaping out from tall grass. This boosts the user's Speed stat."
end

GameData::Move.define :MATCHAGOTCHA do |m|
  m.name "Matcha Gotcha"
  m.type :GRASS
  m.category :Special
  m.power 80
  m.accuracy 90
  m.pp 15
  m.target :AllNearFoes
  m.function_code "HealUserByHalfOfDamageDoneBurnTarget"
  m.effect_chance 20
  m.description "Blasts opponents with hot tea. Heals the user by half the damage dealt and may also burn targets."
end

GameData::Move.define :SYRUPBOMB do |m|
  m.name "Syrup Bomb"
  m.type :GRASS
  m.category :Special
  m.power 60
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpeedOverTime"
  m.effect_chance 100
  m.description "An explosion of sticky candy syrup, which drop the target's Speed stat each turn for three turns."
end

GameData::Move.define :IVYCUDGEL do |m|
  m.name "Ivy Cudgel"
  m.type :GRASS
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TypeIsUserSecondType"
  m.description "An ivy-wrapped cudgel strike with a high critical-hit ratio. Type changes based on the user's Mask."
end
