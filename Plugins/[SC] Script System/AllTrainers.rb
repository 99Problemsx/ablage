#===============================================================================
# Shattered Crowns - All Trainer Definitions (Ruby DSL)
#===============================================================================
# Converted from PBS/trainers.txt to Ruby DSL format.
# Uses GameData::Trainer.define(type, name, version) with TrainerBuilder.
#===============================================================================

#---------------------------------------
# Route Trainers
#---------------------------------------
GameData::Trainer.define(:CAMPER, "Liam") do |t|
  t.lose_text "A very good battle, indeed!"
  t.pokemon(:DIGLETT, 10)
  t.pokemon(:BONSLY, 11)
end

GameData::Trainer.define(:YOUNGSTER, "Ben") do |t|
  t.lose_text "Aww, I lost."
  t.pokemon(:RATTATA, 11)
  t.pokemon(:EKANS, 11)
end

GameData::Trainer.define(:CAMPER, "Jeff") do |t|
  t.lose_text "A very good battle, indeed!"
  t.pokemon(:SPEAROW, 16)
  t.pokemon(:SENTRET, 16)
end

GameData::Trainer.define(:CAMPER, "Jeff", 1) do |t|
  t.lose_text "You beat me again!"
  t.pokemon(:FEAROW, 29)
  t.pokemon(:FURRET, 29)
end

GameData::Trainer.define(:PICNICKER, "Susie") do |t|
  t.lose_text "Defeated! Oh my!"
  t.pokemon(:MEOWTH, 18)
end

GameData::Trainer.define(:PICNICKER, "Susie", 1) do |t|
  t.lose_text "Defeated! Oh my!"
  t.pokemon(:PERSIAN, 32)
end

GameData::Trainer.define(:HIKER, "Ford") do |t|
  t.lose_text "You're too good for me!"
  t.pokemon(:MACHOP, 19)
end

GameData::Trainer.define(:FISHERMAN, "Andrew") do |t|
  t.lose_text "Washed out!"
  t.pokemon(:MAGIKARP, 14)
  t.pokemon(:MAGIKARP, 18)
end

GameData::Trainer.define(:BEAUTY, "Bridget") do |t|
  t.lose_text "My Skitty!"
  t.pokemon(:SKITTY, 18)
end

GameData::Trainer.define(:LASS, "Crissy") do |t|
  t.lose_text "You didn't have to win so convincingly!"
  t.pokemon(:PLUSLE, 17)
  t.pokemon(:MINUN, 17)
end

GameData::Trainer.define(:COOLCOUPLE, "Alice & Bob") do |t|
  t.lose_text "Our teamwork failed!"
  t.pokemon(:TURTWIG, 19)
  t.pokemon(:CHIMCHAR, 19)
end

GameData::Trainer.define(:POKEMONTRAINER_May, "May") do |t|
  t.lose_text "..."
  t.pokemon(:COMBUSKEN, 19)
end

GameData::Trainer.define(:SWIMMER2_F, "Ariel") do |t|
  t.lose_text "Washed out!"
  t.pokemon(:STARYU, 15)
  t.pokemon(:GOLDEEN, 11)
end

#---------------------------------------
# Rival Blue
#---------------------------------------
GameData::Trainer.define(:RIVAL1, "Blue") do |t|
  t.lose_text "Not too shabby."
  t.pokemon(:PIDGEOTTO, 17)
  t.pokemon(:RATTATA, 15)
  t.pokemon(:BULBASAUR, 18)
end

GameData::Trainer.define(:RIVAL1, "Blue", 1) do |t|
  t.lose_text "Not too shabby."
  t.pokemon(:PIDGEOTTO, 17)
  t.pokemon(:RATTATA, 15)
  t.pokemon(:CHARMANDER, 18)
end

GameData::Trainer.define(:RIVAL1, "Blue", 2) do |t|
  t.lose_text "Not too shabby."
  t.pokemon(:PIDGEOTTO, 17)
  t.pokemon(:RATTATA, 15)
  t.pokemon(:SQUIRTLE, 18)
end

GameData::Trainer.define(:CHAMPION, "Blue") do |t|
  t.lose_text "A good battle indeed!"
  t.pokemon(:VENUSAUR, 63) { |p| p.item :SITRUSBERRY }
  t.pokemon(:CHARIZARD, 63) { |p| p.item :SITRUSBERRY }
  t.pokemon(:BLASTOISE, 63) { |p| p.item :SITRUSBERRY }
end

#---------------------------------------
# Rival Gary
#---------------------------------------
GameData::Trainer.define(:RIVAL1, "Gary") do |t|
  t.lose_text "What?! I can't believe I lost!"
  t.pokemon(:PIDGEY, 5)
end

GameData::Trainer.define(:RIVAL1, "Gary", 1) do |t|
  t.lose_text "You got lucky this time!"
  t.pokemon(:PIDGEOTTO, 17)
  t.pokemon(:RATTATA, 15)
  t.pokemon(:EEVEE, 18)
end

#---------------------------------------
# Gym Leader Brock
#---------------------------------------
GameData::Trainer.define(:LEADER_Brock, "Brock") do |t|
  t.items :FULLRESTORE, :FULLRESTORE
  t.lose_text "Very good."
  t.pokemon(:GEODUDE, 12) do |p|
    p.moves :DEFENSECURL, :HEADSMASH, :ROCKPOLISH, :ROCKTHROW
    p.ability_index 0
    p.gender 0  # male
    p.iv({ HP: 20, ATTACK: 20, DEFENSE: 20, SPECIAL_ATTACK: 20, SPECIAL_DEFENSE: 20, SPEED: 20 })
  end
  t.pokemon(:ONIX, 14) do |p|
    p.nickname "Rocky"
    p.moves :HEADSMASH, :ROCKTHROW, :RAGE, :ROCKTOMB
    p.ability_index 0
    p.item :SITRUSBERRY
    p.gender 0  # male
    p.iv({ HP: 20, ATTACK: 20, DEFENSE: 20, SPECIAL_ATTACK: 20, SPECIAL_DEFENSE: 20, SPEED: 20 })
    p.shiny true
    p.ball :HEAVYBALL
  end
end

#---------------------------------------
# Team Rocket
#---------------------------------------
GameData::Trainer.define(:TEAMROCKET_M, "Grunt", 1) do |t|
  t.lose_text "You're too good for me!"
  t.pokemon(:WEEPINBELL, 21) { |p| p.shadow true }
end

