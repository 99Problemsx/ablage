#=============================================================================
# FAIRY Type Moves
#=============================================================================

GameData::Move.define :CHARM do |m|
  m.name "Charm"
  m.type :FAIRY
  m.category :Status
  m.accuracy 100
  m.pp 20
  m.target :NearOther
  m.function_code "LowerTargetAttack2"
  m.description "The user charmingly gazes at the foe, making it less wary. The target's Attack is harshly lowered."
end

GameData::Move.define :MOONLIGHT do |m|
  m.name "Moonlight"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 5
  m.target :User
  m.function_code "HealUserDependingOnWeather"
  m.description "The user restores its own HP. The amount of HP regained varies with the weather."
end

GameData::Move.define :SWEETKISS do |m|
  m.name "Sweet Kiss"
  m.type :FAIRY
  m.category :Status
  m.accuracy 75
  m.pp 10
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.description "The user kisses the target with a sweet, angelic cuteness that causes confusion."
end

GameData::Move.define :LIGHTOFRUIN do |m|
  m.name "Light of Ruin"
  m.type :FAIRY
  m.category :Special
  m.power 140
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "RecoilHalfOfDamageDealt"
  m.description "Fires a powerful beam of light drawn from the Eternal Flower. It also damages the user a lot."
end

GameData::Move.define :MOONBLAST do |m|
  m.name "Moonblast"
  m.type :FAIRY
  m.category :Special
  m.power 95
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetSpAtk1"
  m.effect_chance 30
  m.description "The user attacks by borrowing the power of the moon. This may also lower the target's Sp. Atk stat."
end

GameData::Move.define :PLAYROUGH do |m|
  m.name "Play Rough"
  m.type :FAIRY
  m.category :Physical
  m.power 90
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "LowerTargetAttack1"
  m.effect_chance 10
  m.makes_contact
  m.description "The user plays rough with the target and attacks it. This may also lower the target's Attack stat."
end

GameData::Move.define :DAZZLINGGLEAM do |m|
  m.name "Dazzling Gleam"
  m.type :FAIRY
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :AllNearFoes
  m.function_code "None"
  m.description "The user damages opposing Pokémon by emitting a powerful flash."
end

GameData::Move.define :DRAININGKISS do |m|
  m.name "Draining Kiss"
  m.type :FAIRY
  m.category :Special
  m.power 50
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "HealUserByThreeQuartersOfDamageDone"
  m.makes_contact
  m.description "The user steals the target's HP with a kiss. The user's HP is restored by over half of the damage dealt."
end

GameData::Move.define :DISARMINGVOICE do |m|
  m.name "Disarming Voice"
  m.type :FAIRY
  m.category :Special
  m.power 40
  m.accuracy 0
  m.pp 15
  m.target :AllNearFoes
  m.function_code "None"
  m.sound_based
  m.description "Letting out a charming cry, the user does emotional damage to foes. This attack never misses."
end

GameData::Move.define :FAIRYWIND do |m|
  m.name "Fairy Wind"
  m.type :FAIRY
  m.category :Special
  m.power 40
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.function_code "None"
  m.description "The user stirs up a fairy wind and strikes the target with it."
end

GameData::Move.define :AROMATICMIST do |m|
  m.name "Aromatic Mist"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 20
  m.target :NearAlly
  m.function_code "RaiseTargetSpDef1"
  m.description "The user raises the Sp. Def stat of an ally Pokémon by using a mysterious aroma."
end

GameData::Move.define :BABYDOLLEYES do |m|
  m.name "Baby-Doll Eyes"
  m.type :FAIRY
  m.category :Status
  m.accuracy 100
  m.pp 30
  m.target :NearOther
  m.priority 1
  m.function_code "LowerTargetAttack1"
  m.description "The user stares with its baby-doll eyes, which lowers the target's Attack stat. Always goes first."
end

GameData::Move.define :CRAFTYSHIELD do |m|
  m.name "Crafty Shield"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :UserSide
  m.priority 3
  m.function_code "ProtectUserSideFromStatusMoves"
  m.description "The user protects itself and its allies from status moves with a mysterious power."
end

GameData::Move.define :FAIRYLOCK do |m|
  m.name "Fairy Lock"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "TrapAllBattlersInBattleForOneTurn"
  m.description "By locking down the battlefield, the user keeps all Pokémon from fleeing during the next turn."
end

GameData::Move.define :FLOWERSHIELD do |m|
  m.name "Flower Shield"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :AllBattlers
  m.function_code "RaiseGrassBattlersDef1"
  m.description "The user raises the Defense stats of all Grass-type Pokémon in battle with a mysterious power."
