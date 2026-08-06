#=============================================================================
# NORMAL Type Moves
#=============================================================================

GameData::Move.define :EXPLOSION do |m|
  m.name "Explosion"
  m.type :NORMAL
  m.category :Physical
  m.power 250
  m.accuracy 100
  m.pp 5
  m.target :AllNearOthers
  m.function_code "UserFaintsExplosive"
  m.description "The user explodes to inflict damage on those around it. The user faints upon using this move."
end

GameData::Move.define :SELFDESTRUCT do |m|
  m.name "Self-Destruct"
  m.type :NORMAL
  m.category :Physical
  m.power 200
  m.accuracy 100
  m.pp 5
  m.target :AllNearOthers
  m.function_code "UserFaintsExplosive"
  m.description "The user blows up to inflict damage on all Pokémon in battle. The user faints upon using this move."
end

GameData::Move.define :GIGAIMPACT do |m|
  m.name "Giga Impact"
  m.type :NORMAL
  m.category :Physical
  m.power 150
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.makes_contact
  m.description "The user charges at the target using every bit of its power. The user must rest on the next turn."
end

GameData::Move.define :HYPERBEAM do |m|
  m.name "Hyper Beam"
  m.type :NORMAL
  m.category :Special
  m.power 150
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.description "The foe is attacked with a powerful beam. The user must rest on the next turn to regain its energy."
end

GameData::Move.define :LASTRESORT do |m|
  m.name "Last Resort"
  m.type :NORMAL
  m.category :Physical
  m.power 140
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "FailsIfUserHasUnusedMove"
  m.makes_contact
  m.description "This move can be used only after the user has used all the other moves it knows in the battle."
end

GameData::Move.define :DOUBLEEDGE do |m|
  m.name "Double-Edge"
  m.type :NORMAL
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RecoilThirdOfDamageDealt"
  m.makes_contact
  m.description "A reckless, life-risking tackle. It also damages the user by a fairly large amount, however."
end

GameData::Move.define :HEADCHARGE do |m|
  m.name "Head Charge"
  m.type :NORMAL
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "RecoilQuarterOfDamageDealt"
  m.makes_contact
  m.description "The user charges its head into the foe, using its powerful guard hair. The user also takes damage."
end

GameData::Move.define :MEGAKICK do |m|
  m.name "Mega Kick"
  m.type :NORMAL
  m.category :Physical
  m.power 120
  m.accuracy 75
  m.pp 5
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is attacked by a kick launched with muscle-packed power."
end

GameData::Move.define :THRASH do |m|
  m.name "Thrash"
  m.type :NORMAL
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 10
  m.target :RandomNearFoe
  m.function_code "MultiTurnAttackConfuseUserAtEnd"
  m.makes_contact
  m.description "The user rampages and attacks for two to three turns. It then becomes confused, however."
end

GameData::Move.define :EGGBOMB do |m|
  m.name "Egg Bomb"
  m.type :NORMAL
  m.category :Physical
  m.power 100
  m.accuracy 75
  m.pp 10
  m.target :NearOther
  m.function_code "None"
  m.description "A large egg is hurled at the target with maximum force to inflict damage."
end

GameData::Move.define :JUDGMENT do |m|
  m.name "Judgment"
  m.type :NORMAL
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TypeDependsOnUserPlate"
  m.description "The user releases countless shots of light. Its type varies with the kind of Plate the user is holding."
end

GameData::Move.define :SKULLBASH do |m|
  m.name "Skull Bash"
  m.type :NORMAL
  m.category :Physical
  m.power 130
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TwoTurnAttackChargeRaiseUserDefense1"
  m.makes_contact
  m.description "The user tucks in its head to raise its Defense in the first turn, then rams the foe on the next turn."
end

GameData::Move.define :HYPERVOICE do |m|
  m.name "Hyper Voice"
  m.type :NORMAL
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "None"
  m.sound_based
  m.description "The user lets loose a horribly echoing shout with the power to inflict damage."
end

GameData::Move.define :ROCKCLIMB do |m|
  m.name "Rock Climb"
  m.type :NORMAL
  m.category :Physical
  m.power 90
  m.accuracy 85
  m.pp 20
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.effect_chance 20
  m.makes_contact
  m.description "The user attacks the target by smashing into it with incredible force. It may also confuse the target."
end

GameData::Move.define :TAKEDOWN do |m|
  m.name "Take Down"
  m.type :NORMAL
  m.category :Physical
  m.power 90
  m.accuracy 85
  m.pp 20
  m.target :NearOther
  m.function_code "RecoilQuarterOfDamageDealt"
  m.makes_contact
  m.description "A reckless, full-body charge attack for slamming into the foe. It also damages the user a little."
end

GameData::Move.define :UPROAR do |m|
  m.name "Uproar"
  m.type :NORMAL
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :RandomNearFoe
  m.function_code "MultiTurnAttackPreventSleeping"
  m.sound_based
  m.description "The user attacks in an uproar for three turns. Over that time, no one can fall asleep."
end

GameData::Move.define :BODYSLAM do |m|
  m.name "Body Slam"
  m.type :NORMAL
  m.category :Physical
  m.power 85
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user drops onto the target with its full body weight. It may leave the target with paralysis."
end

GameData::Move.define :TECHNOBLAST do |m|
  m.name "Techno Blast"
  m.type :NORMAL
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "TypeDependsOnUserDrive"
  m.description "The user fires a beam of light at its target. The type changes depending on the Drive the user holds."
end

GameData::Move.define :EXTREMESPEED do |m|
  m.name "Extreme Speed"
  m.type :NORMAL
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.priority 2
  m.function_code "None"
  m.makes_contact
  m.description "The user charges the target at blinding speed. This attack always goes before any other move."
end

GameData::Move.define :HYPERFANG do |m|
  m.name "Hyper Fang"
  m.type :NORMAL
  m.category :Physical
  m.power 80
  m.accuracy 90
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 10
  m.makes_contact
  m.description "The user bites hard on the target with its sharp front fangs. It may also make the target flinch."
end

GameData::Move.define :MEGAPUNCH do |m|
  m.name "Mega Punch"
  m.type :NORMAL
  m.category :Physical
  m.power 80
  m.accuracy 85
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is slugged by a punch thrown with muscle-packed power."
end