GameData::Trainer.define(:TEAMROCKET_F, "Grunt", 1) do |t|
  t.lose_text "You're too good for me!"
  t.pokemon(:BURMY, 19)
  t.pokemon(:WINGULL, 19)
  t.pokemon(:ELECTABUZZ, 20) { |p| p.shadow true }
end

#---------------------------------------
# Joey's Ultimate Rattata (F.E.A.R.)
#---------------------------------------
GameData::Trainer.define(:YOUNGSTER, "Joey") do |t|
  t.lose_text "My Rattata! It really IS in the top percentage! You've witnessed greatness!"
  t.pokemon(:RATTATA, 100) do |p|
    p.moves :ENDEAVOR, :QUICKATTACK, :SUCKERPUNCH, :PROTECT
    p.nature :JOLLY
    p.ability_index 0
    p.item :FOCUSSASH
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#===============================================================================
# TEST TRAINERS - Battle Mechanics Testing
#===============================================================================

#---------------------------------------
# TEST: Mega Evolution
#---------------------------------------
GameData::Trainer.define(:AITESTER_M, "MegaTester") do |t|
  t.items :HYPERPOTION, :HYPERPOTION, :MEGARING
  t.lose_text "Your Mega Evolution strategy was better!"
  t.skill_level 100
  t.pokemon(:CHARIZARD, 20) do |p|
    p.item :CHARIZARDITEX
    p.moves :FLAMETHROWER, :DRAGONCLAW, :AIRSLASH, :ROOST
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:LUCARIO, 20) do |p|
    p.item :LUCARIONITE
    p.moves :AURASPHERE, :FLASHCANNON, :CLOSECOMBAT, :EXTREMESPEED
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:GENGAR, 20) do |p|
    p.item :GENGARITE
    p.moves :SHADOWBALL, :SLUDGEBOMB, :FOCUSBLAST, :DESTINYBOND
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#---------------------------------------
# TEST: Dynamax
#---------------------------------------
GameData::Trainer.define(:AITESTER_F, "DynamaxTester") do |t|
  t.items :HYPERPOTION, :HYPERPOTION, :DYNAMAXBAND
  t.lose_text "Your Dynamax timing was perfect!"
  t.skill_level 100
  t.pokemon(:CINDERACE, 20) do |p|
    p.dynamax_level 10
    p.moves :PYROBALL, :HIGHJUMPKICK, :UTURN, :COURTCHANGE
    p.ability_index 2
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 4, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
  t.pokemon(:INTELEON, 20) do |p|
    p.dynamax_level 10
    p.moves :SNIPESHOT, :ICEBEAM, :UTURN, :AIRSLASH
    p.ability_index 2
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:RILLABOOM, 20) do |p|
    p.dynamax_level 10
    p.moves :DRUMBEATING, :KNOCKOFF, :UTURN, :HIGHHORSEPOWER
    p.ability_index 2
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
end

#---------------------------------------
# TEST: Terastallization
#---------------------------------------
GameData::Trainer.define(:AITESTER_M, "TeraTester") do |t|
  t.items :HYPERPOTION, :HYPERPOTION, :TERAORB
  t.lose_text "Your Tera strategy was superior!"
  t.skill_level 100
  t.pokemon(:PIKACHU, 20) do |p|
    p.tera_type :WATER
    p.moves :THUNDERBOLT, :SURF, :VOLTSWITCH, :KNOCKOFF
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:GARCHOMP, 20) do |p|
    p.tera_type :FAIRY
    p.moves :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 4, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
  t.pokemon(:AEGISLASH, 20) do |p|
    p.tera_type :GHOST
    p.moves :SHADOWBALL, :FLASHCANNON, :SHADOWSNEAK, :KINGSSHIELD
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 4, SPECIAL_DEFENSE: 0, SPEED: 0 })
  end
end

#---------------------------------------
# TEST: Z-Moves
#---------------------------------------
GameData::Trainer.define(:AITESTER_F, "ZMoveTester") do |t|
  t.items :HYPERPOTION, :HYPERPOTION, :ZPOWERRING
  t.lose_text "Your Z-Move was devastating!"
  t.skill_level 100
  t.pokemon(:RAICHU, 20) do |p|
    p.item :PIKANIUMZ
    p.moves :THUNDERBOLT, :VOLTSWITCH, :GRASSKNOT, :NASTYPLOT
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:DECIDUEYE, 20) do |p|
    p.item :DECIDIUMZ
    p.moves :SPIRITSHACKLE, :LEAFBLADE, :UTURN, :SWORDSDANCE
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 4, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
  t.pokemon(:PRIMARINA, 20) do |p|
    p.item :PRIMARIUMZ
    p.moves :SPARKLINGARIA, :MOONBLAST, :PSYCHIC, :CALMMIND
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
end

#---------------------------------------
# TEST: Mixed Mechanics (All at once!)
#---------------------------------------
GameData::Trainer.define(:CHAMPION, "MechanicMaster") do |t|
  t.items :FULLRESTORE, :FULLRESTORE, :FULLRESTORE, :MEGARING, :DYNAMAXBAND, :TERAORB, :ZPOWERRING
  t.lose_text "You've mastered all battle mechanics!"
  t.skill_level 100
  t.pokemon(:CHARIZARD, 25) do |p|
    p.item :CHARIZARDITEY
    p.moves :FLAMETHROWER, :AIRSLASH, :SOLARBEAM, :ROOST
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:CINDERACE, 25) do |p|
    p.dynamax_level 10
    p.moves :PYROBALL, :HIGHJUMPKICK, :UTURN, :IRONHEAD
    p.ability_index 2
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 4, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
  t.pokemon(:GARCHOMP, 25) do |p|
    p.tera_type :STEEL
    p.moves :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 4, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
  t.pokemon(:RAICHU, 25) do |p|
    p.item :ALORAICHIUMZ
    p.moves :THUNDERBOLT, :PSYCHIC, :GRASSKNOT, :NASTYPLOT
    p.ability_index 0
    p.form 1
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:LUCARIO, 25) do |p|
    p.item :LUCARIONITE
    p.moves :AURASPHERE, :FLASHCANNON, :CLOSECOMBAT, :EXTREMESPEED
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:DRAGAPULT, 25) do |p|
    p.tera_type :DRAGON
    p.moves :DRACOMETEOR, :SHADOWBALL, :UTURN, :FIREBLAST
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#---------------------------------------
# TEST: Doubles Battle with Mechanics
#---------------------------------------
GameData::Trainer.define(:COOLCOUPLE, "MechanicDuo") do |t|
  t.items :MEGARING, :DYNAMAXBAND, :TERAORB
  t.lose_text "Your doubles strategy was flawless!"
  t.skill_level 100
  t.double_battle true
  t.pokemon(:CHARIZARD, 22) do |p|
    p.item :CHARIZARDITEX
    p.moves :HEATWAVE, :AIRSLASH, :PROTECT, :TAILWIND
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:RILLABOOM, 22) do |p|
    p.dynamax_level 10
    p.moves :DRUMBEATING, :KNOCKOFF, :PROTECT, :GRASSYGLIDE
    p.ability_index 2
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:INTELEON, 22) do |p|
    p.dynamax_level 10
    p.moves :SNIPESHOT, :ICEBEAM, :PROTECT, :UTURN
    p.ability_index 2
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:AEGISLASH, 22) do |p|
    p.tera_type :FAIRY
    p.moves :FLASHCANNON, :SHADOWBALL, :KINGSSHIELD, :WIDEGUARD
    p.ability_index 0
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 4, SPECIAL_DEFENSE: 0, SPEED: 0 })
  end