end

GameData::Move.define :GEOMANCY do |m|
  m.name "Geomancy"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :User
  m.function_code "TwoTurnAttackRaiseUserSpAtkSpDefSpd2"
  m.description "The user absorbs energy and sharply raises its Sp. Atk, Sp. Def, and Speed stats on the next turn."
end

GameData::Move.define :MISTYTERRAIN do |m|
  m.name "Misty Terrain"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :BothSides
  m.function_code "StartMistyTerrain"
  m.description "The user covers the ground with mist for five turns. Grounded Pokémon can't gain status conditions."
end

GameData::Move.define :FLEURCANNON do |m|
  m.name "Fleur Cannon"
  m.type :FAIRY
  m.category :Special
  m.power 130
  m.accuracy 90
  m.pp 5
  m.target :NearOther
  m.function_code "LowerUserSpAtk2"
  m.description "The user unleashes a strong beam. The attack's recoil harshly lowers the user's Sp. Atk stat."
end

GameData::Move.define :NATURESMADNESS do |m|
  m.name "Nature's Madness"
  m.type :FAIRY
  m.category :Special
  m.power 1
  m.accuracy 90
  m.pp 10
  m.target :NearOther
  m.function_code "FixedDamageHalfTargetHP"
  m.description "The user hits the target with the force of nature. It halves the target's HP."
end

GameData::Move.define :FLORALHEALING do |m|
  m.name "Floral Healing"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 10
  m.target :NearOther
  m.function_code "HealTargetDependingOnGrassyTerrain"
  m.description "The user restores the target's HP by up to half of its max HP. It restores more HP when the terrain is grass."
end

GameData::Move.define :MISTYEXPLOSION do |m|
  m.name "Misty Explosion"
  m.type :FAIRY
  m.category :Special
  m.power 100
  m.accuracy 100
  m.pp 5
  m.target :AllNearOthers
  m.function_code "UserFaintsPowersUpInMistyTerrainExplosive"
  m.description "The user attacks everything around and faints upon using this move. Power increases on Misty Terrain."
end

GameData::Move.define :STRANGESTEAM do |m|
  m.name "Strange Steam"
  m.type :FAIRY
  m.category :Special
  m.power 90
  m.accuracy 95
  m.pp 10
  m.target :NearOther
  m.function_code "ConfuseTarget"
  m.effect_chance 20
  m.description "The user attacks the target by emitting steam. This may also confuse the target."
end

GameData::Move.define :SPIRITBREAK do |m|
  m.name "Spirit Break"
  m.type :FAIRY
  m.category :Physical
  m.power 75
  m.accuracy 100
  m.pp 15
  m.target :NearOther
  m.function_code "LowerTargetSpAtk1"
  m.effect_chance 100
  m.makes_contact
  m.description "The user attacks the target with immense force. This also lowers the target's Sp. Atk stat."
end

GameData::Move.define :DECORATE do |m|
  m.name "Decorate"
  m.type :FAIRY
  m.category :Status
  m.accuracy 0
  m.pp 15
  m.target :NearOther
  m.function_code "RaiseTargetAtkSpAtk2"
  m.description "The user sharply raises the target's Attack and Sp. Atk stats by decorating the target."
end

GameData::Move.define :SPRINGTIDESTORM do |m|
  m.name "Springtide Storm"
  m.type :FAIRY
  m.category :Special
  m.power 100
  m.accuracy 80
  m.pp 5
  m.target :AllNearFoes
  m.function_code "LowerTargetAttack1"
  m.effect_chance 30
  m.description "The user wraps winds of fierce emotion around opponents. This may lower their Attack stats."
end

GameData::Move.define :MAGICALTORQUE do |m|
  m.name "Magical Torque"
  m.type :FAIRY
  m.category :Physical
  m.power 100
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "StarmobileConfuseTarget"
  m.effect_chance 30
  m.description "This move is only used by a Starmobile. It may confuse the target."
end

GameData::Move.define :ALLURINGVOICE do |m|
  m.name "Alluring Voice"
  m.type :FAIRY
  m.category :Special
  m.power 80
  m.accuracy 100
  m.pp 10
  m.target :NearOther
  m.function_code "ConfuseTargetIfTargetStatsRaisedThisTurn"
  m.effect_chance 100
  m.sound_based
  m.description "Attacks using an angelic voice. This confuses the target if its stats have been raised this turn."
end
