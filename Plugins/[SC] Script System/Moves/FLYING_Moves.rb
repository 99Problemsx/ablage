#=============================================================================
# FLYING Type Moves
#=============================================================================

GameData::Move.define :SKYATTACK do |m|
  m.name "Sky Attack"
  m.type :FLYING
  m.category :Physical
  m.power 140
  m.accuracy 90
  m.pp 5
  m.target :Other
  m.function_code "TwoTurnAttackFlinchTarget"
  m.effect_chance 30
  m.description "A second-turn attack move where critical hits land more easily. It may also make the target flinch."
end

GameData::Move.define :BRAVEBIRD do |m|
  m.name "Brave Bird"
  m.type :FLYING
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 15
  m.target :Other
  m.function_code "RecoilThirdOfDamageDealt"
  m.makes_contact
  m.description "The user tucks in its wings and charges from a low altitude. The user also takes serious damage."
end

GameData::Move.define :HURRICANE do |m|
  m.name "Hurricane"
  m.type :FLYING
  m.category :Special
  m.power 110
  m.accuracy 70
  m.pp 10
  m.target :Other
  m.function_code "ConfuseTargetAlwaysHitsInRainHitsTargetInSky"
  m.effect_chance 30
  m.description "The user wraps its foe in a fierce wind that flies up into the sky. It may also confuse the foe."
end

GameData::Move.define :AEROBLAST do |m|
  m.name "Aeroblast"
  m.type :FLYING
  m.category :Special
  m.power 100
  m.accuracy 95
  m.pp 5
  m.target :Other
  m.function_code "None"
  m.description "A vortex of air is shot at the target to inflict damage. Critical hits land more easily."
end

GameData::Move.define :FLY do |m|
  m.name "Fly"
  m.type :FLYING
  m.category :Physical
  m.power 90
  m.accuracy 95
  m.pp 15
  m.target :Other
  m.function_code "TwoTurnAttackInvulnerableInSky"
  m.makes_contact
  m.description "The user soars, then strikes on the second turn. It can also be used for flying to any familiar town."
end

GameData::Move.define :BOUNCE do |m|
  m.name "Bounce"
  m.type :FLYING
  m.category :Physical
  m.power 85
  m.accuracy 85
  m.pp 5
  m.target :Other
  m.function_code "TwoTurnAttackInvulnerableInSkyParalyzeTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user bounces up high, then drops on the foe on the second turn. It may also paralyze the foe."
end

GameData::Move.define :DRILLPECK do |m|
  m.name "Drill Peck"
  m.type :FLYING
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 20
  m.target :Other
  m.function_code "None"
  m.makes_contact
  m.description "A corkscrewing attack with the sharp beak acting as a drill."
end

GameData::Move.define :AIRSLASH do |m|
  m.name "Air Slash"
  m.type :FLYING
  m.category :Special
  m.power 75
  m.accuracy 95
  m.pp 15
  m.target :Other
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.description "The user attacks with a blade of air that slices even the sky. It may also make the target flinch."
end

GameData::Move.define :AERIALACE do |m|
  m.name "Aerial Ace"
  m.type :FLYING
  m.category :Physical
  m.power 60
  m.accuracy 0
  m.pp 20
  m.target :Other
  m.function_code "None"
  m.makes_contact
  m.description "The user confounds the foe with speed, then slashes. The attack lands without fail."
end

GameData::Move.define :CHATTER do |m|
  m.name "Chatter"
  m.type :FLYING
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :Other
  m.function_code "ConfuseTarget"
  m.effect_chance 100
  m.sound_based
  m.description "The user attacks using a sound wave based on words it has learned. It may also confuse the target."
end

GameData::Move.define :PLUCK do |m|
  m.name "Pluck"
  m.type :FLYING
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 20
  m.target :Other
  m.function_code "UserConsumeTargetBerry"
  m.makes_contact
  m.description "The user pecks the target. If the target is holding a Berry, the user eats it and gains its effect."
end

GameData::Move.define :SKYDROP do |m|
  m.name "Sky Drop"
  m.type :FLYING
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 10
  m.target :Other
  m.function_code "TwoTurnAttackInvulnerableInSkyTargetCannotAct"
  m.makes_contact
  m.description "The user takes the foe into the sky, then drops it on the next turn. The foe cannot attack while airborne."
end