end

#---------------------------------------
# Tester (Full Team with Abilities)
#---------------------------------------
GameData::Trainer.define(:POKEMONTRAINER_Red, "Tester") do |t|
  t.lose_text "Great test!"
  t.pokemon(:SABLEYE, 20) do |p|
    p.moves :WILLOWISP, :RECOVER, :TAUNT, :KNOCKOFF
    p.ability :PRANKSTER
    p.item :LEFTOVERS
    p.nature :BOLD
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:MURKROW, 20) do |p|
    p.moves :THUNDERWAVE, :TAILWIND, :ROOST, :FOULPLAY
    p.ability :PRANKSTER
    p.item :EVIOLITE
    p.nature :CALM
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:FERROSEED, 20) do |p|
    p.moves :LEECHSEED, :PROTECT, :GYROBALL, :STEALTHROCK
    p.ability :IRONBARBS
    p.item :ROCKYHELMET
    p.nature :RELAXED
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 0 })
    p.ev({ HP: 252, ATTACK: 4, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 0, SPEED: 0 })
  end
  t.pokemon(:MIENFOO, 20) do |p|
    p.moves :UTURN, :FAKEOUT, :HIGHJUMPKICK, :KNOCKOFF
    p.ability :REGENERATOR
    p.item :LIFEORB
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:VULPIX, 20) do |p|
    p.moves :FLAMETHROWER, :WILLOWISP, :HEX, :PROTECT
    p.ability :DROUGHT
    p.item :HEATROCK
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:EEVEE, 20) do |p|
    p.moves :QUICKATTACK, :BITE, :CHARM, :HELPINGHAND
    p.ability :ADAPTABILITY
    p.item :SILKSCARF
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#===============================================================================
# SHATTERED CROWNS - Story Trainers
#===============================================================================

#---------------------------------------
# Rival Ragnar
#---------------------------------------
GameData::Trainer.define(:RIVAL_RAGNAR, "Ragnar") do |t|
  t.lose_text "Hmph... You've gotten stronger."
  t.pokemon(:RIOLU, 8) do |p|
    p.moves :QUICKATTACK, :COUNTER, :FORCEPALM, :FEINT
    p.nature :ADAMANT
  end
end

GameData::Trainer.define(:RIVAL_RAGNAR, "Ragnar", 1) do |t|
  t.lose_text "This changes nothing!"
  t.pokemon(:RIOLU, 14) do |p|
    p.moves :QUICKATTACK, :FORCEPALM, :COUNTER, :METALCLAW
    p.nature :ADAMANT
  end
  t.pokemon(:PIDGEY, 12) do |p|
    p.moves :GUST, :QUICKATTACK, :SANDATTACK, :TACKLE
  end
end

GameData::Trainer.define(:RIVAL_RAGNAR, "Ragnar", 2) do |t|
  t.lose_text "I underestimated you... again."
  t.pokemon(:LUCARIO, 26) do |p|
    p.moves :AURASPHERE, :QUICKATTACK, :METALCLAW, :BONERUSH
    p.nature :ADAMANT
    p.item :SITRUSBERRY
  end
  t.pokemon(:PIDGEOTTO, 24) do |p|
    p.moves :WINGATTACK, :GUST, :QUICKATTACK, :TWISTER
  end
  t.pokemon(:GROWLITHE, 23) do |p|
    p.moves :FLAMEWHEEL, :BITE, :REVERSAL, :ROAR
  end
end

GameData::Trainer.define(:RIVAL_RAGNAR, "Ragnar", 3) do |t|
  t.lose_text "You... you're actually strong."
  t.pokemon(:LUCARIO, 35) do |p|
    p.moves :AURASPHERE, :CLOSECOMBAT, :FLASHCANNON, :EXTREMESPEED
    p.nature :ADAMANT
    p.item :EXPERTBELT
  end
  t.pokemon(:PIDGEOT, 33) do |p|
    p.moves :AIRSLASH, :HURRICANE, :ROOST, :HEATWAVE
  end
  t.pokemon(:ARCANINE, 34) do |p|
    p.moves :FLAMETHROWER, :EXTREMESPEED, :CRUNCH, :WILDCHARGE
  end
  t.pokemon(:GALLADE, 32) do |p|
    p.moves :PSYCHOCUT, :CLOSECOMBAT, :LEAFBLADE, :SWORDSDANCE
  end
end

#---------------------------------------
# Gym Leader Flora (Bug)
#---------------------------------------
GameData::Trainer.define(:LEADER_FLORA, "Flora") do |t|
  t.items :SUPERPOTION, :SUPERPOTION
  t.lose_text "You've truly blossomed as a trainer!"
  t.pokemon(:BUTTERFREE, 14) do |p|
    p.moves :CONFUSION, :SLEEPPOWDER, :GUST, :STUNSPORE
    p.ability_index 0
    p.gender 1  # female
  end
  t.pokemon(:BEEDRILL, 14) do |p|
    p.moves :FURYATTACK, :TWINEEDLE, :FOCUSENERGY, :POISONSTING
    p.ability_index 0
    p.gender 1  # female
  end
  t.pokemon(:VIVILLON, 16) do |p|
    p.moves :STRUGGLEBUG, :GUST, :STUNSPORE, :LIGHTSCREEN
    p.ability_index 0
    p.gender 1  # female
    p.item :SITRUSBERRY
  end
end

