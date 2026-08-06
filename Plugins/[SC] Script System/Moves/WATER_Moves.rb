#=============================================================================
# WATER Type Moves
#=============================================================================

GameData::Move.define :HYDROCANNON do |m|
  m.name "Hydro Cannon"
  m.type :WATER
  m.category :Special
  m.power 150
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.description "The target is hit with a watery blast. The user must rest on the next turn, however."
end

GameData::Move.define :WATERSPOUT do |m|
  m.name "Water Spout"
  m.type :WATER
  m.category :Special
  m.power 150
  m.accuracy 100
  m.pp 5
  m.target :AllNearFoes
  m.function_code "PowerHigherWithUserHP"
  m.description "The user spouts water to damage the foe. The lower the user's HP, the less powerful it becomes."
end

GameData::Move.define :HYDROPUMP do |m|
  m.name "Hydro Pump"
  m.type :WATER
  m.category :Special
  m.power 110
  m.accuracy 80
  m.pp 5
  m.target :NearOther
  m.function_code "None"
  m.description "The target is blasted by a huge volume of water launched under great pressure."
end

GameData::Move.define :MUDDYWATER do |m|
  m.name "Muddy Water"
  m.type :WATER
  m.category :Special
  m.power 90
  m.accuracy 85
  m.pp 10
  m.target :AllNearFoes
  m.function_code "LowerTargetAccuracy1"
  m.effect_chance 30
  m.description "The user attacks by shooting muddy water at the opposing team. It may also lower the target's accuracy."
end

GameData::Move.define :SURF do |m|
  m.name "Surf"
  m.type :WATER
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :AllNearOthers
  m.function_code "DoublePowerIfTargetUnderwater"
  m.description "It swamps the area around the user with a giant wave. It can also be used for crossing water."
end

GameData::Move.define :AQUATAIL do |m|
  m.name "Aqua Tail"
  m.type :WATER
  m.category :Physical
  m.power 90
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user attacks by swinging its tail as if it were a vicious wave in a raging storm."
end

GameData::Move.define :CRABHAMMER do |m|
  m.name "Crabhammer"
  m.type :WATER
  m.category :Physical
  m.power 100
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is hammered with a large pincer. Critical hits land more easily."
end

GameData::Move.define :DIVE do |m|
  m.name "Dive"
  m.type :WATER
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TwoTurnAttackInvulnerableUnderwater"
  m.makes_contact
  m.description "Diving on the first turn, the user rises and hits on the next turn. It can be used to dive in the ocean."
end

GameData::Move.define :SCALD do |m|
  m.name "Scald"
  m.type :WATER
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 30
  m.description "The user shoots boiling hot water at its target. It may also leave the target with a burn."
end

GameData::Move.define :WATERFALL do |m|
  m.name "Waterfall"
  m.type :WATER
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 20
  m.makes_contact
  m.description "The user charges at the target and may make it flinch. It can also be used to climb a waterfall."
end

GameData::Move.define :RAZORSHELL do |m|
  m.name "Razor Shell"
  m.type :WATER
  m.category :Physical
  m.power 75
  m.accuracy 95
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 50
  m.makes_contact
  m.description "The user cuts the foe with sharp shells. It may also lower the target's Defense stat."
end

GameData::Move.define :BRINE do |m|
  m.name "Brine"
  m.type :WATER
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetHPLessThanHalf"
  m.description "If the target's HP is down to about half, this attack will hit with double the power."
end

GameData::Move.define :BUBBLEBEAM do |m|
  m.name "Bubble Beam"
  m.type :WATER
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 10
  m.description "A spray of bubbles is forcefully ejected at the target. It may also lower its Speed stat."
end

GameData::Move.define :OCTAZOOKA do |m|
  m.name "Octazooka"
  m.type :WATER
  m.category :Special
  m.power 65
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.effect_chance 50
  m.description "The user attacks by spraying ink in the foe's face or eyes. It may also lower the target's accuracy."
end