GameData::Move.define :RAZORWIND do |m|
  m.name "Razor Wind"
  m.type :NORMAL
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "TwoTurnAttack"
  m.description "A two-turn attack. Blades of wind hit the foe on the second turn. Critical hits land more easily."
end

GameData::Move.define :SLAM do |m|
  m.name "Slam"
  m.type :NORMAL
  m.category :Physical
  m.power 80
  m.accuracy 75
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is slammed with a long tail, vines, etc., to inflict damage."
end

GameData::Move.define :STRENGTH do |m|
  m.name "Strength"
  m.type :NORMAL
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is slugged with a punch thrown at maximum power. It can also be used to move heavy boulders."
end

GameData::Move.define :TRIATTACK do |m|
  m.name "Tri Attack"
  m.type :NORMAL
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "ParalyzeBurnOrFreezeTarget"
  m.effect_chance 20
  m.description "The user strikes with a simultaneous three-beam attack. May also paralyze, burn, or freeze the target."
end

GameData::Move.define :CRUSHCLAW do |m|
  m.name "Crush Claw"
  m.type :NORMAL
  m.category :Physical
  m.power 75
  m.accuracy 95
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetDefense1"
  m.effect_chance 50
  m.makes_contact
  m.description "The user slashes the target with hard and sharp claws. It may also lower the target's Defense."
end

GameData::Move.define :RELICSONG do |m|
  m.name "Relic Song"
  m.type :NORMAL
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "SleepTargetChangeUserMeloettaForm"
  m.effect_chance 10
  m.sound_based
  m.description "An ancient song appeals to the hearts of those listening. It may also induce sleep."
end

GameData::Move.define :CHIPAWAY do |m|
  m.name "Chip Away"
  m.type :NORMAL
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "IgnoreTargetDefSpDefEvaStatStages"
  m.makes_contact
  m.description "Seeking an opening, the user strikes continually. The foe's stat changes don't affect the damage."
end

GameData::Move.define :DIZZYPUNCH do |m|
  m.name "Dizzy Punch"
  m.type :NORMAL
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.effect_chance 20
  m.makes_contact
  m.description "The target is hit with rhythmically launched punches that may also leave it confused."
end

GameData::Move.define :FACADE do |m|
  m.name "Facade"
  m.type :NORMAL
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "DoublePowerIfUserPoisonedBurnedParalyzed"
  m.makes_contact
  m.description "An attack move that doubles its power if the user is poisoned, burned, or has paralysis."
end

GameData::Move.define :HEADBUTT do |m|
  m.name "Headbutt"
  m.type :NORMAL
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user sticks out its head and attacks by charging into the foe. It may also make the target flinch."
end

GameData::Move.define :RETALIATE do |m|
  m.name "Retaliate"
  m.type :NORMAL
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "DoublePowerIfAllyFaintedLastTurn"
  m.makes_contact
  m.description "Gets revenge for a fainted ally. If an ally fainted in the last turn, this attack's damage increases."
end

GameData::Move.define :SECRETPOWER do |m|
  m.name "Secret Power"
  m.type :NORMAL
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "EffectDependsOnEnvironment"
  m.effect_chance 30
  m.description "The user attacks with a secret power. Its added effects vary depending on the user's environment."
end

GameData::Move.define :SLASH do |m|
  m.name "Slash"
  m.type :NORMAL
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is attacked with a slash of claws or blades. Critical hits land more easily."
end

GameData::Move.define :HORNATTACK do |m|
  m.name "Horn Attack"
  m.type :NORMAL
  m.category :Physical
  m.power 65
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is jabbed with a sharply pointed horn to inflict damage."
end

GameData::Move.define :STOMP do |m|
  m.name "Stomp"
  m.type :NORMAL
  m.category :Physical
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The target is stomped with a big foot. It may also make the target flinch."
end

GameData::Move.define :COVET do |m|
  m.name "Covet"
  m.type :NORMAL
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "UserTakesTargetItem"
  m.makes_contact
  m.description "The user endearingly approaches the target, then steals the target's held item."
end

GameData::Move.define :ROUND do |m|
  m.name "Round"
  m.type :NORMAL
  m.category :Special
  m.power 60
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "UsedAfterAllyRoundWithDoublePower"
  m.sound_based
  m.description "The user attacks with a song. Others can join in the Round and make the attack do greater damage."
end

GameData::Move.define :SMELLINGSALTS do |m|
  m.name "Smelling Salts"
  m.type :NORMAL
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DoublePowerIfTargetParalyzedCureTarget"
  m.makes_contact
  m.description "This attack inflicts double damage on a paralyzed foe. It also cures the target's paralysis, however."
end

GameData::Move.define :SWIFT do |m|
  m.name "Swift"
  m.type :NORMAL
  m.category :Special
  m.power 60
  m.accuracy 0
  m.pp 20
  m.target :AllNearFoes
  m.function_code "None"
  m.description "Star-shaped rays are shot at the opposing team. This attack never misses."
end

GameData::Move.define :VICEGRIP do |m|
  m.name "Vice Grip"
  m.type :NORMAL
  m.category :Physical
  m.power 55
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is gripped and squeezed from both sides to inflict damage."
end

GameData::Move.define :CUT do |m|
  m.name "Cut"
  m.type :NORMAL
  m.category :Physical
  m.power 50
  m.accuracy 95
  m.pp 30
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is cut with a scythe or a claw. It can also be used to cut down thin trees."
end

GameData::Move.define :TACKLE do |m|
  m.name "Tackle"
  m.type :NORMAL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 35
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "A physical attack in which the user charges and slams into the target with its whole body."
end

GameData::Move.define :WEATHERBALL do |m|
  m.name "Weather Ball"
  m.type :NORMAL
  m.category :Special
  m.power 50
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TypeAndPowerDependOnWeather"
  m.description "An attack move that varies in power and type depending on the weather."
end

GameData::Move.define :ECHOEDVOICE do |m|
  m.name "Echoed Voice"
  m.type :NORMAL
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "PowerHigherWithConsecutiveUseOnUserSide"
  m.sound_based
  m.description "The user attacks the foe with an echoing voice. If this move is used every turn, it does greater damage."