#---------------------------------------
# Gym Leader Marina (Water)
#---------------------------------------
GameData::Trainer.define(:LEADER_MARINA, "Marina") do |t|
  t.items :SUPERPOTION, :SUPERPOTION
  t.lose_text "The tide turns in your favor!"
  t.pokemon(:STARYU, 20) do |p|
    p.moves :WATERPULSE, :SWIFT, :RECOVER, :CONFUSERAY
    p.ability_index 0
  end
  t.pokemon(:WARTORTLE, 21) do |p|
    p.moves :WATERPULSE, :BITE, :AQUARING, :PROTECT
    p.ability_index 0
    p.gender 0  # male
  end
  t.pokemon(:DEWGONG, 23) do |p|
    p.moves :AURORABEAM, :WATERPULSE, :ICESHARD, :AQUARING
    p.ability_index 0
    p.gender 1  # female
    p.item :SITRUSBERRY
  end
end

#---------------------------------------
# Gym Leader Rocky (Rock)
#---------------------------------------
GameData::Trainer.define(:LEADER_ROCKY, "Rocky") do |t|
  t.items :HYPERPOTION, :HYPERPOTION
  t.lose_text "You're rock solid, trainer!"
  t.pokemon(:GRAVELER, 26) do |p|
    p.moves :ROCKSLIDE, :EARTHQUAKE, :DEFENSECURL, :BULLDOZE
    p.ability_index 0
    p.gender 0  # male
  end
  t.pokemon(:ONIX, 27) do |p|
    p.moves :ROCKSLIDE, :DIG, :IRONTAIL, :SANDSTORM
    p.ability_index 0
    p.gender 0  # male
  end
  t.pokemon(:GOLEM, 29) do |p|
    p.moves :ROCKSLIDE, :EARTHQUAKE, :EXPLOSION, :STEALTHROCK
    p.ability_index 0
    p.gender 0  # male
    p.item :SITRUSBERRY
  end
end

#---------------------------------------
# Cult Trainers
#---------------------------------------
GameData::Trainer.define(:CULTIST, "Grunt", 1) do |t|
  t.lose_text "The Shattered Hand will prevail!"
  t.pokemon(:ZUBAT, 18)
  t.pokemon(:GRIMER, 19)
end

GameData::Trainer.define(:CULTIST, "Grunt", 2) do |t|
  t.lose_text "You cannot stop what is coming!"
  t.pokemon(:GOLBAT, 25)
  t.pokemon(:MUK, 26)
  t.pokemon(:HAUNTER, 24)
end

GameData::Trainer.define(:CULT_ACOLYTE, "Acolyte", 1) do |t|
  t.lose_text "Lord Malachar will have his revenge!"
  t.pokemon(:SABLEYE, 30) do |p|
    p.moves :SHADOWBALL, :CONFUSERAY, :FOULPLAY, :WILLOWISP
  end
  t.pokemon(:DUSCLOPS, 32) do |p|
    p.moves :SHADOWPUNCH, :WILLOWISP, :CURSE, :CONFUSERAY
  end
  t.pokemon(:SPIRITOMB, 31) do |p|
    p.moves :DARKPULSE, :SHADOWBALL, :HYPNOSIS, :DREAMEATER
  end
end

#---------------------------------------
# General Shade
#---------------------------------------
GameData::Trainer.define(:GENERAL_SHADE, "Shade") do |t|
  t.items :FULLRESTORE, :FULLRESTORE
  t.lose_text "Impressive... but this is far from over."
  t.pokemon(:HONCHKROW, 48) do |p|
    p.moves :DARKPULSE, :BRAVEBIRD, :HEATWAVE, :NASTYPLOT
    p.nature :MODEST
    p.item :LIFEORB
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
  end
  t.pokemon(:WEAVILE, 47) do |p|
    p.moves :NIGHTSLASH, :ICEPUNCH, :BRICKBREAK, :SWORDSDANCE
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
  end
  t.pokemon(:BISHARP, 49) do |p|
    p.moves :IRONHEAD, :NIGHTSLASH, :SWORDSDANCE, :SUCKERPUNCH
    p.nature :ADAMANT
    p.item :FOCUSSASH
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
  end
  t.pokemon(:DUSKNOIR, 48) do |p|
    p.moves :SHADOWPUNCH, :EARTHQUAKE, :ICEPUNCH, :THUNDERPUNCH
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
  end
  t.pokemon(:SPIRITOMB, 50) do |p|
    p.moves :DARKPULSE, :SHADOWBALL, :WILLOWISP, :CALMMIND
    p.nature :BOLD
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
  end
end

#---------------------------------------
# Malachar (Mid-Game Boss)
#---------------------------------------
GameData::Trainer.define(:MALACHAR, "Malachar") do |t|
  t.items :FULLRESTORE, :FULLRESTORE, :FULLRESTORE
  t.lose_text "No... the fragments... how?!"
  t.pokemon(:HYDREIGON, 68) do |p|
    p.moves :DARKPULSE, :DRACOMETEOR, :FLAMETHROWER, :FLASHCANNON
    p.nature :TIMID
    p.item :LIFEORB
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:TYRANITAR, 67) do |p|
    p.moves :STONEEDGE, :CRUNCH, :EARTHQUAKE, :DRAGONDANCE
    p.nature :ADAMANT
    p.item :FOCUSSASH
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:CHANDELURE, 66) do |p|
    p.moves :SHADOWBALL, :FIREBLAST, :ENERGYBALL, :TRICKROOM
    p.nature :QUIET
    p.item :CHOICESPECS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 0 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:AEGISLASH, 67) do |p|
    p.moves :SHADOWBALL, :FLASHCANNON, :KINGSSHIELD, :SHADOWSNEAK
    p.nature :QUIET
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 4, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 0, SPEED: 0 })
  end
  t.pokemon(:GRIMMSNARL, 66) do |p|
    p.moves :SPIRITBREAK, :DARKESTLARIAT, :THUNDERWAVE, :TAUNT
    p.nature :IMPISH
    p.item :LIGHTCLAY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:DARKRAI, 70) do |p|
    p.moves :DARKPULSE, :DARKVOID, :DREAMEATER, :NASTYPLOT
    p.nature :TIMID
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#---------------------------------------
# Guardian's Echo Side Quest - Zamazenta
#---------------------------------------
GameData::Trainer.define(:GUARDIAN_ECHO, "Zamazenta Echo") do |t|
  t.lose_text "You fight with conviction... for others. That is the heart of a true protector."
  t.pokemon(:ZAMAZENTA, 50) do |p|
    p.form 1
    p.moves :BEHEMOTHBASH, :CLOSECOMBAT, :CRUNCH, :HOWL
    p.nature :IMPISH
    p.ability_index 0
    p.item :RUSTEDSHIELD
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 128, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 128, SPEED: 0 })
  end
