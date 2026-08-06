#=============================================================================
# ICE Type Moves
#=============================================================================

GameData::Move.define :FREEZESHOCK do |m|
  m.name "Freeze Shock"
  m.type :ICE
  m.category :Physical
  m.power 140
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "TwoTurnAttackParalyzeTarget"
  m.effect_chance 30
  m.description "On the second turn, the user hits the foe with electrically charged ice. It may also paralyze the foe."
end

GameData::Move.define :ICEBURN do |m|
  m.name "Ice Burn"
  m.type :ICE
  m.category :Special
  m.power 140
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "TwoTurnAttackBurnTarget"
  m.effect_chance 30
  m.description "On the second turn, an ultracold, freezing wind surrounds the foe. This may leave it with a burn."
end

GameData::Move.define :BLIZZARD do |m|
  m.name "Blizzard"
  m.type :ICE
  m.category :Special
  m.power 110
  m.accuracy 70
  m.pp 5
  m.target :AllNearFoes
  m.function_code "FreezeTargetAlwaysHitsInHail"
  m.effect_chance 10
  m.description "A howling blizzard is summoned to strike the opposing team. It may also freeze them solid."
end

GameData::Move.define :ICEBEAM do |m|
  m.name "Ice Beam"
  m.type :ICE
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "FreezeTarget"
  m.effect_chance 10
  m.description "The target is struck with an icy-cold beam of energy. It may also freeze the target solid."
end

GameData::Move.define :ICICLECRASH do |m|
  m.name "Icicle Crash"
  m.type :ICE
  m.category :Physical
  m.power 85
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.description "The user attacks by harshly dropping an icicle onto the foe. It may also make the target flinch."
end

GameData::Move.define :ICEPUNCH do |m|
  m.name "Ice Punch"
  m.type :ICE
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FreezeTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The target is punched with an icy fist. It may also leave the target frozen."
end

GameData::Move.define :AURORABEAM do |m|
  m.name "Aurora Beam"
  m.type :ICE
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAttack1"
  m.effect_chance 10
  m.description "The target is hit with a rainbow-colored beam. This may also lower the target's Attack stat."
end

GameData::Move.define :GLACIATE do |m|
  m.name "Glaciate"
  m.type :ICE
  m.category :Special
  m.power 65
  m.accuracy 95
  m.pp 10
  m.target :AllNearFoes
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.description "The user attacks by blowing freezing cold air at the foe. This attack reduces the targets' Speed stat."
end

GameData::Move.define :ICEFANG do |m|
  m.name "Ice Fang"
  m.type :ICE
  m.category :Physical
  m.power 65
  m.accuracy 95
  m.pp 15
  m.target :NearOther
  m.function_code "FreezeFlinchTarget"
  m.effect_chance 101
  m.makes_contact
  m.description "The user bites with cold-infused fangs. It may also make the target flinch or leave it frozen."
end

GameData::Move.define :AVALANCHE do |m|
  m.name "Avalanche"
  m.type :ICE
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

GameData::Move.define :ICYWIND do |m|
  m.name "Icy Wind"
  m.type :ICE
  m.category :Special
  m.power 55
  m.accuracy 95
  m.pp 15
  m.target :AllNearFoes
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.description "The user attacks with a gust of chilled air. It also lowers the targets' Speed stat."
end

GameData::Move.define :FROSTBREATH do |m|
  m.name "Frost Breath"
  m.type :ICE
  m.category :Special
  m.power 60
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "AlwaysCriticalHit"
  m.description "The user blows a cold breath on the target. This attack always results in a critical hit."
end

GameData::Move.define :ICESHARD do |m|
  m.name "Ice Shard"
  m.type :ICE
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.description "The user flash freezes chunks of ice and hurls them at the target. This move always goes first."
end

GameData::Move.define :POWDERSNOW do |m|
  m.name "Powder Snow"
  m.type :ICE
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 25
  m.target :AllNearFoes
  m.function_code "FreezeTarget"
  m.effect_chance 10
  m.description "The user attacks with a chilling gust of powdery snow. It may also freeze the targets."
end