end

GameData::Move.define :FAKEOUT do |m|
  m.name "Fake Out"
  m.type :NORMAL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.priority 3
  m.function_code "FlinchTargetFailsIfNotUserFirstTurn"
  m.effect_chance 100
  m.makes_contact
  m.description "An attack that hits first and makes the target flinch. It only works the first turn the user is in battle."
end

GameData::Move.define :FALSESWIPE do |m|
  m.name "False Swipe"
  m.type :NORMAL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 40
  m.target :NearOther
  m.function_code "CannotMakeTargetFaint"
  m.makes_contact
  m.description "A restrained attack that prevents the target from fainting. The target is left with at least 1 HP."
end

GameData::Move.define :PAYDAY do |m|
  m.name "Pay Day"
  m.type :NORMAL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "AddMoneyGainedFromBattle"
  m.description "Numerous coins are hurled at the target to inflict damage. Money is earned after battle."
end

GameData::Move.define :POUND do |m|
  m.name "Pound"
  m.type :NORMAL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 35
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is physically pounded with a long tail or a foreleg, etc."
end

GameData::Move.define :QUICKATTACK do |m|
  m.name "Quick Attack"
  m.type :NORMAL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.priority 1
  m.function_code "None"
  m.makes_contact
  m.description "The user lunges at the target at a speed that makes it almost invisible. It is sure to strike first."
end

GameData::Move.define :SCRATCH do |m|
  m.name "Scratch"
  m.type :NORMAL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 35
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "Hard, pointed, and sharp claws rake the target to inflict damage."
end

GameData::Move.define :SNORE do |m|
  m.name "Snore"
  m.type :NORMAL
  m.category :Special
  m.power 50
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTargetFailsIfUserNotAsleep"
  m.effect_chance 30
  m.sound_based
  m.description "An attack that can be used only if the user is asleep. The harsh noise may also make the target flinch."
end

GameData::Move.define :DOUBLEHIT do |m|
  m.name "Double Hit"
  m.type :NORMAL
  m.category :Physical
  m.power 35
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoTimes"
  m.makes_contact
  m.description "The user slams the target with a long tail, vines, or tentacle. The target is hit twice in a row."
end

GameData::Move.define :FEINT do |m|
  m.name "Feint"
  m.type :NORMAL
  m.category :Physical
  m.power 30
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.priority 2
  m.function_code "RemoveProtections"
  m.description "An attack that hits a target using Protect or Detect. It also lifts the effects of those moves."
end

GameData::Move.define :TAILSLAP do |m|
  m.name "Tail Slap"
  m.type :NORMAL
  m.category :Physical
  m.power 25
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.makes_contact
  m.description "The user attacks by striking the target with its hard tail. It hits the Pokémon two to five times in a row."
end

GameData::Move.define :RAGE do |m|
  m.name "Rage"
  m.type :NORMAL
  m.category :Physical
  m.power 20
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "StartRaiseUserAtk1WhenDamaged"
  m.makes_contact
  m.description "As long as this move is in use, the user's Attack rises each time the user is hit in battle."
end

GameData::Move.define :RAPIDSPIN do |m|
  m.name "Rapid Spin"
  m.type :NORMAL
  m.category :Physical
  m.power 50
  m.accuracy 100
  m.pp 40
  m.target :NearOther
  m.function_code "RemoveUserBindingAndEntryHazards"
  m.effect_chance 100
  m.makes_contact
  m.description "A spin attack that raises the user's Speed and eliminates the effects of Bind, Spikes, etc."
end

GameData::Move.define :SPIKECANNON do |m|
  m.name "Spike Cannon"
  m.type :NORMAL
  m.category :Physical
  m.power 20
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.description "Sharp spikes are shot at the target in rapid succession. They hit two to five times in a row."
end

GameData::Move.define :COMETPUNCH do |m|
  m.name "Comet Punch"
  m.type :NORMAL
  m.category :Physical
  m.power 18
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.makes_contact
  m.description "The target is hit with a flurry of punches that strike two to five times in a row."
end

GameData::Move.define :FURYSWIPES do |m|
  m.name "Fury Swipes"
  m.type :NORMAL
  m.category :Physical
  m.power 18
  m.accuracy 80
  m.pp 15
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.makes_contact
  m.description "The target is raked with sharp claws or scythes for two to five times in quick succession."
end

GameData::Move.define :BARRAGE do |m|
  m.name "Barrage"
  m.type :NORMAL
  m.category :Physical
  m.power 15
  m.accuracy 85
  m.pp 20
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.description "Round objects are hurled at the target to strike two to five times in a row."
end

GameData::Move.define :BIND do |m|
  m.name "Bind"
  m.type :NORMAL
  m.category :Physical
  m.power 15
  m.accuracy 85
  m.pp 20
  m.target :NearOther
  m.function_code "BindTarget"
  m.makes_contact
  m.description "Things such as long bodies or tentacles are used to bind and squeeze the foe for four to five turns."
end

GameData::Move.define :DOUBLESLAP do |m|
  m.name "Double Slap"
  m.type :NORMAL
  m.category :Physical
  m.power 15
  m.accuracy 85
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.makes_contact
  m.description "The target is slapped repeatedly, back and forth, two to five times in a row."
end

GameData::Move.define :FURYATTACK do |m|
  m.name "Fury Attack"
  m.type :NORMAL
  m.category :Physical
  m.power 15
  m.accuracy 85
  m.pp 20
  m.target :NearOther
  m.function_code "HitTwoToFiveTimes"
  m.makes_contact
  m.description "The target is jabbed repeatedly with a horn or beak two to five times in a row."
end

GameData::Move.define :WRAP do |m|
  m.name "Wrap"
  m.type :NORMAL
  m.category :Physical
  m.power 15
  m.accuracy 90
  m.pp 20
  m.target :NearOther
  m.function_code "BindTarget"
  m.makes_contact
  m.description "A long body or vines are used to wrap and squeeze the target for four to five turns."
end