GameData::Move.define :WATERPULSE do |m|
  m.name "Water Pulse"
  m.type :WATER
  m.category :Special
  m.power 60
  m.accuracy 100
  m.pp 20
  m.target :Other
  m.function_code "ConfuseTarget"
  m.effect_chance 20
  m.description "The user attacks the target with a pulsing blast of water. It may also confuse the target."
end

GameData::Move.define :WATERPLEDGE do |m|
  m.name "Water Pledge"
  m.type :WATER
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "WaterPledge"
  m.description "A column of water strikes the target. When combined with its fire equivalent, it makes a rainbow."
end

GameData::Move.define :AQUAJET do |m|
  m.name "Aqua Jet"
  m.type :WATER
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.makes_contact
  m.description "The user lunges at the target at a speed that makes it almost invisible. It is sure to strike first."
end

GameData::Move.define :WATERGUN do |m|
  m.name "Water Gun"
  m.type :WATER
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "None"
  m.description "The target is blasted with a forceful shot of water."
end

GameData::Move.define :CLAMP do |m|
  m.name "Clamp"
  m.type :WATER
  m.category :Physical
  m.power 35
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "BindTarget"
  m.makes_contact
  m.description "The target is clamped and squeezed by the user's very thick and sturdy shell for four to five turns."
end

GameData::Move.define :WHIRLPOOL do |m|
  m.name "Whirlpool"
  m.type :WATER
  m.category :Special
  m.power 35
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "BindTargetDoublePowerIfTargetUnderwater"
  m.description "Traps foes in a violent swirling whirlpool for four to five turns."
end

GameData::Move.define :BUBBLE do |m|
  m.name "Bubble"
  m.type :WATER
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :AllNearFoes
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 10
  m.description "A spray of countless bubbles is jetted at the opposing team. It may also lower the targets' Speed stats."
end

GameData::Move.define :AQUARING do |m|
  m.name "Aqua Ring"
  m.type :WATER
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "StartHealUserEachTurn"
  m.description "The user envelops itself in a veil made of water. It regains some HP on every turn."
end

GameData::Move.define :RAINDANCE do |m|
  m.name "Rain Dance"
  m.type :WATER
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :BothSides
  m.function_code "StartRainWeather"
  m.description "The user summons a heavy rain that falls for five turns, powering up Water-type moves."
end

GameData::Move.define :SOAK do |m|
  m.name "Soak"
  m.type :WATER
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "SetTargetTypesToWater"
  m.description "The user shoots a torrent of water at the target and changes the target's type to Water."
end

GameData::Move.define :WATERSPORT do |m|
  m.name "Water Sport"
  m.type :WATER
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :BothSides
  m.function_code "StartWeakenFireMoves"
  m.description "The user soaks itself with water. The move weakens Fire-type moves while the user is in the battle."
end

GameData::Move.define :WITHDRAW do |m|
  m.name "Withdraw"
  m.type :WATER
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :User
  m.function_code "RaiseUserDefense1"
  m.description "The user withdraws its body into its hard shell, raising its Defense stat."
end

GameData::Move.define :ORIGINPULSE do |m|
  m.name "Origin Pulse"
  m.type :WATER
  m.category :Special
  m.power 110
  m.accuracy 85
  m.pp 10
  m.target :AllNearFoes
  m.function_code "None"
  m.description "The user attacks opposing Pokémon with countless beams of light that glow a deep and brilliant blue."
end

GameData::Move.define :STEAMERUPTION do |m|
  m.name "Steam Eruption"
  m.type :WATER
  m.category :Special
  m.power 110
  m.accuracy 95
  m.pp 5
  m.target :NearOther
  m.function_code "BurnTarget"
  m.effect_chance 30
  m.description "The user immerses the target in superheated steam. This may also leave the target with a burn."
end

GameData::Move.define :WATERSHURIKEN do |m|
  m.name "Water Shuriken"
  m.type :WATER
  m.category :Special
  m.power 15
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.priority 1
  m.function_code "HitTwoToFiveTimesOrThreeForAshGreninja"
  m.description "The user hits the target with throwing stars 2-5 times in a row. This move always goes first."