end

#---------------------------------------
# Shadow Self Battle (Kael's Past)
#---------------------------------------
GameData::Trainer.define(:SHADOW_SELF, "Shadow Kael") do |t|
  t.lose_text "...You're stronger now. Perhaps strong enough to live without me."
  t.pokemon(:UMBREON, 45) do |p|
    p.moves :FOULPLAY, :MOONLIGHT, :TOXIC, :PROTECT
    p.nature :CALM
    p.ability_index 0
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 4, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 252, SPEED: 0 })
  end
  t.pokemon(:ABSOL, 46) do |p|
    p.moves :NIGHTSLASH, :SWORDSDANCE, :PSYCHOCUT, :SUPERPOWER
    p.nature :ADAMANT
    p.ability_index 0
    p.item :SCOPELENS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
  t.pokemon(:ZOROARK, 47) do |p|
    p.moves :NIGHTDAZE, :FLAMETHROWER, :NASTYPLOT, :FOCUSBLAST
    p.nature :TIMID
    p.ability_index 0
    p.item :LIFEORB
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:GRENINJA, 48) do |p|
    p.form 2
    p.moves :DARKPULSE, :HYDROPUMP, :ICEBEAM, :EXTRASENSORY
    p.nature :TIMID
    p.ability_index 0
    p.item :CHOICESPECS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#---------------------------------------
# Subject Zero - Chimera Battle
#---------------------------------------
GameData::Trainer.define(:SCIENTIST, "Subject Zero") do |t|
  t.lose_text "...Father... forgive... me..."
  t.pokemon(:MEWTWO, 60) do |p|
    p.form 0
    p.moves :PSYSTRIKE, :DARKPULSE, :RECOVER, :AURASPHERE
    p.nature :TIMID
    p.ability_index 0
    p.item :LIFEORB
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#---------------------------------------
# Final Boss: Malachar with Eternatus
#---------------------------------------
GameData::Trainer.define(:CULT_LEADER, "Malachar") do |t|
  t.items :FULLRESTORE, :FULLRESTORE, :FULLRESTORE, :FULLRESTORE
  t.lose_text "Impossible! Nidhoggr was supposed to end all suffering!"
  t.pokemon(:HYDREIGON, 68) do |p|
    p.moves :DRACOMETEOR, :DARKPULSE, :FLASHCANNON, :FLAMETHROWER
    p.nature :MODEST
    p.ability_index 0
    p.item :CHOICESPECS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:TYRANITAR, 67) do |p|
    p.moves :STONEEDGE, :CRUNCH, :EARTHQUAKE, :DRAGONDANCE
    p.nature :ADAMANT
    p.ability_index 0
    p.item :WEAKNESSPOLICY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:DUSKNOIR, 66) do |p|
    p.moves :SHADOWPUNCH, :WILLOWISP, :PAINSPLIT, :EARTHQUAKE
    p.nature :CAREFUL
    p.ability_index 0
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 128, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 128, SPEED: 0 })
  end
  t.pokemon(:CHANDELURE, 67) do |p|
    p.moves :SHADOWBALL, :FIREBLAST, :ENERGYBALL, :TRICKROOM
    p.nature :QUIET
    p.ability_index 0
    p.item :CHOICESCARF
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 0 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:GRIMMSNARL, 68) do |p|
    p.moves :SPIRITBREAK, :FOULPLAY, :THUNDERWAVE, :REFLECT
    p.nature :IMPISH
    p.ability_index 0
    p.item :LIGHTCLAY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:ETERNATUS, 70) do |p|
    p.form 0
    p.moves :DYNAMAXCANNON, :CROSSPOISON, :FLAMETHROWER, :RECOVER
    p.nature :TIMID
    p.ability_index 0
    p.item :BLACKSLUDGE
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#---------------------------------------
# Post-Game Boss: Eternamax Eternatus
#---------------------------------------
GameData::Trainer.define(:CULT_LEADER, "Malachar Reborn") do |t|
  t.items :FULLRESTORE, :FULLRESTORE, :FULLRESTORE, :FULLRESTORE
  t.lose_text "Even in failure... I showed the world its flaws..."
  t.pokemon(:ETERNATUS, 100) do |p|
    p.form 1
    p.moves :ETERNABEAM, :DYNAMAXCANNON, :COSMICPOWER, :RECOVER
    p.nature :MODEST
    p.ability_index 0
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 0, SPEED: 4 })
  end
end
#===============================================================================
# AI TEST TRAINERS - Skill Level 100
# Purpose: Test that the Advanced AI correctly uses status moves, recovery,
#          setup, hazards, screens, and handles PP depletion gracefully.
#===============================================================================

#---------------------------------------------------------------
# TEST 1: Hazard Setter Lead
# Expected: AI sets Stealth Rock turn 1, then Spikes, Roosts when low HP
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_M, "Hazard Lead") do |t|
  t.skill_level 100
  t.lose_text "The hazards did their job..."
  t.pokemon(:SKARMORY, 50) do |p|
    p.moves :STEALTHROCK, :SPIKES, :WHIRLWIND, :ROOST
    p.nature :IMPISH
    p.ability_index 1
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:FERROTHORN, 50) do |p|
    p.moves :STEALTHROCK, :LEECHSEED, :PROTECT, :POWERWHIP
    p.nature :RELAXED
    p.ability_index 0
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
end

#---------------------------------------------------------------
# TEST 2: Dual Screen Setter
# Expected: AI uses Reflect/Light Screen turn 1-2, then attacks or T-Waves
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_M, "Screen Setter") do |t|
  t.skill_level 100
  t.lose_text "The screens protected us well..."
  t.pokemon(:GRIMMSNARL, 50) do |p|
    p.moves :REFLECT, :LIGHTSCREEN, :THUNDERWAVE, :SPIRITBREAK
    p.nature :CAREFUL
    p.ability_index 0
    p.item :LIGHTCLAY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 128, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 128, SPEED: 0 })
  end
  t.pokemon(:KLEFKI, 50) do |p|
    p.moves :REFLECT, :LIGHTSCREEN, :THUNDERWAVE, :FOULPLAY
    p.nature :BOLD
    p.ability_index 0
    p.item :LIGHTCLAY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
end