GameData::Move.define :CONSTRICT do |m|
  m.name "Constrict"
  m.type :NORMAL
  m.category :Physical
  m.power 10
  m.accuracy 100
  m.pp 35
  m.target :NearOther
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 10
  m.makes_contact
  m.description "The foe is attacked with long, creeping tentacles or vines. It may also lower the target's Speed."
end

GameData::Move.define :BIDE do |m|
  m.name "Bide"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 0
  m.pp 10
  m.target :None
  m.priority 1
  m.function_code "MultiTurnAttackBideThenReturnDoubleDamage"
  m.makes_contact
  m.description "The user endures attacks for two turns, then strikes back to cause double the damage taken."
end

GameData::Move.define :CRUSHGRIP do |m|
  m.name "Crush Grip"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "PowerHigherWithTargetHP"
  m.makes_contact
  m.description "The target is crushed with great force. The attack is more powerful the more HP the target has left."
end

GameData::Move.define :ENDEAVOR do |m|
  m.name "Endeavor"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerTargetHPToUserHP"
  m.makes_contact
  m.description "An attack move that cuts down the target's HP to equal the user's HP."
end

GameData::Move.define :FLAIL do |m|
  m.name "Flail"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "PowerLowerWithUserHP"
  m.makes_contact
  m.description "The user flails about aimlessly to attack. It becomes more powerful the less HP the user has."
end

GameData::Move.define :FRUSTRATION do |m|
  m.name "Frustration"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PowerLowerWithUserHappiness"
  m.makes_contact
  m.description "A full-power attack that grows more powerful the less the user likes its Trainer."
end

GameData::Move.define :GUILLOTINE do |m|
  m.name "Guillotine"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 30
  m.pp 5
  m.target :NearOther
  m.function_code "OHKO"
  m.makes_contact
  m.description "A vicious, tearing attack with big pincers. The target will faint instantly if this attack hits."
end

GameData::Move.define :HIDDENPOWER do |m|
  m.name "Hidden Power"
  m.type :NORMAL
  m.category :Special
  m.power 60
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "TypeDependsOnUserIVs"
  m.description "A unique attack that varies in type and intensity depending on the Pokémon using it."
end

GameData::Move.define :HORNDRILL do |m|
  m.name "Horn Drill"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 30
  m.pp 5
  m.target :NearOther
  m.function_code "OHKO"
  m.makes_contact
  m.description "The user stabs the foe with a horn that rotates like a drill. If it hits, the target faints instantly."
end

GameData::Move.define :NATURALGIFT do |m|
  m.name "Natural Gift"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "TypeAndPowerDependOnUserBerry"
  m.description "The user draws power to attack by using its held Berry. The Berry determines its type and power."
end

GameData::Move.define :PRESENT do |m|
  m.name "Present"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 90
  m.pp 15
  m.target :NearOther
  m.function_code "RandomlyDamageOrHealTarget"
  m.description "The user attacks by giving the target a gift with a hidden trap. It restores HP sometimes, however."
end

GameData::Move.define :RETURN do |m|
  m.name "Return"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "PowerHigherWithUserHappiness"
  m.makes_contact
  m.description "A full-power attack that grows more powerful the more the user likes its Trainer."
end

GameData::Move.define :SONICBOOM do |m|
  m.name "Sonic Boom"
  m.type :NORMAL
  m.category :Special
  m.power 1
  m.accuracy 90
  m.pp 20
  m.target :NearOther
  m.function_code "FixedDamage20"
  m.description "The target is hit with a destructive shock wave that always inflicts 20 HP damage."
end

GameData::Move.define :SPITUP do |m|
  m.name "Spit Up"
  m.type :NORMAL
  m.category :Special
  m.power 1
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "PowerDependsOnUserStockpile"
  m.description "The power stored using the move Stockpile is released all at once in an attack."
end

GameData::Move.define :SUPERFANG do |m|
  m.name "Super Fang"
  m.type :NORMAL
  m.category :Physical
  m.power 1
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "FixedDamageHalfTargetHP"
  m.makes_contact
  m.description "The user chomps hard on the target with its sharp front fangs. It cuts the target's HP to half."
end

GameData::Move.define :TRUMPCARD do |m|
  m.name "Trump Card"
  m.type :NORMAL
  m.category :Special
  m.power 1
  m.accuracy 0
  m.pp 5
  m.target :NearOther
  m.function_code "PowerHigherWithLessPP"
  m.makes_contact
  m.description "The fewer PP this move has, the greater its attack power."
end

GameData::Move.define :WRINGOUT do |m|
  m.name "Wring Out"
  m.type :NORMAL
  m.category :Special
  m.power 1
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "PowerHigherWithTargetHP"
  m.makes_contact
  m.description "The user powerfully wrings the foe. The more HP the foe has, the greater this attack's power."
end

GameData::Move.define :ACUPRESSURE do |m|
  m.name "Acupressure"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :UserOrNearAlly
  m.function_code "RaiseTargetRandomStat2"
  m.description "The user applies pressure to stress points, sharply boosting one of its stats."
end

GameData::Move.define :AFTERYOU do |m|
  m.name "After You"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "TargetActsNext"
  m.description "The user helps the target and makes it use its move right after the user."
end

GameData::Move.define :ASSIST do |m|
  m.name "Assist"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "UseRandomMoveFromUserParty"
  m.description "The user hurriedly and randomly uses a move among those known by other Pokémon in the party."
end

GameData::Move.define :ATTRACT do |m|
  m.name "Attract"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "AttractTarget"
  m.description "If it is the opposite gender of the user, the target becomes infatuated and less likely to attack."
end

GameData::Move.define :BATONPASS do |m|
  m.name "Baton Pass"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :User
  m.function_code "SwitchOutUserPassOnEffects"
  m.description "The user switches places with a party Pokémon in waiting, passing along any stat changes."
end

GameData::Move.define :BELLYDRUM do |m|
  m.name "Belly Drum"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "MaxUserAttackLoseHalfOfTotalHP"
  m.description "The user maximizes its Attack stat in exchange for HP equal to half its max HP."
end

GameData::Move.define :BESTOW do |m|
  m.name "Bestow"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "TargetTakesUserItem"
  m.description "The user passes its held item to the target when the target isn't holding an item."
end

