#=============================================================================
# PSYCHIC Type Moves
#=============================================================================

GameData::Move.define :PSYCHOBOOST do |m|
  m.name "Psycho Boost"
  m.type :PSYCHIC
  m.category :Special
  m.power 140
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserSpAtk2"
  m.description "The user attacks the target at full power. The attack's recoil harshly reduces the user's Sp. Atk stat."
end

GameData::Move.define :DREAMEATER do |m|
  m.name "Dream Eater"
  m.type :PSYCHIC
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "HealUserByHalfOfDamageDoneIfTargetAsleep"
  m.description "The user eats the dreams of a sleeping foe. It absorbs half the damage caused to heal the user's HP."
end

GameData::Move.define :FUTURESIGHT do |m|
  m.name "Future Sight"
  m.type :PSYCHIC
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "AttackTwoTurnsLater"
  m.description "Two turns after this move is used, a hunk of psychic energy attacks the target."
end

GameData::Move.define :PSYSTRIKE do |m|
  m.name "Psystrike"
  m.type :PSYCHIC
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "UseTargetDefenseInsteadOfTargetSpDef"
  m.description "The user materializes an odd psychic wave to attack the target. This attack does physical damage."
end

GameData::Move.define :PSYCHIC do |m|
  m.name "Psychic"
  m.type :PSYCHIC
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 10
  m.description "The target is hit by a strong telekinetic force. It may also reduce the target's Sp. Def stat."
end

GameData::Move.define :EXTRASENSORY do |m|
  m.name "Extrasensory"
  m.type :PSYCHIC
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 10
  m.description "The user attacks with an odd, unseeable power. It may also make the target flinch."
end

GameData::Move.define :PSYSHOCK do |m|
  m.name "Psyshock"
  m.type :PSYCHIC
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "UseTargetDefenseInsteadOfTargetSpDef"
  m.description "The user materializes an odd psychic wave to attack the target. This attack does physical damage."
end

GameData::Move.define :ZENHEADBUTT do |m|
  m.name "Zen Headbutt"
  m.type :PSYCHIC
  m.category :Physical
  m.power 80
  m.accuracy 90
  m.pp 15
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 20
  m.makes_contact
  m.description "The user focuses its willpower to its head and attacks the foe. It may also make the target flinch."
end

GameData::Move.define :LUSTERPURGE do |m|
  m.name "Luster Purge"
  m.type :PSYCHIC
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerTargetSpDef1"
  m.effect_chance 50
  m.description "The user lets loose a damaging burst of light. It may also reduce the target's Sp. Def stat."
end

GameData::Move.define :MISTBALL do |m|
  m.name "Mist Ball"
  m.type :PSYCHIC
  m.category :Special
  m.power 70
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerTargetSpAtk1"
  m.effect_chance 50
  m.description "A mistlike flurry of down envelops and damages the target. It may also lower the target's Sp. Atk."
end

GameData::Move.define :PSYCHOCUT do |m|
  m.name "Psycho Cut"
  m.type :PSYCHIC
  m.category :Physical
  m.power 70
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "None"
  m.description "The user tears at the target with blades formed by psychic power. Critical hits land more easily."
end

GameData::Move.define :SYNCHRONOISE do |m|
  m.name "Synchronoise"
  m.type :PSYCHIC
  m.category :Special
  m.power 120
  m.accuracy 100
  m.pp 10
  m.target :AllNearOthers
  m.function_code "FailsUnlessTargetSharesTypeWithUser"
  m.description "Using an odd shock wave, the user damages any Pokémon of the same type as the user."
end

GameData::Move.define :PSYBEAM do |m|
  m.name "Psybeam"
  m.type :PSYCHIC
  m.category :Special
  m.power 65
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.effect_chance 10
  m.description "The target is attacked with a peculiar ray. It may also cause confusion."
end