#---------------------------------------------------------------
# TEST 3: Recovery Wall
# Expected: AI uses Soft-Boiled/Recover when HP < 50%, spreads status otherwise
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_F, "Stall Wall") do |t|
  t.skill_level 100
  t.lose_text "I couldn't outlast you..."
  t.pokemon(:BLISSEY, 50) do |p|
    p.moves :SOFTBOILED, :SEISMICTOSS, :TOXIC, :THUNDERWAVE
    p.nature :BOLD
    p.ability_index 0
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:TOXAPEX, 50) do |p|
    p.moves :RECOVER, :TOXIC, :SCALD, :HAZE
    p.nature :BOLD
    p.ability_index 0
    p.item :BLACKSLUDGE
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
end

#---------------------------------------------------------------
# TEST 4: Swords Dance Physical Sweeper
# Expected: AI uses Swords Dance when safe (HP > 50%, not outsped by SE threat)
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_M, "SD Sweeper") do |t|
  t.skill_level 100
  t.lose_text "Should have set up more..."
  t.pokemon(:GARCHOMP, 50) do |p|
    p.moves :SWORDSDANCE, :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE
    p.nature :JOLLY
    p.ability_index 0
    p.item :LIFEORB
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:SCIZOR, 50) do |p|
    p.moves :SWORDSDANCE, :BULLETPUNCH, :UTURN, :KNOCKOFF
    p.nature :ADAMANT
    p.ability_index 0
    p.item :LIFEORB
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 4, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
end

#---------------------------------------------------------------
# TEST 5: Dragon Dance Sweeper
# Expected: AI uses Dragon Dance when safe, then sweeps
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_M, "DD Sweeper") do |t|
  t.skill_level 100
  t.lose_text "The dance was not enough..."
  t.pokemon(:DRAGONITE, 50) do |p|
    p.moves :DRAGONDANCE, :OUTRAGE, :EXTREMESPEED, :EARTHQUAKE
    p.nature :ADAMANT
    p.ability_index 0
    p.item :LUMBERRY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:GYARADOS, 50) do |p|
    p.moves :DRAGONDANCE, :WATERFALL, :EARTHQUAKE, :ICEFANG
    p.nature :JOLLY
    p.ability_index 0
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 4, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
end

#---------------------------------------------------------------
# TEST 6: Special Setup Sweeper
# Expected: AI uses Nasty Plot/Calm Mind when safe, then attacks
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_F, "Special Setup") do |t|
  t.skill_level 100
  t.lose_text "My special attacks were not enough..."
  t.pokemon(:TOGEKISS, 50) do |p|
    p.moves :NASTYPLOT, :AIRSLASH, :DAZZLINGGLEAM, :ROOST
    p.nature :TIMID
    p.ability_index 1
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 4, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
  t.pokemon(:ALAKAZAM, 50) do |p|
    p.moves :CALMMIND, :PSYCHIC, :SHADOWBALL, :FOCUSBLAST
    p.nature :TIMID
    p.ability_index 0
    p.item :LIFEORB
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 4, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
end

#---------------------------------------------------------------
# TEST 7: Status Spreader
# Expected: AI Toxics bulky targets, T-Waves fast targets, WoWs physical attackers
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_F, "Status Spread") do |t|
  t.skill_level 100
  t.lose_text "Status conditions are my weapon..."
  t.pokemon(:CHANSEY, 50) do |p|
    p.moves :TOXIC, :THUNDERWAVE, :SEISMICTOSS, :SOFTBOILED
    p.nature :BOLD
    p.ability_index 0
    p.item :EVIOLITE
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:GENGAR, 50) do |p|
    p.moves :WILLOWISP, :TOXIC, :SHADOWBALL, :SLUDGEBOMB
    p.nature :TIMID
    p.ability_index 0
    p.item :BLACKSLUDGE
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 4, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
end

#---------------------------------------------------------------
# TEST 8: Full Competitive Team (Mixed Roles)
# Expected: Lead sets rocks, screens go up, sweeper sets up, wall recovers
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_M, "Full Team") do |t|
  t.skill_level 100
  t.items :FULLRESTORE, :FULLRESTORE
  t.lose_text "Your team was stronger than mine..."
  t.pokemon(:SKARMORY, 50) do |p|
    p.moves :STEALTHROCK, :SPIKES, :WHIRLWIND, :ROOST
    p.nature :IMPISH
    p.ability_index 1
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:GRIMMSNARL, 50) do |p|
    p.moves :REFLECT, :LIGHTSCREEN, :THUNDERWAVE, :SPIRITBREAK
    p.nature :CAREFUL
    p.ability_index 0
    p.item :LIGHTCLAY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 128, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 128, SPEED: 0 })
  end
  t.pokemon(:GARCHOMP, 50) do |p|
    p.moves :SWORDSDANCE, :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE
    p.nature :JOLLY
    p.ability_index 0
    p.item :LIFEORB
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:DRAGONITE, 50) do |p|
    p.moves :DRAGONDANCE, :OUTRAGE, :EXTREMESPEED, :EARTHQUAKE
    p.nature :ADAMANT
    p.ability_index 0
    p.item :LUMBERRY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
  t.pokemon(:BLISSEY, 50) do |p|
    p.moves :SOFTBOILED, :SEISMICTOSS, :TOXIC, :THUNDERWAVE
    p.nature :BOLD
    p.ability_index 0
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 252, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 0 })
  end
  t.pokemon(:VOLCARONA, 50) do |p|
    p.moves :QUIVERDANCE, :FIREBLAST, :BUGBUZZ, :GIGADRAIN
    p.nature :TIMID
    p.ability_index 0
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 4, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
end

#---------------------------------------------------------------
# TEST 9: PP Depletion Edge Case
# Expected: When all good moves hit 0 PP, AI should Struggle, not freeze
# Choice Specs locks into one move — once PP hits 0, it must Struggle
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_M, "PP Drain") do |t|
  t.skill_level 100
  t.lose_text "I ran out of moves..."
  t.pokemon(:GENGAR, 50) do |p|
    p.moves :SHADOWBALL, :SLUDGEBOMB, :FOCUSBLAST, :THUNDERBOLT
    p.nature :TIMID
    p.ability_index 0
    p.item :CHOICESPECS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 0, DEFENSE: 4, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
end

#===============================================================================
# Asgheim League — Elite Four (Ch29)
#===============================================================================
# Fenris (Fire), Valdra (Dragon), Morwen (Ghost), Orm (Water). Each roster is
# 5 mons, level 60-62, fully EV'd and equipped. Skill 80 (high but not max
# so the player isn't strangled by perfect prediction every turn).
#===============================================================================