GameData::Move.define :BLOCK do |m|
  m.name "Block"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :NearOther
  m.function_code "TrapTargetInBattle"
  m.description "The user blocks the target's way with arms spread wide to prevent escape."
end

GameData::Move.define :CAMOUFLAGE do |m|
  m.name "Camouflage"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "SetUserTypesBasedOnEnvironment"
  m.description "The user's type is changed depending on its environment, such as at water's edge, in grass, or in a cave."
end

GameData::Move.define :CAPTIVATE do |m|
  m.name "Captivate"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :AllNearFoes
  m.function_code "LowerTargetSpAtk2IfCanAttract"
  m.description "If it is the opposite gender of the user, the target is charmed into harshly lowering its Sp. Atk stat."
end

GameData::Move.define :CONVERSION do |m|
  m.name "Conversion"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :User
  m.function_code "SetUserTypesToUserMoveType"
  m.description "The user changes its type to become the same type as one of its moves."
end

GameData::Move.define :CONVERSION2 do |m|
  m.name "Conversion 2"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :NearOther
  m.function_code "SetUserTypesToResistLastAttack"
  m.description "The user changes its type to make itself resistant to the type of the attack the opponent used last."
end

GameData::Move.define :COPYCAT do |m|
  m.name "Copycat"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "UseLastMoveUsed"
  m.description "The user mimics the move used immediately before it. The move fails if no other move has been used yet."
end

GameData::Move.define :DEFENSECURL do |m|
  m.name "Defense Curl"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :User
  m.function_code "RaiseUserDefense1CurlUpUser"
  m.description "The user curls up to conceal weak spots and raise its Defense stat."
end

GameData::Move.define :DISABLE do |m|
  m.name "Disable"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "DisableTargetLastMoveUsed"
  m.description "For four turns, this move prevents the target from using the move it last used."
end

GameData::Move.define :DOUBLETEAM do |m|
  m.name "Double Team"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :User
  m.function_code "RaiseUserEvasion1"
  m.description "By moving rapidly, the user makes illusory copies of itself to raise its evasiveness."
end

GameData::Move.define :ENCORE do |m|
  m.name "Encore"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "DisableTargetUsingDifferentMove"
  m.description "The user compels the target to keep using only the move it last used for three turns."
end

GameData::Move.define :ENDURE do |m|
  m.name "Endure"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "UserEnduresFaintingThisTurn"
  m.description "The user endures any attack with at least 1 HP. Its chance of failing rises if it is used in succession."
end

GameData::Move.define :ENTRAINMENT do |m|
  m.name "Entrainment"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "SetTargetAbilityToUserAbility"
  m.description "The user dances to compel the target to mimic it, making the target's Ability the same as the user's."
end

GameData::Move.define :FLASH do |m|
  m.name "Flash"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.description "The user flashes a light that cuts the target's accuracy. It can also be used to illuminate caves."
end

GameData::Move.define :FOCUSENERGY do |m|
  m.name "Focus Energy"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :User
  m.function_code "RaiseUserCriticalHitRate2"
  m.description "The user takes a deep breath and focuses so that critical hits land more easily."
end

GameData::Move.define :FOLLOWME do |m|
  m.name "Follow Me"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.priority 2
  m.function_code "RedirectAllMovesToUser"
  m.description "The user draws attention to itself, making all targets take aim only at the user."
end

GameData::Move.define :FORESIGHT do |m|
  m.name "Foresight"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :NearOther
  m.function_code "StartNegateTargetEvasionStatStageAndGhostImmunity"
  m.description "Enables the user to hit a Ghost type with any kind of move. It also enables the user to hit an evasive foe."
end

GameData::Move.define :GLARE do |m|
  m.name "Glare"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "ParalyzeTarget"
  m.description "The user intimidates the target with the pattern on its belly to cause paralysis."
end

GameData::Move.define :GROWL do |m|
  m.name "Growl"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 40
  m.target :AllNearFoes
  m.function_code "LowerTargetAttack1"
  m.description "The user growls in an endearing way, making the foe less wary. The foe's Attack stat is lowered."
end

GameData::Move.define :GROWTH do |m|
  m.name "Growth"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserAtkSpAtk1Or2InSun"
  m.description "The user's body grows all at once, raising the Atk and Sp. Atk stats."
end

GameData::Move.define :HARDEN do |m|
  m.name "Harden"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :User
  m.function_code "RaiseUserDefense1"
  m.description "The user stiffens all the muscles in its body to raise its Defense stat."
end

GameData::Move.define :HEALBELL do |m|
  m.name "Heal Bell"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :UserAndAllies
  m.function_code "CureUserPartyStatus"
  m.description "The user makes a soothing bell chime to heal the status problems of all the party Pokémon."
end

GameData::Move.define :HELPINGHAND do |m|
  m.name "Helping Hand"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearAlly
  m.priority 5
  m.function_code "PowerUpAllyMove"
  m.description "The user assists an ally by boosting the power of its attack."
end

GameData::Move.define :HOWL do |m|
  m.name "Howl"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :UserAndAllies
  m.function_code "RaiseTargetAttack1"
  m.description "The user howls loudly to raise the spirit of itself and allies, boosting their Attack stats."
end

GameData::Move.define :LEER do |m|
  m.name "Leer"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 30
  m.target :AllNearFoes
  m.function_code "LowerTargetDefense1"
  m.description "The user gains an intimidating leer with sharp eyes. The target's Defense stat is reduced."
end

GameData::Move.define :LOCKON do |m|
  m.name "Lock-On"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :NearOther
  m.function_code "EnsureNextMoveAlwaysHits"
  m.description "The user takes sure aim at the target. It ensures the next attack does not fail to hit the target."
end

GameData::Move.define :LOVELYKISS do |m|
  m.name "Lovely Kiss"
  m.type :NORMAL
  m.category :Status
  m.accuracy 75
  m.pp 10
  m.target :NearOther
  m.function_code "SleepTarget"
  m.description "With a scary face, the user tries to force a kiss on the target. If it suceeds, the target falls asleep."
end