GameData::Move.define :HEARTSTAMP do |m|
  m.name "Heart Stamp"
  m.type :PSYCHIC
  m.category :Physical
  m.power 60
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.makes_contact
  m.description "The user unleashes a vicious blow after its cute act makes the foe less wary. It may also cause flinching."
end

GameData::Move.define :CONFUSION do |m|
  m.name "Confusion"
  m.type :PSYCHIC
  m.category :Special
  m.power 50
  m.accuracy 100
  m.pp 25
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.effect_chance 10
  m.description "The target is hit by a weak telekinetic force. It may also leave the target confused."
end

GameData::Move.define :MIRRORCOAT do |m|
  m.name "Mirror Coat"
  m.type :PSYCHIC
  m.category :Special
  m.power 1
  m.accuracy 100
  m.pp 20
  m.target :None
  m.priority -5
  m.function_code "CounterSpecialDamage"
  m.description "A retaliation move that counters any special attack, inflicting double the damage taken."
end

GameData::Move.define :PSYWAVE do |m|
  m.name "Psywave"
  m.type :PSYCHIC
  m.category :Special
  m.power 1
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "FixedDamageUserLevelRandom"
  m.description "The target is attacked with an odd psychic wave. The attack varies in intensity."
end

GameData::Move.define :STOREDPOWER do |m|
  m.name "Stored Power"
  m.type :PSYCHIC
  m.category :Special
  m.power 20
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "PowerHigherWithUserPositiveStatStages"
  m.description "The user attacks with stored power. The more the user's stats are raised, the greater the damage."
end

GameData::Move.define :AGILITY do |m|
  m.name "Agility"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :User
  m.function_code "RaiseUserSpeed2"
  m.description "The user relaxes and lightens its body to move faster. It sharply boosts the Speed stat."
end

GameData::Move.define :ALLYSWITCH do |m|
  m.name "Ally Switch"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :User
  m.priority 2
  m.function_code "UserSwapsPositionsWithAlly"
  m.description "The user teleports using a strange power and switches its place with one of its allies."
end

GameData::Move.define :AMNESIA do |m|
  m.name "Amnesia"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserSpDef2"
  m.description "The user temporarily empties its mind to forget its concerns. It sharply raises the user's Sp. Def stat."
end

GameData::Move.define :BARRIER do |m|
  m.name "Barrier"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserDefense2"
  m.description "The user throws up a sturdy wall that sharply raises its Defense stat."
end

GameData::Move.define :CALMMIND do |m|
  m.name "Calm Mind"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserSpAtkSpDef1"
  m.description "The user quietly focuses its mind and calms its spirit to raise its Sp. Atk and Sp. Def stats."
end

GameData::Move.define :COSMICPOWER do |m|
  m.name "Cosmic Power"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.function_code "RaiseUserDefSpDef1"
  m.description "The user absorbs a mystical power from space to raise its Defense and Sp. Def stats."
end

GameData::Move.define :GRAVITY do |m|
  m.name "Gravity"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :BothSides
  m.function_code "StartGravity"
  m.description "Gravity is intensified for five turns, making moves involving flying unusable and negating Levitation."
end

GameData::Move.define :GUARDSPLIT do |m|
  m.name "Guard Split"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetAverageBaseDefSpDef"
  m.description "The user employs its psychic power to average its Defense and Sp. Def stats with those of its target."
end

GameData::Move.define :GUARDSWAP do |m|
  m.name "Guard Swap"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetSwapDefSpDefStages"
  m.description "The user employs its psychic power to switch changes to its Defense and Sp. Def with the target."
end

GameData::Move.define :HEALBLOCK do |m|
  m.name "Heal Block"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 100
  m.pp 15
  m.target :AllNearFoes
  m.function_code "DisableTargetHealingMoves"
  m.description "For five turns, the foe is prevented from using any moves, Abilities, or held items that recover HP."
end