GameData::Move.define :ICEBALL do |m|
  m.name "Ice Ball"
  m.type :ICE
  m.category :Physical
  m.power 30
  m.accuracy 90
  m.pp 20
  m.target :NearOther
  m.function_code "MultiTurnAttackPowersUpEachTurn"
  m.makes_contact
  m.description "The user continually rolls into the target over five turns. It becomes stronger each time it hits."
end

GameData::Move.define :ICICLESPEAR do |m|
  m.name "Icicle Spear"
  m.type :ICE
  m.category :Physical
  m.power 25
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.description "The user launches sharp icicles at the target. It strikes two to five times in a row."
end

GameData::Move.define :SHEERCOLD do |m|
  m.name "Sheer Cold"
  m.type :ICE
  m.category :Special
  m.power 1
  m.accuracy 30
  m.pp 5
  m.target :NearOther
  m.function_code "OHKOIce"
  m.description "The foe is attacked with a blast of absolute-zero cold. The target instantly faints if it hits."
end

GameData::Move.define :HAIL do |m|
  m.name "Hail"
  m.type :ICE
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "StartHailWeather"
  m.description "The user summons a hail storm lasting five turns. It damages all Pokémon except the Ice type."
end

GameData::Move.define :HAZE do |m|
  m.name "Haze"
  m.type :ICE
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :BothSides
  m.function_code "ResetAllBattlersStatStages"
  m.description "The user creates a haze that eliminates every stat change among all the Pokémon engaged in battle."
end

GameData::Move.define :MIST do |m|
  m.name "Mist"
  m.type :ICE
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :UserSide
  m.function_code "StartUserSideImmunityToStatStageLowering"
  m.description "The user cloaks its body with a white mist that prevents any of its stats from being cut for five turns."
end

GameData::Move.define :FREEZEDRY do |m|
  m.name "Freeze-Dry"
  m.type :ICE
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "FreezeTargetSuperEffectiveAgainstWater"
  m.effect_chance 10
  m.description "The user rapidly cools the target. This may freeze the target. Is super-effective on Water types."
end

GameData::Move.define :ICEHAMMER do |m|
  m.name "Ice Hammer"
  m.type :ICE
  m.category :Physical
  m.power 100
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "LowerUserSpeed1"
  m.makes_contact
  m.description "The user swings and hits with its strong, heavy fist. It lowers the user's Speed, however."
end

GameData::Move.define :AURORAVEIL do |m|
  m.name "Aurora Veil"
  m.type :ICE
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :UserSide
  m.function_code "StartWeakenDamageAgainstUserSideIfHail"
  m.description "This move reduces damage from attacks for five turns. This can be used only in a hailstorm."
end

GameData::Move.define :GLACIALLANCE do |m|
  m.name "Glacial Lance"
  m.type :ICE
  m.category :Physical
  m.power 130
  m.accuracy 100
  m.pp 5
  m.target :AllNearFoes
  m.function_code "None"
  m.description "The user attacks by hurling a blizzard-cloaked icicle lance at opposing Pokémon."
end

GameData::Move.define :TRIPLEAXEL do |m|
  m.name "Triple Axel"
  m.type :ICE
  m.category :Physical
  m.power 20
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "HitThreeTimesPowersUpWithEachHit"
  m.makes_contact
  m.description "A consecutive three-kick attack that becomes more powerful with each successful hit."
end

GameData::Move.define :MOUNTAINGALE do |m|
  m.name "Mountain Gale"
  m.type :ICE
  m.category :Physical
  m.power 100
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.description "The user hurls giant chunks of ice at the target. This may also make the target flinch."
end

GameData::Move.define :CHILLYRECEPTION do |m|
  m.name "Chilly Reception"
  m.type :ICE
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "SwitchOutUserStartHailWeather"
  m.description "The user tells a chillingly bad joke and switches out. This summons a snowstorm lasting five turns."
end

GameData::Move.define :ICESPINNER do |m|
  m.name "Ice Spinner"
  m.type :ICE
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RemoveTerrainIceSpinner"
  m.makes_contact
  m.description "The user spins into the target with feet covered in thin ice. This also destroys the terrain."
end

GameData::Move.define :SNOWSCAPE do |m|
  m.name "Snowscape"
  m.type :ICE
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "StartHailWeather"
  m.description "Summons a five-turn snowstorm that boosts the Defense of Ice-type Pokémon."
end