end

GameData::Move.define :SPARKLINGARIA do |m|
  m.name "Sparkling Aria"
  m.type :WATER
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :AllNearOthers
  m.function_code "CureTargetBurn"
  m.effect_chance 100
  m.sound_based
  m.description "The user bursts into song, emitting many bubbles. Any burnt Pokémon will be healed by these bubbles."
end

GameData::Move.define :LIQUIDATION do |m|
  m.name "Liquidation"
  m.type :WATER
  m.category :Physical
  m.power 85
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 20
  m.makes_contact
  m.description "The user slams into the target using a full-force blast of water. May lower the target's Defense."
end

GameData::Move.define :FISHIOUSREND do |m|
  m.name "Fishious Rend"
  m.type :WATER
  m.category :Physical
  m.power 85
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetNotActed"
  m.makes_contact
  m.description "The user rends the target with its hard gills. Power doubles if the user moves first."
end

GameData::Move.define :SNIPESHOT do |m|
  m.name "Snipe Shot"
  m.type :WATER
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "CannotBeRedirected"
  m.description "The user ignores any effects that redirect moves, allowing this move to hit the chosen target."
end

GameData::Move.define :FLIPTURN do |m|
  m.name "Flip Turn"
  m.type :WATER
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "SwitchOutUserDamagingMove"
  m.makes_contact
  m.description "After making its attack, the user rushes back to switch places with a party Pokémon in waiting."
end

GameData::Move.define :SURGINGSTRIKES do |m|
  m.name "Surging Strikes"
  m.type :WATER
  m.category :Physical
  m.power 25
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "HitThreeTimesAlwaysCriticalHit"
  m.makes_contact
  m.description "Hits three times in a row with mastery of the Water style. This attack always deals critical hits."
end

GameData::Move.define :LIFEDEW do |m|
  m.name "Life Dew"
  m.type :WATER
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :UserAndAllies
  m.function_code "HealUserAndAlliesQuarterOfTotalHP"
  m.description "The user scatters mysterious water around and restores the HP of itself and its allies."
end

GameData::Move.define :WAVECRASH do |m|
  m.name "Wave Crash"
  m.type :WATER
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "RecoilThirdOfDamageDealt"
  m.effect_chance 100
  m.makes_contact
  m.description "The user shrouds itself in water and slams into the target. This also damages the user."
end

GameData::Move.define :AQUACUTTER do |m|
  m.name "Aqua Cutter"
  m.type :WATER
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.description "The user expels pressurized water to cut at the target like a blade. Critical hits land more easily."
end

GameData::Move.define :AQUASTEP do |m|
  m.name "Aqua Step"
  m.type :WATER
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "RaiseUserSpeed1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user attacks the target using light and fluid dance steps. This also boosts the user’s Speed stat."
end

GameData::Move.define :CHILLINGWATER do |m|
  m.name "Chilling Water"
  m.type :WATER
  m.category :Special
  m.power 50
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAttack1"
  m.effect_chance 100
  m.description "The user showers the target with frigid water. This also lowers the target's Attack stat."
end

GameData::Move.define :JETPUNCH do |m|
  m.name "Jet Punch"
  m.type :WATER
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.makes_contact
  m.description "The user summons a torrent around its fist and punches at blinding speed. Always goes first."
end

GameData::Move.define :TRIPLEDIVE do |m|
  m.name "Triple Dive"
  m.type :WATER
  m.category :Physical
  m.power 30
  m.accuracy 95
  m.pp 10
  m.target :NearOther
  m.function_code "HitThreeTimes"
  m.makes_contact
  m.description "The user performs a perfectly timed triple dive, hitting the target three times in a row."
end

GameData::Move.define :HYDROSTEAM do |m|
  m.name "Hydro Steam"
  m.type :WATER
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "IncreasePowerInSunWeather"
  m.description "The user blasts the target with boiling-hot water whose power is boosted in harsh sunlight."
end