GameData::Move.define :HEALPULSE do |m|
  m.name "Heal Pulse"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :Other
  m.function_code "HealTargetHalfOfTotalHP"
  m.description "The user emits a healing pulse which restores the target's HP by up to half of its max HP."
end

GameData::Move.define :HEALINGWISH do |m|
  m.name "Healing Wish"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UserFaintsHealAndCureReplacement"
  m.description "The user faints. In return, the Pokémon taking its place will have its HP restored and status cured."
end

GameData::Move.define :HEARTSWAP do |m|
  m.name "Heart Swap"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetSwapStatStages"
  m.description "The user employs its psychic power to switch stat changes with the target."
end

GameData::Move.define :HYPNOSIS do |m|
  m.name "Hypnosis"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 60
  m.pp 20
  m.target :NearOther
  m.function_code "SleepTarget"
  m.description "The user employs hypnotic suggestion to make the target fall into a deep sleep."
end

GameData::Move.define :IMPRISON do |m|
  m.name "Imprison"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "DisableTargetMovesKnownByUser"
  m.description "If the foe knows any move also known by the user, the foe is prevented from using it."
end

GameData::Move.define :KINESIS do |m|
  m.name "Kinesis"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 80
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetAccuracy1"
  m.description "The user distracts the target by bending a spoon. It lowers the target's accuracy."
end

GameData::Move.define :LIGHTSCREEN do |m|
  m.name "Light Screen"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 30
  m.target :UserSide
  m.function_code "StartWeakenSpecialDamageAgainstUserSide"
  m.description "A wondrous wall of light is put up to suppress damage from special attacks for five turns."
end

GameData::Move.define :LUNARDANCE do |m|
  m.name "Lunar Dance"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UserFaintsHealAndCureReplacementRestorePP"
  m.description "The user faints. In return, the Pokémon taking its place will have its status and HP fully restored."
end

GameData::Move.define :MAGICCOAT do |m|
  m.name "Magic Coat"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :User
  m.priority 4
  m.function_code "BounceBackProblemCausingStatusMoves"
  m.description "A barrier reflects back to the target moves like Leech Seed and moves that damage status."
end

GameData::Move.define :MAGICROOM do |m|
  m.name "Magic Room"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.priority -7
  m.function_code "StartNegateHeldItems"
  m.description "The user creates a bizarre area in which Pokémon's held items lose their effects for five turns."
end

GameData::Move.define :MEDITATE do |m|
  m.name "Meditate"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :User
  m.function_code "RaiseUserAttack1"
  m.description "The user meditates to awaken the power deep within its body and raise its Attack stat."
end

GameData::Move.define :MIRACLEEYE do |m|
  m.name "Miracle Eye"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 40
  m.target :NearOther
  m.function_code "StartNegateTargetEvasionStatStageAndDarkImmunity"
  m.description "Enables the user to hit a Dark type with any type of move. It also enables the user to hit an evasive foe."
end

GameData::Move.define :POWERSPLIT do |m|
  m.name "Power Split"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetAverageBaseAtkSpAtk"
  m.description "The user employs its psychic power to average its Attack and Sp. Atk stats with those of the target."
end

GameData::Move.define :POWERSWAP do |m|
  m.name "Power Swap"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetSwapAtkSpAtkStages"
  m.description "The user employs its psychic power to switch changes to its Attack and Sp. Atk with the target."
end

GameData::Move.define :POWERTRICK do |m|
  m.name "Power Trick"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "UserSwapBaseAtkDef"
  m.description "The user employs its psychic power to switch its Attack with its Defense stat."
end

GameData::Move.define :PSYCHOSHIFT do |m|
  m.name "Psycho Shift"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "GiveUserStatusToTarget"
  m.description "Using its psychic power of suggestion, the user transfers its status problems to the target."
end

GameData::Move.define :REFLECT do |m|
  m.name "Reflect"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :UserSide
  m.function_code "StartWeakenPhysicalDamageAgainstUserSide"
  m.description "A wondrous wall of light is put up to suppress damage from physical attacks for five turns."