GameData::Move.define :LUCKYCHANT do |m|
  m.name "Lucky Chant"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :UserSide
  m.function_code "StartPreventCriticalHitsAgainstUserSide"
  m.description "The user chants an incantation toward the sky, preventing the foe from landing critical hits."
end

GameData::Move.define :MEFIRST do |m|
  m.name "Me First"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearFoe
  m.function_code "UseMoveTargetIsAboutToUse"
  m.description "The user tries to cut ahead of the foe to steal and use the foe's intended move with greater power."
end

GameData::Move.define :MEANLOOK do |m|
  m.name "Mean Look"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :NearOther
  m.function_code "TrapTargetInBattle"
  m.description "The user pins the target with a dark, arresting look. The target becomes unable to flee."
end

GameData::Move.define :METRONOME do |m|
  m.name "Metronome"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UseRandomMove"
  m.description "The user waggles a finger and stimulates its brain into randomly using nearly any move."
end

GameData::Move.define :MILKDRINK do |m|
  m.name "Milk Drink"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserHalfOfTotalHP"
  m.description "The user restores its own HP by up to half of its maximum HP. May also be used in the field to heal HP."
end

GameData::Move.define :MIMIC do |m|
  m.name "Mimic"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "ReplaceMoveThisBattleWithTargetLastMoveUsed"
  m.description "The user copies the move last used by the foe. The move can be used until the user is switched out."
end

GameData::Move.define :MINDREADER do |m|
  m.name "Mind Reader"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :NearOther
  m.function_code "EnsureNextMoveAlwaysHits"
  m.description "The user senses the foe's movements with its mind to ensure its next attack does not miss the foe."
end

GameData::Move.define :MINIMIZE do |m|
  m.name "Minimize"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserEvasion2MinimizeUser"
  m.description "The user compresses its body to make itself look smaller, which sharply raises its evasiveness."
end

GameData::Move.define :MORNINGSUN do |m|
  m.name "Morning Sun"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :User
  m.function_code "HealUserDependingOnWeather"
  m.description "The user restores its own HP. The amount of HP regained varies with the weather."
end

GameData::Move.define :NATUREPOWER do |m|
  m.name "Nature Power"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "UseMoveDependingOnEnvironment"
  m.description "An attack that makes use of nature's power. Its effects vary depending on the user's environment."
end

GameData::Move.define :ODORSLEUTH do |m|
  m.name "Odor Sleuth"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :NearOther
  m.function_code "StartNegateTargetEvasionStatStageAndGhostImmunity"
  m.description "Enables the user to hit a Ghost type with any type of move. It also enables the user to hit an evasive foe."
end

GameData::Move.define :PAINSPLIT do |m|
  m.name "Pain Split"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "UserTargetAverageHP"
  m.description "The user adds its HP to the target's HP, then equally shares the combined HP with the target."
end

GameData::Move.define :PERISHSONG do |m|
  m.name "Perish Song"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :AllBattlers
  m.function_code "StartPerishCountsForAllBattlers"
  m.description "Any Pokémon that hears this song faints in three turns, unless it switches out of battle."
end

GameData::Move.define :PROTECT do |m|
  m.name "Protect"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.priority 4
  m.function_code "ProtectUser"
  m.description "It enables the user to evade all attacks. Its chance of failing rises if it is used in succession."
end

GameData::Move.define :PSYCHUP do |m|
  m.name "Psych Up"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "UserCopyTargetStatStages"
  m.description "The user hypnotizes itself into copying any stat change made by the target."
end

GameData::Move.define :RECOVER do |m|
  m.name "Recover"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserHalfOfTotalHP"
  m.description "Restoring its own cells, the user restores its own HP by half of its max HP."
end

GameData::Move.define :RECYCLE do |m|
  m.name "Recycle"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RestoreUserConsumedItem"
  m.description "The user recycles a held item that has been used in battle so it can be used again."
end

GameData::Move.define :REFLECTTYPE do |m|
  m.name "Reflect Type"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "SetUserTypesToTargetTypes"
  m.description "The user reflects the target's type, making it the same type as the target."
end

GameData::Move.define :REFRESH do |m|
  m.name "Refresh"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "CureUserBurnPoisonParalysis"
  m.description "The user rests to cure itself of a poisoning, burn, or paralysis."
end

GameData::Move.define :ROAR do |m|
  m.name "Roar"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.priority -6
  m.function_code "SwitchOutTargetStatusMove"
  m.description "The target is scared off and replaced by another Pokémon in its party. In the wild, the battle ends."
end

GameData::Move.define :SAFEGUARD do |m|
  m.name "Safeguard"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 25
  m.target :UserSide
  m.function_code "StartUserSideImmunityToInflictedStatus"
  m.description "The user creates a protective field that prevents status problems for five turns."
end

GameData::Move.define :SCARYFACE do |m|
  m.name "Scary Face"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpeed2"
  m.description "The user frightens the target with a scary face to harshly reduce its Speed stat."
end

GameData::Move.define :SCREECH do |m|
  m.name "Screech"
  m.type :NORMAL
  m.category :Status
  m.accuracy 85
  m.pp 40
  m.target :NearOther
  m.function_code "LowerTargetDefense2"
  m.description "An earsplitting screech harshly reduces the target's Defense stat."
end

GameData::Move.define :SHARPEN do |m|
  m.name "Sharpen"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :User
  m.function_code "RaiseUserAttack1"
  m.description "The user reduces its polygon count to make itself more jagged, raising the Attack stat."
end

GameData::Move.define :SHELLSMASH do |m|
  m.name "Shell Smash"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :User
  m.function_code "LowerUserDefSpDef1RaiseUserAtkSpAtkSpd2"
  m.description "The user breaks its shell, lowering its defenses but sharply raising attacking and Speed stats."
end

GameData::Move.define :SIMPLEBEAM do |m|
  m.name "Simple Beam"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "SetTargetAbilityToSimple"
  m.description "The user's mysterious psychic wave changes the target's Ability to Simple."
end

GameData::Move.define :SING do |m|
  m.name "Sing"
  m.type :NORMAL
  m.category :Status
  m.accuracy 55
  m.pp 15
  m.target :NearOther
  m.function_code "SleepTarget"
  m.description "A soothing lullaby is sung in a calming voice that puts the target into a deep slumber."