#---------------------------------------
# Elite Four — Fenris, Fire (Marcus's old partner)
#---------------------------------------
GameData::Trainer.define(:ELITEFOUR_Fenris, "Fenris") do |t|
  t.skill_level 80
  t.lose_text "...So this is what Marcus saw in you."
  t.pokemon(:NINETALES, 60) do |p|
    p.moves :FLAMETHROWER, :NASTYPLOT, :SOLARBEAM, :SUNNYDAY
    p.ability :DROUGHT
    p.item :HEATROCK
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, SPECIAL_ATTACK: 4, SPEED: 252 })
  end
  t.pokemon(:ARCANINE, 60) do |p|
    p.moves :FLAREBLITZ, :EXTREMESPEED, :CLOSECOMBAT, :MORNINGSUN
    p.ability :INTIMIDATE
    p.item :LIFEORB
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:DARMANITAN, 61) do |p|
    p.moves :FLAREBLITZ, :UTURN, :EARTHQUAKE, :ROCKSLIDE
    p.ability :SHEERFORCE
    p.item :CHOICESCARF
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:CHANDELURE, 61) do |p|
    p.moves :FIREBLAST, :SHADOWBALL, :ENERGYBALL, :TRICK
    p.ability :FLASHFIRE
    p.item :CHOICESPECS
    p.nature :MODEST
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:CINDERACE, 62) do |p|
    p.moves :PYROBALL, :HIGHJUMPKICK, :UTURN, :SUCKERPUNCH
    p.ability :LIBERO
    p.item :LIFEORB
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
end

#---------------------------------------
# Elite Four — Valdra, Dragon (Aurora's contemporary)
#---------------------------------------
GameData::Trainer.define(:ELITEFOUR_Valdra, "Valdra") do |t|
  t.skill_level 80
  t.lose_text "Aurora chose well in her child. I see her in you."
  t.pokemon(:ALTARIA, 60) do |p|
    p.moves :DRAGONPULSE, :MOONBLAST, :ROOST, :HYPERVOICE
    p.ability :PIXILATE
    p.item :ALTARIANITE
    p.nature :MODEST
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, SPECIAL_ATTACK: 4, SPEED: 252 })
  end
  t.pokemon(:HAXORUS, 60) do |p|
    p.moves :OUTRAGE, :EARTHQUAKE, :POISONJAB, :DRAGONDANCE
    p.ability :MOLDBREAKER
    p.item :LUMBERRY
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:HYDREIGON, 61) do |p|
    p.moves :DRACOMETEOR, :DARKPULSE, :FLASHCANNON, :EARTHPOWER
    p.ability :LEVITATE
    p.item :LIFEORB
    p.nature :MODEST
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:DRAGAPULT, 61) do |p|
    p.moves :DRAGONDARTS, :PHANTOMFORCE, :UTURN, :FIREBLAST
    p.ability :INFILTRATOR
    p.item :CHOICESCARF
    p.nature :NAIVE
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:GARCHOMP, 62) do |p|
    p.moves :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE
    p.ability :ROUGHSKIN
    p.item :YACHEBERRY
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
end

#---------------------------------------
# Elite Four — Morwen, Ghost (Lady Morwen from Ch25, post-redemption)
#---------------------------------------
GameData::Trainer.define(:ELITEFOUR_Morwen, "Morwen") do |t|
  t.skill_level 80
  t.lose_text "I tended graves longer than I battled. The dead have nothing left to say to me."
  t.pokemon(:SPIRITOMB, 60) do |p|
    p.moves :SHADOWSNEAK, :SUCKERPUNCH, :WILLOWISP, :MEMENTO
    p.ability :PRESSURE
    p.item :LEFTOVERS
    p.nature :SASSY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 0 })
    p.ev({ HP: 252, ATTACK: 4, SPECIAL_DEFENSE: 252 })
  end
  t.pokemon(:DUSKNOIR, 60) do |p|
    p.moves :SHADOWPUNCH, :EARTHQUAKE, :ICEPUNCH, :PAINSPLIT
    p.ability :PRESSURE
    p.item :ASSAULTVEST
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 })
  end
  t.pokemon(:MIMIKYU, 61) do |p|
    p.moves :PLAYROUGH, :SHADOWCLAW, :SHADOWSNEAK, :SWORDSDANCE
    p.ability :DISGUISE
    p.item :LIFEORB
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:GENGAR, 61) do |p|
    p.moves :SHADOWBALL, :SLUDGEWAVE, :THUNDERBOLT, :NASTYPLOT
    p.ability :CURSEDBODY
    p.item :FOCUSSASH
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:AEGISLASH, 62) do |p|
    p.moves :SHADOWBALL, :FLASHCANNON, :SHADOWSNEAK, :KINGSSHIELD
    p.ability :STANCECHANGE
    p.item :LEFTOVERS
    p.nature :QUIET
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 0 })
    p.ev({ HP: 252, ATTACK: 4, SPECIAL_ATTACK: 252 })
  end
end

#---------------------------------------
# Elite Four — Orm, Water (Captain Lior's nephew)
#---------------------------------------
GameData::Trainer.define(:ELITEFOUR_Orm, "Orm") do |t|
  t.skill_level 80
  t.lose_text "Uncle Lior bet I'd lose. He'll be insufferable about it."
  t.pokemon(:PELIPPER, 60) do |p|
    p.moves :HURRICANE, :SURF, :UTURN, :ROOST
    p.ability :DRIZZLE
    p.item :DAMPROCK
    p.nature :MODEST
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 })
  end
  t.pokemon(:BARRASKEWDA, 60) do |p|
    p.moves :LIQUIDATION, :CLOSECOMBAT, :PSYCHICFANGS, :AQUAJET
    p.ability :SWIFTSWIM
    p.item :CHOICEBAND
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:KINGDRA, 61) do |p|
    p.moves :HYDROPUMP, :DRACOMETEOR, :SCALD, :RAINDANCE
    p.ability :SWIFTSWIM
    p.item :LIFEORB
    p.nature :MODEST
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:TOXAPEX, 61) do |p|
    p.moves :SCALD, :TOXIC, :RECOVER, :HAZE
    p.ability :REGENERATOR
    p.item :BLACKSLUDGE
    p.nature :BOLD
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 })
  end
  t.pokemon(:GYARADOS, 62) do |p|
    p.moves :WATERFALL, :CRUNCH, :ICEFANG, :DRAGONDANCE
    p.ability :INTIMIDATE
    p.item :KINGSROCK
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
end