end

GameData::Move.define :REST do |m|
  m.name "Rest"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "HealUserFullyAndFallAsleep"
  m.description "The user goes to sleep for two turns. It fully restores the user's HP and heals any status problem."
end

GameData::Move.define :ROLEPLAY do |m|
  m.name "Role Play"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "SetUserAbilityToTargetAbility"
  m.description "The user mimics the target completely, copying the target's natural Ability."
end

GameData::Move.define :SKILLSWAP do |m|
  m.name "Skill Swap"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetSwapAbilities"
  m.description "The user employs its psychic power to exchange Abilities with the target."
end

GameData::Move.define :TELEKINESIS do |m|
  m.name "Telekinesis"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "StartTargetAirborneAndAlwaysHitByMoves"
  m.description "The user makes the target float with its psychic power. The target is easier to hit for three turns."
end

GameData::Move.define :TELEPORT do |m|
  m.name "Teleport"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :User
  m.priority -6
  m.function_code "SwitchOutUserStatusMove"
  m.description "The user switches place with a party Pokémon. Also warps to the last Pokémon Center visited."
end

GameData::Move.define :TRICK do |m|
  m.name "Trick"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetSwapItems"
  m.description "The user catches the target off guard and swaps its held item with its own."
end

GameData::Move.define :TRICKROOM do |m|
  m.name "Trick Room"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :BothSides
  m.priority -7
  m.function_code "StartSlowerBattlersActFirst"
  m.description "The user creates a bizarre area in which slower Pokémon get to move first for five turns."
end

GameData::Move.define :WONDERROOM do |m|
  m.name "Wonder Room"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.priority -7
  m.function_code "StartSwapAllBattlersBaseDefensiveStats"
  m.description "The user creates a bizarre area in which Pokémon's Defense and Sp. Def stats are swapped for 5 turns."
end

GameData::Move.define :HYPERSPACEHOLE do |m|
  m.name "Hyperspace Hole"
  m.type :PSYCHIC
  m.category :Special
  m.power 80
  m.accuracy 0
  m.pp 5
  m.target :NearOther
  m.function_code "RemoveProtectionsBypassSubstitute"
  m.description "Using a hyperspace hole, the user appears right next to the target and strikes. Skips protections."
end

GameData::Move.define :PRISMATICLASER do |m|
  m.name "Prismatic Laser"
  m.type :PSYCHIC
  m.category :Special
  m.power 160
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.description "The user shoots powerful lasers using the power of a prism. The user can't move on the next turn."
end

GameData::Move.define :PHOTONGEYSER do |m|
  m.name "Photon Geyser"
  m.type :PSYCHIC
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "CategoryDependsOnHigherDamageIgnoreTargetAbility"
  m.description "The user attacks with a pillar of light. This move the higher of the user's Attack or Sp. Atk stat."
end

GameData::Move.define :PSYCHICFANGS do |m|
  m.name "Psychic Fangs"
  m.type :PSYCHIC
  m.category :Physical
  m.power 85
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "RemoveScreens"
  m.makes_contact
  m.description "The user bites the target using psychic capabilities. This can also destroy Light Screen and Reflect."
end

GameData::Move.define :INSTRUCT do |m|
  m.name "Instruct"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "TargetUsesItsLastUsedMoveAgain"
  m.description "The user instructs the target to use the target's last move again."
end

GameData::Move.define :PSYCHICTERRAIN do |m|
  m.name "Psychic Terrain"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "StartPsychicTerrain"
  m.description "Protects grounded Pokémon from priority moves and powers up Psychic-type moves for five turns."
end

GameData::Move.define :SPEEDSWAP do |m|
  m.name "Speed Swap"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "UserTargetSwapBaseSpeed"
  m.description "The user exchanges Speed stats with the target."
end