end

GameData::Move.define :SKETCH do |m|
  m.name "Sketch"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 1
  m.target :NearOther
  m.function_code "ReplaceMoveWithTargetLastMoveUsed"
  m.description "It enables the user to permanently learn the move last used by the foe. Once used, Sketch disappears."
end

GameData::Move.define :SLACKOFF do |m|
  m.name "Slack Off"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserHalfOfTotalHP"
  m.description "The user slacks off, restoring its own HP by up to half of its maximum HP."
end

GameData::Move.define :SLEEPTALK do |m|
  m.name "Sleep Talk"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UseRandomUserMoveIfAsleep"
  m.description "While it is asleep, the user randomly uses one of the moves it knows."
end

GameData::Move.define :SMOKESCREEN do |m|
  m.name "Smokescreen"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.description "The user releases an obscuring cloud of smoke or ink. It reduces the target's accuracy."
end

GameData::Move.define :SOFTBOILED do |m|
  m.name "Soft-Boiled"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserHalfOfTotalHP"
  m.description "The user restores its own HP by up to half of its maximum HP. May also be used in the field to heal HP."
end

GameData::Move.define :SPLASH do |m|
  m.name "Splash"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :User
  m.function_code "DoesNothingUnusableInGravity"
  m.description "The user just flops and splashes around to no effect at all..."
end

GameData::Move.define :STOCKPILE do |m|
  m.name "Stockpile"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "UserAddStockpileRaiseDefSpDef1"
  m.description "The user charges up power and raises both its Defense and Sp. Def. The move can be used three times."
end

GameData::Move.define :SUBSTITUTE do |m|
  m.name "Substitute"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UserMakeSubstitute"
  m.description "The user makes a copy of itself using some of its HP. The copy serves as the user's decoy."
end

GameData::Move.define :SUPERSONIC do |m|
  m.name "Supersonic"
  m.type :NORMAL
  m.category :Status
  m.accuracy 55
  m.pp 20
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.description "The user generates odd sound waves from its body. It may confuse the target."
end

GameData::Move.define :SWAGGER do |m|
  m.name "Swagger"
  m.type :NORMAL
  m.category :Status
  m.accuracy 85
  m.pp 15
  m.target :NearOther
  m.function_code "RaiseTargetAttack2ConfuseTarget"
  m.description "The user enrages and confuses the target. However, it also sharply raises the target's Attack stat."
end

GameData::Move.define :SWALLOW do |m|
  m.name "Swallow"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserDependingOnUserStockpile"
  m.description "The power stored using the move Stockpile is absorbed by the user to heal its HP."
end

GameData::Move.define :SWEETSCENT do |m|
  m.name "Sweet Scent"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :AllNearFoes
  m.function_code "LowerTargetEvasion2"
  m.description "A sweet scent that lowers the foe's evasiveness. It also lures wild Pokémon if used in grass, etc."
end

GameData::Move.define :SWORDSDANCE do |m|
  m.name "Swords Dance"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserAttack2"
  m.description "A frenetic dance to uplift the fighting spirit. It sharply raises the user's Attack stat."
end

GameData::Move.define :TAILWHIP do |m|
  m.name "Tail Whip"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 30
  m.target :AllNearFoes
  m.function_code "LowerTargetDefense1"
  m.description "The user wags its tail cutely, making opposing Pokémon less wary and lowering their Defense stat."
end

GameData::Move.define :TEETERDANCE do |m|
  m.name "Teeter Dance"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :AllNearOthers
  m.function_code "ConfuseTarget"
  m.description "The user performs a wobbly dance that confuses the Pokémon around it."
end

GameData::Move.define :TICKLE do |m|
  m.name "Tickle"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAtkDef1"
  m.description "The user tickles the target into laughing, reducing its Attack and Defense stats."
end

GameData::Move.define :TRANSFORM do |m|
  m.name "Transform"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "TransformUserIntoTarget"
  m.description "The user transforms into a copy of the target right down to having the same move set."
end

GameData::Move.define :WHIRLWIND do |m|
  m.name "Whirlwind"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.priority -6
  m.function_code "SwitchOutTargetStatusMove"
  m.description "The foe is blown away, to be replaced by another Pokémon in its party. In the wild, the battle ends."
end

GameData::Move.define :WISH do |m|
  m.name "Wish"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserPositionNextTurn"
  m.description "One turn after this move is used, the target's HP is restored by half the user's maximum HP."
end

GameData::Move.define :WORKUP do |m|
  m.name "Work Up"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :User
  m.function_code "RaiseUserAtkSpAtk1"
  m.description "The user is roused, and its Attack and Sp. Atk stats increase."
end

GameData::Move.define :YAWN do |m|
  m.name "Yawn"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "SleepTargetNextTurn"
  m.description "The user lets loose a huge yawn that lulls the target into falling asleep on the next turn."
end

GameData::Move.define :BOOMBURST do |m|
  m.name "Boomburst"
  m.type :NORMAL
  m.category :Special
  m.power 140
  m.accuracy 100
  m.pp 10
  m.target :AllNearOthers
  m.function_code "None"
  m.sound_based
  m.description "The user attacks everything around it with the destructive power of a terrible, explosive sound."
end

GameData::Move.define :HOLDBACK do |m|
  m.name "Hold Back"
  m.type :NORMAL
  m.category :Physical
  m.power 40
  m.accuracy 100
  m.pp 40
  m.target :NearOther
  m.function_code "CannotMakeTargetFaint"
  m.makes_contact
  m.description "The user holds back when it attacks, and the target is left with at least 1 HP."
end

GameData::Move.define :CELEBRATE do |m|
  m.name "Celebrate"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :User
  m.function_code "DoesNothingCongratulations"
  m.description "The Pokémon congratulates you on your special day!"
end

GameData::Move.define :CONFIDE do |m|
  m.name "Confide"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetSpAtk1"
  m.description "The user tells the target a secret. The target loses focus and its Sp. Atk stat is lowered."
end

GameData::Move.define :HAPPYHOUR do |m|
  m.name "Happy Hour"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :UserSide
  m.function_code "DoubleMoneyGainedFromBattle"
  m.description "Using Happy Hour doubles the amount of prize money received after battle."