GameData::Move.define :WINGATTACK do |m|
  m.name "Wing Attack"
  m.type :FLYING
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 35
  m.target :Other
  m.function_code "None"
  m.makes_contact
  m.description "The target is struck with large, imposing wings spread wide to inflict damage."
end

GameData::Move.define :ACROBATICS do |m|
  m.name "Acrobatics"
  m.type :FLYING
  m.category :Physical
  m.power 55
  m.accuracy 100
  m.pp 15
  m.target :Other
  m.function_code "DoublePowerIfUserHasNoItem"
  m.makes_contact
  m.description "The user nimbly strikes the foe. This attack does more damage if the user is not holding an item."
end

GameData::Move.define :AIRCUTTER do |m|
  m.name "Air Cutter"
  m.type :FLYING
  m.category :Special
  m.power 60
  m.accuracy 95
  m.pp 25
  m.target :AllNearFoes
  m.function_code "None"
  m.description "The user launches razor-like wind to slash the opposing team. Critical hits land more easily."
end

GameData::Move.define :GUST do |m|
  m.name "Gust"
  m.type :FLYING
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 35
  m.target :Other
  m.function_code "DoublePowerIfTargetInSky"
  m.description "A gust of wind is whipped up by wings and launched at the target to inflict damage."
end

GameData::Move.define :PECK do |m|
  m.name "Peck"
  m.type :FLYING
  m.category :Physical
  m.power 35
  m.accuracy 100
  m.pp 35
  m.target :Other
  m.function_code "None"
  m.makes_contact
  m.description "The target is jabbed with a sharply pointed beak or horn."
end

GameData::Move.define :DEFOG do |m|
  m.name "Defog"
  m.type :FLYING
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetEvasion1RemoveSideEffects"
  m.description "A strong wind blows away the foe's obstacles such as Light Screen. It also lowers their evasion."
end

GameData::Move.define :FEATHERDANCE do |m|
  m.name "Feather Dance"
  m.type :FLYING
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetAttack2"
  m.description "The user covers the target's body with a mass of down that harshly lowers its Attack stat."
end

GameData::Move.define :MIRRORMOVE do |m|
  m.name "Mirror Move"
  m.type :FLYING
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "UseLastMoveUsedByTarget"
  m.description "The user counters the target by mimicking the target's last move."
end

GameData::Move.define :ROOST do |m|
  m.name "Roost"
  m.type :FLYING
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserHalfOfTotalHPLoseFlyingTypeThisTurn"
  m.description "The user lands and rests its body. It restores the user's HP by up to half of its max HP."
end

GameData::Move.define :TAILWIND do |m|
  m.name "Tailwind"
  m.type :FLYING
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :UserSide
  m.function_code "StartUserSideDoubleSpeed"
  m.description "The user whips up a turbulent whirlwind that ups the Speed of all party Pokémon for four turns."
end

GameData::Move.define :DRAGONASCENT do |m|
  m.name "Dragon Ascent"
  m.type :FLYING
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserDefSpDef1"
  m.makes_contact
  m.description "The user soars upward and drops at high speeds. Its Defense and Sp. Def stats are lowered."
end

GameData::Move.define :OBLIVIONWING do |m|
  m.name "Oblivion Wing"
  m.type :FLYING
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :Other
  m.function_code "HealUserByThreeQuartersOfDamageDone"
  m.description "The user absorbs its target's HP. The user's HP is restored by over half of the damage dealt."
end

GameData::Move.define :BEAKBLAST do |m|
  m.name "Beak Blast"
  m.type :FLYING
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.priority -3
  m.function_code "BurnAttackerBeforeUserActs"
  m.description "The user heats up its beak before attacking. Making contact in this time results in a burn."
end

GameData::Move.define :DUALWINGBEAT do |m|
  m.name "Dual Wingbeat"
  m.type :FLYING
  m.category :Physical
  m.power 40
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoTimes"
  m.makes_contact
  m.description "The user slams the target with its wings. The target is hit twice in a row."
end

GameData::Move.define :BLEAKWINDSTORM do |m|
  m.name "Bleakwind Storm"
  m.type :FLYING
  m.category :Special
  m.power 100
  m.accuracy 80
  m.pp 10
  m.target :AllNearFoes
  m.function_code "LowerTargetSpeed1AlwaysHitsInRain"
  m.effect_chance 30
  m.description "The user attacks with cold winds that cause opposing Pokémon to tremble. This may lower their Speed stats."
end