GameData::Move.define :FREEZINGGLARE do |m|
  m.name "Freezing Glare"
  m.type :PSYCHIC
  m.category :Special
  m.power 90
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "FreezeTarget"
  m.effect_chance 10
  m.description "The user shoots its psychic power from its eyes to attack. This may also leave the target frozen."
end

GameData::Move.define :EERIESPELL do |m|
  m.name "Eerie Spell"
  m.type :PSYCHIC
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 5
  m.target :NearOther
  m.function_code "LowerPPOfTargetLastMoveBy3"
  m.effect_chance 100
  m.sound_based
  m.description "The user attacks with tremendous psychic power. This also removes 3 PP from the target's last move."
end

GameData::Move.define :EXPANDINGFORCE do |m|
  m.name "Expanding Force"
  m.type :PSYCHIC
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HitsAllFoesAndPowersUpInPsychicTerrain"
  m.description "The user attacks the target with psychic power. Powers up and hits all foes on Psychic Terrain."
end

GameData::Move.define :MAGICPOWDER do |m|
  m.name "Magic Powder"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "SetTargetTypesToPsychic"
  m.description "The user scatters a cloud of magic powder that changes the target to Psychic type."
end

GameData::Move.define :ESPERWING do |m|
  m.name "Esper Wing"
  m.type :PSYCHIC
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "RaiseUserSpeed1"
  m.effect_chance 100
  m.description "The user slashes with aura-enriched wings which boosts its Speed stat. Critical hits land more easily."
end

GameData::Move.define :LUNARBLESSING do |m|
  m.name "Lunar Blessing"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :UserAndAllies
  m.function_code "HealUserAndAlliesQuarterOfTotalHPCureStatus"
  m.description "The user is blessed by the moon, restoring HP and curing status conditions of itself and allies."
end

GameData::Move.define :PSYSHIELDBASH do |m|
  m.name "Psyshield Bash"
  m.type :PSYCHIC
  m.category :Physical
  m.power 70
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "RaiseUserDefense1"
  m.effect_chance 100
  m.makes_contact
  m.description "Cloaking itself in psychic energy, the user slams into the target. This raises the user’s Defense."
end

GameData::Move.define :MYSTICALPOWER do |m|
  m.name "Mystical Power"
  m.type :PSYCHIC
  m.category :Special
  m.power 70
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "RaiseUserSpAtk1"
  m.effect_chance 100
  m.description "The user attacks by emitting a mysterious power. This also boosts the user’s Sp. Atk stat."
end

GameData::Move.define :TAKEHEART do |m|
  m.name "Take Heart"
  m.type :PSYCHIC
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "RaiseUserSpAtkSpDef1CureStatus"
  m.description "The user lifts its spirits, curing its own status conditions and boosting its Sp. Atk and Sp. Def stats."
end

GameData::Move.define :LUMINACRASH do |m|
  m.name "Lumina Crash"
  m.type :PSYCHIC
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetSpDef2"
  m.effect_chance 100
  m.description "The user attacks by unleashing a peculiar, mind-bending light that harshly lowers the target’s Sp. Def."
end

GameData::Move.define :TWINBEAM do |m|
  m.name "Twin Beam"
  m.type :PSYCHIC
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HitTwoTimes"
  m.description "The user shoots mystical beams from its eyes to inflict damage. The target is hit twice in a row."
end

GameData::Move.define :PSYBLADE do |m|
  m.name "Psyblade"
  m.type :PSYCHIC
  m.category :Physical
  m.power 80
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "IncreasePowerInElectricTerrain"
  m.makes_contact
  m.description "The user rends the target with an ethereal blade whose power is boosted on Electric Terrain."
end

GameData::Move.define :PSYCHICNOISE do |m|
  m.name "Psychic Noise"
  m.type :PSYCHIC
  m.category :Special
  m.power 75
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "DisableTargetHealingMoves2Turns"
  m.effect_chance 100
  m.sound_based
  m.description "Attacks the target with unpleasant sound waves. Prevents the target from healing for two turns."
end