end

GameData::Move.define :HOLDHANDS do |m|
  m.name "Hold Hands"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :NearAlly
  m.function_code "DoesNothingFailsIfNoAlly"
  m.description "The user and an ally hold hands. This makes them very happy."
end

GameData::Move.define :NOBLEROAR do |m|
  m.name "Noble Roar"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :NearOther
  m.function_code "LowerTargetAtkSpAtk1"
  m.description "Letting out a noble roar, the user intimidates the target and lowers its Attack and Sp. Atk."
end

GameData::Move.define :PLAYNICE do |m|
  m.name "Play Nice"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAttack1BypassSubstitute"
  m.description "The user and target become friends. The target loses its will to fight, lowering its Attack stat."
end

GameData::Move.define :MULTIATTACK do |m|
  m.name "Multi-Attack"
  m.type :NORMAL
  m.category :Physical
  m.power 120
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TypeDependsOnUserMemory"
  m.makes_contact
  m.description "Cloaking itself in high energy, the user slams into the target. This move's type depends on the held memory."
end

GameData::Move.define :REVELATIONDANCE do |m|
  m.name "Revelation Dance"
  m.type :NORMAL
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "TypeIsUserFirstType"
  m.description "The user attacks the target by dancing very hard. The user's type determines the type of this move."
end

GameData::Move.define :LASERFOCUS do |m|
  m.name "Laser Focus"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :User
  m.function_code "EnsureNextCriticalHit"
  m.description "The user focuses intensely. The attack on the next turn always results in a critical hit."
end

GameData::Move.define :SPOTLIGHT do |m|
  m.name "Spotlight"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.priority 3
  m.function_code "RedirectAllMovesToTarget"
  m.description "The user shines a spotlight on the target so that only it will be attacked during the turn."
end

GameData::Move.define :TEARFULLOOK do |m|
  m.name "Tearful Look"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAtkSpAtk1"
  m.description "Gets teary eyed to make the target lose its will to fight. Lowers the target's Attack and Sp. Atk."
end

GameData::Move.define :VISEGRIP do |m|
  m.name "Vise Grip"
  m.type :NORMAL
  m.category :Physical
  m.power 55
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The target is gripped and squeezed from both sides to inflict damage."
end

GameData::Move.define :TERRAINPULSE do |m|
  m.name "Terrain Pulse"
  m.type :NORMAL
  m.category :Special
  m.power 50
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TypeAndPowerDependOnTerrain"
  m.description "Utilizes the power of the terrain to attack. This move's type and power vary with the terrain."
end

GameData::Move.define :COURTCHANGE do |m|
  m.name "Court Change"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "SwapSideEffects"
  m.description "With its mysterious power, the user swaps the effects on either side of the field."
end

GameData::Move.define :STUFFCHEEKS do |m|
  m.name "Stuff Cheeks"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UserConsumeBerryRaiseDefense2"
  m.description "The user eats its held Berry, then sharply raises its Defense stat."
end

GameData::Move.define :TEATIME do |m|
  m.name "Teatime"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :AllBattlers
  m.function_code "AllBattlersConsumeBerry"
  m.description "The user has teatime with all the Pokémon in the battle. Each Pokémon eats its held Berry."
end

GameData::Move.define :POWERSHIFT do |m|
  m.name "Power Shift"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UserSwapBaseAtkDef"
  m.description "The user swaps its Attack and Defense stats."
end

GameData::Move.define :DOODLE do |m|
  m.name "Doodle"
  m.type :NORMAL
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearFoe
  m.function_code "SetUserAlliesAbilityToTargetAbility"
  m.description "The user captures a quick sketch, changing the Abilities of the user and its allies to the target's."
end

GameData::Move.define :FILLETAWAY do |m|
  m.name "Fillet Away"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserAtkSpAtkSpeed2LoseHalfOfTotalHP"
  m.description "The user sharply boosts its Attack, Sp. Atk, and Speed stats by using its own HP."
end

GameData::Move.define :HYPERDRILL do |m|
  m.name "Hyper Drill"
  m.type :NORMAL
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "None"
  m.makes_contact
  m.description "The user spins the pointed part of its body at high speed to pierce the target, ignoring protections."
end

GameData::Move.define :POPULATIONBOMB do |m|
  m.name "Population Bomb"
  m.type :NORMAL
  m.category :Physical
  m.power 20
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "HitTenTimes"
  m.makes_contact
  m.description "The user’s fellows gather in droves to perform a combo attack that hits one to ten times in a row."
end

GameData::Move.define :RAGINGBULL do |m|
  m.name "Raging Bull"
  m.type :NORMAL
  m.category :Physical
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "TypeIsUserSecondTypeRemoveScreens"
  m.makes_contact
  m.description "The user charges and destroys enemy barriers. This move’s type depends on the user’s form."
end

GameData::Move.define :REVIVALBLESSING do |m|
  m.name "Revival Blessing"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 1
  m.target :User
  m.function_code "RevivePokemonHalfHP"
  m.description "The user revives a party Pokémon that has fainted and restores half their max HP."
end

GameData::Move.define :SHEDTAIL do |m|
  m.name "Shed Tail"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UserMakeSubstituteSwitchOut"
  m.description "The user creates a substitute and switches places with a party Pokémon in waiting."
end

GameData::Move.define :TIDYUP do |m|
  m.name "Tidy Up"
  m.type :NORMAL
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserAtkSpd1RemoveHazardsSubstitutes"
  m.effect_chance 100
  m.description "Clears hazards and substitutes from the field. This also boosts the user’s Attack and Speed."
end

GameData::Move.define :BLOODMOON do |m|
  m.name "Blood Moon"
  m.type :NORMAL
  m.category :Special
  m.power 140
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "CantSelectConsecutiveTurns"
  m.description "The user unleashes the full brunt of its spirit from a blood moon. This move can't be used twice in a row."
end

GameData::Move.define :TERASTARSTORM do |m|
  m.name "Tera Starstorm"
  m.type :NORMAL
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "TerapagosCategoryDependsOnHigherDamage"
  m.description "When used by Terapagos in its Stellar Form, this move damages all opposing Pokémon."
end