#---------------------------------------------------------------
# TEST 10: Tailwind + Shell Smash (Speed Control + Setup)
# Expected: AI uses Tailwind turn 1, then Shell Smash on Cloyster
#---------------------------------------------------------------
GameData::Trainer.define(:AITESTER_F, "Tailwind Support") do |t|
  t.skill_level 100
  t.lose_text "The wind was not enough..."
  t.pokemon(:TOGEKISS, 50) do |p|
    p.moves :TAILWIND, :AIRSLASH, :ROOST, :THUNDERWAVE
    p.nature :TIMID
    p.ability_index 1
    p.item :LEFTOVERS
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 252, ATTACK: 0, DEFENSE: 0, SPECIAL_ATTACK: 4, SPECIAL_DEFENSE: 0, SPEED: 252 })
  end
  t.pokemon(:CLOYSTER, 50) do |p|
    p.moves :SHELLSMASH, :ICICLESPEAR, :ROCKBLAST, :ICESHARD
    p.nature :JOLLY
    p.ability_index 0
    p.item :FOCUSSASH
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 0, ATTACK: 252, DEFENSE: 0, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 4, SPEED: 252 })
  end
end

#===============================================================================
# Postgame Marcus — Three-Tier Challenge
#===============================================================================
GameData::Trainer.define(:CHAMPION_EMERITUS, "Marcus") do |t|
  t.skill_level 100
  t.lose_text "Heh. Knew it."
  t.pokemon(:DRAGONITE, 70) do |p|
    p.moves :DRAGONDANCE, :EXTREMESPEED, :DRAGONCLAW, :EARTHQUAKE
    p.ability :MULTISCALE
    p.item :LUMBERRY
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:METAGROSS, 70) do |p|
    p.moves :METEORMASH, :EARTHQUAKE, :BULLETPUNCH, :ICEPUNCH
    p.ability :CLEARBODY
    p.item :LIFEORB
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:TYRANITAR, 70) do |p|
    p.moves :STONEEDGE, :CRUNCH, :EARTHQUAKE, :ICEPUNCH
    p.ability :SANDSTREAM
    p.item :CHOICEBAND
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:SALAMENCE, 70) do |p|
    p.moves :DRAGONCLAW, :EARTHQUAKE, :FIREBLAST, :DRAGONDANCE
    p.ability :INTIMIDATE
    p.item :YACHEBERRY
    p.nature :NAIVE
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:GARCHOMP, 70) do |p|
    p.moves :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE
    p.ability :ROUGHSKIN
    p.item :GROUNDIUMZ
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:CHARIZARD, 70) do |p|
    p.moves :FLAMETHROWER, :AIRSLASH, :SOLARBEAM, :DRAGONPULSE
    p.ability :BLAZE
    p.item :CHARIZARDITEY
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
end

# Tier 1 — Marcus side of the Aurora duo (version 1)
GameData::Trainer.define(:CHAMPION_EMERITUS, "Marcus", 1) do |t|
  t.skill_level 100
  t.lose_text "All right. *Now* I know what to work on."
  t.pokemon(:CHARIZARD, 75) do |p|
    p.moves :FLAMETHROWER, :AIRSLASH, :DRAGONPULSE, :ROOST
    p.ability :BLAZE
    p.item :CHARIZARDITEY
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:GARCHOMP, 75) do |p|
    p.moves :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE
    p.ability :ROUGHSKIN
    p.item :LIFEORB
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:DRAGONITE, 75) do |p|
    p.moves :OUTRAGE, :EXTREMESPEED, :EARTHQUAKE, :FIREPUNCH
    p.ability :MULTISCALE
    p.item :CHOICEBAND
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
end

# Tier 2 — Marcus PRIME (version 2) — full Championship-era team with megas
GameData::Trainer.define(:CHAMPION_EMERITUS, "Marcus", 2) do |t|
  t.skill_level 100
  t.lose_text "...That is it. That is it, kid."
  t.pokemon(:CHARIZARD, 80) do |p|
    p.moves :FLAMETHROWER, :AIRSLASH, :DRAGONPULSE, :SOLARBEAM
    p.ability :BLAZE
    p.item :CHARIZARDITEY
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:GARCHOMP, 80) do |p|
    p.moves :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE
    p.ability :ROUGHSKIN
    p.item :GARCHOMPITE
    p.nature :JOLLY
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:SALAMENCE, 80) do |p|
    p.moves :DRAGONCLAW, :EARTHQUAKE, :HYDROPUMP, :DRAGONDANCE
    p.ability :MOXIE
    p.item :SALAMENCITE
    p.nature :NAIVE
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:TYRANITAR, 80) do |p|
    p.moves :STONEEDGE, :CRUNCH, :EARTHQUAKE, :ICEPUNCH
    p.ability :SANDSTREAM
    p.item :TYRANITARITE
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:METAGROSS, 80) do |p|
    p.moves :METEORMASH, :EARTHQUAKE, :BULLETPUNCH, :ZENHEADBUTT
    p.ability :CLEARBODY
    p.item :METAGROSSITE
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:DRAGONITE, 80) do |p|
    p.moves :DRAGONDANCE, :OUTRAGE, :EXTREMESPEED, :EARTHQUAKE
    p.ability :MULTISCALE
    p.item :LUMBERRY
    p.nature :ADAMANT
    p.iv({ HP: 31, ATTACK: 31, DEFENSE: 31, SPECIAL_ATTACK: 0, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, ATTACK: 252, SPEED: 252 })
  end
end

# Aurora — the duo partner
GameData::Trainer.define(:RESEARCHER_EMERITUS, "Aurora") do |t|
  t.skill_level 95
  t.lose_text "Closer than last time. Much closer."
  t.pokemon(:GARDEVOIR, 75) do |p|
    p.moves :PSYCHIC, :MOONBLAST, :CALMMIND, :SHADOWBALL
    p.ability :TRACE
    p.item :GARDEVOIRITE
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:ALAKAZAM, 75) do |p|
    p.moves :PSYCHIC, :FOCUSBLAST, :SHADOWBALL, :ENERGYBALL
    p.ability :MAGICGUARD
    p.item :LIFEORB
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
  t.pokemon(:STARMIE, 75) do |p|
    p.moves :HYDROPUMP, :PSYCHIC, :ICEBEAM, :RAPIDSPIN
    p.ability :NATURALCURE
    p.item :CHOICESPECS
    p.nature :TIMID
    p.iv({ HP: 31, ATTACK: 0, DEFENSE: 31, SPECIAL_ATTACK: 31, SPECIAL_DEFENSE: 31, SPEED: 31 })
    p.ev({ HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 })
  end
end