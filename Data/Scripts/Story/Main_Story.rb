#===============================================================================
# POKÉMON SHATTERED CROWNS - MAIN STORY SCRIPTS
#===============================================================================
# Updated with ancient evils, champions, and full 55-chapter structure
# See Story_Bible.md for complete outline
#
# ASGHEIM REGION LOCATIONS:
# - Dawnhaven Village (Starter)
# - Sunrise Farm, Willowmere, Thornwood Town (Gym 1)
# - Ashwood Crossing, Misthollow City (Gym 2), Ravenwatch Post
# - Shadowfen, Ironpeak Village (Gym 3), Glacier Pass
# - Frostfall Town (Gym 4), Hollowbrook, Corona City (Gym 5)
# - Hearthstone, Ashvale Town (Gym 6), Grimholt Fortress (Gym 7)
# - Willowdale, Evershade Grove (Gym 8), Duskfall
# - Twilight Harbor, Stormwatch, Valoria City (League)
# - The Gateway, Asgaheim, The Shattered Throne
#===============================================================================

#===============================================================================
# ACT 1: NORMAL LIFE (Chapters 1-8)
# Locations: Dawnhaven → Sunrise Farm → Willowmere → Thornwood → Ashwood 
#            → Misthollow → Ravenwatch → Shadowfen → Ironpeak
#===============================================================================

#===============================================================================
# Chapter 1: Home - Dawnhaven Village
#===============================================================================

GameData::Cutscene.define :ch1_wake_up do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "\\bMom\\b: \\PN! Time to wake up!"
  scene.message "\\bMom\\b: Professor Aldric is waiting for you at the lab!"
  scene.message "\\bMom\\b: Today's the day you get your first Pokémon!"
  
  # TODO: Event Sequence - Waking up animation
  # scene.message "You stretched and looked around your room in Dawnhaven Village."
  # scene.message "The morning sun lived up to the town's name."
  # scene.message "Today was finally the day..."
end

GameData::Cutscene.define :ch1_morning_routine do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence - Room details
  # scene.message "You took a moment to look around your room."
  # scene.message "Posters of Champion battles. Model Pokéballs. A worn map."
  
  scene.message "\\b\\PN\\b: (I've been waiting for this day my whole life.)"
  scene.message "\\b\\PN\\b: (Today... everything changes.)"
  
  # TODO: Event Sequence - Getting dressed animation/fade
  # scene.message "You got dressed quickly."
  # scene.message "Your adventure clothes. Chosen weeks ago."
  # scene.message "Finally, you were going to use them."
end

GameData::Cutscene.define :ch1_breakfast_with_family do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence
  # The kitchen was lively this morning.
  # Mom had maps spread across the table between breakfast plates.
  # Dad was polishing an old Pokéball.
  
  scene.message "\\bMom (Aurora)\\b: Eat up! Can't start an adventure on an empty stomach!"
  scene.message "\\bDad (Marcus)\\b: Your mother's right. Trust me."
  scene.message "\\bDad (Marcus)\\b: I learned that the hard way in my Champion days."
  
  scene.message "\\b\\PN\\b: Dad, you've told that story a hundred times."
  
  scene.message "\\bDad (Marcus)\\b: And I'll tell it a hundred more!"
  scene.message "\\bMom (Aurora)\\b: *rolling eyes* Here we go..."
  
  scene.message "\\bDad (Marcus)\\b: Elite Four, final battle. I was starving."
  scene.message "\\bDad (Marcus)\\b: Almost lost because my stomach growled louder than my Charizard!"
  
  scene.message "\\bMom (Aurora)\\b: That's not quite how I remember it."
  scene.message "\\bDad (Marcus)\\b: Artistic license, dear."
  
  scene.message "You laughed. Your parents were ridiculous."
  scene.message "But you wouldn't have it any other way."
end

GameData::Cutscene.define :ch1_dad_gift do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bDad (Marcus)\\b: \\PN. Before you go."
  # TODO: Event Sequence - He pulled out a worn Pokéball. His hands were scarred. Battle-worn.
  # scene.message "He pulled out a worn Pokéball."
  # scene.message "His hands were scarred. Battle-worn."
  
  scene.message "\\bDad (Marcus)\\b: This was my first partner's child."
  scene.message "\\bDad (Marcus)\\b: Raised her myself after the egg hatched."
  scene.message "\\bDad (Marcus)\\b: She insisted on going with you."
  
  scene.message "\\b\\PN\\b: Dad... I can't take—"
  
  scene.message "\\bDad (Marcus)\\b: You can. And you will."
  scene.message "\\bDad (Marcus)\\b: I was Champion once. Your mother saved the world with me."
  scene.message "\\bDad (Marcus)\\b: Twice."
  
  scene.message "\\bMom (Aurora)\\b: *from the kitchen* Three times if you count the Hoenn incident!"
  
  scene.message "\\bDad (Marcus)\\b: *smiling* The point is..."
  scene.message "\\bDad (Marcus)\\b: We won't hold you back. This is YOUR journey."
  scene.message "\\bDad (Marcus)\\b: But when you need us... we'll be there."
  
  scene.message "\\bMom (Aurora)\\b: Always."
  
  # TODO: Event Sequence - Hug scene
  # scene.message "You hugged them both."
  # scene.message "The best parents a trainer could ask for."
end

GameData::Cutscene.define :ch1_walk_to_lab do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence - Village ambience
  # scene.message "Dawnhaven Village was peaceful in the morning light."
  # scene.message "Neighbors waved as you passed."
  
  scene.message "\\bOld Man\\b: Off to get your starter, \\PN?"
  scene.message "\\bOld Man\\b: Good luck out there!"
  
  scene.message "\\bYoung Girl\\b: Mommy, mommy! \\PN's gonna be a trainer!"
  scene.message "\\bMother\\b: Maybe someday you will too, dear."
  
  # TODO: Event Sequence - Internal monologue/Narrator
  # scene.message "You'd lived in this village your whole life."
  # scene.message "Everyone knew everyone."
  # scene.message "But today... today you'd finally see what was beyond."
end

GameData::Cutscene.define :ch1_village_memories do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence - Scenic Walk
  # scene.message "You passed the old oak tree where you used to play."
  # scene.message "The pond where wild Magikarp splashed."
  # scene.message "The fields where Mareep grazed peacefully."
  
  scene.message "\\b\\PN\\b: (I'm going to miss this place...)"
  
  scene.message "But the world was calling."
  scene.message "And you couldn't ignore it anymore."
  
  # TODO: Event Sequence - Lab Approach
  # scene.message "The Professor's lab rose ahead."
  # scene.message "Your heart pounded with anticipation."
end

GameData::Cutscene.define :ch1_ragnar_appears do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: YO! \\PN! WAIT UP!"
  
  # TODO: Event Sequence - Ragnar Introduction
  # scene.message "A familiar voice echoed across the village."
  # scene.message "You turned to see your childhood friend sprinting toward you."
  # scene.message "Ragnar. Your neighbor. Your rival since you could walk."
  # scene.message "Competitive. Loud. Loyal to a fault."
  
  scene.message "\\bRagnar\\b: *panting* You weren't... gonna leave... without me!"
  
  scene.message "\\b\\PN\\b: I was just getting a head start."
  
  scene.message "\\bRagnar\\b: HA! Classic \\PN!"
  scene.message "\\bRagnar\\b: Always trying to be first!"
  scene.message "\\bRagnar\\b: Well NOT TODAY!"
  
  # TODO: Event Sequence - Ragnar's grin
  # scene.message "He grinned, that same competitive spark in his eyes."
  # scene.message "You'd been racing each other your whole lives."
  # scene.message "Why would today be any different?"
  
  scene.message "\\bRagnar\\b: Let's go get our starters TOGETHER!"
  scene.message "\\bRagnar\\b: And then I'll beat you in our first battle!"
  
  scene.message "\\b\\PN\\b: We'll see about that."
end

GameData::Cutscene.define :ch1_lab_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  # TODO: Event Sequence - Lab Interior
  # scene.message "The Professor's lab was a modest building."
  # scene.message "But inside, it was filled with wonders."
  # scene.message "Shelves of ancient artifacts. Glowing machines."
  # scene.message "And in the center... three Pokéballs."
  
  scene.message "\\bRagnar\\b: Whoa... so cool..."
  
  scene.message "\\bProfessor Aldric\\b: Ah! Right on time!"
  scene.message "\\bProfessor Aldric\\b: Both of you! Come in, come in!"
  
  # TODO: Event Sequence - Professor Description
  # scene.message "The Professor was an older man with kind eyes."
  # scene.message "Silver hair and a warm smile."
  # scene.message "He'd known your father. They'd been friends."
end

GameData::Cutscene.define :ch1_professor_talk do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bProfessor Aldric\\b: Before we begin..."
  scene.message "\\bProfessor Aldric\\b: I want you to understand something."
  
  scene.message "\\bProfessor Aldric\\b: Being a trainer isn't just about battles."
  scene.message "\\bProfessor Aldric\\b: It's about partnership. Trust. Friendship."
  
  scene.message "\\bProfessor Aldric\\b: Your Pokémon will be your companion."
  scene.message "\\bProfessor Aldric\\b: Through good times and bad."
  scene.message "\\bProfessor Aldric\\b: Treat them with respect."
  
  scene.message "\\b\\PN\\b: I understand, Professor."
  
  scene.message "\\bProfessor Aldric\\b: *nodding* Good."
  scene.message "\\bProfessor Aldric\\b: Your father understood that too."
  scene.message "\\bProfessor Aldric\\b: You have his spirit."
end

GameData::Cutscene.define :ch1_get_starter do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bProfessor Aldric\\b: Ah, \\PN! Perfect timing!"
  scene.message "\\bProfessor Aldric\\b: I have three Pokémon here, each one special."
  scene.message "\\bProfessor Aldric\\b: Choose wisely - this partner will be with you forever."
  
  # Starter choice handled by event
end

GameData::Cutscene.define :ch1_starter_bond do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Starter Reveal
  # scene.message "The Pokéball opened..."
  # scene.message "And there it was. Your first Pokémon."
  # scene.message "It looked up at you with curious eyes."
  # scene.message "Then... a happy cry."
  
  scene.message "\\b\\PN\\b: Hey there, partner."
  scene.message "\\b\\PN\\b: Looks like we're going to be together for a long time."
  
  # TODO: Event Sequence - Bonding Animation
  # scene.message "You knelt down and extended your hand."
  # scene.message "Your starter sniffed it..."
  # scene.message "Then nuzzled against you affectionately."
  
  scene.message "\\bProfessor Aldric\\b: *smiling* A perfect match."
  scene.message "\\bProfessor Aldric\\b: I knew it would be."
  
  # TODO: Event Sequence - Emotional moment
  # scene.message "Something clicked in that moment."
  # scene.message "Like two puzzle pieces finding each other."
  # scene.message "You'd found your partner."
end

GameData::Cutscene.define :ch1_ragnar_starter do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: Okay, my turn! MY TURN!"
  
  # TODO: Event Sequence - Ragnar's excitement
  # scene.message "Ragnar bounced on his heels excitedly."
  # scene.message "He reached for a Pokéball with barely contained energy."
  
  scene.message "\\bRagnar\\b: This one! I can feel it!"
  
  # TODO: Event Sequence - Pikachu reveal
  # scene.message "The ball opened, revealing a Pikachu."
  # scene.message "The electric mouse sparked with energy."
  
  scene.message "\\bRagnar\\b: PERFECT! A Pikachu!"
  scene.message "\\bRagnar\\b: We're gonna be UNSTOPPABLE!"
  
  scene.message "\\bPikachu\\b: Pika!"
  
  # TODO: Event Sequence - Pikachu bonds with Ragnar
  # scene.message "The Pikachu immediately climbed onto Ragnar's shoulder."
  # scene.message "They were a perfect match too."
  
  scene.message "\\bProfessor Aldric\\b: *chuckling* Two excellent pairs."
  scene.message "\\bProfessor Aldric\\b: I expect great things from both of you."
end

GameData::Cutscene.define :ch1_first_rival_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Rival Battle'
  
  # TODO: Event Sequence - Rival battle setup
  # scene.message "Outside the lab, Ragnar blocked your path."
  # scene.message "That competitive grin on his face."
  
  scene.message "\\bRagnar\\b: Hey \\PN!"
  scene.message "\\bRagnar\\b: We've got our partners now..."
  scene.message "\\bRagnar\\b: So there's only ONE thing to do!"
  
  scene.message "\\b\\PN\\b: You want to battle already?"
  
  scene.message "\\bRagnar\\b: DUH!"
  scene.message "\\bRagnar\\b: We've been waiting our whole lives for this!"
  scene.message "\\bRagnar\\b: First one to beat the other STARTS with the advantage!"
  
  scene.message "\\bPikachu\\b: Pika pika!"
  
  # TODO: Event Sequence - Battle start animation
  # scene.message "Your starter stepped forward, ready."
  
  scene.message "\\b\\PN\\b: You're on, Ragnar."
  
  scene.trainer_battle :RIVAL, "Ragnar", 0
end

GameData::Cutscene.define :ch1_after_rival_battle do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bRagnar\\b: *laughing* Man, that was AWESOME!"
  scene.message "\\bRagnar\\b: Win or lose, that was our first real battle!"
  
  scene.message "\\b\\PN\\b: It was a good fight."
  
  scene.message "\\bRagnar\\b: This is just the beginning, \\PN!"
  scene.message "\\bRagnar\\b: By the time we reach the Pokémon League..."
  scene.message "\\bRagnar\\b: I'll be WAY stronger!"
  
  scene.message "\\b\\PN\\b: We'll see about that."
  
  scene.message "\\bRagnar\\b: *grinning* That's the spirit!"
  scene.message "\\bRagnar\\b: Catch you later, rival!"
  
  # TODO: Event Sequence - Ragnar leaves
  # scene.message "Ragnar took off down a different path."
  # scene.message "His Pikachu clinging to his shoulder."
  
  scene.message "\\b\\PN\\b: (Same old Ragnar...)"
  scene.message "\\b\\PN\\b: (But I wouldn't have it any other way.)"
end

GameData::Cutscene.define :ch1_receive_pokedex do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bProfessor Aldric\\b: One more thing before you go."
  
  # TODO: Event Sequence - Pokedex Handover
  # scene.message "He handed you a sleek red device."
  
  scene.message "\\bProfessor Aldric\\b: This is the Pokédex."
  scene.message "\\bProfessor Aldric\\b: It records data on every Pokémon you encounter."
  scene.message "\\bProfessor Aldric\\b: I'd appreciate it if you could help complete it."
  
  scene.message "\\b\\PN\\b: Leave it to me, Professor!"
  
  scene.message "\\bProfessor Aldric\\b: I'm also giving you these Pokéballs."
  scene.message "\\bProfessor Aldric\\b: Use them to catch wild Pokémon."
  
  scene.message "You received 5 Pokéballs!"
  
  scene.message "\\bProfessor Aldric\\b: Now go, \\PN."
  scene.message "\\bProfessor Aldric\\b: Your adventure awaits!"
end

GameData::Cutscene.define :ch1_parents_goodbye do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Parents at gate
  # scene.message "Both your parents met you at the village gate."
  # scene.message "Dad had his old adventure bag. Mom had her research notes."
  
  scene.message "\\bMom (Aurora)\\b: I packed some supplies."
  scene.message "\\bMom (Aurora)\\b: Potions, berries, and my field notes on local Pokémon."
  
  scene.message "\\bDad (Marcus)\\b: And I put in some battle tips."
  scene.message "\\bDad (Marcus)\\b: Learned a few things as Champion."
  
  scene.message "\\b\\PN\\b: You two are the best."
  
  scene.message "\\bMom (Aurora)\\b: *hugging you* We're proud of you already."
  scene.message "\\bDad (Marcus)\\b: *joining the hug* Go show them what our kid can do."
  
  scene.message "\\bMom (Aurora)\\b: And remember..."
  scene.message "\\bDad (Marcus)\\b: When you need us..."
  scene.message "\\bBoth\\b: We'll be there."
  
  scene.message "\\bRagnar\\b: *waving from down the road* SEE YA AT THE GYM, \\PN!"
  scene.message "\\bRagnar\\b: DON'T KEEP ME WAITING!"
  
  scene.message "\\bDad (Marcus)\\b: *chuckling* That kid has energy."
  scene.message "\\bMom (Aurora)\\b: Good. \\PN will need a rival to push them."
  
  # TODO: Event Sequence - Leaving Town
  # scene.message "With a final wave, you stepped beyond the village gate."
  # scene.message "Your parents watched, arms around each other."
  # scene.message "The road stretched ahead."
  # scene.message "Your adventure had begun."
end

GameData::Cutscene.define :ch1_first_wild_battle do |scene|
  scene.play_bgm 'Pokemon XY - Wild Battle'
  
  # TODO: Event Sequence - Wild Encounter
  # scene.message "Not far from the village, rustling in the grass!"
  # scene.message "A wild Rattata appeared!"
  
  scene.message "\\b\\PN\\b: This is it! Our first battle!"
  scene.message "\\b\\PN\\b: Let's go, partner!"
  
  # TODO: Event Sequence - Battle Animation
  # scene.message "Your starter leaped forward eagerly."
  # scene.message "The battle was short but fierce."
  
  scene.message "Victory!"
  
  scene.message "\\b\\PN\\b: Great job! You're amazing!"
  scene.message "Your starter puffed up with pride."
  
  scene.message "This was just the beginning."
  scene.message "But it felt like the start of something incredible."
end

GameData::Cutscene.define :ch1_strange_dream do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Dream Visualization
  # scene.message "That night, you had a strange dream..."
  # scene.message "Golden light. Fragments of something broken."
  # scene.message "A voice, barely a whisper..."
  scene.message "\\ts[]'Soon...'"
  
  # scene.message "You woke with a start."
  # scene.message "(What was that...?)"
  
  scene.fade_in
end

GameData::Cutscene.define :ch1_dream_details do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Dream Recollection
  # scene.message "You tried to remember the dream."
  # scene.message "Fragments of images..."
  #
  # scene.message "A crown. Broken into pieces."
  # scene.message "Three figures standing against darkness."
  # scene.message "And a roar... ancient and terrible."
  
  scene.message "\\b\\PN\\b: (What does it mean?)"
  
  # TODO: Event Sequence - Starter Comfort
  # scene.message "Your starter nuzzled against you."
  # scene.message "As if sensing your unease."
  
  scene.message "\\b\\PN\\b: *petting* It's okay, buddy."
  scene.message "\\b\\PN\\b: Probably just a weird dream."
  
  scene.message "But somehow... you didn't believe that."
end

GameData::Cutscene.define :ch1_route_exploration do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Route Walk
  # scene.message "The next morning, you set out on Route 1."
  # scene.message "The path wound through gentle hills and forests."
  #
  # scene.message "Wild Pokémon watched from the bushes."
  # scene.message "Birds sang in the trees."
  # scene.message "Everything felt fresh and new."
  
  scene.message "\\b\\PN\\b: The world is so big..."
  scene.message "\\b\\PN\\b: I can't wait to see all of it."
  
  # TODO: Event Sequence - Starter excitement
  # scene.message "Your starter bounded ahead."
  # scene.message "Just as excited as you were."
  
  # TODO: Event Sequence - Farm View
  # scene.message "Ahead, you could see a farm in the distance."
  # scene.message "Sunrise Farm. Your first destination."
end

#===============================================================================
# Chapter 2: Reunion - Sunrise Farm & Meeting Kael
#===============================================================================

GameData::Cutscene.define :ch2_farm_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence - Farm Entry
  # scene.message "Sunrise Farm appeared over the hill."
  # scene.message "Rolling fields of berries. Grazing Miltank."
  # scene.message "The scent of fresh earth and flowers."
  
  scene.message "\\b\\PN\\b: This must be the place."
  scene.message "\\b\\PN\\b: Lyra said to meet her here."
  
  # TODO: Event Sequence - Lyra Waving
  # scene.message "A figure waved from the farmhouse."
  # scene.message "Bright smile. Boundless energy."
  # scene.message "That had to be Lyra."
end

GameData::Cutscene.define :ch2_meet_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: \\PN! Over here!"
  # TODO: Event Sequence - Lyra Introduction
  # scene.message "A cheerful girl waved from Sunrise Farm."
  # scene.message "The berry fields stretched behind her, vibrant and alive."
  # scene.message "Beside her stood a small Eevee."
  
  scene.message "\\bLyra\\b: This is Willow! Grandma gave her to me."
  scene.message "\\bLyra\\b: She's a little shy, but she's the sweetest!"
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\b\\PN\\b: She's adorable! Nice to meet you, Willow."
  
  scene.message "\\bLyra\\b: Hey, did you have any weird dreams last night?"
  scene.message "\\bLyra\\b: I had this strange dream about golden light..."
  
  scene.message "\\b\\PN\\b: Wait... me too. Golden light and broken pieces."
end

GameData::Cutscene.define :ch2_pokemon_introductions do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Pokemon Playing
  # scene.message "Your starter and Willow sniffed each other curiously."
  # scene.message "Then they started playing!"
  
  scene.message "\\bLyra\\b: Aww! They're already friends!"
  scene.message "\\bWillow\\b: Vee vee!"
  
  scene.message "\\b\\PN\\b: Looks like they get along."
  
  scene.message "\\bLyra\\b: Pokémon are good judges of character."
  scene.message "\\bLyra\\b: If Willow likes your partner..."
  scene.message "\\bLyra\\b: Then you must be a good person!"
  
  scene.message "\\b\\PN\\b: *laughing* I hope so."
  
  # TODO: Event Sequence - Playful Chase
  # scene.message "The two Pokémon chased each other through the berry bushes."
  # scene.message "Carefree. Happy. Like you wished you could be."
end

GameData::Cutscene.define :ch2_ragnar_route do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Ragnar Encounter
  # scene.message "A familiar voice echoed across the route."
  #
  # scene.message "Ragnar was sitting by a tree, Pikachu on his shoulder."
  # scene.message "A Rattata and a Pidgey sat nearby."
  
  scene.message "\\b\\PN\\b: Ragnar? You're ahead of me already?"
  
  scene.message "\\bRagnar\\b: Duh! I've been training non-stop!"
  scene.message "\\bRagnar\\b: Already caught two new partners!"
  
  scene.message "\\bRagnar\\b: How many have YOU caught?"
  
  scene.message "\\b\\PN\\b: I'm... taking my time."
  
  scene.message "\\bRagnar\\b: HA! Classic Broody!"
  scene.message "\\bRagnar\\b: Always overthinking everything!"
  
  scene.message "His Pikachu sparked playfully at your starter."
  
  scene.message "\\bRagnar\\b: Don't worry, I'll wait for you at the first Gym!"
  scene.message "\\bRagnar\\b: So I can watch you TRY to catch up!"
  
  scene.message "He took off running, laughing."
  scene.message "Some things never change."
end

GameData::Cutscene.define :ch2_farm_tour do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: Let me show you around!"
  
  scene.message "She led you through the berry fields."
  scene.message "Cheri, Pecha, Oran... every variety."
  
  scene.message "\\bLyra\\b: We grow berries for the whole region!"
  scene.message "\\bLyra\\b: Grandma started this farm 40 years ago."
  
  scene.message "\\b\\PN\\b: It's amazing. So peaceful."
  
  scene.message "\\bLyra\\b: I love it here. But..."
  scene.message "\\bLyra\\b: I've always wanted to see more."
  
  scene.message "You helped water some plants."
  scene.message "Fed the Miltank."
  scene.message "Chased a runaway Wooloo."
  
  scene.message "\\bLyra\\b: *laughing* Watch out for—"
  scene.message "The Wooloo knocked you over."
  scene.message "\\bLyra\\b: —that one. Sorry!"
end

GameData::Cutscene.define :ch2_lyra_backstory do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Walking through fields
  # scene.message "You walked through the berry fields with Lyra."
  # scene.message "The afternoon sun painted everything golden."
  
  scene.message "\\bLyra\\b: I've always loved this farm."
  scene.message "\\bLyra\\b: My parents... they're always traveling for work."
  scene.message "\\bLyra\\b: But Grandma's always here."
  
  scene.message "\\b\\PN\\b: That sounds nice. A real home."
  
  scene.message "\\bLyra\\b: It is! And now with Willow, I'm never lonely."
  scene.message "\\bWillow\\b: Vee vee!"
  
  scene.message "\\bLyra\\b: I want to become a Pokémon Nurse someday."
  scene.message "\\bLyra\\b: Help all the injured Pokémon I can."
  
  scene.message "\\b\\PN\\b: That's a wonderful dream."
  
  scene.message "\\bLyra\\b: What about you? What do you want to be?"
  
  scene.message "\\b\\PN\\b: Honestly? I just want to explore."
  scene.message "\\b\\PN\\b: See everything the world has to offer."
  
  scene.message "\\bLyra\\b: Then let's go on adventures together!"
end

GameData::Cutscene.define :ch2_lyra_sister_mention do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: Oh! I should tell you about my sister!"
  scene.message "\\bLyra\\b: Her name's Elena. She's amazing."
  
  scene.message "\\b\\PN\\b: Where is she?"
  
  scene.message "\\bLyra\\b: Traveling, like my parents."
  scene.message "\\bLyra\\b: She's a researcher. Studies ancient legends."
  
  scene.message "\\bLyra\\b: *proudly* She sends me letters from everywhere!"
  scene.message "\\bLyra\\b: The Eternal Forest. The Crown Mountains."
  scene.message "\\bLyra\\b: She's seen it all."
  
  scene.message "\\b\\PN\\b: She sounds brave."
  
  scene.message "\\bLyra\\b: She is! I want to be just like her someday."
  scene.message "\\bLyra\\b: Maybe we'll run into her on our journey!"
  
  scene.message "(Little did you know how important that meeting would be.)"
end

GameData::Cutscene.define :ch2_sunset_talk do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Sunset View
  # scene.message "You sat on the fence, watching the sunset."
  # scene.message "Orange and pink painted the sky."
  
  scene.message "\\bLyra\\b: Beautiful, isn't it?"
  scene.message "\\b\\PN\\b: Yeah... really beautiful."
  
  scene.message "\\bLyra\\b: My parents used to watch sunsets with me."
  scene.message "\\bLyra\\b: Before they started traveling all the time."
  
  scene.message "\\b\\PN\\b: Do you miss them?"
  
  scene.message "\\bLyra\\b: *quietly* Every day."
  scene.message "\\bLyra\\b: But Grandma says they're doing important work."
  scene.message "\\bLyra\\b: Research that could help everyone."
  
  scene.message "\\b\\PN\\b: My dad was Champion once."
  scene.message "\\b\\PN\\b: He and my mom still go on adventures sometimes."
  
  scene.message "\\bLyra\\b: That's so cool! Champion parents!"
  scene.message "\\bLyra\\b: No wonder you want to explore!"
end

GameData::Cutscene.define :ch2_grandmother_warning do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Grandmother watching
  # scene.message "Lyra's grandmother watched from the porch."
  # scene.message "Something in her eyes seemed... knowing."
  
  scene.message "\\bGrandmother\\b: You must be \\PN."
  scene.message "\\bGrandmother\\b: Lyra's told me all about you."
  
  scene.message "\\b\\PN\\b: It's nice to meet you, ma'am."
  
  scene.message "\\bGrandmother\\b: *studying you* Hmm..."
  scene.message "\\bGrandmother\\b: You have old eyes for someone so young."
  
  scene.message "\\b\\PN\\b: I... do?"
  
  scene.message "\\bGrandmother\\b: Take care of each other out there."
  scene.message "\\bGrandmother\\b: The world is changing."
  scene.message "\\bGrandmother\\b: And something tells me... you'll be at the center of it."
  
  scene.message "\\bLyra\\b: Grandma! Stop being cryptic!"
  scene.message "\\bGrandmother\\b: *laughs* Go on, you two. Have fun."
  
  scene.message "(Strange... what did she mean?)"
end

GameData::Cutscene.define :ch2_grandmother_stories do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Storytelling by fire
  # scene.message "That night, Grandmother told stories by the fire."
  
  scene.message "\\bGrandmother\\b: Long ago, this region was protected."
  scene.message "\\bGrandmother\\b: By three great guardians."
  
  scene.message "\\bLyra\\b: The crown story again?"
  scene.message "\\bGrandmother\\b: It's important, child."
  
  scene.message "\\bGrandmother\\b: They say the guardians sleep now."
  scene.message "\\bGrandmother\\b: Waiting for those worthy to awaken them."
  
  scene.message "\\b\\PN\\b: Who would be worthy?"
  
  scene.message "\\bGrandmother\\b: *mysterious smile* Those with pure hearts."
  scene.message "\\bGrandmother\\b: Those willing to sacrifice for others."
  scene.message "\\bGrandmother\\b: Those who forge unbreakable bonds."
  
  # TODO: Event Sequence - Fire Visions
  # scene.message "The fire crackled."
  # scene.message "For a moment, you could have sworn you saw shapes in the flames."
  # scene.message "A wolf. A deer. A great bird."
end

GameData::Cutscene.define :ch2_shared_dream do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.fade_out
  
  # TODO: Event Sequence - Dream Shared
  # scene.message "That night, you dreamed again."
  # scene.message "The same dream. Golden light."
  #
  # scene.message "But this time... you weren't alone."
  # scene.message "Lyra was there. And a third figure, shrouded in shadow."
  
  scene.message "\\ts[]'Three must stand...'"
  scene.message "\\ts[]'Against the coming dark...'"
  
  # scene.message "You woke to find Lyra already awake."
  # scene.message "Eyes wide."
  
  scene.message "\\bLyra\\b: You had the dream too, didn't you?"
  scene.message "\\b\\PN\\b: The same one. With you in it."
  
  scene.message "\\bLyra\\b: And someone else..."
  scene.message "\\bLyra\\b: Who was the third person?"
  
  scene.fade_in
end

GameData::Cutscene.define :ch2_departure_farm do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Morning Departure
  # scene.message "Morning came. Time to continue your journey."
  
  scene.message "\\bGrandmother\\b: Take care of my granddaughter."
  scene.message "\\b\\PN\\b: I will. I promise."
  
  scene.message "\\bLyra\\b: Grandma, don't worry! I can take care of myself!"
  scene.message "\\bGrandmother\\b: I know, dear. But it's nice to have friends."
  
  # TODO: Event Sequence - Pendant Gift
  # scene.message "She pressed something into Lyra's hands."
  # scene.message "A small pendant. Shaped like leaves."
  
  scene.message "\\bGrandmother\\b: This belonged to your mother."
  scene.message "\\bGrandmother\\b: Keep it close."
  
  scene.message "\\bLyra\\b: *hugging her* I love you, Grandma."
  scene.message "\\bGrandmother\\b: Go make me proud."
end

GameData::Cutscene.define :ch2_road_to_shadowfen do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Travel Montage
  # scene.message "You traveled through Willowmere."
  # scene.message "A peaceful village by a lake."
  
  scene.message "\\bLyra\\b: I've heard there's someone else in Shadowfen."
  scene.message "\\bLyra\\b: Another trainer our age."
  
  scene.message "\\b\\PN\\b: Friend of yours?"
  
  scene.message "\\bLyra\\b: Not exactly... we've exchanged letters."
  scene.message "\\bLyra\\b: He's... intense."
  
  scene.message "\\b\\PN\\b: Intense how?"
  
  scene.message "\\bLyra\\b: You'll see."
  
  # TODO: Event Sequence - Approaching Shadowfen
  # scene.message "The path ahead led into darker woods."
  # scene.message "Shadowfen was close."
end

GameData::Cutscene.define :ch2_shadowfen_arrival do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  # TODO: Event Sequence - Shadowfen Atmosphere
  # scene.message "Shadowfen lived up to its name."
  # scene.message "Twisted trees. Murky water. Eerie silence."
  
  scene.message "\\bLyra\\b: *shivering* This place is creepy..."
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\b\\PN\\b: Stay close. We don't know what's out there."
  
  # TODO: Event Sequence - Creepy Forest
  # scene.message "Fog rolled between the trees."
  # scene.message "Something moved in the shadows."
  # scene.message "But it wasn't attacking. Just... watching."
  
  scene.message "\\bLyra\\b: The library ruins should be up ahead."
  scene.message "\\bLyra\\b: That's where Kael said he'd be."
end

GameData::Cutscene.define :ch2_meet_kael do |scene|
  # TODO: Event Sequence - Meeting Kael
  # scene.message "You traveled through Willowmere and into Shadowfen."
  # scene.message "The swamp village was eerie, but beyond it lay the old library ruins."
  # scene.message "You found Kael there, reading alone. A Zorua at his feet."
  
  scene.message "\\bKael\\b: ...You're late."
  scene.message "\\bLyra\\b: Nice to see you too, grumpy!"
  scene.message "\\bKael\\b: ..."
  
  # TODO: Event Sequence - Shadow's reaction
  # scene.message "His Zorua, Shadow, eyed you suspiciously."
  
  scene.message "\\bKael\\b: I heard you both had strange dreams."
  scene.message "\\bKael\\b: So did I. The same one."
  scene.message "\\bKael\\b: That's... statistically improbable."
  
  scene.message "\\b\\PN\\b: Three of us having the exact same dream? That's not coincidence."
  scene.message "\\b\\PN\\b: Something's going on."
end

GameData::Cutscene.define :ch2_kael_introduction do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  # TODO: Event Sequence - Kael Description
  # scene.message "Kael was different from Lyra."
  # scene.message "Cold where she was warm. Quiet where she was loud."
  
  scene.message "\\bLyra\\b: Kael, this is \\PN!"
  scene.message "\\bKael\\b: I know. You mentioned them in your letters."
  
  scene.message "\\b\\PN\\b: Nice to meet you."
  scene.message "\\bKael\\b: Hmm."
  
  # TODO: Event Sequence - Shadow Inspects
  # scene.message "Shadow circled you suspiciously."
  # scene.message "Then seemed to relax."
  
  scene.message "\\bKael\\b: Shadow approves. That's... rare."
  scene.message "\\bLyra\\b: See? \\PN's great!"
  
  scene.message "\\bKael\\b: We'll see."
end

GameData::Cutscene.define :ch2_kael_backstory do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  # TODO: Event Sequence - Kael Interaction
  # scene.message "You tried to get to know Kael better."
  # scene.message "It wasn't easy. He deflected most questions."
  
  scene.message "\\bLyra\\b: So where are you from, Kael?"
  scene.message "\\bKael\\b: Nowhere."
  
  scene.message "\\bLyra\\b: Everyone's from somewhere!"
  scene.message "\\bKael\\b: I grew up in an orphanage. It burned down."
  scene.message "\\bKael\\b: There. Happy?"
  
  scene.message "\\bLyra\\b: Oh... I'm sorry, I didn't—"
  scene.message "\\bKael\\b: Don't. I don't need pity."
  
  # TODO: Event Sequence - Kael and Shadow
  # scene.message "Shadow rubbed against Kael's leg."
  scene.message "\\bKael\\b: Shadow was there too. We escaped together."
  scene.message "\\bKael\\b: She's all I need."
  
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\b\\PN\\b: Well, now you have us too."
  scene.message "\\bKael\\b: ...We'll see."
end

GameData::Cutscene.define :ch2_library_exploration do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  # TODO: Event Sequence - Library Atmosphere
  # scene.message "The library ruins were fascinating."
  # scene.message "Ancient books. Faded murals. Forgotten knowledge."
  
  scene.message "\\bKael\\b: I've been researching the dreams."
  scene.message "\\bKael\\b: There are references in old texts."
  
  scene.message "\\bLyra\\b: What do they say?"
  
  scene.message "\\bKael\\b: Prophecies. Legends."
  scene.message "\\bKael\\b: Something about 'Chosen Ones' and 'guardians.'"
  
  scene.message "\\b\\PN\\b: Like the festival story?"
  
  scene.message "\\bKael\\b: *surprised* You know about that?"
  scene.message "\\b\\PN\\b: Lyra's grandmother mentioned it."
  
  scene.message "\\bKael\\b: Interesting. The old woman knows more than she lets on."
end

GameData::Cutscene.define :ch2_first_battle_together do |scene|
  scene.play_bgm 'Pokemon XY - Wild Battle'
  
  # TODO: Event Sequence - Wild Ambush
  # scene.message "As you left the library, wild Pokémon blocked your path."
  # scene.message "A territorial Nidorino and its pack."
  
  scene.message "\\bNidorino\\b: NIDO!"
  
  scene.message "\\bLyra\\b: They look angry!"
  scene.message "\\bKael\\b: We're in their territory. Stand back."
  
  scene.message "\\b\\PN\\b: No. We fight together."
  scene.message "\\b\\PN\\b: That's what friends do."
  
  scene.message "\\bKael\\b: ...Fine. Shadow, you're up."
  scene.message "\\bLyra\\b: Go, Willow!"
  
  # TODO: Event Sequence - Battle Teamwork
  # scene.message "Your three Pokémon fought side by side."
  # scene.message "Despite the danger, it felt... right."
  
  scene.message "\\bLyra\\b: We did it!"
  scene.message "\\bKael\\b: You weren't useless."
  scene.message "\\bLyra\\b: Was that... a compliment?"
  scene.message "\\bKael\\b: Don't get used to it."
end

GameData::Cutscene.define :ch2_trio_formed do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Post-Battle Bonding
  # scene.message "After the battle, something felt different."
  # scene.message "A connection between the three of you."
  
  scene.message "\\bLyra\\b: We should stick together!"
  scene.message "\\bLyra\\b: We make a great team!"
  
  scene.message "\\bKael\\b: We barely know each other."
  
  scene.message "\\b\\PN\\b: Then let's change that."
  scene.message "\\b\\PN\\b: We're having the same dreams for a reason."
  scene.message "\\b\\PN\\b: Something's bringing us together."
  
  scene.message "\\bKael\\b: ...Logical."
  scene.message "\\bKael\\b: Fine. We travel together. For now."
  
  scene.message "\\bLyra\\b: *hugging them both* YAY! Best friends!"
  scene.message "\\bKael\\b: Don't touch me."
  scene.message "\\bLyra\\b: Too late!"
  
  # TODO: Event Sequence - Trio Formation Moment
  # scene.message "And so, the trio was formed."
  # scene.message "Three trainers. Three Pokémon. One destiny."
end

#===============================================================================
# Chapter 3: The Festival - Thornwood Town
#===============================================================================
GameData::Cutscene.define :ch3_road_to_thornwood do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Autumn Road
  # scene.message "The road to Thornwood took you through beautiful autumn forests."
  # scene.message "Golden leaves crunched beneath your feet."
  
  scene.message "\\bLyra\\b: *skipping ahead* I love this time of year!"
  scene.message "\\bLyra\\b: The leaves, the smell, the festivals!"
  
  scene.message "\\bKael\\b: It's just dying vegetation."
  scene.message "\\bLyra\\b: Way to ruin the magic, Kael."
  
  scene.message "\\b\\PN\\b: What's special about Thornwood Town?"
  
  scene.message "\\bLyra\\b: It's where they hold the Festival of Crowns!"
  scene.message "\\bLyra\\b: Every year they celebrate the legend of the guardians!"
  
  scene.message "\\bKael\\b: Superstitious nonsense."
  scene.message "\\bLyra\\b: You'll see! It's amazing!"
  
  # TODO: Event Sequence - Kael smiles
  # scene.message "Shadow ran ahead, chasing falling leaves."
  # scene.message "Even Kael smiled—just a little."
  
  scene.message "\\bKael\\b: ...Don't look at me like that."
end

GameData::Cutscene.define :ch3_thornwood_entrance do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Thornwood Reveal
  # scene.message "Thornwood Town appeared through the trees."
  # scene.message "Even from a distance, you could see the festivities."
  #
  # scene.message "Banners of gold and silver hung from every building."
  # scene.message "The sound of music and laughter echoed through the forest."
  
  scene.message "\\bLyra\\b: *gasping* It's even more beautiful than I remembered!"
  scene.message "\\bLyra\\b: I came here as a kid with my parents..."
  
  # TODO: Event Sequence - Lyra's reaction
  # scene.message "She trailed off, her smile flickering."
  
  scene.message "\\b\\PN\\b: Your parents?"
  
  scene.message "\\bLyra\\b: They... they're not around anymore."
  scene.message "\\bLyra\\b: It's okay! That was a long time ago."
  scene.message "\\bLyra\\b: Grandma raised me. And Elena helped too."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: The festival looks... adequate."
  
  # TODO: Event Sequence - Lyra beams
  # scene.message "Lyra beamed at him, recognizing the kindness beneath his words."
end

GameData::Cutscene.define :ch3_festival_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Festival Atmosphere
  # scene.message "Thornwood Town bustled with festival preparations."
  # scene.message "Banners depicting golden crowns hung from every building."
  
  scene.message "\\bLyra\\b: Look at all the decorations!"
  scene.message "\\bLyra\\b: The Festival of Crowns is my favorite!"
  
  scene.message "\\bKael\\b: What's the point of all this?"
  
  scene.message "\\bLyra\\b: It celebrates the legend of the three guardians!"
  scene.message "\\bLyra\\b: Grandma used to tell me stories..."
  
  scene.message "\\b\\PN\\b: Let's check out the stalls."
  
  # TODO: Event Sequence - Festival Stalls
  # scene.message "Food vendors sold golden crown-shaped pastries."
  # scene.message "Game booths offered prizes shaped like legendary Pokémon."
  # scene.message "Children ran around with toy swords and shields."
  #
  # scene.message "For a moment, you could almost forget your strange dreams."
end

GameData::Cutscene.define :ch3_festival_food do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Food Stalls
  # scene.message "The food stalls were overwhelming in variety."
  # scene.message "Crown-shaped pastries. Berry kebabs. Honey cakes."
  
  scene.message "\\bLyra\\b: *drooling* I want one of everything!"
  scene.message "\\bKael\\b: That's nutritionally irresponsible."
  scene.message "\\bLyra\\b: Live a little, Kael!"
  
  # TODO: Event Sequence - Eating together
  # scene.message "You bought treats for everyone."
  # scene.message "Even some Pokémon-safe snacks for your partners."
  #
  # scene.message "Willow nibbled on a berry cake."
  # scene.message "Shadow sniffed her food suspiciously before devouring it."
  # scene.message "Your starter chirped happily with each bite."
  
  scene.message "\\bKael\\b: *eating quietly* ...Not bad."
  scene.message "\\bLyra\\b: Ha! I knew you'd like it!"
  
  scene.message "\\b\\PN\\b: This is nice. The three of us together."
  scene.message "\\bLyra\\b: The best team ever!"
  scene.message "\\bKael\\b: ...Adequate team."
  scene.message "\\bLyra\\b: I'll take it!"
end

GameData::Cutscene.define :ch3_pokemon_contest do |scene|
  scene.play_bgm 'Pokemon RSE - Contest'
  
  # TODO: Event Sequence - Contest Setup
  # scene.message "A crowd gathered around a small stage."
  # scene.message "A Pokémon cuteness contest was underway."
  
  scene.message "\\bHost\\b: Next up—who wants to enter their partner?"
  scene.message "\\bLyra\\b: Ooh! Willow wants to try! Right, Willow?"
  scene.message "\\bWillow\\b: Vee!!"
  
  # TODO: Event Sequence - Lyra enters Willow
  # scene.message "Lyra rushed to the stage with Willow."
  # scene.message "The little Eevee posed adorably for the crowd."
  
  scene.message "\\bKael\\b: *sighing* She's going to embarrass us."
  scene.message "\\b\\PN\\b: Let her have fun."
  
  # TODO: Event Sequence - Willow performs
  # scene.message "Willow performed tricks—spinning, jumping, making cute faces."
  # scene.message "The crowd cheered and clapped."
  
  scene.message "\\bHost\\b: Amazing! What a darling Eevee!"
  scene.message "\\bHost\\b: Third place goes to... Willow!"
  
  scene.message "\\bLyra\\b: *running back* We got third! Not bad for our first try!"
  scene.message "\\bKael\\b: Participation is the first step to mediocrity."
  scene.message "\\bLyra\\b: Party pooper."
  scene.message "\\b\\PN\\b: I thought Willow was great!"
  scene.message "\\bWillow\\b: *preening proudly* Vee!"
end

GameData::Cutscene.define :ch3_festival_games do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bLyra\\b: Ooh, a balloon pop game!"
  scene.message "\\bLyra\\b: Winner gets a giant Eevee plushie!"
  
  scene.message "\\bKael\\b: Waste of time."
  scene.message "\\bLyra\\b: Come on, it'll be fun!"
  
  # TODO: Event Sequence - Darts Game
  # scene.message "Kael reluctantly threw darts at the balloons."
  # scene.message "He hit every single one. Perfect score."
  
  scene.message "\\bLyra\\b: Whoa! How did you—"
  scene.message "\\bKael\\b: I grew up needing good aim."
  
  # TODO: Event Sequence - Kael gives plushie
  # scene.message "He handed the plushie to Lyra without a word."
  scene.message "\\bLyra\\b: F-for me?!"
  scene.message "\\bKael\\b: I don't need it. You obviously do."
  
  scene.message "\\bLyra\\b: *hugging plushie* Thank you, Kael!"
  scene.message "\\bKael\\b: Whatever."
  
  # TODO: Event Sequence - Kael embarrassed
  # scene.message "(But you noticed his ears turn red.)"
end

GameData::Cutscene.define :ch3_strength_test do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Strength Test
  # scene.message "A strength-testing game caught your eye."
  # scene.message "Hit the target, ring the bell, win a prize."
  
  scene.message "\\bLyra\\b: \\PN, you should try!"
  scene.message "\\b\\PN\\b: Alright, let's see..."
  
  # TODO: Event Sequence - Hammer Swing
  # scene.message "You swung the mallet with all your might."
  # scene.message "The striker flew up... and rang the bell!"
  
  scene.message "\\bBooth Owner\\b: A winner! Take your pick!"
  
  # TODO: Event Sequence - Prize Choice
  # scene.message "You chose a small charm shaped like a crown."
  # scene.message "Three interlinked circles—gold, silver, bronze."
  
  scene.message "\\bLyra\\b: Ooh, pretty! What does it represent?"
  scene.message "\\bBooth Owner\\b: The three guardians, of course!"
  scene.message "\\bBooth Owner\\b: Wear it for good luck!"
  
  # TODO: Event Sequence - Magic Item Feel
  # scene.message "Something about the charm felt... warm."
  # scene.message "Almost like it was meant for you."
  
  scene.message "\\bKael\\b: *narrowing eyes* Interesting design..."
end

GameData::Cutscene.define :ch3_mask_merchant do |scene|
  scene.play_bgm 'Pokemon RSE - Slateport City'
  
  scene.message "A mask merchant waved you over to their stall."
  scene.message "Hundreds of masks lined the walls—Pokémon, legends, spirits."
  
  scene.message "\\bMask Merchant\\b: Ah, young travelers!"
  scene.message "\\bMask Merchant\\b: Pick a mask—it reveals your true nature!"
  
  scene.message "\\bLyra\\b: Ooh, fun! I want the Sylveon mask!"
  scene.message "\\bMask Merchant\\b: The fairy mask... you seek connection with others."
  
  scene.message "\\bKael\\b: *picking Zoroark mask* ...This one."
  scene.message "\\bMask Merchant\\b: The illusionist... you hide your true self."
  scene.message "\\bKael\\b: *flinching* That's—"
  
  scene.message "\\bMask Merchant\\b: And you, young one?"
  
  # TODO: Event Sequence - Mask Choice Mystery
  # scene.message "Your eyes were drawn to one mask in particular."
  # scene.message "A crown-like mask with three gems—gold, silver, bronze."
  
  scene.message "\\bMask Merchant\\b: *eyes widening* ...The Guardian Mask."
  scene.message "\\bMask Merchant\\b: I... I don't remember making that one."
  scene.message "\\bMask Merchant\\b: Take it. No charge. It was waiting for you."
  
  scene.message "\\b\\PN\\b: Waiting...?"
  scene.message "The merchant said nothing more, already helping other customers."
end

GameData::Cutscene.define :ch3_festival_story do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Festival Town
  # scene.message "Thornwood Town's annual Festival of Crowns was in full swing."
  # scene.message "Autumn leaves danced around the forest-edge town."
  # scene.message "Lights, music, laughter filled the air."
  
  scene.message "\\bOld Storyteller\\b: Gather 'round, children!"
  scene.message "\\bOld Storyteller\\b: Let me tell you the legend of the Shattered Crowns..."
  
  scene.message "\\bOld Storyteller\\b: Long ago, three guardians protected our world."
  scene.message "\\bOld Storyteller\\b: Each wore a crown of divine power."
  scene.message "\\bOld Storyteller\\b: But a great evil coveted their strength..."
  scene.message "\\bOld Storyteller\\b: In a battle that shook the heavens..."
  scene.message "\\bOld Storyteller\\b: The crowns were shattered!"
  
  scene.message "\\bLyra\\b: Ooh, spooky!"
  scene.message "\\bKael\\b: It's just a fairy tale."
  # TODO: Event Sequence - Familiarity
  # scene.message "(But something about it felt... familiar.)"
end

GameData::Cutscene.define :ch3_storyteller_prophecy do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "The storyteller continued, his voice dropping low."
  
  scene.message "\\bOld Storyteller\\b: But the legend doesn't end there..."
  scene.message "\\bOld Storyteller\\b: The ancients spoke of a prophecy."
  
  scene.message "The crowd fell silent."
  
  scene.message "\\bOld Storyteller\\b: 'When shadows rise and crowns awaken...'"
  scene.message "\\bOld Storyteller\\b: 'Three souls bound by fate shall stand.'"
  scene.message "\\bOld Storyteller\\b: 'Heart of light, mind of shadow, will of flame...'"
  scene.message "\\bOld Storyteller\\b: 'Together they restore what darkness unmade.'"
  
  scene.message "\\bLyra\\b: Three souls..."
  scene.message "\\bKael\\b: It's a coincidence."
  
  scene.message "The storyteller's eyes found yours."
  scene.message "For a moment, they seemed to glow with ancient knowledge."
  
  scene.message "\\bOld Storyteller\\b: Perhaps. Or perhaps... the prophecy has begun."
  
  scene.message "He smiled mysteriously and bowed."
  scene.message "When you looked for him later, he was gone."
end

GameData::Cutscene.define :ch3_hooded_figures do |scene|
  # TODO: Event Sequence - Hooded Watchers
  # scene.message "As the festival wound down..."
  # scene.message "You noticed hooded figures watching from the shadows."
  #
  # scene.message "When you looked again, they were gone."
  # scene.message "(Strange...)"
end

GameData::Cutscene.define :ch3_ragnar_festival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Ragnar's Mess
  # scene.message "A commotion near the food stalls caught your attention."
  #
  # scene.message "His Pikachu was surrounded by empty berry bowls."
  
  scene.message "\\b\\PN\\b: Ragnar?!"
  
  scene.message "\\bRagnar\\b: *mouth full* Oh hey \\PN!"
  scene.message "\\bRagnar\\b: *swallows* Great festival, right?!"
  
  scene.message "\\bLyra\\b: Is he... a friend of yours?"
  
  scene.message "\\b\\PN\\b: Unfortunately."
  
  scene.message "\\bRagnar\\b: HEY! I heard that!"
  scene.message "\\bRagnar\\b: Oh, you're Lyra! \\PN mentioned you!"
  
  scene.message "\\bLyra\\b: They did?"
  
  scene.message "\\bRagnar\\b: Yeah! Said you're really nice!"
  scene.message "\\bRagnar\\b: Unlike THIS grumpy one!"
  
  scene.message "He pointed at Kael, who glared."
  
  scene.message "\\bKael\\b: Who are you?"
  scene.message "\\bRagnar\\b: Your new best friend! Obviously!"
  
  scene.message "Kael looked at you with a 'help me' expression."
  scene.message "You just shrugged. Welcome to your world."
end

GameData::Cutscene.define :ch3_dance_festival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Intro to dance
  # scene.message "The main square cleared for the traditional Crown Dance."
  # scene.message "Couples and groups began swaying to festival music."
  #
  # scene.message "Shadow nudged Kael's leg encouragingly."
  scene.message "\\bShadow\\b: Zor!"
  
  scene.message "\\bKael\\b: Not you too..."
  scene.message "\\bKael\\b: *sighing heavily* Fine. ONE dance."
  
  # TODO: Event Sequence - Dancing together
  # scene.message "The three of you joined the dance circle."
  # scene.message "Lyra spun gracefully. Kael moved stiffly."
  # scene.message "You tried your best, bumping into each other and laughing."
  #
  # scene.message "Even Kael cracked a genuine smile."
  scene.message "\\bKael\\b: ...This is ridiculous."
  scene.message "\\bLyra\\b: But you're having fun! Admit it!"
  scene.message "\\bKael\\b: ...Maybe."
end

GameData::Cutscene.define :ch3_firework_setup do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Hill Climb
  # scene.message "As dusk fell, the festival prepared for its grand finale."
  # scene.message "Fireworks would illuminate the Legend of the Crowns."
  #
  # scene.message "You climbed the hill as the last light faded."
  # scene.message "Below, the festival glittered like a sea of stars."
  # scene.message "Above, the real stars began to appear."
  
  scene.message "\\bLyra\\b: Elena... I wish she was here."
  scene.message "\\bKael\\b: Where is she now?"
  scene.message "\\bLyra\\b: Training somewhere. Being a hero."
  scene.message "\\bLyra\\b: She's always been stronger than me."
  
  scene.message "\\b\\PN\\b: Strength isn't everything."
  scene.message "\\bLyra\\b: *smiling* Thanks, \\PN."
end

GameData::Cutscene.define :ch3_festival_night do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Fireworks Show
  # scene.message "The three of you sat on a hill overlooking the festival."
  # scene.message "Fireworks painted the night sky."
  
  scene.message "\\bLyra\\b: This was nice. We should do this more often."
  scene.message "\\bKael\\b: ...It wasn't terrible."
  
  scene.message "\\b\\PN\\b: High praise from you, Kael."
  scene.message "\\bKael\\b: Don't push it."
  
  scene.message "\\bLyra\\b: You know... that story about the guardians..."
  scene.message "\\bLyra\\b: Grandma used to tell it differently."
  
  scene.message "\\b\\PN\\b: How so?"
  
  scene.message "\\bLyra\\b: She said the guardians aren't gone."
  scene.message "\\bLyra\\b: They're sleeping. Waiting for the right people."
  scene.message "\\bLyra\\b: 'Chosen Ones' she called them."
  
  scene.message "\\bKael\\b: Fairy tales don't have 'Chosen Ones' in real life."
  
  scene.message "\\bLyra\\b: Maybe not. But wouldn't it be cool?"
  scene.message "\\bLyra\\b: To be chosen for something special?"
  
  # TODO: Event Sequence - Chosen One hints
  # scene.message "You looked up at the stars."
  # scene.message "For some reason, you couldn't shake the feeling..."
  # scene.message "That you already were."
end

GameData::Cutscene.define :ch3_shared_dream_again do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Kael's Dream
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # scene.message "That night, the dream came again."
  # scene.message "The void. The three figures. The shattered crowns."
  
  # scene.message "But this time... something was different."
  # scene.message "The figures turned toward you."
  
  scene.message "\\bVoice\\b: The time draws near..."
  scene.message "\\bVoice\\b: Find the first fragment before darkness does."
  scene.message "\\bVoice\\b: The forest temple holds what you seek."
  
  # scene.message "Kael woke with a start."
  # scene.message "Across the room, you and Lyra were also awake."
  # scene.message "The same dream. The same message."
  
  scene.message "\\bKael\\b: ...The forest temple."
  scene.message "\\bLyra\\b: You heard it too?"
  scene.message "\\b\\PN\\b: All three of us."
  
  scene.message "\\bKael\\b: This is beyond coincidence now."
  scene.message "\\bKael\\b: Something is deliberately contacting us."
end

GameData::Cutscene.define :ch3_shadow_stalker do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Shadow Stalker Encounter
  # scene.message "As you walked back to the inn..."
  # scene.message "Shadow suddenly growled."
  #
  # scene.message "Movement in the alley. A hooded figure."
  # scene.message "Not running this time. Watching."
  
  scene.message "\\bHooded Figure\\b: ...Soon."
  
  # scene.message "And vanished into the shadows."
  # scene.message "The festival's cheer suddenly felt very far away."
end

GameData::Cutscene.define :ch3_morning_after do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Morning After
  # scene.message "The morning after the festival felt different."
  # scene.message "The town was quiet, recovering from the celebrations."
  #
  # scene.message "You gathered your supplies and prepared to leave Thornwood."
  # scene.message "The festival was over, but your journey was just beginning."
end

GameData::Cutscene.define :ch3_departure_gift do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Gift Encounter
  # scene.message "As you left town, an old woman stopped you."
  # scene.message "She pressed something into your hand."
  
  scene.message "\\bOld Woman\\b: For your journey, young ones."
  scene.message "\\bOld Woman\\b: The path ahead is dark, but you carry light."
  
  scene.message "\\bLyra\\b: Thank you, but who—"
  
  # TODO: Event Sequence - Mysterious Crystal
  # scene.message "The woman was already gone."
  # scene.message "In your hand was a small crystal that pulsed with warmth."
  
  scene.message "\\bKael\\b: That's not normal."
  scene.message "\\bKael\\b: Normal crystals don't glow."
  
  scene.message "\\b\\PN\\b: Nothing about this journey is normal."
  
  # TODO: Event Sequence - Crystal Fades
  # scene.message "The crystal's light faded, but the warmth remained."
  # scene.message "A small comfort against the unknown ahead."
  
  scene.message "\\bLyra\\b: Well... here we go!"
  scene.message "\\bKael\\b: Stay alert. Something tells me the real journey starts now."
end

#===============================================================================
# Chapter 4: First Signs - Wild Pokémon Acting Strange
#===============================================================================

GameData::Cutscene.define :ch4_forest_path do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Forest Entry
  # scene.message "The path through Thornwood Forest was peaceful."
  # scene.message "Dappled sunlight filtered through autumn leaves."
  
  scene.message "\\bLyra\\b: It's so pretty here!"
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\bKael\\b: Stay focused. Forests can be dangerous."
  scene.message "\\bLyra\\b: You worry too much, Kael."
  
  scene.message "\\b\\PN\\b: He has a point. We should stay alert."
  
  # TODO: Event Sequence - Uneasy Feeling
  # scene.message "Your Pokémon walked beside you, ears perked."
  # scene.message "Something felt different today."
  # scene.message "The forest was quieter than usual."
end

GameData::Cutscene.define :ch4_strange_pokemon do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  # TODO: Event Sequence - Panic Run
  # scene.message "Something was wrong in the forest."
  # scene.message "Wild Pokémon fled past you in panic."
  
  scene.message "\\bLyra\\b: They're terrified! What's happening?"
  scene.message "\\bKael\\b: Something's driving them out."
  scene.message "\\bKael\\b: We should investigate."
  
  scene.message "\\b\\PN\\b: Agreed. Let's move carefully."
end

GameData::Cutscene.define :ch4_fleeing_pokemon do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  # TODO: Event Sequence - More Fleeing
  # scene.message "More Pokémon rushed past—Pidgey, Rattata, even a Nidoran."
  # scene.message "All running in the same direction. Away from something."
  
  scene.message "\\bLyra\\b: I've never seen them act like this!"
  scene.message "\\bLyra\\b: *kneeling down* Hey, little one, what's wrong?"
  
  # TODO: Event Sequence - Scared Caterpie
  # scene.message "A frightened Caterpie trembled in her hands."
  scene.message "\\bCaterpie\\b: Cat... cater..."
  
  scene.message "\\bKael\\b: It can't tell us anything useful."
  scene.message "\\bLyra\\b: It's still scared! We need to help!"
  
  scene.message "\\b\\PN\\b: We'll find the source and stop it."
  scene.message "\\b\\PN\\b: Lyra, can you calm it down?"
  
  scene.message "\\bLyra\\b: *nodding* Shh, it's okay, little guy..."
  scene.message "\\bLyra\\b: We'll protect you."
  
  # TODO: Event Sequence - Willow Comforts
  # scene.message "Willow curled around the Caterpie protectively."
end

GameData::Cutscene.define :ch4_eerie_clearing do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Twisted Woods
  # scene.message "You pushed deeper into the forest."
  # scene.message "The trees here were twisted, wrong somehow."
  
  scene.message "\\bKael\\b: The vegetation is distorted."
  scene.message "\\bKael\\b: Something is affecting the natural growth."
  
  scene.message "\\bLyra\\b: It feels... heavy here."
  scene.message "\\bLyra\\b: Like the air itself is sad."
  
  # TODO: Event Sequence - Shadow Growls
  # scene.message "Shadow growled at the shadows between trees."
  scene.message "\\bShadow\\b: Zor... zorua..."
  
  scene.message "\\bKael\\b: She senses something. Be ready."
  
  # TODO: Event Sequence - Ready Weapon
  # scene.message "You gripped your Pokéball tighter."
  # scene.message "Whatever was causing this, you'd face it together."
end

GameData::Cutscene.define :ch4_ancient_tablet do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Tablet Discovery
  # scene.message "Deep in the forest, you found the source."
  # scene.message "An ancient stone tablet, cracked and weathered."
  # scene.message "Strange symbols pulsed with faint light."
  
  scene.message "\\bLyra\\b: What is that?"
  scene.message "\\bKael\\b: Old. Very old."
  
  # TODO: Event Sequence - Kael Sketches
  # scene.message "He pulled out a notebook and began sketching."
  
  scene.message "\\bKael\\b: These symbols... I've never seen anything like them."
  scene.message "\\bKael\\b: But I've seen fragments in old books."
  
  scene.message "\\bLyra\\b: Can you read them?"
  scene.message "\\bKael\\b: Not yet. But I will."
  
  # TODO: Event Sequence - Tablet Sensation
  # scene.message "You noticed your arm tingling near the tablet."
  # scene.message "(Strange... it's almost warm.)"
  
  scene.message "\\b\\PN\\b: Let's bring this to Professor Aldric."
  scene.message "\\b\\PN\\b: He might know what it means."
end

GameData::Cutscene.define :ch4_tablet_reaction do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_flash 10
  
  # TODO: Event Sequence - Tablet Visions
  # scene.message "As you touched the tablet, light flared."
  # scene.message "Images flooded your mind—crowns, shadows, a great battle."
  
  scene.message "\\b\\PN\\b: Did you see that?!"
  
  scene.message "\\bLyra\\b: See what? The light?"
  scene.message "\\bKael\\b: ...I saw something too."
  scene.message "\\bKael\\b: Fragments. Like the dreams."
  
  scene.message "\\bLyra\\b: I didn't see anything..."
  scene.message "\\bLyra\\b: Just felt really warm suddenly."
  
  scene.message "\\bKael\\b: Interesting. Different reactions."
  scene.message "\\bKael\\b: Perhaps we each connect to it differently."
  
  # TODO: Event Sequence - Vision Ends
  # scene.message "The tablet's glow faded, but the warmth remained."
  # scene.message "Something had changed. You could feel it."
end

GameData::Cutscene.define :ch4_pokemon_returning do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Forest Calms
  # scene.message "After touching the tablet, the forest seemed to calm."
  # scene.message "Slowly, Pokémon began returning to the area."
  
  scene.message "\\bLyra\\b: Look! They're coming back!"
  scene.message "\\bLyra\\b: Whatever was scaring them... stopped."
  
  scene.message "\\bKael\\b: Because we activated the tablet?"
  scene.message "\\bKael\\b: Or because something finished what it was doing?"
  
  scene.message "\\b\\PN\\b: Either way, the forest feels better now."
  
  # TODO: Event Sequence - Caterpie Returns
  # scene.message "The Caterpie from before wiggled happily."
  scene.message "\\bLyra\\b: *releasing it* There you go, little one!"
  scene.message "\\bLyra\\b: You're safe now!"
  
  # TODO: Event Sequence - Caterpie Leaves
  # scene.message "It turned back once, as if to thank you, then disappeared into the brush."
end

GameData::Cutscene.define :ch4_first_town_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Town Arrival
  # scene.message "You arrived at Verdantia Town as evening fell."
  # scene.message "A cozy forest town with the region's first Gym."
  
  scene.message "\\bLyra\\b: Finally! A bed! Real food!"
  scene.message "\\bKael\\b: And a library. I need to research those symbols."
  
  scene.message "\\b\\PN\\b: First things first—let's check into the Pokémon Center."
  
  scene.message "\\bNurse Joy\\b: Welcome, trainers!"
  scene.message "\\bNurse Joy\\b: You look like you've had quite a day!"
  
  scene.message "\\bLyra\\b: You have no idea..."
  
  # TODO: Event Sequence - Rest
  # scene.message "Your Pokémon were healed while you rested."
  # scene.message "Tomorrow would bring new challenges."
end

GameData::Cutscene.define :ch4_ragnar_appears do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: \\PN! THERE YOU ARE!"
  
  # TODO: Event Sequence - Ragnar Appears
  # scene.message "You spun around to see Ragnar running toward you."
  # scene.message "His Pikachu—now a Raichu—perched on his shoulder."
  
  scene.message "\\bRagnar\\b: I've been looking EVERYWHERE for you!"
  scene.message "\\bRagnar\\b: I already beat the first Gym!"
  
  scene.message "\\b\\PN\\b: Already?"
  
  scene.message "\\bRagnar\\b: YEP! Fern was tough, but we crushed it!"
  scene.message "\\bRagnar\\b: *notices Lyra and Kael* Oh! You made friends!"
  
  scene.message "\\bLyra\\b: Hi! I'm Lyra!"
  scene.message "\\bKael\\b: ...Kael."
  
  scene.message "\\bRagnar\\b: Cool! I'm Ragnar!"
  scene.message "\\bRagnar\\b: \\PN's been my rival since we were kids!"
  scene.message "\\bRagnar\\b: I'm gonna beat them to the Championship!"
  
  scene.message "\\bKael\\b: *to you* Is he always like this?"
  scene.message "\\b\\PN\\b: Unfortunately, yes."
  
  scene.message "\\bRagnar\\b: HEY! I heard that!"
  scene.message "\\bRagnar\\b: Anyway, I'm not sticking around!"
  scene.message "\\bRagnar\\b: I've got badges to collect!"
  
  scene.message "\\bRagnar\\b: But \\PN—don't fall too far behind!"
  scene.message "\\bRagnar\\b: Our rematch is gonna be LEGENDARY!"
  
  # TODO: Event Sequence - Ragnar Exits
  # scene.message "He sprinted off before you could respond."
  
  scene.message "\\bLyra\\b: *giggling* I like him!"
  scene.message "\\bKael\\b: *sighing* I don't."
end

GameData::Cutscene.define :ch4_gym_leader_intro do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  # TODO: Event Sequence - Gym Intro
  # scene.message "The Verdantia Gym specialized in Grass-types."
  # scene.message "Its leader, Fern, was known for her nurturing battle style."
  
  scene.message "\\bFern\\b: Welcome, young trainers!"
  scene.message "\\bFern\\b: I sense potential in all three of you."
  
  scene.message "\\bLyra\\b: Thank you! We're here to challenge the Gym!"
  
  scene.message "\\bFern\\b: Wonderful! But first..."
  scene.message "\\bFern\\b: Tell me—why do you want to become strong?"
  
  scene.message "\\bLyra\\b: To protect the people I love!"
  scene.message "\\bKael\\b: To find answers."
  scene.message "\\b\\PN\\b: To become someone who can make a difference."
  
  scene.message "\\bFern\\b: *smiling* Good answers, all of them."
  scene.message "\\bFern\\b: Strength without purpose is just destruction."
  scene.message "\\bFern\\b: Remember that, whatever path you walk."
end

GameData::Cutscene.define :ch4_gym1_prep do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: The first Gym! I'm so nervous!"
  scene.message "\\bKael\\b: Nervousness is a waste of energy."
  scene.message "\\bKael\\b: Either you're prepared or you're not."
  
  scene.message "\\bLyra\\b: *pouting* Could you be supportive for once?"
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: You'll do fine."
  
  scene.message "\\bLyra\\b: *surprised* Was that... encouragement?"
  scene.message "\\bKael\\b: Don't get used to it."
  
  scene.message "\\b\\PN\\b: *laughing* Let's all do our best!"
  scene.message "\\bLyra\\b: Together!"
  scene.message "\\bKael\\b: ...Together."
end

GameData::Cutscene.define :ch4_gym_battle do |scene|
  scene.play_bgm 'Pokemon XY - Gym Leader Battle'
  
  # TODO: Event Sequence - Battle Description
  # scene.message "The battle against Fern was intense."
  # scene.message "Her Pokémon moved in perfect harmony with nature."
  
  scene.message "\\bFern\\b: Feel the rhythm of the forest!"
  scene.message "\\bFern\\b: Leafeon, Leaf Blade!"
  
  # TODO: Event Sequence - Battle Action
  # scene.message "Your Pokémon dodged and countered."
  # scene.message "Every move was a learning experience."
  
  scene.message "\\bFern\\b: You adapt quickly!"
  scene.message "\\bFern\\b: But can you handle this?"
  
  # TODO: Event Sequence - Ace Reveal
  # scene.message "Her ace Pokémon emerged—a powerful Venusaur."
  # scene.message "The final clash would determine everything."
end

GameData::Cutscene.define :ch4_gym1_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  # TODO: Event Sequence - Victory
  # scene.message "You defeated the Gym Leader!"
  # scene.message "The first Badge was yours!"
  
  scene.message "\\bFern\\b: Impressive! You've got real potential!"
  scene.message "\\bFern\\b: Here, take the Forest Badge!"
  
  scene.message "\\bLyra\\b: We did it! All three of us!"
  scene.message "\\bKael\\b: *small nod* Not bad."
  
  scene.message "\\b\\PN\\b: One down, seven to go!"
  
  scene.set_switch SW::BADGE_1, true
end

GameData::Cutscene.define :ch4_fern_warning do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Serious Talk
  # scene.message "After the celebration, Fern pulled you aside."
  # scene.message "Her expression was serious."
  
  scene.message "\\bFern\\b: I sensed something unusual during our battle."
  scene.message "\\bFern\\b: A power dormant within you three."
  
  scene.message "\\b\\PN\\b: What kind of power?"
  
  scene.message "\\bFern\\b: I don't know. But the forest knows."
  scene.message "\\bFern\\b: The plants whispered when you entered."
  scene.message "\\bFern\\b: They haven't done that in centuries."
  
  scene.message "\\bKael\\b: ...Centuries?"
  
  scene.message "\\bFern\\b: There are old stories. Older than the League."
  scene.message "\\bFern\\b: About chosen ones who would awaken the guardians."
  scene.message "\\bFern\\b: Be careful on your journey."
  scene.message "\\bFern\\b: Not everyone welcomes change."
  
  # TODO: Event Sequence - Leaving Gym
  # scene.message "Her words echoed in your mind as you left the Gym."
end

GameData::Cutscene.define :ch4_evening_reflection do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Stargazing
  # scene.message "That evening, you sat outside the Pokémon Center."
  # scene.message "Stars filled the sky above Verdantia Town."
  
  scene.message "\\bLyra\\b: We actually won our first Badge!"
  scene.message "\\bLyra\\b: I can't believe it!"
  
  scene.message "\\bKael\\b: Believe it. You earned it."
  
  scene.message "\\b\\PN\\b: We all did. Together."
  
  scene.message "\\bLyra\\b: *yawning* Best. Day. Ever."
  scene.message "\\bLyra\\b: Even with the scary forest stuff."
  
  scene.message "\\bKael\\b: That 'scary forest stuff' is why we're here."
  scene.message "\\bKael\\b: The tablet, the dreams, Fern's warning..."
  scene.message "\\bKael\\b: It's all connected."
  
  scene.message "\\b\\PN\\b: Then we'll figure it out. Together."
  
  # TODO: Event Sequence - Resting
  # scene.message "Shadow curled at Kael's feet."
  # scene.message "Willow dozed in Lyra's lap."
  # scene.message "Your starter nuzzled against you."
  #
  # scene.message "Whatever was coming, you'd face it as a team."
end

#===============================================================================
# Chapter 5: The Library - Kael's Research
#===============================================================================

GameData::Cutscene.define :ch5_travel_to_ironvale do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Travel Montage
  # scene.message "The road to Ironvale City took you through rolling hills."
  # scene.message "Each town you passed had stories of strange events."
  
  scene.message "\\bLyra\\b: Did you hear what that merchant said?"
  scene.message "\\bLyra\\b: 'The ground groaned last night.'"
  
  scene.message "\\bKael\\b: Seismic activity has increased across the region."
  scene.message "\\bKael\\b: Something geological is happening."
  
  scene.message "\\b\\PN\\b: Or something not-so-geological."
  
  scene.message "\\bKael\\b: ...Possibly."
  
  # TODO: Event Sequence - Ironvale Reveal
  # scene.message "Ironvale City appeared on the horizon."
  # scene.message "Its famous library tower pierced the clouds."
  
  scene.message "\\bKael\\b: *eyes lighting up* The Grand Archive."
  scene.message "\\bKael\\b: If answers exist anywhere, they're there."
end

GameData::Cutscene.define :ch5_ironvale_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave City'
  
  # TODO: Event Sequence - Scholar's Paradise
  # scene.message "Ironvale City was a scholar's paradise."
  # scene.message "Bookshops lined every street. Academics filled the cafes."
  
  scene.message "\\bLyra\\b: This place is so... intellectual."
  scene.message "\\bLyra\\b: I feel underdressed."
  
  scene.message "\\bKael\\b: For once, I feel at home."
  
  scene.message "\\b\\PN\\b: Let's find a place to stay first."
  scene.message "\\b\\PN\\b: Then you can visit your beloved library, Kael."
  
  scene.message "\\bKael\\b: It's not 'beloved.' It's practical."
  scene.message "\\bLyra\\b: Sure, Kael. Sure."
  
  # TODO: Event Sequence - Shadow's excitement
  # scene.message "Shadow bounced ahead, intrigued by all the new scents."
  # scene.message "Even she seemed excited to explore."
end

GameData::Cutscene.define :ch5_library_exterior do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  # TODO: Event Sequence - Library Massive
  # scene.message "The Grand Archive was massive."
  # scene.message "Ancient stone walls covered in ivy. Stained glass windows."
  
  scene.message "\\bKael\\b: Fifteen floors of knowledge."
  scene.message "\\bKael\\b: Some texts here predate recorded history."
  
  scene.message "\\bLyra\\b: *whistling* That's a LOT of reading."
  
  scene.message "\\bKael\\b: You don't have to come."
  scene.message "\\bLyra\\b: And miss watching you nerd out? Never!"
  
  scene.message "\\b\\PN\\b: I'm curious too."
  scene.message "\\b\\PN\\b: Maybe we'll find something about those symbols."
  
  # TODO: Event Sequence - Library Interior
  # scene.message "The doors creaked open, revealing endless rows of books."
  # scene.message "The smell of old paper and knowledge filled the air."
end

GameData::Cutscene.define :ch5_library_research do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  # TODO: Event Sequence - Research Montage
  # scene.message "Kael spent three days in the old library."
  # scene.message "Barely eating. Barely sleeping."
  
  scene.message "\\bLyra\\b: *worried* He's going to work himself to death."
  scene.message "\\b\\PN\\b: That's just how Kael is."
  
  # TODO: Event Sequence - Found Book
  # scene.message "Finally, he emerged with a dusty tome."
  
  scene.message "\\bKael\\b: Found it."
  scene.message "\\bKael\\b: The symbols on that tablet..."
  scene.message "\\bKael\\b: They mention something called 'Asgaheim.'"
  
  scene.message "\\bLyra\\b: Asgaheim? What's that?"
  
  scene.message "\\bKael\\b: I don't know. The book doesn't explain."
  scene.message "\\bKael\\b: But it says it's 'the realm where gods sleep.'"
  
  scene.message "\\b\\PN\\b: Gods? Like... legendary Pokémon?"
  
  scene.message "\\bKael\\b: Maybe. Or something older."
  scene.message "\\bKael\\b: There's more research to do."
end

GameData::Cutscene.define :ch5_ancient_text do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Ancient Text Display
  # scene.message "Kael showed you what he'd found."
  # scene.message "An ancient text, yellowed with age."
  
  scene.message "\\bKael\\b: This book mentions 'Three Guardians.'"
  scene.message "\\bKael\\b: Beings of immense power who protected balance."
  
  scene.message "\\bLyra\\b: Like the festival story!"
  
  scene.message "\\bKael\\b: Exactly. But this predates those stories."
  scene.message "\\bKael\\b: This is the SOURCE."
  
  scene.message "\\b\\PN\\b: What happened to them?"
  
  scene.message "\\bKael\\b: According to this..."
  scene.message "\\bKael\\b: They sacrificed themselves to seal away a great darkness."
  scene.message "\\bKael\\b: Their power was split into 'Crown Fragments.'"
  scene.message "\\bKael\\b: Scattered across the world."
  
  scene.message "\\bLyra\\b: So the shattered crowns are real..."
  scene.message "\\bKael\\b: Very real. And apparently, we're connected to them."
end

GameData::Cutscene.define :ch5_librarian_warning do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  # TODO: Event Sequence - Librarian Warning
  # scene.message "An elderly librarian approached your table."
  # scene.message "Her eyes were sharp despite her age."
  
  scene.message "\\bLibrarian\\b: You're researching the old legends."
  scene.message "\\bLibrarian\\b: Be careful with that knowledge."
  
  scene.message "\\bKael\\b: Why? It's just history."
  
  scene.message "\\bLibrarian\\b: Is it?"
  scene.message "\\bLibrarian\\b: Some knowledge awakens things best left sleeping."
  scene.message "\\bLibrarian\\b: Others have come before you. Seeking the same answers."
  
  scene.message "\\b\\PN\\b: Others? Who?"
  
  scene.message "\\bLibrarian\\b: People in dark robes. Symbol of a broken hand."
  scene.message "\\bLibrarian\\b: They took many books. Asked about the guardians."
  
  scene.message "\\bLyra\\b: The Shattered Hand..."
  
  scene.message "\\bLibrarian\\b: Leave these matters alone, children."
  scene.message "\\bLibrarian\\b: Before you attract their attention."
  
  # TODO: Event Sequence - Librarian Exit
  # scene.message "She shuffled away, leaving you with a chill down your spine."
end

GameData::Cutscene.define :ch5_kael_revelation do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Kael's Memory
  # scene.message "That night, Kael couldn't sleep."
  # scene.message "The research had awakened old memories."
  
  scene.message "\\bKael\\b: (The fire... Mira...)"
  
  # TODO: Event Sequence - Shadow Comforts
  # scene.message "Shadow nuzzled his leg."
  scene.message "\\bShadow\\b: Zor?"
  
  scene.message "\\bKael\\b: I'm fine, girl."
  scene.message "\\bKael\\b: Just... remembering."
  
  # TODO: Event Sequence - Flashback Fire
  # scene.message "The orphanage fire. The screaming. His sister's sacrifice."
  # scene.message "She'd pushed him out the window before the flames took her."
  
  scene.message "\\bKael\\b: I couldn't save her."
  scene.message "\\bKael\\b: But maybe... if these legends are real..."
  scene.message "\\bKael\\b: Maybe there's power enough to prevent such things."
  
  # TODO: Event Sequence - Shadow Bond
  # scene.message "Shadow licked his hand."
  # scene.message "She understood. She always did."
end

GameData::Cutscene.define :ch5_lyra_letter do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Letter Reading
  # scene.message "A letter arrived for Lyra from her grandmother."
  # scene.message "Her expression grew serious as she read."
  
  scene.message "\\bLyra\\b: Grandma says Elena is coming home."
  scene.message "\\bLyra\\b: She's been investigating something..."
  
  scene.message "\\b\\PN\\b: That's good news, right?"
  
  scene.message "\\bLyra\\b: I don't know. The letter sounds worried."
  scene.message "\\bLyra\\b: Elena found something. Something about our family."
  scene.message "\\bLyra\\b: About why we've always been connected to legends."
  
  scene.message "\\bKael\\b: Another piece of the puzzle."
  
  scene.message "\\bLyra\\b: I need to see her."
  scene.message "\\bLyra\\b: She's my big sister. She always knows what to do."
  
  scene.message "\\b\\PN\\b: We'll meet up with her. Together."
  scene.message "\\bLyra\\b: *smiling slightly* Together."
end

GameData::Cutscene.define :ch5_lyra_heirloom do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Lyra Shaken
  # scene.message "Lyra returned from visiting her grandmother."
  # scene.message "She looked... shaken."
  
  scene.message "\\b\\PN\\b: Lyra? Everything okay?"
  
  scene.message "\\bLyra\\b: My grandmother showed me something."
  scene.message "\\bLyra\\b: A family heirloom. Very old."
  
  scene.message "\\bKael\\b: What kind of heirloom?"
  
  scene.message "\\bLyra\\b: A pendant. It glowed when I touched it."
  scene.message "\\bLyra\\b: Grandma got really serious."
  scene.message "\\bLyra\\b: She said our family has a 'duty'..."
  scene.message "\\bLyra\\b: But she wouldn't explain what."
  
  scene.message "\\b\\PN\\b: That's strange..."
  
  scene.message "\\bKael\\b: Another mystery."
  scene.message "\\bKael\\b: They're all connected. I'm sure of it."
end

GameData::Cutscene.define :ch5_prophetic_dream do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Prophetic Visions
  # scene.message "The dream was more vivid this time."
  # scene.message "You stood in a vast chamber of light and shadow."
  
  # TODO: Event Sequence - Thrones
  # scene.message "Three thrones. Three crowns. Three figures."
  
  scene.message "\\bVoice\\b: The time of awakening draws near."
  scene.message "\\bVoice\\b: You are the bridge between worlds."
  scene.message "\\bVoice\\b: Find the fragments before the broken ones."
  
  scene.message "\\b\\PN\\b: Who are you?! What do you want?!"
  
  scene.message "\\bVoice\\b: We are what remains."
  scene.message "\\bVoice\\b: We are the guardians' last hope."
  scene.message "\\bVoice\\b: And you... are chosen."
  
  # TODO: Event Sequence - Waking Up
  # scene.message "You woke gasping for air."
  # scene.message "The weight of destiny felt heavier than ever."
end

GameData::Cutscene.define :ch5_ragnar_concern do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Ragnar Concerned
  # scene.message "You were walking to meet Lyra and Kael when—"
  
  scene.message "\\bRagnar\\b: *grabbing your shoulder* Hey."
  
  # scene.message "His usual energy was subdued."
  
  scene.message "\\bRagnar\\b: You okay? You've been... different lately."
  
  scene.message "\\b\\PN\\b: What do you mean?"
  
  scene.message "\\bRagnar\\b: Quieter. More serious."
  scene.message "\\bRagnar\\b: Those new friends of yours..."
  scene.message "\\bRagnar\\b: Something weird's going on, right?"
  
  # TODO: Event Sequence - Hesitation
  # scene.message "You hesitated. How much could you tell him?"
  
  scene.message "\\b\\PN\\b: It's... complicated."
  
  scene.message "\\bRagnar\\b: *crossing arms* I'm not dumb, you know."
  scene.message "\\bRagnar\\b: I can see it in your face."
  scene.message "\\bRagnar\\b: Whatever it is... be careful, okay?"
  
  scene.message "\\b\\PN\\b: I will."
  
  scene.message "\\bRagnar\\b: Good! 'Cause I still need to beat you!"
  scene.message "\\bRagnar\\b: Can't do that if you go and disappear!"
  
  # TODO: Event Sequence - Ragnar Departure
  # scene.message "He punched your shoulder lightly and jogged off."
  # scene.message "Ragnar. Annoying but... always there."
end

GameData::Cutscene.define :ch5_trio_discussion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Trio Meeting
  # scene.message "You gathered the next morning to discuss your findings."
  # scene.message "Each of you had experienced something strange."
  
  scene.message "\\bKael\\b: The guardians. The fragments. The Shattered Hand."
  scene.message "\\bKael\\b: It's all connected."
  
  scene.message "\\bLyra\\b: And we're in the middle of it."
  scene.message "\\bLyra\\b: Whether we like it or not."
  
  scene.message "\\b\\PN\\b: So what do we do?"
  
  scene.message "\\bKael\\b: We keep moving forward."
  scene.message "\\bKael\\b: Collect the Gym Badges. Get stronger."
  scene.message "\\bKael\\b: And search for answers along the way."
  
  scene.message "\\bLyra\\b: And stick together! No splitting up!"
  scene.message "\\bKael\\b: ...Agreed."
  
  scene.message "\\b\\PN\\b: Then let's go. Adventure awaits."
  
  # TODO: Event Sequence - Path Ahead
  # scene.message "The path ahead was uncertain."
  # scene.message "But at least you weren't walking it alone."
end

GameData::Cutscene.define :ch5_earthquake do |scene|
  scene.play_bgm 'Pokemon RSE - Drought'
  scene.camera_shake 10, 60
  
  # TODO: Event Sequence - Earthquake
  # scene.message "That night, the ground shook."
  # scene.message "Not just here—reports came from across the region."
  
  scene.message "\\bNews Report\\b: Mysterious earthquakes reported..."
  scene.message "\\bNews Report\\b: Scientists baffled by unusual seismic patterns..."
  
  scene.message "\\bLyra\\b: That's the third weird thing this week!"
  
  scene.message "\\bKael\\b: The tablet. The heirloom. The earthquake."
  scene.message "\\bKael\\b: Something's waking up."
  
  scene.message "\\b\\PN\\b: What do you mean?"
  
  scene.message "\\bKael\\b: I don't know yet."
  scene.message "\\bKael\\b: But whatever it is..."
  scene.message "\\bKael\\b: We're caught in the middle of it."
end

GameData::Cutscene.define :ch5_mysterious_observer do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Mysterious Watching
  # scene.message "As you left the library, you felt eyes on you."
  # scene.message "A figure watched from across the plaza."
  
  scene.message "\\bKael\\b: Don't look. But we're being watched."
  scene.message "\\bLyra\\b: The Shattered Hand?"
  
  scene.message "\\bKael\\b: Possibly. Act natural."
  
  # TODO: Event Sequence - Walking Away
  # scene.message "You continued walking, pretending not to notice."
  # scene.message "The figure didn't follow—just watched."
  
  scene.message "\\b\\PN\\b: (Who are they? What do they want?)"
  
  # TODO: Event Sequence - Hunted Feeling
  # scene.message "The sense of being hunted had begun."
  # scene.message "Whatever game was being played, you were now pieces on the board."
end

GameData::Cutscene.define :ch5_leaving_ironvale do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Leaving Ironvale
  # scene.message "You left Ironvale City the next morning."
  # scene.message "Armed with knowledge, but burdened by questions."
  
  scene.message "\\bLyra\\b: So we're really doing this."
  scene.message "\\bLyra\\b: Chasing ancient legends."
  
  scene.message "\\bKael\\b: We don't have a choice."
  scene.message "\\bKael\\b: The legends are chasing us."
  
  scene.message "\\b\\PN\\b: Then let's stay one step ahead."
  
  # TODO: Event Sequence - Road Ahead
  # scene.message "The road stretched before you."
  # scene.message "Somewhere out there were answers."
  # scene.message "And somewhere out there, enemies gathered."
  #
  # scene.message "But you were together."
  # scene.message "And that would have to be enough."
end

#===============================================================================
# Chapter 6: Rumors - The Shattered Hand
#===============================================================================

GameData::Cutscene.define :ch6_new_city_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - City Description
  # scene.message "Ashbury City sprawled before you."
  # scene.message "A bustling metropolis of commerce and culture."
  
  scene.message "\\bLyra\\b: Wow! It's huge!"
  scene.message "\\bLyra\\b: So many people! So many shops!"
  
  scene.message "\\bKael\\b: And many places for enemies to hide."
  scene.message "\\bLyra\\b: Can't you just enjoy things for once?"
  
  scene.message "\\b\\PN\\b: He has a point. Stay alert."
  scene.message "\\b\\PN\\b: After what happened at the library..."
  
  scene.message "\\bLyra\\b: *sighing* Fine. Alert AND excited."
  
  # TODO: Event Sequence - Shadow Suspicion
  # scene.message "Shadow sniffed the air suspiciously."
  # scene.message "Even she sensed something in this city."
end

GameData::Cutscene.define :ch6_cult_rumors do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Cult Rumors
  # scene.message "In the city, whispers spread."
  # scene.message "People spoke of strange figures in hoods."
  
  scene.message "\\bCitizen\\b: They call themselves the Shattered Hand..."
  scene.message "\\bCitizen\\b: Weird cult stuff. Stay away from them."
  
  scene.message "\\bLyra\\b: Shattered Hand? Like the shattered crowns?"
  
  scene.message "\\bKael\\b: *eyes narrowing* Could be a coincidence."
  scene.message "\\bKael\\b: Or could be connected to everything else."
  
  scene.message "\\b\\PN\\b: Should we investigate?"
  
  scene.message "\\bKael\\b: Not yet. We don't know what we're dealing with."
  scene.message "\\bKael\\b: Let's keep our eyes open."
end

GameData::Cutscene.define :ch6_street_talk do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Eavesdropping
  # scene.message "You overheard a conversation at a cafe."
  # scene.message "Two older trainers spoke in hushed tones."
  
  scene.message "\\bTrainer A\\b: My cousin saw them in the old district."
  scene.message "\\bTrainer A\\b: Said they had matching robes. A broken hand symbol."
  
  scene.message "\\bTrainer B\\b: Sounds like trouble. What do they want?"
  scene.message "\\bTrainer A\\b: Nobody knows. They just... watch."
  
  scene.message "\\bKael\\b: *leaning back* Interesting."
  scene.message "\\bLyra\\b: *whispering* Should we ask them more?"
  
  scene.message "\\b\\PN\\b: Not here. We'd draw attention."
  
  scene.message "\\bKael\\b: The old district. Worth investigating later."
  
  # TODO: Event Sequence - Info Gathered
  # scene.message "You filed away the information for later."
end

GameData::Cutscene.define :ch6_ragnar_gym2 do |scene|
  scene.play_bgm 'Pokemon XY - Rival Theme'
  
  # TODO: Event Sequence - Ragnar Boast
  # scene.message "As you approached the Gym, the doors burst open."
  
  scene.message "\\bRagnar\\b: TWO BADGES, BABY!"
  
  # scene.message "Ragnar strutted out, his Pikachu sparking victoriously."
  
  scene.message "\\bRagnar\\b: Oh! \\PN! You're just getting here?"
  scene.message "\\bRagnar\\b: HA! I'm still ahead!"
  
  scene.message "\\b\\PN\\b: *sighing* Hi, Ragnar."
  
  scene.message "\\bLyra\\b: Is this your rival?"
  
  scene.message "\\bRagnar\\b: THE one and only!"
  scene.message "\\bRagnar\\b: Ragnar, future Champion, at your service!"
  
  scene.message "\\bKael\\b: ...Is he always like this?"
  
  scene.message "\\b\\PN\\b: Unfortunately."
  
  scene.message "\\bRagnar\\b: You love it!"
  scene.message "\\bRagnar\\b: Anyway, good luck in there!"
  scene.message "\\bRagnar\\b: Spark's tough, but nothing compared to ME!"
  
  # TODO: Event Sequence - Ragnar Exit
  # scene.message "He ran off, waving."
  
  scene.message "\\bLyra\\b: *giggling* He's fun!"
  scene.message "\\bKael\\b: That's one word for it."
end

GameData::Cutscene.define :ch6_gym2_building do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  # TODO: Event Sequence - Gym Description
  # scene.message "The Ashbury Gym specialized in Electric-types."
  # scene.message "Its building crackled with visible energy."
  
  scene.message "\\bLyra\\b: It's so... shiny!"
  scene.message "\\bKael\\b: That's just the electrical discharge."
  scene.message "\\bLyra\\b: Still pretty!"
  
  scene.message "\\b\\PN\\b: Is everyone ready?"
  
  scene.message "\\bLyra\\b: Ready!"
  scene.message "\\bKael\\b: *nodding* Let's get this done."
  
  # TODO: Event Sequence - Gym Entry
  # scene.message "The Gym doors slid open automatically."
  # scene.message "Inside, the hum of electricity filled the air."
end

GameData::Cutscene.define :ch6_gym2_prep do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  # TODO: Event Sequence - Distraction
  # scene.message "The second Gym awaited."
  # scene.message "But your mind was elsewhere."
  
  scene.message "\\bLyra\\b: \\PN? You seem distracted."
  
  scene.message "\\b\\PN\\b: Just thinking about everything."
  scene.message "\\b\\PN\\b: The symbols. The cult. The earthquakes."
  
  scene.message "\\bLyra\\b: I know. It's a lot."
  scene.message "\\bLyra\\b: But right now, let's focus on what we can control."
  
  scene.message "\\bKael\\b: The Gym. Then we investigate."
  scene.message "\\bKael\\b: One thing at a time."
  
  scene.message "\\b\\PN\\b: You're right. Let's do this."
end

GameData::Cutscene.define :ch6_gym2_leader_intro do |scene|
  scene.play_bgm 'Pokemon XY - Gym Leader'
  
  # TODO: Event Sequence - Leader Intro
  # scene.message "The Gym Leader appeared in a flash of lightning."
  # scene.message "A young man with spiky hair and an electric personality."
  
  scene.message "\\bSpark\\b: Yo! Welcome to my Gym!"
  scene.message "\\bSpark\\b: I'm Spark! Let's see if you can handle the voltage!"
  
  scene.message "\\bLyra\\b: Ooh, he's cool!"
  scene.message "\\bKael\\b: *muttering* He's obnoxious."
  
  scene.message "\\bSpark\\b: I heard that! But I'll forgive you..."
  scene.message "\\bSpark\\b: If you can beat me in battle!"
  
  scene.message "\\b\\PN\\b: Bring it on!"
  
  scene.message "\\bSpark\\b: That's the spirit! Luxray, let's go!"
  
  scene.message "The battle crackled with electric tension."
end

GameData::Cutscene.define :ch6_gym2_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  # TODO: Event Sequence - Gym Defeated
  # scene.message "The battle ended with one final attack."
  # scene.message "Spark's Pokémon fell, defeated."
  
  scene.message "\\bSpark\\b: Whoa! You're stronger than you look!"
  scene.message "\\bSpark\\b: Here—the Storm Badge! You earned it!"
  
  scene.message "\\bLyra\\b: Two badges! We're on a roll!"
  
  scene.message "\\bSpark\\b: Hey, word of advice?"
  scene.message "\\bSpark\\b: I've seen some weird folks around town."
  scene.message "\\bSpark\\b: Hooded types. They give me the creeps."
  scene.message "\\bSpark\\b: Watch yourselves out there."
  
  scene.message "\\bKael\\b: We've noticed them too."
  
  scene.message "\\bSpark\\b: Then be careful. Something's brewing."

  scene.message "\\bSpark\\b: Actually—take this grid printout."
  scene.message "\\bSpark\\b: Those hooded creeps have been drawing power from lines beneath the old district."
  scene.message "\\bSpark\\b: Not enough for the city to notice. Enough to feed something underground."
  scene.message "\\bKael\\b: A seal. They're testing the seal."
  scene.message "\\bSpark\\b: Then the Storm Badge isn't just a trophy. It opens every municipal relay gate on that map."
  scene.message "\\bSpark\\b: If they run, you can follow. If they overload the grid, I shut it down."
  
  scene.set_switch SW::BADGE_2, true
end

GameData::Cutscene.define :ch6_being_followed do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Stalkers
  # scene.message "After the Gym battle, you noticed them."
  # scene.message "Hooded figures. Watching from the shadows."
  
  scene.message "\\bLyra\\b: *whispering* \\PN... are those...?"
  scene.message "\\b\\PN\\b: *nodding* The Shattered Hand."
  
  scene.message "\\bKael\\b: They've been following us for hours."
  scene.message "\\bKael\\b: I counted three so far."
  
  scene.message "\\bLyra\\b: Why are they watching US?"
  
  scene.message "\\bKael\\b: We found that tablet."
  scene.message "\\bKael\\b: Maybe they noticed."
  
  scene.message "\\b\\PN\\b: Should we confront them?"
  
  scene.message "\\bKael\\b: Not here. Too public."
  scene.message "\\bKael\\b: Let's lead them somewhere isolated."
  scene.message "\\bKael\\b: Then WE become the hunters."
end

GameData::Cutscene.define :ch6_old_district do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  # TODO: Event Sequence - Old District
  # scene.message "You ventured into the old district."
  # scene.message "Crumbling buildings. Empty streets. Shadows everywhere."
  
  scene.message "\\bLyra\\b: This place is creepy..."
  scene.message "\\bWillow\\b: Vee... vee..."
  
  scene.message "\\bKael\\b: Perfect for a cult hideout."
  scene.message "\\bKael\\b: Stay close. Watch for movement."
  
  # TODO: Event Sequence - Tension
  # scene.message "You moved through the abandoned streets."
  # scene.message "The feeling of being watched intensified."
  
  scene.message "\\b\\PN\\b: They're here. I can feel it."
  
  scene.message "\\bKael\\b: Good. Let them come to us."
end

GameData::Cutscene.define :ch6_shadow_encounter do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Figure Appears
  # scene.message "A figure stepped from the shadows."
  # scene.message "Not attacking. Just observing."
  
  scene.message "\\bHooded Figure\\b: You shouldn't be here."
  
  scene.message "\\bKael\\b: We go where we please."
  
  scene.message "\\bHooded Figure\\b: The Chosen Ones should be protected..."
  scene.message "\\bHooded Figure\\b: Not wandering into danger."
  
  scene.message "\\bLyra\\b: Chosen Ones? What do you mean?"
  
  scene.message "\\bHooded Figure\\b: You'll understand soon."
  scene.message "\\bHooded Figure\\b: When the marks awaken."
  
  # TODO: Event Sequence - Figure Vanishes
  # scene.message "They stepped back into the darkness and vanished."
  
  scene.message "\\b\\PN\\b: What marks? What's going on?!"
  
  # scene.message "Silence was the only answer."
end

GameData::Cutscene.define :ch6_regrouping do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  # TODO: Event Sequence - Regroup at Center
  # scene.message "You returned to the Pokémon Center, shaken."
  # scene.message "So many questions. So few answers."
  
  scene.message "\\bLyra\\b: Chosen Ones. Marks. What does it all mean?"
  
  scene.message "\\bKael\\b: They believe something about us."
  scene.message "\\bKael\\b: Something connected to those guardians."
  
  scene.message "\\b\\PN\\b: But why? What makes us special?"
  
  scene.message "\\bKael\\b: I don't know. Yet."
  scene.message "\\bKael\\b: But I intend to find out."
  
  scene.message "\\bLyra\\b: Should we tell someone?"
  scene.message "\\bLyra\\b: Like Professor Aldric?"
  
  scene.message "\\b\\PN\\b: Good idea. He might know something."
  scene.message "\\b\\PN\\b: Let's contact him tomorrow."
end

GameData::Cutscene.define :ch6_marcus_intro do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  # TODO: Event Sequence - Marcus Block
  # scene.message "A confident trainer blocked your path."
  
  scene.message "\\bMarcus\\b: Well, well! New challengers!"
  scene.message "\\bMarcus\\b: I'm Marcus. The region's next Champion."
  
  scene.message "\\bKael\\b: *unimpressed* Never heard of you."
  
  scene.message "\\bMarcus\\b: You will! Once I crush you in battle!"
  scene.message "\\bMarcus\\b: I've already got two badges!"
  
  scene.message "\\bLyra\\b: So do we!"
  
  scene.message "\\bMarcus\\b: Oho! Spirited one, aren't you?"
  # TODO: Event Sequence - Marcus Flirting
  # scene.message "He winked at Lyra."
  # scene.message "Kael's expression went cold."
  
  scene.message "\\bMarcus\\b: Tell you what—let's battle!"
  scene.message "\\bMarcus\\b: Winner gets bragging rights!"
  
  scene.message "\\b\\PN\\b: You're on."
  
  scene.trainer_battle :RIVAL, "Marcus", 0
  
  scene.message "\\bMarcus\\b: Not bad! But next time, I'll win!"
  scene.message "\\bMarcus\\b: See you around, cuties!"
  # TODO: Event Sequence - Marcus Exit
  # scene.message "He waved and left."
  
  scene.message "\\bKael\\b: *muttering* I don't like him."
  scene.message "\\bLyra\\b: *giggling* Is that jealousy?"
  scene.message "\\bKael\\b: No."
  scene.message "\\bLyra\\b: Your ears are red."
  scene.message "\\bKael\\b: They are NOT."
end

GameData::Cutscene.define :ch6_night_thoughts do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Night Reflection
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  # scene.message "That night, you couldn't sleep."
  # scene.message "Too many thoughts. Too many questions."
  
  scene.message "\\b\\PN\\b: (Chosen Ones. What does that mean?)"
  scene.message "\\b\\PN\\b: (Am I really part of something bigger?)"
  
  # TODO: Event Sequence - Friends Sleeping
  # scene.message "You looked at your sleeping friends."
  # scene.message "Lyra, clutching Willow even in sleep."
  # scene.message "Kael, frowning even as he dreamed."
  
  scene.message "\\b\\PN\\b: (Whatever's coming...)"
  scene.message "\\b\\PN\\b: (I'll protect them.)"
  scene.message "\\b\\PN\\b: (That's what I choose.)"
  
  # TODO: Event Sequence - Starter Bond
  # scene.message "Your starter nuzzled your hand."
  # scene.message "Even in sleep, it sensed your worry."
  
  scene.message "\\b\\PN\\b: Thanks, buddy."
  scene.message "\\b\\PN\\b: At least I have all of you."
end

GameData::Cutscene.define :ch6_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Leaving Ashbury
  # scene.message "The next morning, you left Ashbury City."
  # scene.message "More questions than answers. But forward was the only way."
  
  scene.message "\\bLyra\\b: So where to next?"
  
  scene.message "\\bKael\\b: Professor Aldric's lab isn't far."
  scene.message "\\bKael\\b: We should update him on what we've found."
  
  scene.message "\\b\\PN\\b: And ask about the Shattered Hand."
  scene.message "\\b\\PN\\b: He's been studying old legends for years."
  
  scene.message "\\bLyra\\b: Sounds like a plan!"
  
  # TODO: Event Sequence - Journey Continues
  # scene.message "The road stretched ahead."
  # scene.message "Whatever awaited, you'd face it together."
end

#===============================================================================
# Chapter 7: First Confrontation - The Shattered Hand Attack
#===============================================================================

GameData::Cutscene.define :ch7_road_to_professor do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Long Walk
  # scene.message "The road to Professor Aldric's lab wound through dense forest."
  # scene.message "You'd been walking for hours."
  
  scene.message "\\bLyra\\b: *stretching* How much further?"
  scene.message "\\bKael\\b: According to the map, half a day."
  scene.message "\\bLyra\\b: *groaning* My feet hurt!"
  
  scene.message "\\b\\PN\\b: We could camp soon."
  scene.message "\\b\\PN\\b: It's getting dark anyway."
  
  scene.message "\\bKael\\b: Agreed. I don't like traveling at night."
  scene.message "\\bKael\\b: Too many unknowns."
  
  # TODO: Event Sequence - Shadow Sensing
  # scene.message "Shadow sniffed the air nervously."
  scene.message "\\bKael\\b: She senses something."
end

GameData::Cutscene.define :ch7_forest_journey do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Quiet Forest
  # scene.message "The forest path was peaceful."
  # scene.message "Too peaceful."
  
  scene.message "\\bLyra\\b: It's so pretty here!"
  scene.message "\\bLyra\\b: Look at all the Butterfree!"
  
  scene.message "\\bKael\\b: *scanning the trees* Something's wrong."
  scene.message "\\bKael\\b: Where are all the other Pokémon?"
  
  scene.message "\\b\\PN\\b: You're right... it's too quiet."
  
  scene.message "\\bLyra\\b: Maybe they're just—"
  
  # TODO: Event Sequence - Rustling
  # scene.message "A rustling in the bushes."
  # scene.message "Then another. And another."
  
  scene.message "\\bKael\\b: We're surrounded."
  scene.message "\\bKael\\b: Those followers from the city."
  scene.message "\\bKael\\b: They've been herding us here."
end

GameData::Cutscene.define :ch7_trap_realization do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Blocked Path
  # scene.message "You stopped in a clearing."
  # scene.message "The path behind you was blocked."
  
  scene.message "\\bKael\\b: *cursing* I should have seen this."
  scene.message "\\bKael\\b: They wanted us here."
  
  scene.message "\\bLyra\\b: What do we do?!"
  scene.message "\\bWillow\\b: Vee! Vee!"
  
  scene.message "\\b\\PN\\b: Stay calm. We fight if we have to."
  
  scene.message "\\bKael\\b: Agreed. Back to back. Don't let them flank us."
  
  # TODO: Event Sequence - Formation
  # scene.message "The three of you formed a triangle."
  # scene.message "Your Pokémon at the ready."
  #
  # scene.message "Shadows moved between the trees."
  # scene.message "Getting closer."
end

GameData::Cutscene.define :ch7_ambush_begins do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  scene.camera_shake 3, 20
  
  # TODO: Event Sequence - Figures Emerge
  # scene.message "Hooded figures stepped out from the trees."
  # scene.message "Ten. Twenty. More appearing by the second."
  
  scene.message "\\bLyra\\b: *clutching Willow* There's so many!"
  scene.message "\\bWillow\\b: Vee! Vee!"
  
  scene.message "\\bKael\\b: *drawing Shadow's Pokéball* Stay behind me."
  scene.message "\\bShadow\\b: *materializing, growling*"
  
  scene.message "\\b\\PN\\b: *releasing starter* Let's take them together!"
  
  scene.message "\\bCultist\\b: Don't resist. This is inevitable."
  scene.message "\\bCultist\\b: The Marked Ones must come with us."
  
  scene.message "\\bKael\\b: Marked Ones? What marks?"
  
  scene.message "\\bCultist\\b: You'll understand soon enough."
end

GameData::Cutscene.define :ch7_cultist_battle do |scene|
  scene.play_bgm 'Pokemon XY - Team Battle'
  
  # TODO: Event Sequence - Cultist Attack
  # scene.message "The cultists attacked!"
  # scene.message "Their Pokémon were dark and aggressive."
  
  scene.message "\\bCultist\\b: Mightyena, Shadow Ball!"
  scene.message "\\bCultist\\b: Sableye, Night Shade!"
  
  # TODO: Event Sequence - Battle Chaos
  # scene.message "Your team fought back desperately."
  # scene.message "Shadow clashed with a Mightyena."
  # scene.message "Willow dodged a barrage of attacks."
  # scene.message "Your starter held the line."
  
  scene.message "\\bLyra\\b: There's too many of them!"
  scene.message "\\bKael\\b: Just hold on! Look for an opening!"
  
  scene.message "\\b\\PN\\b: There! The gap in their formation!"
  scene.message "\\b\\PN\\b: We can break through!"
  
  scene.message "\\bKael\\b: Together, on three!"
end

GameData::Cutscene.define :ch7_ragnar_rescue do |scene|
  scene.play_bgm 'Pokemon XY - Battle Theme'
  scene.camera_shake 5, 30
  
  # TODO: Event Sequence - Encirclement
  # scene.message "Just as the cultists closed in—"
  
  scene.message "\\bRagnar\\b: PIKA! THUNDERBOLT! NOW!"
  
  # TODO: Event Sequence - Thunderbolt
  # scene.message "A massive bolt of electricity struck the ground!"
  # scene.message "Cultists scattered, their Pokémon stunned."
  
  scene.message "\\bRagnar\\b: *landing from a tree* MISS ME?!"
  
  scene.message "\\b\\PN\\b: RAGNAR?!"
  
  scene.message "\\bRagnar\\b: Saw you heading into the forest!"
  scene.message "\\bRagnar\\b: Figured you'd get into trouble without me!"
  
  # TODO: Event Sequence - Pikachu Intimidate
  # scene.message "His Pikachu sparked menacingly."
  scene.message "\\bRagnar\\b: Now who are these creepy hood guys?!"
  
  scene.message "\\bCultist\\b: Another one? Dispose of him!"
  
  scene.message "\\bRagnar\\b: HA! TRY IT!"
  
  # TODO: Event Sequence - Turn Tide
  # scene.message "With Ragnar's help, the odds shifted."
  # scene.message "You fought side by side, just like old times."
end

GameData::Cutscene.define :ch7_vex_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  # TODO: Event Sequence - Vex Entrance
  # scene.message "The cultists parted."
  # scene.message "A tall figure strode forward."
  # scene.message "His presence made the air feel thick."
  
  scene.message "\\bVex\\b: Enough games."
  
  # TODO: Event Sequence - Vex Unhoods
  # scene.message "He removed his hood."
  # scene.message "Sharp features. Eyes that gleamed with unsettling hunger."
  
  scene.message "\\bVex\\b: I am Vex, General of the Shattered Hand."
  scene.message "\\bVex\\b: You three have been... difficult to locate."
  
  scene.message "\\bLyra\\b: What do you want with us?!"
  
  scene.message "\\bVex\\b: *studying them* Fascinating."
  scene.message "\\bVex\\b: You don't even know, do you?"
  scene.message "\\bVex\\b: The marks on your souls..."
  scene.message "\\bVex\\b: The guardians have chosen you."
  
  scene.message "\\bKael\\b: Guardians? What guardians?"
  
  scene.message "\\bVex\\b: *smiling coldly* All in due time."
  scene.message "\\bVex\\b: For now, I need to test something."
end

GameData::Cutscene.define :ch7_shattered_hand_attack do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  
  # TODO: Event Sequence - Vex Power
  # scene.message "Vex raised his hand."
  # scene.message "Dark energy crackled around him."
  
  scene.message "\\bVex\\b: The master wishes to see your potential."
  scene.message "\\bVex\\b: Don't disappoint me."
  
  # TODO: Event Sequence - Houndoom
  # scene.message "His Pokémon emerged—a fearsome Houndoom."
  # scene.message "Flames licked its jaws."
  
  scene.message "\\bVex\\b: Let us begin!"
  
  scene.trainer_battle :SHATTEREDHAND, "Vex", 0
  
  scene.message "\\bVex\\b: Hmph. You have potential."
  scene.message "\\bVex\\b: We will meet again, Chosen Ones."
  
  # TODO: Event Sequence - Vex Disappear
  # scene.message "He vanished into the shadows."
  scene.message "\\bLyra\\b: What... was that about?"
  scene.message "\\bKael\\b: I don't know. But I intend to find out."
  scene.message "\\b\\PN\\b: Whatever they're planning, we'll stop them. Together."
end

GameData::Cutscene.define :ch7_cultists_retreat do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  # TODO: Event Sequence - Retreat
  # scene.message "With Vex's departure, the other cultists hesitated."
  # scene.message "Then, as one, they melted back into the forest."
  
  scene.message "\\bLyra\\b: They're... leaving?"
  
  scene.message "\\bKael\\b: They got what they wanted."
  scene.message "\\bKael\\b: Information. A measure of our strength."
  
  scene.message "\\b\\PN\\b: This was just a test."
  
  scene.message "\\bKael\\b: Exactly. Which means..."
  scene.message "\\bKael\\b: The real confrontation is still coming."
  
  # TODO: Event Sequence - Silence
  # scene.message "The forest fell silent."
  # scene.message "Only the sound of heavy breathing remained."
end

GameData::Cutscene.define :ch7_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Aftermath
  # scene.message "The cultists retreated into the shadows."
  # scene.message "You stood in the clearing, shaken but alive."
  
  scene.message "\\bLyra\\b: *trembling* That was... intense."
  scene.message "\\bWillow\\b: Vee... vee..."
  # TODO: Event Sequence - Lyra Hug
  # scene.message "Lyra hugged Willow tightly."
  
  scene.message "\\bKael\\b: Chosen Ones. Marks. Guardians."
  scene.message "\\bKael\\b: He knew things about us that WE don't know."
  
  scene.message "\\b\\PN\\b: We need to find out what's going on."
  scene.message "\\b\\PN\\b: Professor Aldric might know something."
  
  scene.message "\\bKael\\b: Agreed. But first..."
  # TODO: Event Sequence - Kael Concern
  # scene.message "He looked at Lyra with unexpected softness."
  scene.message "\\bKael\\b: Are you okay?"
  
  scene.message "\\bLyra\\b: *surprised* Y-yeah. I'm fine."
  scene.message "\\bLyra\\b: Thanks for asking."
  
  scene.message "\\bKael\\b: ...Don't get used to it."
  # TODO: Event Sequence - Kael Stays
  # scene.message "But he didn't move away."
end

GameData::Cutscene.define :ch7_healing_pokemon do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  # TODO: Event Sequence - Healing Montage
  # scene.message "You tended to your injured Pokémon."
  # scene.message "The battle had been fierce."
  
  scene.message "\\bLyra\\b: *applying potion* Poor Willow..."
  scene.message "\\bLyra\\b: You were so brave."
  scene.message "\\bWillow\\b: *weakly* Vee..."
  
  scene.message "\\bKael\\b: Shadow took some hits too."
  scene.message "\\bKael\\b: But nothing serious."
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\b\\PN\\b: *checking starter* You okay, buddy?"
  # TODO: Event Sequence - Starter Reaction
  # scene.message "Your Pokémon chirped affirmatively."
  
  scene.message "\\bLyra\\b: We make a good team."
  scene.message "\\bLyra\\b: Even against those odds."
  
  scene.message "\\bKael\\b: We were lucky."
  scene.message "\\bKael\\b: Next time, we need to be prepared."
end

GameData::Cutscene.define :ch7_campfire_setup do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Camp Setup
  # scene.message "You set up camp in a safer location."
  # scene.message "Away from the ambush site."
  
  scene.message "\\bKael\\b: I'll take first watch."
  scene.message "\\bLyra\\b: Are you sure? You look tired."
  
  scene.message "\\bKael\\b: I won't sleep anyway."
  scene.message "\\bKael\\b: Too much to think about."
  
  scene.message "\\b\\PN\\b: We'll rotate. No one stays up all night."
  
  # TODO: Event Sequence - Firelight
  # scene.message "The fire crackled softly."
  # scene.message "Shadows danced at the edge of light."
  # scene.message "But for now, you were safe."
end

GameData::Cutscene.define :ch7_lyra_fear do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Lyra Thoughts
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "That night, sleep wouldn't come."
  # scene.message "Vex's words echoed in your mind."
  
  scene.message "\\bLyra\\b: (Chosen Ones... what does that even mean?)"
  scene.message "\\bLyra\\b: (I'm just a farm girl.)"
  scene.message "\\bLyra\\b: (I'm not special. I'm not brave.)"
  
  # TODO: Event Sequence - Willow Comfort
  # scene.message "Willow nuzzled against your leg."
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\bLyra\\b: At least I have you, Willow."
  scene.message "\\bLyra\\b: And \\PN. And Kael."
  
  scene.message "\\bLyra\\b: (Kael asked if I was okay...)"
  scene.message "\\bLyra\\b: (He never asks things like that.)"
  scene.message "\\bLyra\\b: (Maybe he's not as cold as he pretends.)"
  
  # TODO: Event Sequence - Small Smile
  # scene.message "A small smile crossed your face."
  # scene.message "Whatever was coming..."
  # scene.message "At least you weren't alone."
end

GameData::Cutscene.define :ch7_kael_analysis do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Kael Thoughts
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "While the others slept, you analyzed."
  # scene.message "Shadow lay at your feet, alert."
  
  scene.message "\\bKael\\b: (The Shattered Hand. A cult.)"
  scene.message "\\bKael\\b: (Connected to the shattered crowns legend.)"
  scene.message "\\bKael\\b: (They believe we're 'marked.')"
  
  # TODO: Event Sequence - Arm Check
  # scene.message "You looked at your arm."
  # scene.message "Nothing visible. But something felt... different."
  
  scene.message "\\bKael\\b: (What if they're right?)"
  scene.message "\\bKael\\b: (What if I AM marked?)"
  scene.message "\\bKael\\b: (By what? For what?)"
  
  # TODO: Event Sequence - Shadow Whimper
  # scene.message "Shadow whimpered."
  scene.message "\\bKael\\b: I know, girl. I don't like mysteries either."
  
  # scene.message "Your gaze drifted to Lyra's sleeping form."
  scene.message "\\bKael\\b: (She was scared today.)"
  scene.message "\\bKael\\b: (But she didn't run.)"
  scene.message "\\bKael\\b: (That's... admirable.)"
  
  # TODO: Event Sequence - Look Away
  # scene.message "You looked away quickly."
  scene.message "\\bKael\\b: (Focus. We have work to do.)"
end

GameData::Cutscene.define :ch7_player_reflection do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Player Thoughts
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  # scene.message "Your watch came at the darkest hour."
  # scene.message "The fire had burned low."
  
  scene.message "\\b\\PN\\b: (Chosen Ones. Guardians. Marks.)"
  scene.message "\\b\\PN\\b: (What have we stumbled into?)"
  
  # TODO: Event Sequence - Friends Sleeping Scene
  # scene.message "You looked at your sleeping friends."
  # scene.message "Lyra, curled around Willow."
  # scene.message "Kael, somehow still frowning in his sleep."
  
  scene.message "\\b\\PN\\b: (I'll protect them.)"
  scene.message "\\b\\PN\\b: (Whatever's coming...)"
  scene.message "\\b\\PN\\b: (We'll face it together.)"
  
  # TODO: Event Sequence - Starter Awake
  # scene.message "Your starter stirred, sensing your mood."
  # scene.message "It settled its head on your lap."
  
  scene.message "\\b\\PN\\b: Thanks, partner."
  scene.message "\\b\\PN\\b: I'm glad you're with me."
  
  # TODO: Event Sequence - Sunrise
  # scene.message "Dawn began to break on the horizon."
  # scene.message "A new day. New challenges."
  # scene.message "But you were ready."
end

GameData::Cutscene.define :ch7_morning_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Breaking Camp
  # scene.message "You broke camp as the sun rose."
  # scene.message "The forest seemed less threatening in daylight."
  
  scene.message "\\bLyra\\b: *stretching* Morning, everyone!"
  scene.message "\\bKael\\b: *grunting* Coffee first. Talk later."
  
  scene.message "\\b\\PN\\b: *laughing* Not a morning person?"
  scene.message "\\bKael\\b: Morning is an unnecessary invention."
  
  scene.message "\\bLyra\\b: *giggling* Grumpy Kael is adorable."
  scene.message "\\bKael\\b: I am NOT adorable."
  scene.message "\\bLyra\\b: Sure you're not."
  
  # TODO: Event Sequence - Tension Fades
  # scene.message "The tension from last night faded."
  # scene.message "You were still yourselves. Still friends."
  
  scene.message "\\b\\PN\\b: Let's move. Professor Aldric awaits."
  scene.message "\\bKael\\b: Finally, someone with priorities."
  scene.message "\\bLyra\\b: Hey! I have priorities too!"
  scene.message "\\bKael\\b: Breakfast isn't a priority."
  scene.message "\\bLyra\\b: It absolutely IS!"
  
  # TODO: Event Sequence - Laughing Departure
  # scene.message "Laughing together, you continued your journey."
end

#===============================================================================
# Chapter 8: The Marks Appear - Complete Sequence
#===============================================================================

GameData::Cutscene.define :ch8_peaceful_night do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Calm Evening
  # scene.message "The evening was calm."
  # scene.message "You'd set up camp by a quiet stream."
  
  scene.message "\\bLyra\\b: *yawning* What a day..."
  scene.message "\\bKael\\b: At least no one attacked us today."
  scene.message "\\bLyra\\b: Progress!"
  
  scene.message "\\b\\PN\\b: Let's get some rest. We're close to the professor's lab."
  
  # TODO: Event Sequence - Scene Normal
  # scene.message "The fire crackled softly."
  # scene.message "Your Pokémon settled around you."
  # scene.message "For a moment, everything felt normal."
end

GameData::Cutscene.define :ch8_dream_begins do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Dream Void
  scene.message "\\i[DREAM]"
  # scene.message "You floated in an endless void."
  # scene.message "Light and shadow danced together."
  
  # TODO: Event Sequence - Figures Appear
  # scene.message "Three massive figures appeared before you."
  # scene.message "They radiated power beyond comprehension."
  
  scene.message "\\bVoice\\b: Chosen One..."
  scene.message "\\bVoice\\b: The time has come."
  scene.message "\\bVoice\\b: Receive our blessing."
  
  # TODO: Event Sequence - Light Touch
  # scene.message "Light gathered around one of the figures."
  # scene.message "It reached toward you."
end

GameData::Cutscene.define :ch8_marks_appear do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Dream Clarity
  # scene.message "That night, the dream returned..."
  # scene.message "But this time, it was clearer."
  #
  # scene.message "Golden light. Three figures. Three crowns."
  scene.message "\\ts[]'Awaken, Chosen Ones...'"
  scene.message "\\ts[]'The balance must be restored...'"
  scene.message "\\ts[]'Before HE returns...'"
  
  scene.camera_flash 20
  scene.camera_shake 5, 30
  
  # TODO: Event Sequence - Mark Glow
  # scene.message "You jolted awake, arm burning!"
  #
  # scene.fade_in
  #
  # scene.message "On your forearm... a faint symbol glowed."
  # scene.message "Steel-blue light, pulsing like a heartbeat."
  
  scene.message "(What is this...?)"
  
  scene.set_switch SW::MARKS_APPEARED, true
end

GameData::Cutscene.define :ch8_waking_panic do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  # TODO: Event Sequence - Panic
  # scene.message "You scrambled to your feet, heart racing."
  # scene.message "The mark on your arm glowed faintly."
  
  scene.message "\\b\\PN\\b: What... what is this?!"
  
  # TODO: Event Sequence - Others Awake
  # scene.message "Nearby, you heard Lyra scream."
  # scene.message "And Kael's sharp intake of breath."
  #
  # scene.message "They were awake too."
  # scene.message "They'd seen the same thing."
  #
  # scene.message "And on their arms..."
  # scene.message "Marks of their own."
end

GameData::Cutscene.define :ch8_friends_have_marks do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Rushing
  # scene.message "You rushed to find Lyra and Kael."
  # scene.message "They were already waiting, looking shaken."
  
  scene.message "\\bLyra\\b: You too...?"
  # TODO: Event Sequence - Revealing Marks
  # scene.message "She showed her arm. A rainbow-colored mark."
  
  scene.message "\\bKael\\b: ..."
  # scene.message "He reluctantly revealed his. Dark crimson."
  
  scene.message "\\bLyra\\b: What's happening to us?"
  scene.message "\\bKael\\b: The cult mentioned marks."
  scene.message "\\bKael\\b: Maybe this is what they meant."
  
  scene.message "\\bLyra\\b: But what ARE they?"
  scene.message "\\bKael\\b: I don't know. But Professor Aldric might."
  scene.message "\\b\\PN\\b: Then let's go find out. I'm not sitting around waiting for answers."
end

GameData::Cutscene.define :ch8_ragnar_worried do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Ragnar Finds Group
  # scene.message "Before leaving to find Professor Aldric, Ragnar found you."
  
  scene.message "\\bRagnar\\b: Hey! There you are!"
  
  # TODO: Event Sequence - Ragnar Stop
  # scene.message "He jogged over, then stopped dead."
  
  scene.message "\\bRagnar\\b: ...What's wrong?"
  scene.message "\\bRagnar\\b: You look like you've seen a ghost."
  
  scene.message "\\b\\PN\\b: It's... complicated."
  
  scene.message "\\bRagnar\\b: *crossing arms* That's what you always say."
  scene.message "\\bRagnar\\b: But I know that face."
  scene.message "\\bRagnar\\b: Something happened."
  
  # TODO: Event Sequence - Showing Mark
  # scene.message "You hesitated, then showed him your arm."
  # scene.message "The mark glowed faintly."
  
  scene.message "\\bRagnar\\b: What the—?!"
  scene.message "\\bRagnar\\b: What IS that?!"
  
  scene.message "\\b\\PN\\b: We don't know yet."
  scene.message "\\b\\PN\\b: That's why we're going to find answers."
  
  scene.message "\\bRagnar\\b: ..."
  scene.message "\\bRagnar\\b: Okay. Be careful."
  scene.message "\\bRagnar\\b: And call me if you need backup."
  
  scene.message "\\b\\PN\\b: Since when are you so serious?"
  
  scene.message "\\bRagnar\\b: Since my rival got a glowing tattoo, apparently!"
  
  # TODO: Event Sequence - Small Smile
  # scene.message "Despite everything, you managed a small smile."
end

GameData::Cutscene.define :ch8_comparing_marks do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Comparing Marks
  # scene.message "The three of you sat together, studying each other's marks."
  
  scene.message "\\bLyra\\b: They're all different..."
  scene.message "\\bLyra\\b: Mine is rainbow, like a prism."
  
  scene.message "\\bKael\\b: Mine is crimson. Dark red, almost black."
  
  scene.message "\\b\\PN\\b: And mine is steel-blue."
  
  scene.message "\\bLyra\\b: Three colors. Three of us."
  scene.message "\\bLyra\\b: That can't be coincidence."
  
  scene.message "\\bKael\\b: Nothing about this is coincidence."
  scene.message "\\bKael\\b: The shared dreams. The cult knowing about us."
  scene.message "\\bKael\\b: And now this."
  
  scene.message "\\bLyra\\b: I'm scared..."
  
  scene.message "\\b\\PN\\b: Me too. But we're in this together."
  scene.message "\\b\\PN\\b: Whatever these marks mean..."
  scene.message "\\b\\PN\\b: We'll figure it out as a team."
  
  scene.message "\\bKael\\b: ...Agreed."
end

GameData::Cutscene.define :ch8_mark_meanings do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Kael Study
  # scene.message "Kael studied the marks intensely."
  
  scene.message "\\bKael\\b: If I had to guess..."
  scene.message "\\bKael\\b: These correspond to the three guardians."
  
  scene.message "\\bLyra\\b: The ones from the legends?"
  
  scene.message "\\bKael\\b: Exactly. Based on my research..."
  scene.message "\\bKael\\b: One guardian represented light. Connection. Life."
  scene.message "\\bKael\\b: That would be your rainbow mark, Lyra."
  
  scene.message "\\bLyra\\b: Oh..."
  
  scene.message "\\bKael\\b: Another represented shadow. Knowledge. Secrets."
  scene.message "\\bKael\\b: *touching his crimson mark* That's mine."
  
  scene.message "\\b\\PN\\b: And the third?"
  
  scene.message "\\bKael\\b: Will. Courage. The bridge between worlds."
  scene.message "\\bKael\\b: Steel-blue. That's you."
  
  scene.message "\\b\\PN\\b: So we're... connected to the guardians?"
  scene.message "\\bKael\\b: It seems so. The question is why."
end

GameData::Cutscene.define :ch8_marks_react do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Resonance
  # scene.message "When you placed your hands together..."
  # scene.message "Something unexpected happened."
  
  scene.camera_flash 10
  
  # TODO: Event Sequence - Vision Flash
  # scene.message "The three marks pulsed in unison!"
  # scene.message "For a split second, you shared a vision."
  
  scene.message "\\i[Three thrones. Three crowns. Three guardians.]"
  scene.message "\\i[And in the distance... a shadowy prison.]"
  
  scene.message "\\bLyra\\b: Did you see that?!"
  scene.message "\\bKael\\b: Thrones... and something locked away."
  scene.message "\\b\\PN\\b: It felt like a warning."
  
  scene.message "\\bLyra\\b: What's in that prison?"
  scene.message "\\bKael\\b: I don't know."
  scene.message "\\bKael\\b: But someone's trying to open it."
  
  # TODO: Event Sequence - Vision Fades
  # scene.message "The marks faded back to their normal glow."
  # scene.message "But the image remained burned in your minds."
end

GameData::Cutscene.define :ch8_pokemon_reactions do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Pokemon Sense
  # scene.message "Your Pokémon reacted strangely to the marks."
  # scene.message "They could sense the change in you."
  
  # TODO: Event Sequence - Willow Reaction
  # scene.message "Willow sniffed Lyra's mark curiously."
  scene.message "\\bWillow\\b: Vee? Vee vee?"
  scene.message "\\bLyra\\b: I don't know either, Willow."
  
  # TODO: Event Sequence - Shadow Reaction
  # scene.message "Shadow sat beside Kael, unnaturally still."
  scene.message "\\bShadow\\b: Zor..."
  scene.message "\\bKael\\b: She knows something's different."
  
  # TODO: Event Sequence - Starter Comfort
  # scene.message "Your starter pressed against your leg."
  # scene.message "Offering comfort. Offering support."
  
  scene.message "\\b\\PN\\b: At least they still trust us."
  scene.message "\\bLyra\\b: They're our best friends."
  scene.message "\\bLyra\\b: Of course they trust us."
  
  scene.message "\\bKael\\b: *quietly* That's more than I've had before."
end

GameData::Cutscene.define :ch8_kael_memory do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Kael Inner Thoughts
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "The crimson mark pulsed on your arm."
  # scene.message "It reminded you of fire."
  
  scene.message "\\bKael\\b: (Fire. Always fire.)"
  scene.message "\\bKael\\b: (The orphanage. Mira.)"
  
  # TODO: Event Sequence - Shadow Comfort
  # scene.message "Shadow whimpered, sensing your distress."
  
  scene.message "\\bKael\\b: (This mark... shadow and secrets.)"
  scene.message "\\bKael\\b: (The guardian of knowledge.)"
  scene.message "\\bKael\\b: (Maybe... I can learn what really happened.)"
  scene.message "\\bKael\\b: (Who started that fire.)"
  scene.message "\\bKael\\b: (Why Mira had to die.)"
  
  # TODO: Event Sequence - Clenched Fist
  # scene.message "Your fist clenched."
  
  scene.message "\\bKael\\b: (If this power can give me answers...)"
  scene.message "\\bKael\\b: (I'll use it.)"
end

GameData::Cutscene.define :ch8_lyra_hope do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Lyra Inner Thoughts
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "The rainbow mark shimmered on your skin."
  # scene.message "It felt warm. Almost comforting."
  
  scene.message "\\bLyra\\b: (Light and connection...)"
  scene.message "\\bLyra\\b: (That's what Kael said this represents.)"
  
  # TODO: Event Sequence - Looking at Friends
  # scene.message "You looked at your friends."
  # scene.message "At \\PN, who always stayed calm."
  # scene.message "At Kael, who pretended not to care."
  
  scene.message "\\bLyra\\b: (Maybe this is why we found each other.)"
  scene.message "\\bLyra\\b: (Maybe we were meant to be a team.)"
  
  # TODO: Event Sequence - Willow Snuggle
  # scene.message "Willow snuggled closer."
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\bLyra\\b: *smiling* Yeah. We're going to be okay."
  scene.message "\\bLyra\\b: (I believe that. I have to.)"
end

GameData::Cutscene.define :ch8_player_determination do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Player Inner Thoughts
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  # scene.message "You stared at the steel-blue mark."
  # scene.message "Will. Courage. Bridge between worlds."
  
  scene.message "\\b\\PN\\b: (Why me?)"
  scene.message "\\b\\PN\\b: (I'm not special. I'm just...)"
  
  # TODO: Event Sequence - Parental Memory
  # scene.message "You thought of your parents."
  # scene.message "Dad, the former Champion."
  # scene.message "Mom, who always believed in you."
  
  scene.message "\\b\\PN\\b: (They never gave up.)"
  scene.message "\\b\\PN\\b: (Neither will I.)"
  
  # TODO: Event Sequence - Starter Support
  # scene.message "Your starter nudged your hand."
  # scene.message "As if to say: You're not alone."
  
  scene.message "\\b\\PN\\b: (That's right.)"
  scene.message "\\b\\PN\\b: (I have Lyra. I have Kael.)"
  scene.message "\\b\\PN\\b: (Together, we can handle anything.)"
end

GameData::Cutscene.define :ch8_decision_to_continue do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Departure Prep
  # scene.message "That morning, you gathered your things."
  # scene.message "The road ahead was uncertain."
  
  scene.message "\\bLyra\\b: So... we're really doing this?"
  scene.message "\\bLyra\\b: Going to the professor? Finding answers?"
  
  scene.message "\\bKael\\b: What's the alternative? Ignore it?"
  scene.message "\\bKael\\b: The cult won't stop looking for us."
  
  scene.message "\\b\\PN\\b: And we can't run forever."
  scene.message "\\b\\PN\\b: Better to know what we're dealing with."
  
  scene.message "\\bLyra\\b: You're right. Both of you."
  scene.message "\\bLyra\\b: I just... wish things could stay normal."
  
  scene.message "\\bKael\\b: Normal was never an option for people like us."
  
  scene.message "\\bLyra\\b: People like us?"
  
  scene.message "\\bKael\\b: Orphan. Farm girl. ..."
  scene.message "\\bKael\\b: We were never meant for ordinary lives."
  
  scene.message "\\b\\PN\\b: Then let's make ours extraordinary."
  scene.message "\\b\\PN\\b: Together."
  
  # TODO: Event Sequence - Pokemon Agreement
  # scene.message "Willow and Shadow barked in agreement."
  # scene.message "Your starter added its voice."
  # scene.message "The team was ready."
end

GameData::Cutscene.define :ch8_marks_bond do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Marks Glow Again
  # scene.message "Before you left, something strange happened."
  # scene.message "All three marks began to glow simultaneously."
  
  scene.message "\\bLyra\\b: Whoa!"
  scene.message "\\bKael\\b: Don't move. Let it happen."
  
  # TODO: Event Sequence - Shared Feelings
  # scene.message "A warmth spread through your bodies."
  # scene.message "For a moment, you could feel each other's emotions."
  
  # TODO: Event Sequence - Emotions
  # scene.message "Lyra's fear—and her hope."
  # scene.message "Kael's grief—and his determination."
  # scene.message "Your own courage—and your doubt."
  
  scene.message "\\bLyra\\b: I felt... I felt both of you."
  scene.message "\\bKael\\b: The marks link us somehow."
  
  scene.message "\\b\\PN\\b: We really are connected."
  
  # TODO: Event Sequence - Glow Fades
  # scene.message "The glow faded, but the bond remained."
  # scene.message "Whatever these marks meant..."
  # scene.message "You were in it together."
end

GameData::Cutscene.define :ch8_departure_scene do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Sunrise
  # scene.message "The morning sun rose over the forest."
  # scene.message "A new day. A new chapter."
  
  scene.message "\\bLyra\\b: Professor Aldric's lab is half a day away."
  scene.message "\\bKael\\b: Then we should move."
  
  scene.message "\\b\\PN\\b: Let's go get some answers."
  
  # TODO: Event Sequence - Walking Forward
  # scene.message "The three of you walked forward."
  # scene.message "Marked. Changed. Connected."
  
  # TODO: Event Sequence - Destiny
  # scene.message "Whatever destiny awaited..."
  # scene.message "You would meet it head-on."
end

#===============================================================================
# INTERLUDE: Chapter 8.5 - Kael's Nightmare (Kael Perspective Chapter)
# Full playable chapter from Kael's POV during the mark awakening
#===============================================================================

GameData::Cutscene.define :ch8_5_intro do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[INTERLUDE: KAEL'S NIGHTMARE]"
  scene.message "\\i[The night the marks appeared...]"
  scene.fade_out 10
  scene.fade_in 10
  
  # TODO: Event Sequence - Kael Insomnia
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "The others were asleep."
  # scene.message "But you couldn't close your eyes."
  
  # scene.message "Every time you tried..."
  # scene.message "You saw fire."
  
  scene.message "\\bKael\\b: (Not again. Not tonight.)"
  
  # TODO: Event Sequence - Shadow Awake
  # scene.message "Shadow stirred beside you."
  scene.message "\\bShadow\\b: Zor...?"
  scene.message "\\bKael\\b: It's nothing, girl. Go back to sleep."
  
  # scene.message "But she wouldn't."
  # scene.message "She never did when the nightmares came."
end

GameData::Cutscene.define :ch8_5_cant_sleep do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Walking Away
  # scene.message "You walked away from the campsite."
  # scene.message "Far enough that your movements wouldn't wake the others."
  #
  # scene.message "The new mark on your arm pulsed faintly."
  # scene.message "Crimson. Like dying embers."
  
  scene.message "\\bKael\\b: (What does this even mean?)"
  scene.message "\\bKael\\b: (Death and secrets. Shadow and entropy.)"
  scene.message "\\bKael\\b: (Fitting, I suppose.)"
  
  # TODO: Event Sequence - Staring at Stars
  # scene.message "You stared at the stars."
  # scene.message "Remembering another night."
  # scene.message "Another sky."
  # scene.message "And smoke that blotted out everything."
end

GameData::Cutscene.define :ch8_5_memory_begins do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.fade_out 20
  scene.fade_in 20
  
  # TODO: Event Sequence - Memory Flashback
  scene.message "\\i[MEMORY - The Orphanage]"
  scene.message "\\i[Five years ago...]"
  
  # scene.message "You were eleven years old."
  # scene.message "Small. Scared. Alone."
  # scene.message "Except for Mira."
  
  scene.message "\\bYoung Kael\\b: Mira! Mira, where are you?!"
  
  # scene.message "Smoke filled your lungs."
  # scene.message "Flames licked at the walls."
  # scene.message "The orphanage was burning."
  
  scene.message "\\bMira's Voice\\b: KAEL! Over here!"
  
  # TODO: Event Sequence - Running
  # scene.message "You ran toward her voice."
  # scene.message "Coughing. Choking. Terrified."
end

GameData::Cutscene.define :ch8_5_mira_found do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Mira Trapped
  # scene.message "Mira was trapped."
  # scene.message "A beam had fallen across the doorway."
  # scene.message "She couldn't get out."
  
  scene.message "\\bYoung Kael\\b: Mira! Hold on! I'll—"
  
  scene.message "\\bMira\\b: No, Kael. Listen to me."
  scene.message "\\bMira\\b: The window. It's your only way out."
  
  scene.message "\\bYoung Kael\\b: I'm not leaving you!"
  
  scene.message "\\bMira\\b: You HAVE to."
  scene.message "\\bMira\\b: Please. You're the only one I can save."
  
  # TODO: Event Sequence - Tears
  # scene.message "Tears streamed down your face."
  # scene.message "The flames were getting closer."
  
  scene.message "\\bYoung Kael\\b: Mira... please..."
  
  scene.message "\\bMira\\b: I love you, little brother."
  scene.message "\\bMira\\b: Now GO!"
end

GameData::Cutscene.define :ch8_5_the_push do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 10, 40
  
  # TODO: Event Sequence - The Push
  # scene.message "She pushed you toward the window."
  # scene.message "With strength you didn't know she had."
  
  scene.message "\\bMira\\b: JUMP!"
  
  # scene.message "You fell."
  # scene.message "Through glass. Through fire."
  # scene.message "Into the cold night air."
  #
  # scene.message "You hit the ground hard."
  # scene.message "Looked back up at the window."
  #
  # scene.message "And saw Mira one last time."
  # scene.message "Wreathed in flames."
  # scene.message "Smiling."
  
  scene.message "\\bYoung Kael\\b: MIRA!!!"
  
  scene.camera_flash 30
  # TODO: Event Sequence - Collapse
  # scene.message "The building collapsed."
  # scene.message "And your sister was gone."
end

GameData::Cutscene.define :ch8_5_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Hospital Waking
  # scene.message "You woke up in a hospital."
  # scene.message "Bandages on your arms. Ashes in your hair."
  # scene.message "And a hole in your chest that would never heal."
  
  scene.message "\\bNurse\\b: You're awake. Oh, thank Arceus."
  
  scene.message "\\bYoung Kael\\b: ...Mira?"
  
  # TODO: Event Sequence - Revelation
  # scene.message "The nurse's face told you everything."
  # scene.message "You didn't need to ask again."
  
  scene.message "\\bYoung Kael\\b: (She saved me.)"
  scene.message "\\bYoung Kael\\b: (She died... so I could live.)"
  scene.message "\\bYoung Kael\\b: (Why? Why her and not me?)"
  
  # TODO: Event Sequence - Closing Off
  # scene.message "From that day forward..."
  # scene.message "You stopped letting anyone close."
  # scene.message "It was safer that way."
end

GameData::Cutscene.define :ch8_5_finding_shadow do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 15
  scene.fade_in 15
  
  # TODO: Event Sequence - Streets Memory
  scene.message "\\i[MEMORY - One Year Later]"
  
  # scene.message "You were alone on the streets."
  # scene.message "Scrounging for food. Stealing when necessary."
  # scene.message "Trust no one. Rely on nothing."
  
  # scene.message "That's when you found her."
  
  # scene.message "A Zorua, beaten and abandoned."
  # scene.message "Left in an alley to die."
  
  scene.message "\\bYoung Kael\\b: (Walk away. Don't get involved.)"
  
  # TODO: Event Sequence - Recognition
  # scene.message "But something in her eyes..."
  # scene.message "Reminded you of Mira."
  
  scene.message "\\bYoung Kael\\b: ...Fine. Just this once."
  
  # TODO: Event Sequence - Helping Zorua
  # scene.message "You carried her home."
  # scene.message "Shared your meager food."
  # scene.message "Nursed her back to health."
  #
  # scene.message "And when she woke up..."
  # scene.message "She refused to leave your side."
end

GameData::Cutscene.define :ch8_5_shadow_bond do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bYoung Kael\\b: Don't get attached."
  scene.message "\\bYoung Kael\\b: I'm not someone you want to follow."
  
  scene.message "\\bZorua\\b: *tilts head* Zor?"
  
  scene.message "\\bYoung Kael\\b: I'm serious. People around me get hurt."
  scene.message "\\bYoung Kael\\b: You should find someone else."
  
  scene.message "\\bZorua\\b: *shakes head firmly*"
  scene.message "\\bZorua\\b: Zor. Zorua."
  
  # TODO: Event Sequence - Stubborn Pokemon
  # scene.message "She wouldn't budge."
  # scene.message "No matter what you said."
  # scene.message "No matter how cold you acted."
  
  scene.message "\\bYoung Kael\\b: (Stubborn thing.)"
  scene.message "\\bYoung Kael\\b: ...Fine. But I'm calling you Shadow."
  scene.message "\\bYoung Kael\\b: Because that's all you're allowed to be."
  
  scene.message "\\bShadow\\b: *happy bark*"
  
  # TODO: Event Sequence - Naming Shadow
  # scene.message "You pretended not to smile."
  # scene.message "But she saw it anyway."
end

GameData::Cutscene.define :ch8_5_back_to_present do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.fade_out 20
  scene.fade_in 20
  
  # TODO: Event Sequence - Present Day
  scene.message "\\i[PRESENT - The Campsite]"
  
  # scene.message "You snapped back to reality."
  # scene.message "The memories fading but never gone."
  
  # scene.message "Shadow—no longer a Zorua—pressed against you."
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\bKael\\b: I know, girl. I know."
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Your mark pulsed again."
  # scene.message "And for a moment..."
  # scene.message "You felt something else."
  #
  # scene.message "Not memory. Not pain."
  # scene.message "Something... watching."
end

GameData::Cutscene.define :ch8_5_yveltal_first_whisper do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bVoice\\b: (Child of entropy...)"
  
  # TODO: Event Sequence - Voice Whisper
  # scene.message "You spun around."
  # scene.message "No one there."
  
  scene.message "\\bKael\\b: Who's there?!"
  
  scene.message "\\bVoice\\b: (I am the ending. The necessary shadow.)"
  scene.message "\\bVoice\\b: (And you... you carry my mark.)"
  
  # scene.message "The mark flared crimson."
  # scene.message "Pain shot through your arm."
  
  scene.message "\\bKael\\b: *gritting teeth* What do you want?"
  
  scene.message "\\bVoice\\b: (To show you the truth.)"
  scene.message "\\bVoice\\b: (About the fire. About your sister.)"
  scene.message "\\bVoice\\b: (About why you were chosen.)"
  
  # TODO: Event Sequence - Shock
  # scene.message "Your heart stopped."
  scene.message "\\bKael\\b: You know... about the fire?"
end

GameData::Cutscene.define :ch8_5_fire_truth_teased do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bVoice\\b: (I know all endings, child.)"
  scene.message "\\bVoice\\b: (Every death. Every sacrifice.)"
  scene.message "\\bVoice\\b: (Including hers.)"
  
  scene.message "\\bKael\\b: Then tell me! Who started the fire?!"
  
  scene.message "\\bVoice\\b: (Patience.)"
  scene.message "\\bVoice\\b: (When you are ready... you will learn.)"
  scene.message "\\bVoice\\b: (But the truth may destroy you.)"
  
  scene.message "\\bKael\\b: I don't care."
  
  scene.message "\\bVoice\\b: (Good.)"
  scene.message "\\bVoice\\b: (That determination... is why I chose you.)"
  scene.message "\\bVoice\\b: (Face your trials. Master your grief.)"
  scene.message "\\bVoice\\b: (And the answers will come.)"
  
  # TODO: Event Sequence - Voice Fades
  # scene.message "The presence faded."
  # scene.message "The mark stopped burning."
  # scene.message "And you were alone again."
end

GameData::Cutscene.define :ch8_5_lyra_wakes do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: Kael...?"
  
  # TODO: Event Sequence - Lyra Appears
  # scene.message "You turned sharply."
  # scene.message "Lyra stood at the edge of camp."
  # scene.message "Rubbing her eyes."
  
  scene.message "\\bLyra\\b: Are you okay? I heard you..."
  
  scene.message "\\bKael\\b: It's nothing. Go back to sleep."
  
  scene.message "\\bLyra\\b: That's not what your face says."
  
  # TODO: Event Sequence - She Approaches
  # scene.message "She walked closer."
  # scene.message "Ignoring your obvious discomfort."
  
  scene.message "\\bLyra\\b: You can talk to me, you know."
  scene.message "\\bLyra\\b: We're in this together now."
  
  scene.message "\\bKael\\b: ...Why do you care?"
  
  scene.message "\\bLyra\\b: Because that's what friends do."
end

GameData::Cutscene.define :ch8_5_almost_opening_up do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Staring
  # scene.message "You stared at her."
  # scene.message "This strange girl with sunshine in her smile."
  # scene.message "Who kept trying despite your walls."
  
  scene.message "\\bKael\\b: (Friends. When was the last time...?)"
  
  scene.message "\\bKael\\b: I had a sister once."
  
  scene.message "\\bLyra\\b: ..."
  
  scene.message "\\bKael\\b: She died. In a fire."
  scene.message "\\bKael\\b: She pushed me out a window and saved my life."
  scene.message "\\bKael\\b: And I've never forgiven myself."
  
  scene.message "\\bLyra\\b: Kael..."
  
  scene.message "\\bKael\\b: Don't. Don't say you're sorry."
  scene.message "\\bKael\\b: Everyone says that. It doesn't help."
  
  scene.message "\\bLyra\\b: ...Okay. I won't."
  scene.message "\\bLyra\\b: But I'll be here. When you want to talk about it."
  
  # TODO: Event Sequence - Silence
  # scene.message "You didn't know how to respond."
  # scene.message "So you said nothing."
end

GameData::Cutscene.define :ch8_5_lyra_stays do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Lyra Sits
  # scene.message "Lyra sat down beside you."
  # scene.message "Not too close. Not too far."
  # scene.message "Just... present."
  
  scene.message "\\bLyra\\b: My mom died when I was little."
  scene.message "\\bLyra\\b: I don't remember much about her."
  scene.message "\\bLyra\\b: But I remember how much I loved her."
  
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bLyra\\b: Loss doesn't go away."
  scene.message "\\bLyra\\b: But carrying it alone makes it heavier."
  
  scene.message "\\bKael\\b: You sound like a greeting card."
  
  scene.message "\\bLyra\\b: *laughing* Maybe."
  scene.message "\\bLyra\\b: But greeting cards exist for a reason."
  
  # TODO: Event Sequence - Almost Smile
  # scene.message "Despite yourself, you almost smiled."
  # scene.message "Almost."
end

GameData::Cutscene.define :ch8_5_pn_joins do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Player Joins
  # scene.message "Footsteps in the grass."
  # scene.message "\\PN walked toward you both."
  # scene.message "Looking half-asleep but alert."
  
  scene.message "\\b\\PN\\b: Couldn't sleep either?"
  
  scene.message "\\bKael\\b: Why are you all awake?"
  
  scene.message "\\b\\PN\\b: My mark was burning."
  scene.message "\\b\\PN\\b: Felt like something was watching me."
  
  scene.message "\\bLyra\\b: Mine too."
  scene.message "\\bLyra\\b: Is it... the Guardians?"
  
  scene.message "\\bKael\\b: Probably."
  scene.message "\\bKael\\b: They're testing us. Or preparing us."
  scene.message "\\bKael\\b: Either way, we're in for a rough ride."
  
  scene.message "\\b\\PN\\b: Then we ride it together."
  
  # TODO: Event Sequence - Trio Bond
  # scene.message "You looked at them."
  # scene.message "These two strangers who'd become something more."
  # scene.message "And felt something you hadn't felt in years."
  
  scene.message "\\bKael\\b: (Hope. Dangerous thing.)"
end

GameData::Cutscene.define :ch8_5_watching_dawn do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Dawn Watching
  # scene.message "The three of you sat together."
  # scene.message "Waiting for the sun."
  # scene.message "Saying nothing. Needing nothing."
  #
  # scene.message "Shadow curled at your feet."
  # scene.message "Willow nestled in Lyra's lap."
  # scene.message "\\PN's starter dozed against their leg."
  
  scene.message "\\bLyra\\b: Beautiful, isn't it?"
  scene.message "\\bLyra\\b: The sunrise?"
  
  scene.message "\\bKael\\b: ...Yeah."
  
  # TODO: Event Sequence - Sun Break
  # scene.message "You'd forgotten what sunrises looked like."
  # scene.message "For years, you only saw the darkness."
  
  scene.message "\\bKael\\b: (Maybe... it doesn't have to stay that way.)"
  scene.message "\\bKael\\b: (Maybe there's something after the night.)"
  
  # scene.message "The sun broke the horizon."
  # scene.message "Golden light flooded the world."
  # scene.message "And for the first time in five years..."
  # scene.message "You felt warm."
end

GameData::Cutscene.define :ch8_5_resolution do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: *stretching* Ready to face the day?"
  
  scene.message "\\b\\PN\\b: Ready as we'll ever be."
  
  scene.message "\\bKael\\b: Let's go."
  
  # TODO: Event Sequence - Standing Up
  # scene.message "You stood."
  # scene.message "Brushed the grass from your clothes."
  # scene.message "And for just a moment, let your guard down."
  
  scene.message "\\bKael\\b: ...Thanks."
  
  scene.message "\\bLyra\\b: For what?"
  
  scene.message "\\bKael\\b: For not running when you found out."
  scene.message "\\bKael\\b: About me. About... everything."
  
  scene.message "\\bLyra\\b: *smiling* Why would we run?"
  scene.message "\\bLyra\\b: We're marked together."
  scene.message "\\bLyra\\b: That means something."
  
  scene.message "\\b\\PN\\b: We've got your back, Kael."
  scene.message "\\b\\PN\\b: Always."
  
  # TODO: Event Sequence - Silent Agreement
  # scene.message "You nodded."
  # scene.message "Not trusting your voice."
  # scene.message "But meaning it anyway."
end

GameData::Cutscene.define :ch8_5_ending do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  scene.fade_out 20
  
  # TODO: Event Sequence - Epilogue Text
  scene.message "\\i[Kael's Nightmare - End]"
  scene.message "\\i[The walls around his heart began to crack.]"
  scene.message "\\i[Not broken. Not yet.]"
  scene.message "\\i[But the light was getting in.]"
  
  scene.fade_in 20
  scene.message "\\i[Return to main story...]"
end

#===============================================================================
# ACT 2: AWAKENING (Chapters 9-18)
#===============================================================================

#===============================================================================
# Chapter 9: What Are We? - Seeking Answers
#===============================================================================

GameData::Cutscene.define :ch9_journey_to_professor do |scene|
  scene.play_bgm 'Pokemon XY - Route 7'
  
  # TODO: Event Sequence - Journey Start
  # scene.message "The road to Professor Aldric's laboratory was long."
  # scene.message "Three days of walking. Three days of wondering."
  
  scene.message "\\bLyra\\b: I keep staring at my mark."
  scene.message "\\bLyra\\b: Every time I look away, I have to look again."
  
  scene.message "\\bKael\\b: Same."
  scene.message "\\bKael\\b: It's like having a question burned into your skin."
  
  scene.message "\\b\\PN\\b: At least we're getting answers soon."
  scene.message "\\b\\PN\\b: Professor Aldric studies ancient history."
  scene.message "\\b\\PN\\b: If anyone knows what these are, it's him."
  
  scene.message "\\bLyra\\b: You trust him?"
  
  scene.message "\\b\\PN\\b: Dad does. They collaborated on research years ago."
  scene.message "\\b\\PN\\b: Before Dad became Champion, he was a researcher too."
  
  scene.message "\\bKael\\b: Wait—your father is Champion Marcus?"
  scene.message "\\bKael\\b: THE Marcus?"
  
  scene.message "\\b\\PN\\b: *sheepishly* I... don't like to bring it up."
  
  scene.message "\\bLyra\\b: *jaw drops* Your dad is the CHAMPION?!"
  scene.message "\\bLyra\\b: Why didn't you tell us?!"
  
  scene.message "\\b\\PN\\b: I wanted you to like me for me."
  scene.message "\\b\\PN\\b: Not for who my father is."
  
  scene.message "\\bKael\\b: ...I can respect that."
end

GameData::Cutscene.define :ch9_campfire_confessions do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Campfire
  # scene.message "That night, you camped under the stars."
  # scene.message "The fire crackled softly."
  
  scene.message "\\bLyra\\b: So... Champion's kid, huh?"
  scene.message "\\bLyra\\b: That explains the expensive gear."
  
  scene.message "\\b\\PN\\b: *laughs* Guilty as charged."
  
  scene.message "\\bKael\\b: My parents left me at an orphanage."
  scene.message "\\bKael\\b: I don't know if they're alive or dead."
  scene.message "\\bKael\\b: ...I tell myself I don't care."
  
  scene.message "\\bLyra\\b: Kael..."
  
  scene.message "\\bKael\\b: It's fine. Ancient history."
  scene.message "\\bKael\\b: Shadow's my family now."
  
  # TODO: Event Sequence - Shadow Comfort
  # scene.message "Shadow, as if understanding, curled tighter against his leg."
  
  scene.message "\\bLyra\\b: My dad left when I was six."
  scene.message "\\bLyra\\b: Just... vanished one day."
  scene.message "\\bLyra\\b: Elena—my sister—she basically raised me."
  
  scene.message "\\b\\PN\\b: That must have been hard."
  
  scene.message "\\bLyra\\b: It was. But Elena never complained."
  scene.message "\\bLyra\\b: She always put me first."
  
  scene.message "\\bLyra\\b: That's why I have to become strong."
  scene.message "\\bLyra\\b: So I can protect her for once."
  
  # TODO: Event Sequence - Bound by Fate
  # scene.message "The fire popped. Sparks drifted skyward."
  # scene.message "Three marked strangers, bound by fate."
end

GameData::Cutscene.define :ch9_ragnar_splits do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Ragnar Aside
  # scene.message "After escaping the forest, Ragnar pulled you aside."
  
  scene.message "\\bRagnar\\b: Those guys were SERIOUS."
  scene.message "\\bRagnar\\b: Like, cult-serious."
  
  scene.message "\\b\\PN\\b: Ragnar, listen..."
  
  scene.message "\\bRagnar\\b: Yeah, yeah, you can't tell me."
  scene.message "\\bRagnar\\b: I get it. Destiny stuff or whatever."
  
  # TODO: Event Sequence - Crossed Arms
  # scene.message "He crossed his arms."
  
  scene.message "\\bRagnar\\b: But I'm gonna keep training."
  scene.message "\\bRagnar\\b: So when you DO need help..."
  scene.message "\\bRagnar\\b: I'll be strong enough to matter."
  
  scene.message "\\b\\PN\\b: Ragnar..."
  
  scene.message "\\bRagnar\\b: Don't get all mushy on me!"
  scene.message "\\bRagnar\\b: I've got Gyms to conquer!"
  scene.message "\\bRagnar\\b: I'll see you at the League!"
  
  # TODO: Event Sequence - Ragnar Exit
  # scene.message "He ran off with a wave."
  # scene.message "That idiot. He really did care."
end

GameData::Cutscene.define :ch9_lab_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  # TODO: Event Sequence - Lab Description
  # scene.message "Professor Aldric's laboratory sat atop a cliff."
  # scene.message "Overlooking the sea. Isolated. Private."
  
  scene.message "\\bLab Assistant\\b: You must be the group Professor Aldric mentioned."
  scene.message "\\bLab Assistant\\b: He's been expecting you."
  scene.message "\\bLab Assistant\\b: ...Though I must say, you're all quite young."
  
  scene.message "\\bKael\\b: Age is irrelevant."
  scene.message "\\bKael\\b: Competence is what matters."
  
  scene.message "\\bLab Assistant\\b: *flustered* R-Right this way."
  
  # TODO: Event Sequence - Lab Interior
  # scene.message "The laboratory was filled with artifacts."
  # scene.message "Stone tablets. Ancient scrolls. Fossilized remnants."
  
  scene.message "\\bLyra\\b: *whispering* This place is amazing..."
  
  # TODO: Event Sequence - Aldric Intro
  # scene.message "An elderly man approached with warm eyes."
  # scene.message "His coat was wrinkled. His glasses thick."
  
  scene.message "\\bProfessor Aldric\\b: Ah! Marcus's child!"
  scene.message "\\bProfessor Aldric\\b: You look just like your father did at your age."
  
  scene.message "\\b\\PN\\b: Professor Aldric. Thank you for seeing us."
  
  scene.message "\\bProfessor Aldric\\b: Thank ME? Child, you've brought me the discovery of a lifetime!"
  scene.message "\\bProfessor Aldric\\b: Now—show me these marks!"
end

GameData::Cutscene.define :ch9_mark_examination do |scene|
  scene.play_bgm 'Pokemon XY - Scientist Theme'
  
  # TODO: Event Sequence - Studying Marks
  # scene.message "Professor Aldric studied the marks with fascination."
  # scene.message "His instruments beeped and whirred."
  
  scene.message "\\bProfessor Aldric\\b: Remarkable... truly remarkable."
  scene.message "\\bProfessor Aldric\\b: These symbols are ancient."
  scene.message "\\bProfessor Aldric\\b: I've seen fragments in texts, but never..."
  
  # TODO: Event Sequence - Adjust Glasses
  # scene.message "He adjusted his glasses, leaning closer."
  
  scene.message "\\bProfessor Aldric\\b: The energy readings are extraordinary."
  scene.message "\\bProfessor Aldric\\b: Each mark pulses with a unique signature."
  
  scene.message "\\b\\PN\\b: Do you know what they mean?"
  
  scene.message "\\bProfessor Aldric\\b: They appear to be... connection markers."
  scene.message "\\bProfessor Aldric\\b: Bonds between humans and divine entities."
  
  scene.message "\\bKael\\b: Divine entities?"
  
  scene.message "\\bProfessor Aldric\\b: Legendary Pokémon."
  scene.message "\\bProfessor Aldric\\b: Or something even older."
  
  scene.message "\\bLyra\\b: Older than Legendary Pokémon?"
  scene.message "\\bLyra\\b: What could possibly be older?"
  
  scene.message "\\bProfessor Aldric\\b: The Three Guardians."
  scene.message "\\bProfessor Aldric\\b: Beings who existed before recorded history."
  scene.message "\\bProfessor Aldric\\b: Legends say they were once human."
end

GameData::Cutscene.define :ch9_guardian_research do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  # TODO: Event Sequence - Scroll Room
  # scene.message "Professor Aldric led them to a room of scrolls."
  # scene.message "Ancient texts from civilizations long forgotten."
  
  scene.message "\\bProfessor Aldric\\b: The Three Guardians appear across cultures."
  scene.message "\\bProfessor Aldric\\b: Different names. Different forms."
  scene.message "\\bProfessor Aldric\\b: But always three. Always together."
  
  # TODO: Event Sequence - Unrolling Scroll
  # scene.message "He unrolled a fragile scroll."
  
  scene.message "\\bProfessor Aldric\\b: One of steel and valor—the Sword."
  scene.message "\\bProfessor Aldric\\b: One of shadow and resolve—the Shield."
  scene.message "\\bProfessor Aldric\\b: One of light and judgment—the Crown."
  
  scene.message "\\bKael\\b: Sword... Shield... Crown."
  scene.message "\\bKael\\b: Like a king's regalia."
  
  scene.message "\\bProfessor Aldric\\b: Precisely! Some texts call them the Shattered Crown."
  scene.message "\\bProfessor Aldric\\b: A single crown, broken into three pieces."
  scene.message "\\bProfessor Aldric\\b: United, they could rule over all."
  
  scene.message "\\bLyra\\b: The Shattered Hand..."
  scene.message "\\bLyra\\b: They want to reform the crown."
  
  scene.message "\\bProfessor Aldric\\b: Which is why they hunt the marked."
  scene.message "\\bProfessor Aldric\\b: You three may be the key to everything."
end

GameData::Cutscene.define :ch9_history_lesson do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Map
  # scene.message "Professor Aldric spread a map across the table."
  # scene.message "Ancient locations marked with faded ink."
  
  scene.message "\\bProfessor Aldric\\b: A thousand years ago, the Guardians walked among us."
  scene.message "\\bProfessor Aldric\\b: They protected humanity from existential threats."
  
  scene.message "\\b\\PN\\b: What happened to them?"
  
  scene.message "\\bProfessor Aldric\\b: War."
  scene.message "\\bProfessor Aldric\\b: Humans wanted their power for themselves."
  scene.message "\\bProfessor Aldric\\b: The Great Betrayal, some texts call it."
  
  scene.message "\\bKael\\b: Humans betrayed the beings protecting them?"
  scene.message "\\bKael\\b: How predictable."
  
  scene.message "\\bProfessor Aldric\\b: The Guardians were... wounded."
  scene.message "\\bProfessor Aldric\\b: They sealed themselves away."
  scene.message "\\bProfessor Aldric\\b: Waiting for humans worthy of their trust."
  
  scene.message "\\bLyra\\b: And the marks...?"
  
  scene.message "\\bProfessor Aldric\\b: Signs that they've chosen again."
  scene.message "\\bProfessor Aldric\\b: After a millennium of silence."
  scene.message "\\bProfessor Aldric\\b: They've chosen the three of you."
end

GameData::Cutscene.define :ch9_summit_temple_direction do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bLyra\\b: How do we learn more?"
  
  scene.message "\\bProfessor Aldric\\b: There are ancient texts in Mt. Corona."
  scene.message "\\bProfessor Aldric\\b: At the Summit Temple."
  scene.message "\\bProfessor Aldric\\b: If answers exist, they're there."
  
  # TODO: Event Sequence - Pointing to Map
  # scene.message "He pointed to a peak on the map."
  
  scene.message "\\bProfessor Aldric\\b: The temple was built by the Guardians themselves."
  scene.message "\\bProfessor Aldric\\b: Or rather, by their first human vessels."
  
  scene.message "\\b\\PN\\b: Their first... vessels?"
  
  scene.message "\\bProfessor Aldric\\b: The Guardians could not take physical form forever."
  scene.message "\\bProfessor Aldric\\b: They needed human partners."
  scene.message "\\bProfessor Aldric\\b: The marked ones."
  
  scene.message "\\bKael\\b: So we're... vessels?"
  
  scene.message "\\bProfessor Aldric\\b: Potentially. If you accept the bond."
  scene.message "\\bProfessor Aldric\\b: The temple will reveal more."
  
  scene.message "\\bProfessor Aldric\\b: But be warned—"
  scene.message "\\bProfessor Aldric\\b: The Shattered Hand knows of the temple too."
  scene.message "\\bProfessor Aldric\\b: They will try to reach it before you."
end

GameData::Cutscene.define :ch9_aldric_gift do |scene|
  scene.play_bgm 'Pokemon DPPT - Emotion'
  
  # TODO: Event Sequence - Gift
  # scene.message "Before you left, Professor Aldric stopped you."
  
  scene.message "\\bProfessor Aldric\\b: Wait. I have something for each of you."
  
  # TODO: Event Sequence - Crystals
  # scene.message "He produced three small crystals."
  # scene.message "Each one glowed with inner light."
  
  scene.message "\\bProfessor Aldric\\b: Temple Keys."
  scene.message "\\bProfessor Aldric\\b: Fragments of the original Guardians' power."
  scene.message "\\bProfessor Aldric\\b: They will resonate with your marks."
  
  # TODO: Event Sequence - Taking Crystal
  # scene.message "As you took yours, warmth flooded your body."
  # scene.message "Your mark pulsed in recognition."
  
  scene.message "\\bLyra\\b: It's... beautiful."
  
  scene.message "\\bKael\\b: *staring at his crystal* ...Thank you."
  
  scene.message "\\bProfessor Aldric\\b: Your father trusted me, \\PN."
  scene.message "\\bProfessor Aldric\\b: And now I trust you."
  scene.message "\\bProfessor Aldric\\b: Whatever happens at the temple..."
  scene.message "\\bProfessor Aldric\\b: Stay true to who you are."
end

GameData::Cutscene.define :ch9_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Leaving Lab
  # scene.message "You departed as the sun rose."
  # scene.message "Mt. Corona loomed on the horizon."
  
  scene.message "\\bLyra\\b: I still can't believe it."
  scene.message "\\bLyra\\b: Ancient Guardians? Chosen vessels?"
  scene.message "\\bLyra\\b: It sounds like a fairy tale."
  
  scene.message "\\bKael\\b: Fairy tales don't leave marks on your skin."
  
  scene.message "\\b\\PN\\b: Whatever we are... we'll figure it out together."
  scene.message "\\b\\PN\\b: But first—the third Gym is on the way."
  
  scene.message "\\bLyra\\b: *brightening* Oh! Right!"
  scene.message "\\bLyra\\b: I almost forgot with all this legend stuff!"
  
  scene.message "\\bKael\\b: A welcome distraction."
  scene.message "\\bKael\\b: We should stay sharp."
  
  scene.message "\\b\\PN\\b: And keep getting stronger."
  scene.message "\\b\\PN\\b: Those cultists weren't pushovers."
end

GameData::Cutscene.define :ch9_gym3_prep do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  # TODO: Event Sequence - Gym Appearance
  # scene.message "The third Gym appeared—a structure of ice and stone."
  # scene.message "Frost coated every surface."
  
  scene.message "\\bLyra\\b: Ice-type Gym?"
  scene.message "\\bLyra\\b: *shivering* Great..."
  
  scene.message "\\bKael\\b: Should be interesting."
  scene.message "\\bKael\\b: Shadow knows some Fire moves."
  
  scene.message "\\bLyra\\b: Show-off."
  
  scene.message "\\b\\PN\\b: Let's scout first."
  scene.message "\\b\\PN\\b: See what we're up against."
  
  # TODO: Event Sequence - Gym Interior
  # scene.message "Inside, the Gym was a maze of frozen platforms."
  # scene.message "Trainers skated across the ice with practiced ease."
  
  scene.message "\\bGym Trainer\\b: Challengers? Brave."
  scene.message "\\bGym Trainer\\b: Leader Frost doesn't go easy on anyone."
  
  scene.message "\\bLyra\\b: Good! I don't want easy!"
  
  scene.message "\\bKael\\b: *quietly* Neither do I."
end

GameData::Cutscene.define :ch9_pre_battle_tension do |scene|
  scene.play_bgm 'Pokemon SwSh - Gym Leader Entrance'
  
  # TODO: Event Sequence - Leader Frost
  # scene.message "Gym Leader Frost awaited at the arena's center."
  # scene.message "A woman of sharp angles and colder eyes."
  
  scene.message "\\bFrost\\b: Three challengers. All marked."
  scene.message "\\bFrost\\b: I've heard rumors about you."
  
  scene.message "\\b\\PN\\b: Rumors?"
  
  scene.message "\\bFrost\\b: The Shattered Hand is looking for you."
  scene.message "\\bFrost\\b: They've offered bounties."
  
  scene.message "\\bKael\\b: And?"
  
  scene.message "\\bFrost\\b: And I don't work for fanatics."
  scene.message "\\bFrost\\b: But I also don't give badges to the weak."
  scene.message "\\bFrost\\b: Show me what the marked can do."
  
  # TODO: Event Sequence - Battle Start
  # scene.message "Ice formed around her feet."
  # scene.message "Her Pokémon emerged, breath misting in the cold."
  
  scene.message "\\bLyra\\b: Here we go..."
end

GameData::Cutscene.define :ch9_gym3_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory'
  
  # TODO: Event Sequence - Battle End
  # scene.message "The final attack landed. Frost's last Pokémon fell."
  
  scene.message "\\bFrost\\b: *smiling coldly* Impressive."
  scene.message "\\bFrost\\b: The marks aren't just decoration."
  
  # TODO: Event Sequence - Badge
  # scene.message "She produced three Glacier Badges."
  
  scene.message "\\bFrost\\b: Take these. You've earned them."
  scene.message "\\bFrost\\b: And a word of warning..."
  
  scene.message "\\bFrost\\b: Mt. Corona is dangerous in winter."
  scene.message "\\bFrost\\b: The temple is guarded by more than just ice."
  scene.message "\\bFrost\\b: Be prepared for what you'll find there."
  
  scene.message "\\b\\PN\\b: Thank you for the advice."
  
  scene.message "\\bFrost\\b: Don't thank me yet."
  scene.message "\\bFrost\\b: Thank me when you survive."

  scene.message "\\bFrost\\b: The Hand offered me a place in their new world yesterday."
  scene.message "\\bFrost\\b: Today they offered a bounty for the three of you."
  scene.message "She slid a frost-stiffened notice across the arena floor. A route to Mt. Corona was marked on its back."
  scene.message "\\bFrost\\b: I declined both offers. The marked route bypasses their watch posts."
  scene.message "\\bFrost\\b: Consider it part of the badge."
  
  # TODO: Event Sequence - Exit Warning
  # scene.message "Her words echoed as you left."
  # scene.message "Cold. Ominous. True."
end

GameData::Cutscene.define :ch9_night_before_mountain do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Camp
  # scene.message "You camped at the mountain's base that night."
  # scene.message "Tomorrow, the real journey began."
  
  scene.message "\\bLyra\\b: I can't sleep."
  scene.message "\\bLyra\\b: I keep thinking about what the Professor said."
  scene.message "\\bLyra\\b: About vessels... about the Great Betrayal."
  
  scene.message "\\bKael\\b: Humans betrayed beings of power."
  scene.message "\\bKael\\b: Shocking."
  
  scene.message "\\bLyra\\b: Kael... you really don't trust anyone, do you?"
  
  scene.message "\\bKael\\b: I trust Shadow."
  scene.message "\\bKael\\b: I trust... you two."
  scene.message "\\bKael\\b: That's enough."
  
  scene.message "\\b\\PN\\b: It's more than enough."
  scene.message "\\b\\PN\\b: Whatever's waiting up there..."
  scene.message "\\b\\PN\\b: We face it as three."
  
  scene.message "\\bLyra\\b: *smiling* Yeah. As three."
  
  # TODO: Event Sequence - Mountain View
  # scene.message "The mountain loomed above."
  # scene.message "Silent. Waiting. Patient."
end

GameData::Cutscene.define :ch9_zacian_first_vision do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  # TODO: Event Sequence - Dream Scene
  scene.message "\\i[DREAM - YOUR VISION]"
  # scene.message "You stood in a field of steel flowers."
  # scene.message "Each petal sharp as a blade."
  # scene.message "The sky was silver. The air tasted of iron."
  
  # TODO: Event Sequence - Zacian Appears
  # scene.message "Before you stood a wolf of living metal."
  # scene.message "A sword rested in its mane, pulsing with power."
  # scene.message "Its eyes burned with ancient wisdom."
  
  scene.message "\\bZacian\\b: So. You are the one who would bear my mark."
  
  scene.message "\\b\\PN\\b: (I can't move... the pressure is overwhelming...)"
  
  scene.message "\\bZacian\\b: Fear is natural. Even I know fear."
  scene.message "\\bZacian\\b: The fear of failing those I protect."
  scene.message "\\bZacian\\b: But you did not run. You stood."
  
  # TODO: Event Sequence - circling
  # scene.message "The wolf circled you slowly."
  # scene.message "Each step rang like a sword being drawn."
  
  scene.message "\\bZacian\\b: I was once human, you know."
  scene.message "\\bZacian\\b: A warrior named Valdris."
  scene.message "\\bZacian\\b: I gave everything to protect this world."
  
  scene.message "\\b\\PN\\b: You... were human?"
  
  scene.message "\\bZacian\\b: We all were. The three of us."
  scene.message "\\bZacian\\b: We became more than human to save what we loved."
  scene.message "\\bZacian\\b: And in doing so... we lost what we loved."
  
  scene.message "\\b\\PN\\b: That sounds... lonely."
  
  scene.message "\\bZacian\\b: It is."
  scene.message "\\bZacian\\b: A thousand years of loneliness."
  scene.message "\\bZacian\\b: But now... perhaps..."
  
  scene.message "\\bZacian\\b: Will you make the same choice I made?"
  scene.message "\\bZacian\\b: To protect. To sacrifice. To stand."
  
  scene.message "\\b\\PN\\b: Yes."
  
  scene.message "\\bZacian\\b: We shall see."
  
  scene.camera_flash 30
  scene.fade_in
  
  # TODO: Event Sequence - Waking Up
  # scene.message "You woke with the taste of steel on your tongue."
  # scene.message "Your mark pulsed brighter than before."
  # scene.message "The mountain waited."
end

GameData::Cutscene.define :ch9_morning_departure do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  # TODO: Event Sequence - Dawn
  # scene.message "Dawn broke cold and gray."
  # scene.message "The mountain path wound upward into mist."
  
  scene.message "\\bLyra\\b: \\PN? You look tired."
  
  scene.message "\\b\\PN\\b: I had a dream."
  scene.message "\\b\\PN\\b: About... Zacian."
  
  scene.message "\\bKael\\b: *sharply* You saw your Guardian?"
  
  scene.message "\\b\\PN\\b: It was human once. A warrior."
  scene.message "\\b\\PN\\b: It asked if I would make the same choice."
  
  scene.message "\\bLyra\\b: What choice?"
  
  scene.message "\\b\\PN\\b: To protect. To sacrifice."
  scene.message "\\b\\PN\\b: I said yes."
  
  # TODO: Event Sequence - Kael Silence
  # scene.message "Kael was silent for a long moment."
  
  scene.message "\\bKael\\b: I haven't seen mine yet."
  scene.message "\\bKael\\b: But I feel it watching."
  scene.message "\\bKael\\b: Waiting."
  
  scene.message "\\bLyra\\b: Me too..."
  scene.message "\\bLyra\\b: Something bright. Warm. Judging."
  
  scene.message "\\b\\PN\\b: Then let's go meet them."
  scene.message "\\b\\PN\\b: Together."
  
  # TODO: Event Sequence - Ascent
  # scene.message "The three of you began the ascent."
  # scene.message "Toward answers. Toward destiny."
end

#===============================================================================
# Chapter 10: The Mountain Path - Journey to the Summit Temple
#===============================================================================

GameData::Cutscene.define :ch10_ragnar_surprise do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  # TODO: Event Sequence - Ragnar Voice
  # scene.message "At the mountain base, a familiar voice echoed."
  
  scene.message "\\bRagnar\\b: \\PN! You're heading up the mountain too?!"
  
  # TODO: Event Sequence - Ragnar Appearance
  # scene.message "Ragnar emerged from the nearby Pokémon Center."
  # scene.message "His team looked battle-hardened now."
  # scene.message "His Raichu's fur crackled with static."
  
  scene.message "\\b\\PN\\b: Ragnar? What are you doing here?"
  
  scene.message "\\bRagnar\\b: There's a rare Pokémon up there!"
  scene.message "\\bRagnar\\b: I'm gonna catch it and add it to my team!"
  
  scene.message "\\bKael\\b: *muttering* Of course he is."
  
  scene.message "\\bRagnar\\b: Hey Broody! Still traveling with \\PN, huh?"
  scene.message "\\bKael\\b: ...My name is Kael."
  scene.message "\\bRagnar\\b: Sure thing, Broody!"
  
  scene.message "\\bLyra\\b: *giggling* He's got you pegged."
  
  scene.message "\\bRagnar\\b: Anyway, \\PN—I've got FOUR badges now!"
  scene.message "\\bRagnar\\b: How many do YOU have?"
  
  scene.message "\\b\\PN\\b: ...Three."
  
  scene.message "\\bRagnar\\b: HA! I'm winning!"
  scene.message "\\bRagnar\\b: But hey, I heard some weird stuff is going on."
  scene.message "\\bRagnar\\b: Cult people? Ancient evils?"
  scene.message "\\bRagnar\\b: You guys wouldn't know anything about that, right?"
  
  # TODO: Event Sequence - Glances
  # scene.message "The three of you exchanged glances."
  
  scene.message "\\bRagnar\\b: *noticing* ...Right?"
  
  scene.message "\\b\\PN\\b: It's complicated, Ragnar."
  
  scene.message "\\bRagnar\\b: *serious for once* ...Be careful up there, okay?"
  scene.message "\\bRagnar\\b: I've heard weird things about that mountain."
  
  scene.message "\\b\\PN\\b: We will."
  
  scene.message "\\bRagnar\\b: *grinning again* Good! Because I need my rival alive!"
  scene.message "\\bRagnar\\b: Can't beat you if you're dead!"
  
  # TODO: Event Sequence - Ragnar Departure
  # scene.message "He waved and headed off on his own path."
  
  scene.message "\\bLyra\\b: He really cares about you, doesn't he?"
  scene.message "\\b\\PN\\b: In his own way... yeah."
end

GameData::Cutscene.define :ch10_mountain_base do |scene|
  scene.play_bgm 'Pokemon RSE - Route 113'
  
  # TODO: Event Sequence - Mountain Description
  # scene.message "Mt. Corona rose from the earth like a titan's fist."
  # scene.message "Snow crowned its peak. Mist shrouded its slopes."
  
  scene.message "\\bLyra\\b: *gulps* That's... really high."
  
  scene.message "\\bKael\\b: The Summit Temple is near the peak."
  scene.message "\\bKael\\b: Two days of climbing. Maybe three."
  
  scene.message "\\b\\PN\\b: Have you been here before?"
  
  scene.message "\\bKael\\b: No. But I know mountains."
  scene.message "\\bKael\\b: The orphanage sat at the base of the Ironpeak Range."
  scene.message "\\bKael\\b: I spent more time in those peaks than with people."
  
  scene.message "\\bLyra\\b: That sounds lonely..."
  
  scene.message "\\bKael\\b: It was peaceful."
  scene.message "\\bKael\\b: Mountains don't lie. Don't betray."
  scene.message "\\bKael\\b: They just... are."
  
  scene.message "\\b\\PN\\b: Well, we're not mountains."
  scene.message "\\b\\PN\\b: But you can count on us too."
  
  # TODO: Event Sequence - Kael Reaction
  # scene.message "Kael didn't respond."
  # scene.message "But you caught a flicker of something in his eyes."
end

GameData::Cutscene.define :ch10_first_ascent do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  # TODO: Event Sequence - Trail
  # scene.message "The trail wound upward through sparse pines."
  # scene.message "Each step brought colder air."
  
  scene.message "\\bKael\\b: Watch your footing here."
  scene.message "\\bKael\\b: The rocks are loose."
  
  scene.message "\\bLyra\\b: *slips* Whoa—!"
  
  # TODO: Event Sequence - Catching Lyra
  # scene.message "Kael's hand shot out, catching her arm."
  
  scene.message "\\bKael\\b: Careful."
  
  scene.message "\\bLyra\\b: *blushing* T-Thanks..."
  
  scene.message "\\b\\PN\\b: (He barely moved, but his reflexes are incredible.)"
  
  scene.message "\\bKael\\b: I'll lead. Step where I step."
  
  # TODO: Event Sequence - Single File
  # scene.message "The three of you continued in single file."
  # scene.message "Kael's movements were fluid, confident."
  # scene.message "He truly was at home in the mountains."
end

GameData::Cutscene.define :ch10_wild_encounter do |scene|
  scene.play_bgm 'Pokemon RSE - Wild Battle'
  
  # TODO: Event Sequence - Aggron Appears
  # scene.message "A cry echoed across the cliffs."
  # scene.message "An Aggron emerged from a cave mouth."
  
  scene.message "\\bLyra\\b: That's one angry Pokémon!"
  
  scene.message "\\bKael\\b: It's protecting its territory."
  scene.message "\\bKael\\b: We need to go around."
  
  scene.message "\\b\\PN\\b: There IS no around—it's blocking the only path!"
  
  # TODO: Event Sequence - Charge
  # scene.message "The Aggron roared and charged."
  
  scene.message "\\bKael\\b: Then we fight."
  scene.message "\\bKael\\b: Shadow!"
  
  # TODO: Event Sequence - Shadow Fight
  # scene.message "Shadow leaped forward, meeting the charge."
  # scene.message "The battle was brief but intense."
  
  scene.message "\\bKael\\b: *commanding* Foul Play!"
  
  # TODO: Event Sequence - Foul Play
  # scene.message "Shadow twisted, using the Aggron's momentum against it."
  # scene.message "The metal beast stumbled back, surprised."
  
  scene.message "\\b\\PN\\b: It's backing down!"
  
  # TODO: Event Sequence - Retreat
  # scene.message "The Aggron growled but retreated to its cave."
  
  scene.message "\\bLyra\\b: That was amazing, Kael!"
  scene.message "\\bKael\\b: Just survival."
end

GameData::Cutscene.define :ch10_mountain_cave do |scene|
  scene.play_bgm 'Pokemon DPPT - Mt. Coronet'
  
  # TODO: Event Sequence - Storm
  # scene.message "A storm rolled in suddenly."
  # scene.message "You took shelter in a shallow cave."
  
  scene.message "\\bLyra\\b: Where did this weather come from?!"
  
  # TODO: Event Sequence - Wind
  # scene.message "Wind howled outside. Snow fell in sheets."
  
  scene.message "\\bKael\\b: Mountain storms. They're unpredictable."
  scene.message "\\bKael\\b: We wait it out."
  
  scene.message "\\b\\PN\\b: At least the cave is dry."
  
  # TODO: Event Sequence - Huddling
  # scene.message "Your Pokémon huddled together for warmth."
  # scene.message "Shadow sat apart, watching the storm."
  
  scene.message "\\bLyra\\b: Hey, Shadow."
  # TODO: Event Sequence - Lyra Sits with Shadow
  # scene.message "She sat down next to the Zorua."
  scene.message "\\bLyra\\b: You don't have to sit alone."
  
  # TODO: Event Sequence - Shadow Moves
  # scene.message "Shadow looked at her, then at Kael."
  # scene.message "Kael gave a slight nod."
  #
  # scene.message "The Zorua moved closer to the group."
  
  scene.message "\\b\\PN\\b: (Even Shadow is learning to trust.)"
end

GameData::Cutscene.define :ch10_campfire_bond do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Campfire
  # scene.message "Night fell on the mountain."
  # scene.message "The campfire crackled against the cold."
  
  scene.message "\\bLyra\\b: *shivering* It's freezing up here!"
  
  # scene.message "Without a word, Kael removed his jacket."
  # scene.message "He draped it over her shoulders."
  
  scene.message "\\bLyra\\b: *surprised* Kael...?"
  scene.message "\\bKael\\b: You were cold."
  scene.message "\\bLyra\\b: But you'll—"
  scene.message "\\bKael\\b: I don't get cold."
  
  # TODO: Event Sequence - Jacket
  # scene.message "He was lying. You could see him shiver."
  # scene.message "But Lyra just smiled and pulled the jacket tighter."
  
  scene.message "\\b\\PN\\b: (Something's definitely growing between those two.)"
  
  scene.message "\\bLyra\\b: Tell me something, Kael."
  scene.message "\\bLyra\\b: Something about yourself."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I grew up in an orphanage."
  scene.message "\\bKael\\b: The mountains behind it were my escape."
  
  scene.message "\\bLyra\\b: *softly* I'm sorry..."
  scene.message "\\bKael\\b: Don't be. It made me who I am."
  
  # TODO: Event Sequence - Silence
  # scene.message "The fire crackled in comfortable silence."
end

GameData::Cutscene.define :ch10_lyra_opens_up do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: I was scared of everything as a kid."
  scene.message "\\bLyra\\b: The dark. Thunder. Being alone."
  
  scene.message "\\bKael\\b: You don't seem scared now."
  
  scene.message "\\bLyra\\b: Elena fixed that."
  scene.message "\\bLyra\\b: She'd tell me stories to distract me."
  scene.message "\\bLyra\\b: Hold me during storms."
  
  scene.message "\\bLyra\\b: When Dad left... she became everything."
  scene.message "\\bLyra\\b: Mom, Dad, sister—all in one."
  
  scene.message "\\b\\PN\\b: She sounds amazing."
  
  scene.message "\\bLyra\\b: She is. She really is."
  scene.message "\\bLyra\\b: That's why I need to get stronger."
  scene.message "\\bLyra\\b: So someday I can protect HER."
  
  scene.message "\\bKael\\b: ...I understand."
  scene.message "\\bKael\\b: Wanting to protect someone."
  
  # TODO: Event Sequence - Kael Voice
  # scene.message "His voice was quieter than usual."
  # scene.message "Softer. Almost vulnerable."
end

GameData::Cutscene.define :ch10_stargazing do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  # TODO: Event Sequence - Stars
  # scene.message "The storm passed. The sky cleared."
  # scene.message "Stars blazed above—brighter than any city."
  
  scene.message "\\bLyra\\b: *gasps* It's beautiful..."
  
  scene.message "\\b\\PN\\b: I've never seen so many stars."
  
  scene.message "\\bKael\\b: In the mountains, there's no light pollution."
  scene.message "\\bKael\\b: You see the sky as it truly is."
  
  # TODO: Event Sequence - Pointing
  # scene.message "He pointed to a constellation."
  
  scene.message "\\bKael\\b: That's the Three Guardians."
  scene.message "\\bKael\\b: Or at least, that's what people used to call it."
  
  scene.message "\\bLyra\\b: The same Guardians from the legends?"
  
  scene.message "\\bKael\\b: Probably."
  scene.message "\\bKael\\b: Ancient peoples saw them everywhere."
  scene.message "\\bKael\\b: In the stars. In the mountains. In themselves."
  
  scene.message "\\b\\PN\\b: And now they're in us."
  
  # TODO: Event Sequence - Marks Pulse
  # scene.message "Your marks pulsed softly."
  # scene.message "Three lights among millions."
end

GameData::Cutscene.define :ch10_kael_memory_flash do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_flash 10
  
  # TODO: Event Sequence - Memory Trigger
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "The mountain air triggered something."
  # scene.message "A memory. Unbidden."
  
  scene.message "\\bMira's Voice\\b: Kael! Look at the view!"
  scene.message "\\bMira's Voice\\b: It's beautiful!"
  
  scene.message "\\bKael\\b: ...!"
  scene.message "\\bKael\\b: (Mira...)"
  
  scene.message "\\bLyra\\b: Kael? You okay?"
  
  scene.message "\\bKael\\b: ...Fine. Keep moving."
  
  scene.message "\\bKael\\b: (She's been dead for years.)"
  scene.message "\\bKael\\b: (Why do I keep hearing her voice?)"
  scene.message "\\bKael\\b: (Is it the mark? These mountains?)"
  
  # TODO: Event Sequence - Shadow Nuzzle
  # scene.message "Shadow nuzzled against his leg."
  scene.message "\\bKael\\b: *quietly* Thanks, Shadow."
end

GameData::Cutscene.define :ch10_mira_memory do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Memory Scene
  scene.message "\\i[KAEL'S PERSPECTIVE - MEMORY]"
  # scene.fade_out
  
  # scene.message "Years ago. The orphanage rooftop."
  # scene.message "A small girl with Kael's same dark hair."
  
  scene.message "\\bYoung Mira\\b: Kael! You have to see the sunset!"
  scene.message "\\bYoung Kael\\b: I've seen sunsets before."
  scene.message "\\bYoung Mira\\b: Not like THIS one!"
  
  # TODO: Event Sequence - Hand Grab
  # scene.message "She grabbed his hand and pulled him up."
  # scene.message "The sky was ablaze—orange and pink and gold."
  
  scene.message "\\bYoung Mira\\b: See? It's magic!"
  scene.message "\\bYoung Kael\\b: *small smile* Yeah. It is."
  
  scene.message "\\bYoung Mira\\b: Promise me something, Kael."
  scene.message "\\bYoung Mira\\b: Promise we'll always watch sunsets together."
  
  scene.message "\\bYoung Kael\\b: ...I promise."
  
  scene.fade_in
  
  # TODO: Event Sequence - Promise Broken
  # scene.message "A promise he couldn't keep."
  # scene.message "The fire had taken her three days later."
end

GameData::Cutscene.define :ch10_ancient_shrine do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Shrine
  # scene.message "High on the mountain, you found the shrine."
  # scene.message "Weathered murals covered the walls."
  
  scene.message "\\bKael\\b: These are ancient. Thousands of years."
  
  scene.message "\\bLyra\\b: Look! Three figures!"
  # TODO: Event Sequence - Pointing
  # scene.message "She pointed to a faded painting."
  # scene.message "Three silhouettes. Three crowns."
  
  scene.message "\\bKael\\b: The guardians..."
  scene.message "\\bKael\\b: But the details are too worn."
  scene.message "\\bKael\\b: I can't make out their forms."
  
  scene.message "\\b\\PN\\b: The temple should have more."
  scene.message "\\b\\PN\\b: Let's keep going."
  
  # TODO: Event Sequence - Pulsing
  # scene.message "As you passed the mural, your marks pulsed in unison."
  # scene.message "Recognition. Connection. Something awakening."
end

GameData::Cutscene.define :ch10_shrine_inscription do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Inscription
  # scene.message "Kael studied an inscription below the mural."
  # scene.message "His brow furrowed in concentration."
  
  scene.message "\\bLyra\\b: Can you read it?"
  
  scene.message "\\bKael\\b: It's ancient Coronan..."
  scene.message "\\bKael\\b: Similar to texts I studied."
  
  # TODO: Event Sequence - Tracing
  # scene.message "He traced the carved letters."
  
  scene.message "\\bKael\\b: 'Three who are one.'"
  scene.message "\\bKael\\b: 'Bound by fate, divided by form.'"
  scene.message "\\bKael\\b: 'When darkness rises, the marked shall stand.'"
  
  scene.message "\\b\\PN\\b: 'The marked shall stand.'"
  scene.message "\\b\\PN\\b: That's us."
  
  scene.message "\\bKael\\b: There's more..."
  scene.message "\\bKael\\b: 'But beware the Fourth.'"
  scene.message "\\bKael\\b: 'The one who grasps but cannot hold.'"
  
  scene.message "\\bLyra\\b: The Fourth?"
  
  scene.message "\\bKael\\b: *darkly* Hoopa."
end

GameData::Cutscene.define :ch10_dangerous_crossing do |scene|
  scene.play_bgm 'Pokemon ORAS - Route 118'
  
  # TODO: Event Sequence - Ledge
  # scene.message "The path narrowed to a thin ledge."
  # scene.message "A sheer drop fell away to the left."
  
  scene.message "\\bLyra\\b: I really, REALLY don't like heights."
  
  scene.message "\\bKael\\b: Don't look down. Focus on my back."
  scene.message "\\bKael\\b: One step at a time."
  
  scene.message "\\b\\PN\\b: I've got you, Lyra. We'll go slow."
  
  # TODO: Event Sequence - Scary Ledge
  # scene.message "Lyra pressed against the cliff face."
  # scene.message "Her knuckles were white."
  
  scene.message "\\bKael\\b: You're doing well."
  scene.message "\\bKael\\b: Just a little further."
  
  # TODO: Event Sequence - Wide Ledge
  # scene.message "The ledge widened. Lyra collapsed against the rock."
  
  scene.message "\\bLyra\\b: Never. Again."
  
  scene.message "\\bKael\\b: ...You did well."
  
  # TODO: Event Sequence - Praise
  # scene.message "Coming from Kael, it was high praise."
end

GameData::Cutscene.define :ch10_temple_in_sight do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Temple View
  # scene.message "As dawn broke, the temple appeared."
  # scene.message "Stone spires reaching toward the sky."
  # scene.message "Ancient. Majestic. Untouched by time."
  
  scene.message "\\bLyra\\b: *breathless* It's real..."
  
  scene.message "\\bKael\\b: The Summit Temple."
  scene.message "\\bKael\\b: Built by the first vessels."
  scene.message "\\bKael\\b: Or so the legends say."
  
  scene.message "\\b\\PN\\b: We made it."
  
  # TODO: Event Sequence - Gates
  # scene.message "The temple gates loomed before you."
  # scene.message "Carved with the same three figures."
  # scene.message "The Three Guardians."
  
  scene.message "\\bLyra\\b: Do we just... go in?"
  
  # TODO: Event Sequence - Gates Opening
  # scene.message "As if in answer, your marks flared."
  # scene.message "The gates began to open."
  
  scene.message "\\bKael\\b: I think that's our answer."
end

GameData::Cutscene.define :ch10_lyra_guardian_sense do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Warmth
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "As the gates opened, warmth flooded through you."
  # scene.message "Different from the cold mountain air."
  
  scene.message "\\bLyra\\b: (What is this feeling...?)"
  
  # TODO: Event Sequence - Feeling Voice
  # scene.message "A voice—not heard, but felt."
  
  scene.message "\\b???\\b: Child of light."
  scene.message "\\b???\\b: You have come far."
  
  scene.message "\\bLyra\\b: *gasps* Did you hear that?"
  
  scene.message "\\bKael\\b: Hear what?"
  
  scene.message "\\bLyra\\b: A voice... calling me..."
  
  scene.message "\\b???\\b: When you are ready, seek me."
  scene.message "\\b???\\b: In the light that judges all."
  
  # TODO: Event Sequence - Hope
  # scene.message "The warmth faded, leaving only lingering hope."
  
  scene.message "\\bLyra\\b: I think... my Guardian spoke to me."
  scene.message "\\bLyra\\b: For just a moment."
  
  # TODO: Event Sequence - Mark Glow
  # scene.message "Her mark glowed golden beneath her sleeve."
end

GameData::Cutscene.define :ch10_entering_temple do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Entering
  # scene.message "You crossed the threshold together."
  # scene.message "The temple swallowed you in shadow and stone."
  
  scene.message "\\bKael\\b: Stay alert."
  scene.message "\\bKael\\b: Professor Aldric said the Hand knows of this place."
  
  scene.message "\\b\\PN\\b: We should find the records quickly."
  scene.message "\\b\\PN\\b: Learn what we can and get out."
  
  scene.message "\\bLyra\\b: *looking around* This place feels... alive."
  scene.message "\\bLyra\\b: Like it's watching us."
  
  scene.message "\\bKael\\b: It probably is."
  scene.message "\\bKael\\b: Ancient temples often have guardian spirits."
  
  scene.message "\\b\\PN\\b: Comforting."
  
  # TODO: Event Sequence - Movement
  # scene.message "The three of you ventured deeper."
  # scene.message "Toward truth. Toward destiny."
  # scene.message "Toward the First Revelation."
end

#===============================================================================
# Chapter 11: The First Truth - Summit Temple Revelations
#===============================================================================

GameData::Cutscene.define :ch11_temple_entrance do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Temple Appearance
  # scene.message "The Summit Temple rose from the mist."
  # scene.message "Ancient. Massive. Humbling."
  
  scene.message "\\bLyra\\b: It's... incredible."
  scene.message "\\bLyra\\b: I've never seen anything like it."
  
  scene.message "\\bKael\\b: The architecture is pre-Pokémon League."
  scene.message "\\bKael\\b: Older than recorded history."
  scene.message "\\bKael\\b: The craftsmanship is... impossible."
  
  scene.message "\\b\\PN\\b: Impossible how?"
  
  scene.message "\\bKael\\b: These stones are perfectly fitted."
  scene.message "\\bKael\\b: No mortar. No tools could achieve this."
  scene.message "\\bKael\\b: Unless the builders weren't... normal."
  
  scene.message "\\b\\PN\\b: Let's see what's inside."
  
  # TODO: Event Sequence - Doors Opening
  # scene.message "The doors opened at your touch."
  # scene.message "As if the temple had been waiting for you."
  # scene.message "For centuries. For millennia."
end

GameData::Cutscene.define :ch11_temple_interior do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Interior
  # scene.message "The interior was vast—impossibly so."
  # scene.message "Larger inside than the temple's exterior suggested."
  
  scene.message "\\bLyra\\b: How is this possible?"
  scene.message "\\bLyra\\b: It seemed smaller from outside..."
  
  scene.message "\\bKael\\b: Space distortion."
  scene.message "\\bKael\\b: The Guardians could manipulate reality itself."
  
  # TODO: Event Sequence - Murals
  # scene.message "Murals lined every wall."
  # scene.message "Depicting scenes of ancient glory and ancient sorrow."
  
  scene.message "\\b\\PN\\b: Look at these paintings..."
  scene.message "\\b\\PN\\b: They tell a story."
  
  scene.message "\\bKael\\b: The history of the Guardians."
  scene.message "\\bKael\\b: From their rise... to their fall."
  
  scene.message "\\bLyra\\b: Why did they fall?"
  
  scene.message "\\bKael\\b: That's what we're here to find out."
end

GameData::Cutscene.define :ch11_first_mural do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  # TODO: Event Sequence - First Mural
  # scene.message "The first mural showed three humans."
  # scene.message "A warrior. A scholar. A healer."
  
  scene.message "\\bKael\\b: The original vessels."
  scene.message "\\bKael\\b: Valdris, Moira, and... I can't make out the third name."
  
  scene.message "\\bLyra\\b: They look so normal."
  scene.message "\\bLyra\\b: Just people."
  
  scene.message "\\bKael\\b: They were people."
  scene.message "\\bKael\\b: Before they became Guardians."
  
  scene.message "\\b\\PN\\b: Zacian told me—in my dream."
  scene.message "\\b\\PN\\b: He was once a warrior named Valdris."
  
  scene.message "\\bKael\\b: So it's true."
  scene.message "\\bKael\\b: The Guardians were human."
  
  scene.message "\\bLyra\\b: What changed them?"
  
  scene.message "\\bKael\\b: *pointing to the next mural* I think that did."
  
  # TODO: Event Sequence - Second Mural
  # scene.message "The second mural showed darkness descending."
  # scene.message "A formless horror consuming the world."
end

GameData::Cutscene.define :ch11_nidhoggr_mural do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  scene.message "\\bKael\\b: 'The Gnawing One. Nidhoggr.'"
  scene.message "\\bKael\\b: 'Before time. Before existence.'"
  scene.message "\\bKael\\b: 'Hunger given form.'"
  
  # TODO: Event Sequence - Nidhoggr Mural
  # scene.message "The mural depicted a creature of pure chaos."
  # scene.message "Writhing tentacles. Countless eyes. Endless maws."
  
  scene.message "\\bLyra\\b: *backing away* I don't want to look at that."
  
  scene.message "\\b\\PN\\b: What is it?"
  
  scene.message "\\bKael\\b: The thing that nearly destroyed everything."
  scene.message "\\bKael\\b: The reason the Guardians exist."
  
  # TODO: Event Sequence - Third Mural
  # scene.message "The third mural showed the three humans transformed."
  # scene.message "Wielding power beyond comprehension."
  # scene.message "Driving back the darkness."
  
  scene.message "\\bKael\\b: 'They sacrificed their humanity.'"
  scene.message "\\bKael\\b: 'To seal the Gnawing One.'"
  scene.message "\\bKael\\b: 'They became something more.'"
  
  scene.message "\\bLyra\\b: *quietly* That's what we might have to do."
  scene.message "\\bLyra\\b: Give up who we are."
  
  # TODO: Event Sequence - Silence
  # scene.message "Silence hung heavy in the ancient hall."
end

GameData::Cutscene.define :ch11_temple_records do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Sanctum
  # scene.message "The inner sanctum held thousands of stone tablets."
  # scene.message "Records of ages past."
  
  scene.message "\\bKael\\b: This will take months to translate..."
  
  scene.message "\\bLyra\\b: Wait! This one has pictures!"
  # TODO: Event Sequence - Pointing
  # scene.message "She pointed to a large carved panel."
  
  # TODO: Event Sequence - Figures
  # scene.message "Three figures stood tall."
  # scene.message "A wolf with a sword. A deer with rainbow antlers."
  # scene.message "A bird of crimson darkness."
  
  scene.message "\\bKael\\b: The Guardians of Balance."
  scene.message "\\bKael\\b: *reading* 'Protectors of the mortal realm.'"
  scene.message "\\bKael\\b: 'When chaos threatens, they choose champions.'"
  
  scene.message "\\bLyra\\b: Champions... like us?"
  
  scene.message "\\bKael\\b: *continuing* 'The Chosen Ones will bear their marks.'"
  scene.message "\\bKael\\b: 'And stand against the darkness.'"
  
  scene.message "\\b\\PN\\b: What darkness?"
  
  scene.message "\\bKael\\b: *frowning* 'A chaos entity of infinite hunger.'"
  scene.message "\\bKael\\b: 'It cannot be killed. Only sealed.'"
  scene.message "\\bKael\\b: 'And the seal is weakening.'"
end

GameData::Cutscene.define :ch11_xerneas_vision do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Vision Start
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "Light exploded behind your eyes."
  # scene.message "Golden. Warm. Overwhelming."
  
  scene.message "\\bLyra\\b: *gasps* What—"
  
  # TODO: Event Sequence - Forest Vision
  # scene.message "You stood in a forest of crystal trees."
  # scene.message "Each leaf reflected rainbow light."
  
  # TODO: Event Sequence - Xerneas Appears
  # scene.message "Before you stood a deer of impossible beauty."
  # scene.message "Antlers like rainbows. Eyes like stars."
  
  scene.message "\\bXerneas\\b: Lyra. Child of light."
  
  scene.message "\\bLyra\\b: (I can't move... it's too beautiful...)"
  
  scene.message "\\bXerneas\\b: You fear the burden."
  scene.message "\\bXerneas\\b: The weight of destiny."
  
  scene.message "\\bLyra\\b: I... I'm scared I'm not enough."
  
  scene.message "\\bXerneas\\b: I too was scared."
  scene.message "\\bXerneas\\b: But love made me brave."
  scene.message "\\bXerneas\\b: Love for those I protected."
  
  scene.message "\\bXerneas\\b: Who do you love, child?"
  
  scene.message "\\bLyra\\b: ...My sister. My friends. My Pokémon."
  
  scene.message "\\bXerneas\\b: Then you are already enough."
  
  scene.camera_flash 20
  
  # TODO: Event Sequence - Vision End
  # scene.message "The vision faded."
  # scene.message "Lyra stood trembling, tears on her cheeks."
  
  scene.message "\\bKael\\b: Lyra? What happened?"
  
  scene.message "\\bLyra\\b: I... I saw her. Xerneas."
  scene.message "\\bLyra\\b: She was... beautiful."
end

GameData::Cutscene.define :ch11_yveltal_vision do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Kael Vision
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "Darkness swallowed the world."
  # scene.message "Cold. Absolute. Final."
  
  scene.message "\\bKael\\b: (What—)"
  
  # TODO: Event Sequence - Yveltal Appears
  # scene.message "A bird of crimson and shadow materialized."
  # scene.message "Wings that could blot out the sun."
  # scene.message "Eyes of burning red."
  
  scene.message "\\bYveltal\\b: Kael. Bearer of shadows."
  
  scene.message "\\bKael\\b: You're... the death Pokémon."
  
  scene.message "\\bYveltal\\b: Death is not evil."
  scene.message "\\bYveltal\\b: It is necessary."
  scene.message "\\bYveltal\\b: I am the ending that makes new beginnings possible."
  
  scene.message "\\bKael\\b: Why choose me?"
  
  scene.message "\\bYveltal\\b: Because you understand loss."
  scene.message "\\bYveltal\\b: You have faced the void and survived."
  
  scene.message "\\bKael\\b: ...Mira."
  
  scene.message "\\bYveltal\\b: Your sister watches still."
  scene.message "\\bYveltal\\b: From the other side."
  scene.message "\\bYveltal\\b: She is proud of you."
  
  scene.message "\\bKael\\b: *voice breaking* You're lying."
  
  scene.message "\\bYveltal\\b: Death does not lie."
  scene.message "\\bYveltal\\b: It is the only truth."
  
  scene.camera_flash 20
  
  # TODO: Event Sequence - Kael Crying
  # scene.message "Kael fell to his knees."
  # scene.message "For the first time, tears streamed down his face."
  
  # TODO: Event Sequence - Comfort
  # scene.message "Shadow pressed against him."
  # scene.message "Lyra placed a hand on his shoulder."
  #
  # scene.message "He didn't push either of them away."
end

GameData::Cutscene.define :ch11_hoopa_revelation do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  # TODO: Event Sequence - Translation
  # scene.message "After the visions passed, Kael returned to the tablets."
  # scene.message "Another caught his eye."
  # scene.message "He translated slowly, face paling."
  
  scene.message "\\bKael\\b: 'The Grasping One. The Ring Bearer.'"
  scene.message "\\bKael\\b: 'Once a guardian of passages.'"
  scene.message "\\bKael\\b: 'Now corrupted by greed.'"
  
  scene.message "\\bLyra\\b: A guardian... that turned evil?"
  
  scene.message "\\bKael\\b: 'It sought to steal the crowns of power.'"
  scene.message "\\bKael\\b: 'In the Divine Reckoning, it was sealed.'"
  scene.message "\\bKael\\b: 'But seals can break.'"
  
  scene.message "\\b\\PN\\b: The cult mentioned someone's 'return.'"
  scene.message "\\b\\PN\\b: They're trying to free this thing."
  
  scene.message "\\bKael\\b: It gets worse."
  scene.message "\\bKael\\b: 'The chaos entity is but a key.'"
  scene.message "\\bKael\\b: 'Behind it waits something older.'"
  scene.message "\\bKael\\b: 'The Gnawing One. Nidhoggr.'"
  
  scene.message "\\bLyra\\b: Two threats?!"
  
  scene.message "\\bKael\\b: It seems so."
  scene.message "\\bKael\\b: The cult wants to free Hoopa..."
  scene.message "\\bKael\\b: So Hoopa can free Nidhoggr."
end

GameData::Cutscene.define :ch11_seal_tablets do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bLyra\\b: How do we stop them?"
  
  scene.message "\\bKael\\b: *reading* 'The seal can be reinforced.'"
  scene.message "\\bKael\\b: 'By the three who bear the marks.'"
  scene.message "\\bKael\\b: 'But only if united in purpose.'"
  
  scene.message "\\b\\PN\\b: United in purpose?"
  
  scene.message "\\bKael\\b: We have to truly work together."
  scene.message "\\bKael\\b: Trust each other completely."
  
  scene.message "\\bLyra\\b: I trust you both."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I'm learning to."
  
  scene.message "\\b\\PN\\b: That's a start."
  
  scene.message "\\bKael\\b: There's more..."
  scene.message "\\bKael\\b: 'The seal requires sacrifice.'"
  scene.message "\\bKael\\b: 'Power for power. Life for life.'"
  
  # TODO: Event Sequence - Silence
  # scene.message "Silence fell."
  
  scene.message "\\bLyra\\b: Does that mean...?"
  
  scene.message "\\bKael\\b: It means we might not all survive this."
end

GameData::Cutscene.define :ch11_burden_of_choice do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Heavy Atmosphere
  # scene.message "The weight of those words settled over the group."
  # scene.message "Heavy. Suffocating. Real."
  
  scene.message "\\b\\PN\\b: So we're expected to... what?"
  scene.message "\\b\\PN\\b: Die to save the world?"
  
  scene.message "\\bKael\\b: Maybe. The tablets aren't clear."
  scene.message "\\bKael\\b: But the first vessels gave up their humanity."
  scene.message "\\bKael\\b: We may have to give up something too."
  
  scene.message "\\bLyra\\b: I have people I need to get back to."
  scene.message "\\bLyra\\b: Elena. Grandma."
  
  scene.message "\\bKael\\b: And if the seal breaks?"
  scene.message "\\bKael\\b: There won't be anyone left to get back to."
  
  # TODO: Event Sequence - Truth
  # scene.message "The truth hung between them."
  # scene.message "Terrible. Unavoidable."
  
  scene.message "\\b\\PN\\b: We don't have to decide now."
  scene.message "\\b\\PN\\b: We need more information."
  scene.message "\\b\\PN\\b: And we need to stop the Hand first."
  
  scene.message "\\bKael\\b: Agreed."
  scene.message "\\bLyra\\b: *shakily* Agreed."
end

GameData::Cutscene.define :ch11_are_we_chosen do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Processing
  # scene.message "You sat in the temple's main hall."
  # scene.message "Processing everything you'd learned."
  
  scene.message "\\bLyra\\b: So... we're really Chosen Ones?"
  scene.message "\\bLyra\\b: Like in the legends?"
  
  scene.message "\\bKael\\b: The evidence suggests so."
  scene.message "\\bKael\\b: The marks. The dreams. The cult's interest."
  
  scene.message "\\b\\PN\\b: Can we refuse?"
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I don't know."
  
  scene.message "\\bLyra\\b: Do we WANT to refuse?"
  
  # TODO: Event Sequence - Silence
  # scene.message "Silence fell over the group."
  
  scene.message "\\b\\PN\\b: If we don't stop this..."
  scene.message "\\b\\PN\\b: Who will?"
  
  scene.message "\\bKael\\b: A fair point."
  
  scene.message "\\bLyra\\b: Then... we do this."
  scene.message "\\bLyra\\b: Together."
  
  scene.message "\\bKael\\b: *small nod* Together."
  
  scene.message "\\b\\PN\\b: Together."
  
  # TODO: Event Sequence - Acceptance
  # scene.message "Your marks pulsed as one."
  # scene.message "Acknowledgment. Acceptance."
  # scene.message "The journey had truly begun."
end

GameData::Cutscene.define :ch11_temple_rumble do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 5
  
  # TODO: Event Sequence - Quaking
  # scene.message "The temple shuddered."
  # scene.message "Dust rained from the ceiling."
  
  scene.message "\\bKael\\b: *alert* That wasn't natural."
  
  scene.message "\\bLyra\\b: Earthquake?"
  
  scene.message "\\bKael\\b: No. Listen."
  
  # TODO: Event Sequence - Sounds
  # scene.message "Distant sounds. Explosions. Shouting."
  
  scene.message "\\b\\PN\\b: Someone's attacking the temple!"
  
  scene.message "\\bKael\\b: The Shattered Hand."
  scene.message "\\bKael\\b: They tracked us."
  
  scene.message "\\bLyra\\b: What do we do?"
  
  scene.message "\\bKael\\b: We take the most important tablets."
  scene.message "\\bKael\\b: Then we run."
  
  scene.message "\\b\\PN\\b: We can fight!"
  
  scene.message "\\bKael\\b: Not their whole army. Not yet."
  scene.message "\\bKael\\b: Live to fight another day."
  
  # TODO: Event Sequence - Explosion
  # scene.message "Another explosion rocked the temple."
  # scene.message "Closer this time."
end

GameData::Cutscene.define :ch11_gathering_knowledge do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Working
  # scene.message "You worked frantically."
  # scene.message "Gathering smaller tablets. Memorizing murals."
  
  scene.message "\\bKael\\b: These describe the seal locations."
  scene.message "\\bKael\\b: Where Hoopa is imprisoned."
  
  scene.message "\\bLyra\\b: And this one shows how to strengthen it!"
  
  scene.message "\\b\\PN\\b: Take everything you can carry."
  
  # TODO: Event Sequence - Closing In
  # scene.message "Footsteps echoed in the outer halls."
  # scene.message "The enemy was closing in."
  
  scene.message "\\bCultist Voice\\b: Spread out! They're here somewhere!"
  
  scene.message "\\bKael\\b: *quietly* Time to go."
  
  scene.message "\\bLyra\\b: There's a back exit."
  scene.message "\\bLyra\\b: I saw it in one of the murals!"
  
  scene.message "\\b\\PN\\b: Lead the way!"
  
  # TODO: Event Sequence - Escape
  # scene.message "The three of you slipped into the shadows."
  # scene.message "Information secured. Lives intact."
  # scene.message "For now."
end

GameData::Cutscene.define :ch11_escape_tunnel do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  # TODO: Event Sequence - Passage
  # scene.message "The back passage was narrow and dark."
  # scene.message "Ancient stairs descending into the mountain."
  
  scene.message "\\bLyra\\b: *whispering* Watch your step. It's slippery."
  
  scene.message "\\bKael\\b: Where does this lead?"
  
  scene.message "\\bLyra\\b: The mural showed it emerging near a river."
  scene.message "\\bLyra\\b: On the mountain's far side."
  
  scene.message "\\b\\PN\\b: Good. That puts distance between us and them."
  
  # TODO: Event Sequence - Running
  # scene.message "The sounds of the attack faded behind you."
  # scene.message "But you didn't slow down."
  
  scene.message "\\bKael\\b: They'll realize we escaped."
  scene.message "\\bKael\\b: They'll come after us."
  
  scene.message "\\bLyra\\b: Then we'll be ready."
  
  scene.message "\\bKael\\b: *glancing at her* Yes."
  scene.message "\\bKael\\b: We will be."
  
  # TODO: Event Sequence - Light
  # scene.message "Light appeared ahead."
  # scene.message "The tunnel's exit. Freedom."
end

GameData::Cutscene.define :ch11_mountain_escape do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Outside
  # scene.message "You emerged into cold mountain air."
  # scene.message "The river roared below."
  
  scene.message "\\bLyra\\b: We made it!"
  
  scene.message "\\bKael\\b: Don't celebrate yet."
  scene.message "\\bKael\\b: We need to put more distance—"
  
  # TODO: Event Sequence - Shade Appears
  # scene.message "A figure stepped from behind a boulder."
  # scene.message "Black cloak. Cold eyes. A general's bearing."
  
  scene.message "\\bShade\\b: Well, well."
  scene.message "\\bShade\\b: The marked ones."
  
  scene.message "\\b\\PN\\b: General Shade..."
  
  scene.message "\\bShade\\b: You've done well to find this place."
  scene.message "\\bShade\\b: But the chase ends here."
  
  # TODO: Event Sequence - Surrounded
  # scene.message "More cultists emerged from the rocks."
  # scene.message "You were surrounded."
end

#===============================================================================
# Chapter 12: General Shade - First Confrontation
#===============================================================================

GameData::Cutscene.define :ch12_surrounded do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  # TODO: Event Sequence - Cultist Army
  # scene.message "Cultists emerged from every direction."
  # scene.message "Ten. Twenty. Too many to count."
  
  scene.message "\\bShade\\b: Did you really think we wouldn't find you?"
  scene.message "\\bShade\\b: The marked ones? Here?"
  scene.message "\\bShade\\b: Every spy we have was watching."
  
  scene.message "\\bKael\\b: *through gritted teeth* We need to fight through."
  
  scene.message "\\bLyra\\b: There are too many!"
  
  scene.message "\\b\\PN\\b: Then we make an opening."
  scene.message "\\b\\PN\\b: Together."
  
  scene.message "\\bShade\\b: How touching."
  scene.message "\\bShade\\b: Surrender now, and I might let one of you live."
  
  scene.message "\\bKael\\b: Counter-offer."
  scene.message "\\bKael\\b: Leave now, and YOU might live."
  
  scene.message "\\bShade\\b: *laughs coldly* Bold. I like that."
  scene.message "\\bShade\\b: I'll remember your words when I'm carving them on your grave."
end

GameData::Cutscene.define :ch12_shade_reveal do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre'
  
  # TODO: Event Sequence - Shade Forward
  # scene.message "General Shade stepped forward."
  # scene.message "In the light, you saw her clearly."
  
  # TODO: Event Sequence - Shade Description
  # scene.message "Tall. Elegant. Terrifying."
  # scene.message "Her cloak billowed despite the still air."
  
  scene.message "\\bShade\\b: I am Shade, General of the Shattered Hand."
  scene.message "\\bShade\\b: First of Viktor's chosen."
  scene.message "\\bShade\\b: And the one who will bring you to heel."
  
  scene.message "\\b\\PN\\b: Viktor?"
  
  scene.message "\\bShade\\b: Our leader. The true heir to the crown."
  scene.message "\\bShade\\b: When Hoopa is freed, he will wield its power."
  scene.message "\\bShade\\b: And then... Nidhoggr."
  
  scene.message "\\bKael\\b: You want to free the thing that nearly destroyed the world?"
  scene.message "\\bKael\\b: Are you insane?"
  
  scene.message "\\bShade\\b: Destroy? No."
  scene.message "\\bShade\\b: Nidhoggr will remake it."
  scene.message "\\bShade\\b: Burn away the corruption."
  scene.message "\\bShade\\b: And from the ashes, paradise."
  
  scene.message "\\bLyra\\b: That's insane!"
  
  scene.message "\\bShade\\b: Perhaps."
  scene.message "\\bShade\\b: But insanity and vision are often mistaken for each other."
end

GameData::Cutscene.define :ch12_shade_backstory do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bShade\\b: I was once like you, you know."
  scene.message "\\bShade\\b: Young. Idealistic. Believing in heroes."
  
  scene.message "\\b\\PN\\b: What happened?"
  
  scene.message "\\bShade\\b: The world showed me its true face."
  scene.message "\\bShade\\b: My village was destroyed in a territorial war."
  scene.message "\\bShade\\b: Pokémon against Pokémon. Humans caught in between."
  
  scene.message "\\bShade\\b: My family. My friends. All gone."
  scene.message "\\bShade\\b: While the 'heroes' watched from their towers."
  
  scene.message "\\bKael\\b: So you joined the people causing more destruction?"
  
  scene.message "\\bShade\\b: I joined the people who will END destruction."
  scene.message "\\bShade\\b: Nidhoggr's hunger will consume all conflict."
  scene.message "\\bShade\\b: No more war. No more suffering."
  scene.message "\\bShade\\b: Just... peace."
  
  scene.message "\\bLyra\\b: The peace of the grave."
  
  scene.message "\\bShade\\b: *smiles* You understand perfectly."
end

GameData::Cutscene.define :ch12_battle_begins do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Bede'
  
  scene.message "\\bShade\\b: Enough talk."
  scene.message "\\bShade\\b: Take them."
  
  # TODO: Event Sequence - Attack
  # scene.message "Cultists surged forward."
  # scene.message "Pokémon burst from Poké Balls in a wave."
  
  scene.message "\\bKael\\b: Shadow! Dark Pulse!"
  
  # TODO: Event Sequence - Shadow Attack
  # scene.message "Shadow's attack scattered the first wave."
  # scene.message "But more kept coming."
  
  scene.message "\\bLyra\\b: Willow, support!"
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\b\\PN\\b: Break through! Head for the path!"
  
  # TODO: Event Sequence - Desperate Fight
  # scene.message "You fought desperately."
  # scene.message "For every cultist that fell, two more appeared."
  
  scene.message "\\bShade\\b: *watching calmly* Impressive stamina."
  scene.message "\\bShade\\b: But futile."
end

GameData::Cutscene.define :ch12_kael_rage do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Bede'
  
  # TODO: Event Sequence - Rage
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "Rage burned through him."
  # scene.message "Not at the cultists. At himself."
  
  scene.message "\\bKael\\b: (I led them here. My carelessness.)"
  scene.message "\\bKael\\b: (If they get hurt... it's my fault.)"
  
  # TODO: Event Sequence - Mark Glow
  # scene.message "His mark began to glow."
  # scene.message "Dark. Pulsing. Hungry."
  
  scene.message "\\bYveltal's Voice\\b: Use it."
  scene.message "\\bYveltal's Voice\\b: Your anger. Your pain."
  scene.message "\\bYveltal's Voice\\b: Let me help you."
  
  scene.message "\\bKael\\b: *through gritted teeth* Not yet."
  scene.message "\\bKael\\b: I don't trust you."
  
  scene.message "\\bYveltal's Voice\\b: You trust nothing."
  scene.message "\\bYveltal's Voice\\b: But you will."
  
  # TODO: Event Sequence - Power Lingers
  # scene.message "The mark's glow faded."
  # scene.message "But the power lingered."
  # scene.message "Waiting."
end

GameData::Cutscene.define :ch12_lyra_shield do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  # TODO: Event Sequence - Attack Behind
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "An attack came from behind."
  # scene.message "Aimed at Kael's back."
  
  scene.message "\\bLyra\\b: NO!"
  
  # TODO: Event Sequence - Light Shield
  # scene.message "Her mark blazed golden."
  # scene.message "Light erupted between Kael and the attack."
  # scene.message "A barrier. Shimmering. Protective."
  
  scene.message "\\bKael\\b: *stunned* Lyra...?"
  
  scene.message "\\bLyra\\b: I... I don't know how I did that..."
  
  scene.message "\\bXerneas's Voice\\b: Instinct."
  scene.message "\\bXerneas's Voice\\b: To protect those you love."
  
  # TODO: Event Sequence - Fade
  # scene.message "The barrier flickered and faded."
  # scene.message "But it had been enough."
  
  scene.message "\\bShade\\b: *eyes narrowing* Interesting."
  scene.message "\\bShade\\b: The marks are awakening."
  scene.message "\\bShade\\b: Good. Viktor will be pleased."
end

GameData::Cutscene.define :ch12_player_breakthrough do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Gym Leader'
  
  # TODO: Event Sequence - Player Power
  scene.message "\\i[YOUR PERSPECTIVE]"
  # scene.message "Your mark burned like fire."
  # scene.message "Power surged through your veins."
  
  scene.message "\\bZacian's Voice\\b: Cut through."
  scene.message "\\bZacian's Voice\\b: Like a sword. Like me."
  
  # TODO: Event Sequence - Gathering Energy
  # scene.message "You raised your hand without thinking."
  # scene.message "Energy gathered—steel-bright and sharp."
  
  scene.message "\\b\\PN\\b: MOVE!"
  
  # TODO: Event Sequence - Release
  # scene.message "The energy released in a wave."
  # scene.message "Cultists scattered before it."
  # scene.message "A path opened through their ranks."
  
  scene.message "\\bKael\\b: GO! NOW!"
  
  # TODO: Event Sequence - Escape
  # scene.message "The three of you sprinted through the gap."
  # scene.message "Shade watched you go."
  # scene.message "She didn't pursue."
end

GameData::Cutscene.define :ch12_shade_lets_them_go do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bCultist\\b: General! They're escaping!"
  
  scene.message "\\bShade\\b: I know."
  
  scene.message "\\bCultist\\b: Should we—"
  
  scene.message "\\bShade\\b: No."
  
  # TODO: Event Sequence - Shade Watching
  # scene.message "She watched the marked ones disappear into the mountains."
  # scene.message "A thin smile crossed her face."
  
  scene.message "\\bShade\\b: Their marks awakened today."
  scene.message "\\bShade\\b: We've learned what we needed."
  scene.message "\\bShade\\b: Let them run."
  
  scene.message "\\bCultist\\b: But Viktor ordered—"
  
  scene.message "\\bShade\\b: *coldly* Viktor ordered me to assess them."
  scene.message "\\bShade\\b: I have."
  scene.message "\\bShade\\b: They're stronger than expected."
  scene.message "\\bShade\\b: But not strong enough."
  
  scene.message "\\bShade\\b: The next time we meet..."
  scene.message "\\bShade\\b: Will be the last."
end

GameData::Cutscene.define :ch12_escape_run do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  # TODO: Event Sequence - Running
  # scene.message "You ran until your lungs burned."
  # scene.message "Down the mountain. Through the forest."
  
  scene.message "\\bLyra\\b: *gasping* Are they... following?"
  
  scene.message "\\bKael\\b: *checking behind* No. They stopped."
  
  scene.message "\\b\\PN\\b: Why? They had us."
  
  scene.message "\\bKael\\b: Testing us."
  scene.message "\\bKael\\b: She wanted to see our powers."
  scene.message "\\bKael\\b: And we showed her."
  
  scene.message "\\bLyra\\b: Was that... bad?"
  
  scene.message "\\bKael\\b: It means they know what we can do."
  scene.message "\\bKael\\b: They'll be prepared next time."
  
  scene.message "\\b\\PN\\b: Then we need to be more prepared."
  
  # TODO: Event Sequence - Stopping
  # scene.message "You finally stopped by a stream."
  # scene.message "Safe. For now."
end

GameData::Cutscene.define :ch12_catching_breath do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Collapse
  # scene.message "The three of you collapsed by the water."
  # scene.message "Exhausted. Shaken. Alive."
  
  scene.message "\\bLyra\\b: What... what happened back there?"
  scene.message "\\bLyra\\b: I made a shield. Of light."
  
  scene.message "\\b\\PN\\b: I fired some kind of energy wave."
  
  scene.message "\\bKael\\b: The marks. They responded to our need."
  scene.message "\\bKael\\b: I felt it too. Yveltal's power."
  scene.message "\\bKael\\b: I didn't use it... but I could have."
  
  scene.message "\\bLyra\\b: It's scary..."
  scene.message "\\bLyra\\b: Having this power we don't understand."
  
  scene.message "\\b\\PN\\b: We'll learn to control it."
  scene.message "\\b\\PN\\b: We have to."
  
  scene.message "\\bKael\\b: The tablets we took should help."
  scene.message "\\bKael\\b: They describe the Guardians' abilities."
  scene.message "\\bKael\\b: We can study them."
end

GameData::Cutscene.define :ch12_what_we_learned do |scene|
  scene.play_bgm 'Pokemon DPPT - Emotion'
  
  scene.message "\\bKael\\b: We learned important things today."
  scene.message "\\bKael\\b: About ourselves. About the enemy."
  
  scene.message "\\bLyra\\b: Their leader is named Viktor."
  
  scene.message "\\b\\PN\\b: And they don't just want Hoopa."
  scene.message "\\b\\PN\\b: They want Nidhoggr too."
  
  scene.message "\\bKael\\b: To remake the world through destruction."
  scene.message "\\bKael\\b: Madness. Complete madness."
  
  scene.message "\\bLyra\\b: But Shade believed it."
  scene.message "\\bLyra\\b: Really believed."
  
  scene.message "\\b\\PN\\b: That makes her more dangerous, not less."
  
  scene.message "\\bKael\\b: Agreed."
  scene.message "\\bKael\\b: A true believer will sacrifice anything."
  scene.message "\\bKael\\b: Including themselves."
  
  scene.message "\\bLyra\\b: So what do we do now?"
  
  scene.message "\\b\\PN\\b: We get stronger."
  scene.message "\\b\\PN\\b: We find the seals."
  scene.message "\\b\\PN\\b: And we stop them."
end

GameData::Cutscene.define :ch12_shade_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Camp Setup
  # scene.message "As night fell, you made a simple camp."
  # scene.message "No fire—too dangerous."
  
  scene.message "\\bLyra\\b: Is everyone okay?"
  scene.message "\\bKael\\b: We're fine. For now."
  
  scene.message "\\b\\PN\\b: She said there's something worse than Hoopa."
  scene.message "\\b\\PN\\b: 'Far greater,' she said."
  
  scene.message "\\bKael\\b: The tablets mentioned Nidhoggr."
  scene.message "\\bKael\\b: An ancient entity of chaos and hunger."
  
  scene.message "\\bLyra\\b: So Hoopa is just the beginning?"
  scene.message "\\bKael\\b: It seems that way."
  
  scene.message "\\b\\PN\\b: Then we need to stop them before they free either."
  scene.message "\\b\\PN\\b: First, we regroup and recover."
  
  scene.message "\\bKael\\b: And then?"
  
  scene.message "\\b\\PN\\b: And then we find the seals before they do."
end

GameData::Cutscene.define :ch12_night_watch do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Night Watch
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "You took first watch."
  # scene.message "The others slept fitfully."
  
  # scene.message "Shadow sat beside you."
  # scene.message "Alert. Watchful. Loyal."
  
  scene.message "\\bKael\\b: *quietly* I almost lost control today."
  scene.message "\\bKael\\b: Yveltal's power... it wanted out."
  
  # TODO: Event Sequence - Shadow Tilt
  # scene.message "Shadow tilted his head."
  
  scene.message "\\bKael\\b: I won't let it happen again."
  scene.message "\\bKael\\b: I won't become a monster."
  
  # TODO: Event Sequence - Watching Sleeping
  # scene.message "He looked at the sleeping forms of his companions."
  # scene.message "Lyra, curled in a ball, still shivering."
  # scene.message "\\PN, restless but stable."
  
  scene.message "\\bKael\\b: (They're counting on me.)"
  scene.message "\\bKael\\b: (I won't fail them.)"
  
  # TODO: Event Sequence - Morning
  # scene.message "The night passed slowly."
  # scene.message "But it did pass."
end

GameData::Cutscene.define :ch12_ragnar_town do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Town
  # scene.message "While restocking in a nearby town, a familiar voice called out."
  
  scene.message "\\bRagnar\\b: \\PN! Is that you?!"
  
  # TODO: Event Sequence - Ragnar Appears
  # scene.message "Ragnar jogged over, four badges gleaming on his jacket."
  # scene.message "His Pikachu—no, Raichu now—bounded beside him."
  
  scene.message "\\b\\PN\\b: Ragnar! Your Pikachu evolved!"
  
  scene.message "\\bRagnar\\b: *proudly* YUP! We're unstoppable now!"
  scene.message "\\bRagnar\\b: Four badges and counting!"
  
  # TODO: Event Sequence - Notice Tired
  # scene.message "He noticed your tired expression."
  
  scene.message "\\bRagnar\\b: ...You look rough, buddy."
  scene.message "\\bRagnar\\b: Those dark times you mentioned?"
  
  scene.message "\\b\\PN\\b: Getting darker."
  
  scene.message "\\bRagnar\\b: *serious for once* Look, I know I'm not part of"
  scene.message "\\bRagnar\\b: whatever weird chosen one stuff you've got going."
  scene.message "\\bRagnar\\b: But if you EVER need backup—"
  
  scene.message "\\b\\PN\\b: I know."
  
  scene.message "\\bRagnar\\b: Good! Now go get some rest!"
  scene.message "\\bRagnar\\b: You look like a Snorlax that hasn't slept in weeks!"
  
  # TODO: Event Sequence - Ragnar Leaves
  # scene.message "He ran off with a wave."
  # scene.message "Annoying as ever. But it was nice to see him."
end

GameData::Cutscene.define :ch12_dawn_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Dawn Departure
  # scene.message "Dawn brought cold clarity."
  # scene.message "The temple was behind you."
  # scene.message "The road ahead was long."
  
  scene.message "\\bLyra\\b: Where do we go now?"
  
  scene.message "\\b\\PN\\b: The tablets mention other temples."
  scene.message "\\b\\PN\\b: Places where the seals are anchored."
  
  scene.message "\\bKael\\b: If we can strengthen them..."
  scene.message "\\bKael\\b: We buy time to find a permanent solution."
  
  scene.message "\\bLyra\\b: Then let's go."
  scene.message "\\bLyra\\b: But... maybe we can eat first?"
  
  # TODO: Event Sequence - Stomach Growl
  # scene.message "Her stomach growled loudly."
  
  scene.message "\\bKael\\b: *almost smiling* Fair point."
  
  # TODO: Event Sequence - Normalcy
  # scene.message "For a moment, despite everything..."
  # scene.message "Things felt almost normal."
  # scene.message "Almost."
end

#===============================================================================
# Chapter 13: Growing Bonds - Recovery and Training
#===============================================================================

GameData::Cutscene.define :ch13_recovery_camp do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Camp
  # scene.message "You made camp by a river, far from the temple."
  # scene.message "The night was peaceful. Almost too peaceful."
  
  scene.message "\\bLyra\\b: I made soup! Who's hungry?"
  scene.message "\\bWillow\\b: Vee vee!"
  
  scene.message "\\bKael\\b: *quietly takes bowl* ...Thanks."
  
  scene.message "\\b\\PN\\b: This is good, Lyra."
  scene.message "\\bLyra\\b: *beaming* Grandma taught me!"
  
  # TODO: Event Sequence - Soup
  # scene.message "For a moment, you almost forgot the danger."
  # scene.message "Almost."
end

GameData::Cutscene.define :ch13_ragnar_rematch do |scene|
  scene.play_bgm 'Pokemon XY - Rival Theme'
  
  # TODO: Event Sequence - Ragnar Shout
  # scene.message "While training on the route, a shout echoed across the field."
  
  scene.message "\\bRagnar\\b: HEY! BROODY! BATTLE TIME!"
  
  # scene.message "Ragnar was already running toward you, Raichu sparking."
  
  scene.message "\\b\\PN\\b: Ragnar, I'm kind of busy—"
  
  scene.message "\\bRagnar\\b: TOO BAD!"
  scene.message "\\bRagnar\\b: You've been avoiding me for WEEKS!"
  scene.message "\\bRagnar\\b: Time to see who's really gotten stronger!"
  
  scene.message "\\bLyra\\b: *to Kael* Who is this guy?"
  scene.message "\\bKael\\b: \\PN's rival. He's... loud."
  
  scene.message "\\bRagnar\\b: I HEARD THAT, DARK AND BROODY!"
  
  scene.trainer_battle :RIVAL_RAGNAR, "Ragnar", 2
  
  # TODO: Event Sequence - Battle End
  # scene.message "The battle was intense."
  # scene.message "Ragnar had gotten significantly stronger."
end

GameData::Cutscene.define :ch13_ragnar_after_battle do |scene|
  scene.play_bgm 'Pokemon XY - Rival Theme'
  
  scene.message "\\bRagnar\\b: *panting* Okay... okay, you're still tough."
  scene.message "\\bRagnar\\b: But I'm catching up! You feel it, right?!"
  
  scene.message "\\b\\PN\\b: Yeah. You've gotten a lot better."
  
  scene.message "\\bRagnar\\b: *grinning* Course I have!"
  scene.message "\\bRagnar\\b: Can't let my rival leave me in the dust!"
  
  # TODO: Event Sequence - Look
  # scene.message "He looked at Lyra and Kael."
  
  scene.message "\\bRagnar\\b: You two better be taking care of \\PN!"
  scene.message "\\bRagnar\\b: That's MY job to annoy them!"
  
  scene.message "\\bLyra\\b: *laughing* We'll do our best!"
  scene.message "\\bKael\\b: ...Sure."
  
  scene.message "\\bRagnar\\b: Alright! Next time, I WIN!"
  
  # TODO: Event Sequence - Ragnar Departure
  # scene.message "He took off running again."
  # scene.message "That boundless energy. It was almost inspiring."
end

GameData::Cutscene.define :ch13_first_night do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Fire
  # scene.message "The fire crackled softly."
  # scene.message "Above, stars emerged one by one."
  
  scene.message "\\bLyra\\b: Do you think the Shattered Hand is looking for us?"
  
  scene.message "\\bKael\\b: Definitely."
  scene.message "\\bKael\\b: But we're far from the temple now."
  scene.message "\\bKael\\b: They won't find us easily."
  
  scene.message "\\b\\PN\\b: We should keep moving in the morning."
  scene.message "\\b\\PN\\b: Put more distance between us."
  
  scene.message "\\bLyra\\b: And then?"
  
  scene.message "\\bKael\\b: We study the tablets we took."
  scene.message "\\bKael\\b: Find the seal locations."
  scene.message "\\bKael\\b: And get there before they do."
  
  scene.message "\\bLyra\\b: Right. We can do this."
  
  scene.message "\\b\\PN\\b: Get some sleep. I'll take first watch."
  
  scene.message "\\bKael\\b: Wake me in three hours."
  
  # TODO: Event Sequence - Bedrolls
  # scene.message "The others settled into their bedrolls."
  # scene.message "You watched the shadows."
  # scene.message "Waiting."
end

GameData::Cutscene.define :ch13_morning_tablets do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  # TODO: Event Sequence - Tablets
  # scene.message "Morning brought the task of studying."
  # scene.message "Kael spread the stolen tablets on a flat rock."
  
  scene.message "\\bKael\\b: There are four major seal points."
  scene.message "\\bKael\\b: The Temple was the first. Now compromised."
  
  scene.message "\\bLyra\\b: Where are the others?"
  
  scene.message "\\bKael\\b: One in the Abyssal Caves to the east."
  scene.message "\\bKael\\b: One in the Sunlight Forest to the south."
  scene.message "\\bKael\\b: And one... the tablets don't say."
  scene.message "\\bKael\\b: Just 'the place of falling stars.'"
  
  scene.message "\\b\\PN\\b: That's cryptic."
  
  scene.message "\\bKael\\b: Ancient texts usually are."
  
  scene.message "\\bLyra\\b: Which do we go to first?"
  
  scene.message "\\bKael\\b: Sunlight Forest is closest."
  scene.message "\\bKael\\b: And it matches your Guardian, Lyra."
  scene.message "\\bKael\\b: Xerneas was once called the Life-Giver."
  
  scene.message "\\bLyra\\b: *touching her mark* Let's go there."
end

GameData::Cutscene.define :ch13_training_montage do |scene|
  scene.play_bgm 'Pokemon RSE - Battle Frontier'
  
  # TODO: Event Sequence - Training
  # scene.message "The next few days were focused on training."
  # scene.message "You couldn't afford to be caught off guard again."
  
  scene.message "\\bKael\\b: Shadow, use Dark Pulse!"
  scene.message "\\bShadow\\b: Zor!"
  
  scene.message "\\bLyra\\b: Willow, practice your Quick Attack!"
  scene.message "\\bWillow\\b: Vee!"
  
  # TODO: Event Sequence - Drills
  # scene.message "You drilled your team relentlessly."
  # scene.message "The next battle could be life or death."
  
  scene.message "\\bKael\\b: You're getting better, \\PN."
  scene.message "\\b\\PN\\b: Is that... praise?"
  scene.message "\\bKael\\b: Observation. Don't let it go to your head."
  
  scene.message "\\bLyra\\b: *laughs* That's Kael-speak for 'good job!'"
end

GameData::Cutscene.define :ch13_kael_trains_player do |scene|
  scene.play_bgm 'Pokemon RSE - Battle Frontier'
  
  # TODO: Event Sequence - Kael Approach
  # scene.message "Kael approached you during a break."
  
  scene.message "\\bKael\\b: Your strategy is too predictable."
  scene.message "\\bKael\\b: You always attack head-on."
  
  scene.message "\\b\\PN\\b: That's... fair."
  
  scene.message "\\bKael\\b: Let me show you something."
  
  # TODO: Event Sequence - Flanking
  # scene.message "He demonstrated a flanking maneuver."
  # scene.message "Shadow moving as his shadow."
  
  scene.message "\\bKael\\b: Misdirection. Make them look one way."
  scene.message "\\bKael\\b: Then strike from another."
  
  scene.message "\\b\\PN\\b: Where did you learn that?"
  
  scene.message "\\bKael\\b: Survival."
  scene.message "\\bKael\\b: The orphanage wasn't kind to the weak."
  
  scene.message "\\b\\PN\\b: I'm sorry."
  
  scene.message "\\bKael\\b: Don't be."
  scene.message "\\bKael\\b: Use the lesson."
  
  # TODO: Event Sequence - Practice
  # scene.message "You practiced until your Pokémon were exhausted."
  # scene.message "And then you practiced more."
end

GameData::Cutscene.define :ch13_lyra_helps_player do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: You're pushing too hard, \\PN."
  scene.message "\\bLyra\\b: Your Pokémon need rest too."
  
  scene.message "\\b\\PN\\b: We don't have time for rest."
  
  scene.message "\\bLyra\\b: We won't have time for anything if they collapse in battle."
  
  # TODO: Event Sequence - Point
  # scene.message "She had a point."
  
  scene.message "\\bLyra\\b: Here. Let me show you a healing technique."
  scene.message "\\bLyra\\b: Grandma taught me. Uses special berries."
  
  # TODO: Event Sequence - Herbs
  # scene.message "She ground herbs together with practiced hands."
  # scene.message "The resulting paste smelled of mint and honey."
  
  scene.message "\\bLyra\\b: Apply this to tired muscles."
  scene.message "\\bLyra\\b: Pokémon recover twice as fast."
  
  scene.message "\\b\\PN\\b: That's... really useful."
  
  scene.message "\\bLyra\\b: *winking* I'm not just a pretty face!"
  
  # TODO: Event Sequence - Healing
  # scene.message "You applied the paste to your team."
  # scene.message "They did seem more energetic afterward."
end

GameData::Cutscene.define :ch13_pokemon_bonding do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Interaction
  # scene.message "You watched your Pokémon interact."
  # scene.message "Shadow, initially hostile, now tolerated Willow's presence."
  
  scene.message "\\bWillow\\b: Vee vee!"
  scene.message "The Eevee playfully batted at Shadow's tail."
  
  scene.message "\\bShadow\\b: *annoyed* Zor."
  
  # TODO: Event Sequence - Shadow Reaction
  # scene.message "But he didn't move away."
  
  scene.message "\\bLyra\\b: Look! They're getting along!"
  
  scene.message "\\bKael\\b: *watching* Shadow doesn't 'get along.'"
  scene.message "\\bKael\\b: But he's... tolerating."
  
  scene.message "\\b\\PN\\b: That's progress."
  
  # TODO: Event Sequence - Pack
  # scene.message "Your own Pokémon joined the group."
  # scene.message "A small pack forming. A family."
  
  scene.message "\\bLyra\\b: We're building something here."
  scene.message "\\bLyra\\b: Not just a team. A... family."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: Maybe."
end

GameData::Cutscene.define :ch13_lyra_kael_moment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Sitting
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "You found Kael alone by the river."
  # scene.message "He was staring at the water, lost in thought."
  
  scene.message "\\bLyra\\b: Mind if I sit?"
  scene.message "\\bKael\\b: ..."
  # scene.message "He didn't say no, so you sat."
  
  scene.message "\\bLyra\\b: You've been quiet. More than usual."
  scene.message "\\bKael\\b: I'm always quiet."
  
  scene.message "\\bLyra\\b: This is different."
  scene.message "\\bLyra\\b: You can talk to me, you know."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: The temple... the records about being 'chosen.'"
  scene.message "\\bKael\\b: I never asked for any of this."
  
  scene.message "\\bLyra\\b: None of us did."
  
  scene.message "\\bKael\\b: You and \\PN seem to handle it well."
  scene.message "\\bKael\\b: I just see more ways for things to go wrong."
  
  scene.message "\\bLyra\\b: *softly* That's okay."
  scene.message "\\bLyra\\b: That's why we're a team."
  scene.message "\\bLyra\\b: You see the dangers. I see the hope."
  scene.message "\\bLyra\\b: And \\PN keeps us moving forward."
  
  scene.message "\\bKael\\b: ...That's surprisingly insightful."
  scene.message "\\bLyra\\b: Hey! I can be smart too!"
  scene.message "\\bKael\\b: I never said you couldn't."
  
  # TODO: Event Sequence - Smile
  # scene.message "The faintest smile crossed his lips."
  # scene.message "It was gone in an instant."
  # scene.message "But Lyra saw it."
end

GameData::Cutscene.define :ch13_kael_opens_up do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Silence
  scene.message "\\i[LYRA'S PERSPECTIVE - CONTINUED]"
  # scene.message "The silence stretched, but it wasn't uncomfortable."
  
  scene.message "\\bKael\\b: Mira would have liked you."
  
  scene.message "\\bLyra\\b: Mira?"
  
  scene.message "\\bKael\\b: My sister."
  scene.message "\\bKael\\b: She... she died. In a fire."
  
  scene.message "\\bLyra\\b: Oh, Kael..."
  
  scene.message "\\bKael\\b: She was like you."
  scene.message "\\bKael\\b: Bright. Optimistic. Annoying."
  
  scene.message "\\bLyra\\b: *tearfully laughing* Hey..."
  
  scene.message "\\bKael\\b: She saw good in everything."
  scene.message "\\bKael\\b: Even in me."
  
  scene.message "\\bLyra\\b: I see good in you too."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: You barely know me."
  
  scene.message "\\bLyra\\b: I know enough."
  
  # TODO: Event Sequence - Hand Holding
  # scene.message "She reached out and took his hand."
  # scene.message "He didn't pull away."
end

GameData::Cutscene.define :ch13_player_watching do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Watching
  scene.message "\\i[YOUR PERSPECTIVE]"
  # scene.message "You watched them from a distance."
  # scene.message "Lyra and Kael. By the river."
  
  scene.message "\\b\\PN\\b: (They're good for each other.)"
  
  # TODO: Event Sequence - Outside Looking In
  # scene.message "You felt a twinge of something."
  # scene.message "Not jealousy. Not exactly."
  # scene.message "More like... being outside looking in."
  
  scene.message "\\b\\PN\\b: (I'm the Champion's kid.)"
  scene.message "\\b\\PN\\b: (They have real struggles.)"
  scene.message "\\b\\PN\\b: (What do I know about pain?)"
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Your mark pulsed."
  
  scene.message "\\bZacian's Voice\\b: You know more than you think."
  scene.message "\\bZacian's Voice\\b: Pain is not the only teacher."
  scene.message "\\bZacian's Voice\\b: Duty is also a burden."
  
  scene.message "\\b\\PN\\b: (Maybe.)"
  
  # TODO: Event Sequence - Training
  # scene.message "You turned back to training."
  # scene.message "There was work to do."
end

GameData::Cutscene.define :ch13_mark_practice do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Practice
  # scene.message "That evening, you tried to use your marks intentionally."
  
  scene.message "\\bKael\\b: Concentrate. Feel the power."
  scene.message "\\bKael\\b: Don't force it. Let it flow."
  
  scene.message "\\bLyra\\b: *straining* I can feel it but..."
  scene.message "\\bLyra\\b: It won't come out!"
  
  scene.message "\\b\\PN\\b: Same here. It responded in battle..."
  scene.message "\\b\\PN\\b: But now? Nothing."
  
  scene.message "\\bKael\\b: Adrenaline. Danger."
  scene.message "\\bKael\\b: The marks respond to need."
  scene.message "\\bKael\\b: We have to learn to activate them at will."
  
  scene.message "\\bLyra\\b: How?"
  
  scene.message "\\bKael\\b: The tablets might tell us."
  scene.message "\\bKael\\b: Or the Guardians themselves."
  
  scene.message "\\b\\PN\\b: More questions. Always more questions."
  
  scene.message "\\bKael\\b: That's the nature of truth."
  scene.message "\\bKael\\b: The more you know, the more you don't."
end

GameData::Cutscene.define :ch13_sunset_reflection do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  # TODO: Event Sequence - Sunset
  # scene.message "Sunset painted the sky in shades of fire."
  # scene.message "The three of you sat together, watching."
  
  scene.message "\\bLyra\\b: It's beautiful."
  
  scene.message "\\bKael\\b: ...Yes."
  
  scene.message "\\b\\PN\\b: Moments like this..."
  scene.message "\\b\\PN\\b: They make the fighting worth it."
  
  scene.message "\\bLyra\\b: What will we do after?"
  scene.message "\\bLyra\\b: When this is all over?"
  
  scene.message "\\b\\PN\\b: I... hadn't thought about it."
  
  scene.message "\\bKael\\b: We might not have an 'after.'"
  
  scene.message "\\bLyra\\b: Kael!"
  
  scene.message "\\bKael\\b: I'm being realistic."
  
  scene.message "\\bLyra\\b: Well, I'm being hopeful."
  scene.message "\\bLyra\\b: After this, I want to see the world."
  scene.message "\\bLyra\\b: With people I care about."
  
  # TODO: Event Sequence - Looking
  # scene.message "She looked at both of you."
  
  scene.message "\\b\\PN\\b: That sounds nice."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: It does."
end

GameData::Cutscene.define :ch13_night_conversation do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # TODO: Event Sequence - Kael cannot sleep
  # scene.message "You couldn't sleep."
  # scene.message "Too many thoughts. Too many memories."
  
  # scene.message "\\PN was on watch nearby."
  
  scene.message "\\bKael\\b: *quietly* Can't sleep either?"
  
  scene.message "\\b\\PN\\b: Just thinking."
  
  scene.message "\\bKael\\b: About?"
  
  scene.message "\\b\\PN\\b: Whether I'm ready for this."
  scene.message "\\b\\PN\\b: My dad saved the world once."
  scene.message "\\b\\PN\\b: I'm just... me."
  
  scene.message "\\bKael\\b: Your father wasn't always Champion."
  scene.message "\\bKael\\b: He became one through struggle."
  
  scene.message "\\b\\PN\\b: I know. But the expectation..."
  
  scene.message "\\bKael\\b: Forget expectations."
  scene.message "\\bKael\\b: You've already proven yourself."
  scene.message "\\bKael\\b: More than once."
  
  scene.message "\\b\\PN\\b: *surprised* That's... almost kind."
  
  scene.message "\\bKael\\b: Don't get used to it."
  
  # TODO: Event Sequence - Kael's Change
  # scene.message "But there was a warmth in his voice."
  # scene.message "Something new. Something growing."
end

GameData::Cutscene.define :ch13_departure_preparations do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Morning Camp
  # scene.message "The final morning at camp."
  # scene.message "You packed your supplies, checked your Pokémon."
  
  scene.message "\\bLyra\\b: Sunlight Forest, here we come!"
  
  scene.message "\\bKael\\b: Stay alert. The Hand could be anywhere."
  
  scene.message "\\b\\PN\\b: We've trained. We're ready."
  
  scene.message "\\bKael\\b: Ready is relative."
  scene.message "\\bKael\\b: But we're more ready than before."
  
  scene.message "\\bLyra\\b: That's practically optimism!"
  scene.message "\\bLyra\\b: I'm rubbing off on you!"
  
  scene.message "\\bKael\\b: *deadpan* Please don't."
  
  # TODO: Event Sequence - Laughter
  # scene.message "She laughed, bright and clear."
  # scene.message "Even Kael's lips twitched upward."
  
  scene.message "\\b\\PN\\b: Let's go."
  scene.message "\\b\\PN\\b: Whatever's waiting..."
  scene.message "\\b\\PN\\b: We face it together."
  
  # TODO: Event Sequence - Departure
  # scene.message "Together, you set off toward the forest."
  # scene.message "Toward Lyra's destiny."
  # scene.message "Toward Xerneas."
end

#===============================================================================
# Chapter 14: First Guardian Named - Xerneas
#===============================================================================

GameData::Cutscene.define :ch14_approaching_forest do |scene|
  scene.play_bgm 'Pokemon XY - Santalune Forest'
  
  # TODO: Event Sequence - Forest Entrance
  # scene.message "The Sunlight Forest lived up to its name."
  # scene.message "Golden beams pierced the canopy. Life thrummed everywhere."
  
  scene.message "\\bLyra\\b: *breathing deeply* It's beautiful..."
  scene.message "\\bLyra\\b: I can feel something. Calling me."
  
  scene.message "\\bKael\\b: Your Guardian's influence."
  scene.message "\\bKael\\b: This forest is connected to Xerneas."
  
  scene.message "\\b\\PN\\b: Can you follow the feeling?"
  
  scene.message "\\bLyra\\b: I think so..."
  scene.message "\\bLyra\\b: It's like warmth pulling at my heart."
  
  # TODO: Event Sequence - Flowers Blooming
  # scene.message "Flowers bloomed in Lyra's footsteps."
  # scene.message "She didn't notice. But you did."
  
  scene.message "\\bKael\\b: *quietly* The power is already manifesting."
  scene.message "\\b\\PN\\b: Is that... normal?"
  scene.message "\\bKael\\b: I don't think anything about us is normal anymore."
end

GameData::Cutscene.define :ch14_forest_wildlife do |scene|
  scene.play_bgm 'Pokemon XY - Santalune Forest'
  
  # TODO: Event Sequence - Forest Wildlife
  # scene.message "The forest Pokémon watched your passage."
  # scene.message "Not hostile. Curious."
  
  # TODO: Event Sequence - Deerling Interaction
  # scene.message "A Deerling approached Lyra fearlessly."
  # scene.message "It nuzzled her hand."
  
  scene.message "\\bLyra\\b: *giggling* Hello, little one!"
  
  scene.message "\\bKael\\b: They sense Xerneas in you."
  scene.message "\\bKael\\b: Life recognizes life."
  
  # TODO: Event Sequence - Pokemon Gathering
  # scene.message "More Pokémon gathered."
  # scene.message "Oddish. Seedot. A curious Bulbasaur."
  
  scene.message "\\bLyra\\b: It's like they're escorting us!"
  
  scene.message "\\b\\PN\\b: Maybe they are."
  
  # TODO: Event Sequence - procession
  # scene.message "The procession moved deeper into the forest."
  # scene.message "Toward the source of the light."
  # scene.message "Toward the Guardian's heart."
end

GameData::Cutscene.define :ch14_ragnar_encounter do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Ragnar Encounter
  # scene.message "On the road to the Sunlight Forest, you spotted Ragnar."
  # scene.message "He was sitting by the roadside, eating."
  
  scene.message "\\bRagnar\\b: *mouth full* Mm! \\PN!"
  
  scene.message "\\b\\PN\\b: Ragnar? What are you doing here?"
  
  scene.message "\\bRagnar\\b: *swallowing* Heard there's a forest up ahead!"
  scene.message "\\bRagnar\\b: Wanted to catch some rare Pokémon!"
  
  scene.message "\\bKael\\b: You should avoid that forest."
  
  scene.message "\\bRagnar\\b: Huh? Why?"
  
  scene.message "\\bLyra\\b: It's... dangerous right now."
  scene.message "\\bLyra\\b: There's been strange activity."
  
  scene.message "\\bRagnar\\b: *standing up* The cult stuff?"
  scene.message "\\bRagnar\\b: I've seen those creeps around."
  
  scene.message "\\b\\PN\\b: Then you know why you should stay away."
  
  scene.message "\\bRagnar\\b: *grumbling* Fine, fine."
  scene.message "\\bRagnar\\b: But you better tell me what happens!"
  scene.message "\\bRagnar\\b: I hate being left out of the cool stuff!"
  
  # TODO: Event Sequence - Ragnar Leaves
  # scene.message "He packed up and headed the other direction."
  # scene.message "At least he listened for once."
end

GameData::Cutscene.define :ch14_forest_shrine do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  # TODO: Event Sequence - Forest Shrine
  # scene.message "A clearing opened before you."
  # scene.message "In its center stood an ancient shrine."
  
  # scene.message "Crystal formations caught the sunlight."
  # scene.message "Throwing rainbows across the grass."
  
  scene.message "\\bLyra\\b: *awed* This place..."
  
  scene.message "\\bKael\\b: The second seal point."
  scene.message "\\bKael\\b: Where Xerneas's power anchors Hoopa's prison."
  
  scene.message "\\b\\PN\\b: Is the seal still intact?"
  
  # TODO: Event Sequence - Kael Examines
  # scene.message "Kael examined the shrine carefully."
  
  scene.message "\\bKael\\b: Weakened, but holding."
  scene.message "\\bKael\\b: If Lyra can commune with Xerneas..."
  scene.message "\\bKael\\b: She might be able to strengthen it."
  
  scene.message "\\bLyra\\b: How do I do that?"
  
  scene.message "\\bKael\\b: That... you'll have to figure out."
  scene.message "\\bKael\\b: Connect with your Guardian."
end

GameData::Cutscene.define :ch14_lyra_meditates do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Lyra Meditates
  # scene.message "Lyra sat before the shrine."
  # scene.message "Eyes closed. Breathing slow."
  
  scene.message "\\bLyra\\b: (Xerneas... can you hear me?)"
  scene.message "\\bLyra\\b: (I'm here. At your shrine.)"
  scene.message "\\bLyra\\b: (Please... help me understand.)"
  
  # TODO: Event Sequence - Light
  # scene.message "Silence. Then—"
  
  # scene.message "Warmth flooded through her."
  # scene.message "Golden light surrounded her form."
  
  scene.message "\\bKael\\b: *stepping back* It's working..."
  
  scene.message "\\b\\PN\\b: Lyra?"
  
  # TODO: Event Sequence - Trance
  # scene.message "She didn't respond."
  # scene.message "She was somewhere else entirely."
end

GameData::Cutscene.define :ch14_xerneas_realm do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # TODO: Event Sequence - Crystal Forest
  # scene.message "You stood in a forest of crystal and light."
  # scene.message "Every tree was made of rainbow glass."
  
  # TODO: Event Sequence - Xerneas Appears
  # scene.message "Before you stood Xerneas."
  # scene.message "Majestic beyond words. Beautiful beyond imagining."
  
  scene.message "\\bXerneas\\b: Lyra. Child of the light."
  scene.message "\\bXerneas\\b: You have come at last."
  
  scene.message "\\bLyra\\b: I... I don't know what to do."
  scene.message "\\bLyra\\b: Everyone expects me to be special."
  scene.message "\\bLyra\\b: But I'm just... me."
  
  scene.message "\\bXerneas\\b: 'Just you' is precisely what I chose."
  scene.message "\\bXerneas\\b: Not power. Not ambition."
  scene.message "\\bXerneas\\b: But heart. Compassion. Love."
  
  scene.message "\\bLyra\\b: Love?"
  
  scene.message "\\bXerneas\\b: You love without condition."
  scene.message "\\bXerneas\\b: Your sister. Your grandmother."
  scene.message "\\bXerneas\\b: Your friends. Your Pokémon."
  scene.message "\\bXerneas\\b: Even the cold one... especially him."
  
  scene.message "\\bLyra\\b: *blushing* I don't—"
  
  scene.message "\\bXerneas\\b: *gentle laughter* You cannot hide from me, child."
  scene.message "\\bXerneas\\b: I am Life. I see all bonds."
end

GameData::Cutscene.define :ch14_xerneas_named do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\bXerneas\\b: I have many names."
  scene.message "\\bXerneas\\b: The Life-Giver. The Renewal."
  scene.message "\\bXerneas\\b: But in ages past, I was called Moira."
  
  scene.message "\\bLyra\\b: Moira... you were human?"
  
  scene.message "\\bXerneas\\b: A healer. In the time before time."
  scene.message "\\bXerneas\\b: I could not bear to see suffering."
  scene.message "\\bXerneas\\b: So I became something that could end it."
  
  # TODO: Event Sequence - Mark Flares
  # scene.message "At the name, Lyra's mark flared with rainbow light."
  
  scene.message "\\bXerneas\\b: You bear my blessing, Lyra."
  scene.message "\\bXerneas\\b: The power to nurture. To heal. To restore."
  scene.message "\\bXerneas\\b: But also the strength to protect."
  
  scene.message "\\bLyra\\b: I don't feel strong."
  
  scene.message "\\bXerneas\\b: Strength is not the absence of fear."
  scene.message "\\bXerneas\\b: It is acting despite fear."
  scene.message "\\bXerneas\\b: You have already shown such strength."
end

GameData::Cutscene.define :ch14_seal_knowledge do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bXerneas\\b: The seal upon the Grasping One weakens."
  scene.message "\\bXerneas\\b: My power alone cannot hold it."
  
  scene.message "\\bLyra\\b: What can I do?"
  
  scene.message "\\bXerneas\\b: You must become my vessel."
  scene.message "\\bXerneas\\b: Not completely. Not yet."
  scene.message "\\bXerneas\\b: But enough to channel my power."
  
  scene.message "\\bLyra\\b: Will it hurt?"
  
  scene.message "\\bXerneas\\b: Change always hurts."
  scene.message "\\bXerneas\\b: But you will not face it alone."
  scene.message "\\bXerneas\\b: Your friends stand with you."
  
  scene.message "\\bLyra\\b: And... after? When this is over?"
  
  scene.message "\\bXerneas\\b: That depends on your choices."
  scene.message "\\bXerneas\\b: I will not force anything upon you."
  scene.message "\\bXerneas\\b: Unlike others... I ask. Not demand."
  
  scene.message "\\bLyra\\b: Then... I accept."
  scene.message "\\bLyra\\b: Teach me. Help me protect them."
  
  scene.message "\\bXerneas\\b: *smiling* Well said, child."
end

GameData::Cutscene.define :ch14_power_transfer do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  scene.camera_flash 30
  
  # TODO: Event Sequence - Power Transfer
  # scene.message "Xerneas touched its horn to Lyra's forehead."
  # scene.message "Light exploded between them."
  
  scene.message "\\bLyra\\b: (It's... beautiful...)"
  scene.message "\\bLyra\\b: (I can feel everything...)"
  scene.message "\\bLyra\\b: (Every plant. Every creature. Every heartbeat.)"
  
  # TODO: Event Sequence - Knowledge
  # scene.message "Knowledge flooded into her."
  # scene.message "Ancient techniques. Forgotten powers."
  # scene.message "The history of the Guardians."
  
  scene.message "\\bXerneas\\b: This is but a fraction."
  scene.message "\\bXerneas\\b: More will come as you grow."
  scene.message "\\bXerneas\\b: Now... return to your friends."
  scene.message "\\bXerneas\\b: The seal needs strengthening."
  
  scene.message "\\bLyra\\b: Will I see you again?"
  
  scene.message "\\bXerneas\\b: I am always with you."
  scene.message "\\bXerneas\\b: In every flower. Every sunrise."
  scene.message "\\bXerneas\\b: Every act of kindness."
  scene.message "\\bXerneas\\b: We are one now, Lyra."
end

GameData::Cutscene.define :ch14_lyra_awakens do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Awakening
  # scene.message "Lyra opened her eyes."
  # scene.message "The world looked different."
  # scene.message "More vibrant. More alive."
  
  scene.message "\\bKael\\b: Lyra! Are you okay?"
  
  scene.message "\\bLyra\\b: *smiling* Better than okay."
  scene.message "\\bLyra\\b: I understand now."
  
  scene.message "\\b\\PN\\b: What happened? You were glowing!"
  
  scene.message "\\bLyra\\b: Xerneas spoke to me."
  scene.message "\\bLyra\\b: She told me... everything."
  
  scene.message "\\bKael\\b: She?"
  
  scene.message "\\bLyra\\b: Xerneas was once a healer named Moira."
  scene.message "\\bLyra\\b: She became a Guardian to save the world."
  
  # TODO: Event Sequence - Flowers Bloom
  # scene.message "Lyra's mark glowed with soft rainbow light."
  # scene.message "Flowers bloomed around her in a perfect circle."
  
  scene.message "\\b\\PN\\b: That's... incredible."
  
  scene.message "\\bKael\\b: The first confirmation."
  scene.message "\\bKael\\b: The Guardians really were human."
end

GameData::Cutscene.define :ch14_seal_strengthened do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  scene.message "\\bLyra\\b: I know what to do now."
  scene.message "\\bLyra\\b: Stand back."
  
  # TODO: Event Sequence - Shrine Approach
  # scene.message "She approached the shrine."
  # scene.message "Her hands glowed with golden light."
  
  scene.message "\\bLyra\\b: (Just like Xerneas showed me...)"
  
  # TODO: Event Sequence - Contact
  # scene.message "She pressed her palms against the crystal."
  # scene.message "Light erupted from the contact point."
  
  # TODO: Event Sequence - Restoration
  # scene.message "The shrine hummed with renewed energy."
  # scene.message "Cracks sealed. Faded runes blazed bright."
  
  scene.message "\\bKael\\b: *reading the energy* The seal is strengthening!"
  scene.message "\\bKael\\b: It's working!"
  
  scene.message "\\b\\PN\\b: Keep going, Lyra!"
  
  # TODO: Event Sequence - Stabilized
  # scene.message "She poured more power into the shrine."
  # scene.message "Until finally, the glow stabilized."
  # scene.message "The seal was reinforced."
end

GameData::Cutscene.define :ch14_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Collapse
  # scene.message "Lyra stumbled back, exhausted."
  # scene.message "Kael caught her before she fell."
  
  scene.message "\\bKael\\b: Easy. I've got you."
  
  scene.message "\\bLyra\\b: *weakly smiling* My hero."
  
  scene.message "\\bKael\\b: *quickly* Don't push yourself."
  scene.message "\\bKael\\b: That took a lot out of you."
  
  scene.message "\\b\\PN\\b: Did it work?"
  
  scene.message "\\bKael\\b: *nodding* The seal is stronger than before."
  scene.message "\\bKael\\b: Not permanent, but it buys us time."
  
  scene.message "\\bLyra\\b: Three seals left..."
  scene.message "\\bLyra\\b: We need to strengthen all of them."
  
  scene.message "\\b\\PN\\b: And find the last one."
  scene.message "\\b\\PN\\b: 'The place of falling stars.'"
  
  scene.message "\\bKael\\b: First, rest."
  scene.message "\\bKael\\b: We can't save the world if we collapse."
end

GameData::Cutscene.define :ch14_return_journey do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Return Journey
  # scene.message "You traveled back toward civilization."
  # scene.message "Lyra insisted on stopping at her grandmother's farm."
  
  scene.message "\\bLyra\\b: I need to tell her what happened."
  scene.message "\\bLyra\\b: She knew about Xerneas all along..."
  
  scene.message "\\bKael\\b: Secrets kept for your protection."
  scene.message "\\bKael\\b: I understand that, at least."
  
  scene.message "\\b\\PN\\b: Do you think she knows more?"
  
  scene.message "\\bLyra\\b: Maybe."
  scene.message "\\bLyra\\b: Our family has 'served the Life Guardian for generations.'"
  scene.message "\\bLyra\\b: There might be records. Histories."
  
  scene.message "\\bKael\\b: Worth investigating."
  
  # TODO: Event Sequence - Farm Sight
  # scene.message "The farm appeared on the horizon."
  # scene.message "Smoke rose from the chimney."
  # scene.message "A welcoming sight after days in the wild."
end

GameData::Cutscene.define :ch14_return_to_farm do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Arrival at Farm
  # scene.message "You traveled back to Sunrise Farm."
  # scene.message "Lyra wanted to check on her grandmother."
  
  scene.message "\\bLyra\\b: Grandma! We're back!"
  scene.message "\\bGrandmother\\b: Lyra! And your friends too."
  
  scene.message "\\bGrandmother\\b: *looking at you carefully*"
  scene.message "\\bGrandmother\\b: Something has changed in you three."
  
  scene.message "\\b\\PN\\b: We've been through a lot."
  
  scene.message "\\bGrandmother\\b: I can see that."
  scene.message "\\bGrandmother\\b: Come inside. We need to talk."
end

GameData::Cutscene.define :ch14_grandmother_truth do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bGrandmother\\b: Lyra, dear... it's time you knew the truth."
  scene.message "\\bLyra\\b: I already know, Grandma."
  scene.message "\\bLyra\\b: Xerneas told me everything."
  
  scene.message "\\bGrandmother\\b: *tears in her eyes* You spoke with her?"
  
  scene.message "\\bLyra\\b: She chose me. Before I was born."
  scene.message "\\bLyra\\b: Our family has always served her."
  
  scene.message "\\bGrandmother\\b: Yes. Yes, we have."
  
  # TODO: Event Sequence - Heirloom
  # scene.message "The old woman brought out an ancient heirloom."
  # scene.message "It glowed brightly near Lyra."
  
  scene.message "\\bGrandmother\\b: This was passed down through generations."
  scene.message "\\bGrandmother\\b: A fragment of Xerneas's power."
  scene.message "\\bGrandmother\\b: Now it belongs to you."
  
  scene.message "\\bLyra\\b: *accepting it* I'll protect it. And her."
  
  scene.message "\\bGrandmother\\b: I know you will, child."
  scene.message "\\bGrandmother\\b: I always knew."
end

GameData::Cutscene.define :ch14_lyra_destiny do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bLyra\\b: Grandma... what about my friends?"
  scene.message "\\bLyra\\b: Their Guardians?"
  
  scene.message "\\bGrandmother\\b: That... I do not know."
  scene.message "\\bGrandmother\\b: But I suspect they'll find out soon enough."
  
  scene.message "\\bKael\\b: Yveltal. The death bird."
  scene.message "\\bKael\\b: It's already spoken to me."
  
  scene.message "\\bGrandmother\\b: *concerned* Be careful with that one."
  scene.message "\\bGrandmother\\b: Death is necessary, but dangerous."
  scene.message "\\bGrandmother\\b: It can consume those who wield it."
  
  scene.message "\\bKael\\b: I know."
  scene.message "\\bKael\\b: I won't let it control me."
  
  scene.message "\\b\\PN\\b: And Zacian? The Sword?"
  
  scene.message "\\bGrandmother\\b: The warrior's path."
  scene.message "\\bGrandmother\\b: You will face trials of courage."
  scene.message "\\bGrandmother\\b: But you will not face them alone."
  
  # TODO: Event Sequence - Grandmother looks
  # scene.message "She looked at all three of you."
  
  scene.message "\\bGrandmother\\b: Together, you are stronger than any enemy."
  scene.message "\\bGrandmother\\b: Remember that."
end

#===============================================================================
# INTERLUDE: Chapter 14.5 - Lyra's Vision (Lyra Perspective Chapter)
# Full playable chapter from Lyra's POV during her Xerneas experience
#===============================================================================

GameData::Cutscene.define :ch14_5_intro do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\i[INTERLUDE: LYRA'S VISION]"
  scene.message "\\i[The complete Xerneas experience...]"
  scene.fade_out 10
  scene.fade_in 10
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # TODO: Event Sequence - Vision Start
  # scene.message "The moment your hand touched the seal..."
  # scene.message "The world disappeared."
  
  scene.message "\\bLyra\\b: (Where am I?!)"
  
  # TODO: Event Sequence - Light and Fear
  # scene.message "Light everywhere. Golden and warm."
  # scene.message "Like being wrapped in sunshine."
  
  # scene.message "But also terrifying."
  # scene.message "Because you were completely alone."
end

GameData::Cutscene.define :ch14_5_crystal_forest do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  # TODO: Event Sequence - Vision Forest
  # scene.message "When the light faded..."
  # scene.message "You stood in a forest unlike any you'd seen."
  
  # TODO: Event Sequence - Crystal Trees
  # scene.message "Trees made of crystal."
  # scene.message "Leaves that sang when the wind touched them."
  # scene.message "Flowers that glowed with their own inner light."
  
  scene.message "\\bLyra\\b: This is... beautiful."
  
  # TODO: Event Sequence - Walking on Light
  # scene.message "Your footsteps made no sound."
  # scene.message "But you weren't walking on solid ground."
  # scene.message "You were walking on light itself."
  
  scene.message "\\bLyra\\b: Is this heaven?"
  
  scene.message "\\bVoice\\b: Not quite, child."
  scene.message "\\bVoice\\b: But close."
end

GameData::Cutscene.define :ch14_5_xerneas_appears do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  # TODO: Event Sequence - Xerneas Emerges
  # scene.message "She emerged from between the crystal trees."
  # scene.message "Xerneas. The Life Pokémon."
  
  # TODO: Event Sequence - Xerneas Description
  # scene.message "More beautiful than any legend described."
  # scene.message "Her antlers blazed with every color imaginable."
  # scene.message "Her eyes held millennia of wisdom."
  
  scene.message "\\bLyra\\b: *gasping* You're..."
  
  scene.message "\\bXerneas\\b: I have many names."
  scene.message "\\bXerneas\\b: To some, I am the Life-Giver."
  scene.message "\\bXerneas\\b: To others, the Eternal Fawn."
  scene.message "\\bXerneas\\b: But once... I was Moira."
  
  scene.message "\\bLyra\\b: Moira...?"
  
  scene.message "\\bXerneas\\b: A human woman. Like you."
  scene.message "\\bXerneas\\b: Come. Let me show you."
end

GameData::Cutscene.define :ch14_5_moiras_past do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.message "\\i[VISION - Three Thousand Years Ago]"
  
  # TODO: Event Sequence - Village Flashback
  # scene.message "You saw a village."
  # scene.message "Small. Peaceful. Full of life."
  # scene.message "And in its center, a young woman."
  
  scene.message "\\bMoira\\b: There now. You'll be fine."
  
  # TODO: Event Sequence - Healing
  # scene.message "She was healing a child."
  # scene.message "Not with medicine, but with touch."
  # scene.message "Light flowed from her hands."
  
  scene.message "\\bMoira\\b: The fever's broken."
  scene.message "\\bMoira\\b: Keep her warm tonight."
  
  scene.message "\\bMother\\b: Thank you, Moira!"
  scene.message "\\bMother\\b: You're a gift from Arceus!"
  
  scene.message "\\bMoira\\b: *sadly* I only do what I can."
  scene.message "\\bMoira\\b: It's never enough."
end

GameData::Cutscene.define :ch14_5_moiras_grief do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Plague
  # scene.message "But the village was dying."
  # scene.message "A plague swept through the land."
  # scene.message "No amount of healing could stop it."
  
  scene.message "\\bMoira\\b: *surrounded by sick* I can't... I can't save them all..."
  
  # TODO: Event Sequence - Death
  # scene.message "Bodies piled in the streets."
  # scene.message "Children. Elders. Friends."
  # scene.message "Everyone she loved."
  
  scene.message "\\bMoira\\b: There has to be a way!"
  scene.message "\\bMoira\\b: There HAS to be!"
  
  # TODO: Event Sequence - Searching
  # scene.message "She searched for answers."
  # scene.message "In ancient texts. In forgotten temples."
  # scene.message "Until finally... she found one."
end

GameData::Cutscene.define :ch14_5_the_transformation do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Sacred Mountain
  # scene.message "Atop a sacred mountain..."
  # scene.message "Moira made her choice."
  
  scene.message "\\bMoira\\b: If my human body cannot save them..."
  scene.message "\\bMoira\\b: Then I will become something that can."
  
  # TODO: Event Sequence - Transformation Ritual
  # scene.message "She spoke the ancient words."
  # scene.message "Drew the forbidden symbols."
  # scene.message "And gave up her humanity."
  
  # TODO: Event Sequence - Light Consumes
  # scene.message "Light consumed her."
  # scene.message "When it faded..."
  # scene.message "Moira was gone."
  
  # TODO: Event Sequence - Xerneas Form
  # scene.message "In her place stood Xerneas."
  # scene.message "Life itself, given form."
  
  scene.message "\\bXerneas\\b: (What have I done...?)"
  scene.message "\\bXerneas\\b: (I am no longer... me.)"
  scene.message "\\bXerneas\\b: (But I can save them now.)"
end

GameData::Cutscene.define :ch14_5_healing_the_world do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  # TODO: Event Sequence - Descent
  # scene.message "Xerneas descended from the mountain."
  # scene.message "And everywhere she walked..."
  # scene.message "Life returned."
  
  # TODO: Event Sequence - Restoration of World
  # scene.message "The plague withered."
  # scene.message "Plants grew where nothing had grown."
  # scene.message "The dying rose from their beds."
  
  scene.message "\\bVillager\\b: A miracle!"
  scene.message "\\bVillager\\b: The gods have sent us a savior!"
  
  scene.message "\\bXerneas\\b: (They don't recognize me.)"
  scene.message "\\bXerneas\\b: (Moira is gone forever.)"
  scene.message "\\bXerneas\\b: (But they will live.)"
  scene.message "\\bXerneas\\b: (That is enough.)"
  
  # TODO: Event Sequence - Guardian of Life
  # scene.message "And so Xerneas became guardian of life."
  # scene.message "Wandering the world."
  # scene.message "Healing. Nurturing. Renewing."
  # scene.message "For three thousand years."
end

GameData::Cutscene.define :ch14_5_back_to_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.message "\\i[PRESENT - The Crystal Forest]"
  
  # TODO: Event Sequence - Present Return
  # scene.message "Tears streamed down your face."
  # scene.message "You'd felt it all."
  # scene.message "Moira's love. Her sacrifice. Her loneliness."
  
  scene.message "\\bLyra\\b: You gave up everything..."
  scene.message "\\bLyra\\b: For people who didn't even know you..."
  
  scene.message "\\bXerneas\\b: I gave up what I was."
  scene.message "\\bXerneas\\b: But I gained something greater."
  scene.message "\\bXerneas\\b: Purpose. Connection. Eternity."
  
  scene.message "\\bLyra\\b: Don't you ever regret it?"
  
  scene.message "\\bXerneas\\b: *gentle smile* Every moment."
  scene.message "\\bXerneas\\b: And yet... I would do it again."
  scene.message "\\bXerneas\\b: That is what love means, child."
end

GameData::Cutscene.define :ch14_5_why_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\bLyra\\b: Why me?"
  scene.message "\\bLyra\\b: I'm nothing special."
  scene.message "\\bLyra\\b: Just a farm girl who talks to her Pokémon too much."
  
  scene.message "\\bXerneas\\b: *laughing* That is precisely why."
  
  scene.message "\\bLyra\\b: What?"
  
  scene.message "\\bXerneas\\b: I chose you because you love without reservation."
  scene.message "\\bXerneas\\b: Because you see beauty where others see nothing."
  scene.message "\\bXerneas\\b: Because your heart is open. Always."
  
  scene.message "\\bLyra\\b: That... that's not power."
  
  scene.message "\\bXerneas\\b: It is the only power that matters."
  scene.message "\\bXerneas\\b: Warriors can destroy."
  scene.message "\\bXerneas\\b: Scholars can understand."
  scene.message "\\bXerneas\\b: But only love can heal."
end

GameData::Cutscene.define :ch14_5_the_bond do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\bXerneas\\b: Do you understand now?"
  scene.message "\\bXerneas\\b: What I am asking of you?"
  
  scene.message "\\bLyra\\b: I... I think so."
  scene.message "\\bLyra\\b: You want me to carry your power."
  scene.message "\\bLyra\\b: To help seal away the darkness."
  
  scene.message "\\bXerneas\\b: More than that."
  scene.message "\\bXerneas\\b: I am offering you a piece of myself."
  scene.message "\\bXerneas\\b: My memories. My strength. My burdens."
  
  scene.message "\\bLyra\\b: And if I accept...?"
  
  scene.message "\\bXerneas\\b: You will be changed. Forever."
  scene.message "\\bXerneas\\b: You will feel every life around you."
  scene.message "\\bXerneas\\b: Every death will wound you."
  scene.message "\\bXerneas\\b: But every birth will bring you joy."
  
  scene.message "\\bLyra\\b: That sounds... overwhelming."
  
  scene.message "\\bXerneas\\b: It is."
  scene.message "\\bXerneas\\b: But you will never be alone in bearing it."
end

GameData::Cutscene.define :ch14_5_seeing_friends do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Seeing Friends
  # scene.message "Xerneas waved her horn."
  # scene.message "An image appeared in the crystal trees."
  
  # scene.message "\\PN and Kael, watching over your body."
  # scene.message "Worried. Protective. Waiting."
  
  scene.message "\\b\\PN\\b (image): Come on, Lyra... wake up..."
  scene.message "\\bKael\\b (image): She's still breathing."
  scene.message "\\bKael\\b (image): Whatever's happening, we wait."
  
  scene.message "\\bLyra\\b: They're... they're waiting for me."
  
  scene.message "\\bXerneas\\b: They love you too."
  scene.message "\\bXerneas\\b: Even the cold one."
  
  scene.message "\\bLyra\\b: *blushing* Kael's not cold."
  scene.message "\\bLyra\\b: He's just... hurt."
  
  scene.message "\\bXerneas\\b: Yes. And you see that."
  scene.message "\\bXerneas\\b: That is your gift, Lyra."
  scene.message "\\bXerneas\\b: You see through pain to the person beneath."
end

GameData::Cutscene.define :ch14_5_thinking_of_elena do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bLyra\\b: What about my sister?"
  scene.message "\\bLyra\\b: Elena? Is she marked too?"
  
  # TODO: Event Sequence - Sorrow
  # scene.message "Xerneas's expression shifted."
  # scene.message "Something like sorrow crossed her face."
  
  scene.message "\\bXerneas\\b: Your sister walks a difficult path."
  scene.message "\\bXerneas\\b: One that will test you both."
  
  scene.message "\\bLyra\\b: What do you mean?"
  
  scene.message "\\bXerneas\\b: I cannot see all futures, child."
  scene.message "\\bXerneas\\b: But I sense... sacrifice ahead."
  scene.message "\\bXerneas\\b: For those you love."
  
  scene.message "\\bLyra\\b: *worried* Elena...?"
  
  scene.message "\\bXerneas\\b: Do not fear what may come."
  scene.message "\\bXerneas\\b: Fear weakens. Love strengthens."
  scene.message "\\bXerneas\\b: Remember that. Always."
  
  # TODO: Event Sequence - Chill
  # scene.message "A chill ran through you."
  # scene.message "But you pushed it aside."
  # scene.message "There would be time for worry later."
end

GameData::Cutscene.define :ch14_5_willow_memory do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: What about Willow?"
  scene.message "\\bLyra\\b: My Eevee?"
  
  scene.message "\\bXerneas\\b: Ah. The little one."
  scene.message "\\bXerneas\\b: She found you for a reason."
  
  # TODO: Event Sequence - Willow Memory
  # scene.message "An image appeared."
  # scene.message "A tiny Eevee, alone in the forest."
  # scene.message "Drawn toward Sunrise Farm by something she couldn't explain."
  
  scene.message "\\bBaby Willow\\b: Vee...?"
  
  # TODO: Event Sequence - Young Lyra
  # scene.message "And a young girl, finding her in the garden."
  # scene.message "Picking her up. Holding her close."
  
  scene.message "\\bYoung Lyra\\b: Don't worry! I'll take care of you!"
  
  scene.message "\\bXerneas\\b: Willow felt my mark on you."
  scene.message "\\bXerneas\\b: Even then. Even before you knew."
  scene.message "\\bXerneas\\b: She chose you because you were already mine."
  
  scene.message "\\bLyra\\b: *tears in eyes* All this time..."
  scene.message "\\bLyra\\b: We were connected..."
end

GameData::Cutscene.define :ch14_5_the_power_transfer do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  scene.message "\\bXerneas\\b: Are you ready, child?"
  
  scene.message "\\bLyra\\b: ...Yes."
  scene.message "\\bLyra\\b: I'll protect them. All of them."
  scene.message "\\bLyra\\b: Kael. \\PN. Willow. Elena."
  scene.message "\\bLyra\\b: Even the ones I haven't met yet."
  
  scene.message "\\bXerneas\\b: That is the spirit of a guardian."
  
  # TODO: Event Sequence - Transfer
  # scene.message "She lowered her magnificent head."
  # scene.message "Her horn touched your forehead."
  
  # scene.message "And the world exploded into light."
  
  scene.camera_flash 40
  scene.camera_shake 10, 30
  
  scene.message "\\bLyra\\b: (It's... it's so much...!)"
  scene.message "\\bLyra\\b: (I can feel everything...!)"
  scene.message "\\bLyra\\b: (Every blade of grass... every heartbeat...)"
  scene.message "\\bLyra\\b: (The whole WORLD...!)"
end

GameData::Cutscene.define :ch14_5_overwhelmed do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Overwhelmed
  # scene.message "It was too much."
  # scene.message "You couldn't breathe."
  # scene.message "Couldn't think."
  
  # scene.message "Life. Death. Birth. Decay."
  # scene.message "Every creature. Every plant."
  # scene.message "All connected. All pulsing."
  # scene.message "All ALIVE."
  
  scene.message "\\bLyra\\b: (I can't... I can't hold it...!)"
  
  scene.message "\\bXerneas\\b (in your mind): Breathe, child."
  scene.message "\\bXerneas\\b (in your mind): Do not try to hold it all."
  scene.message "\\bXerneas\\b (in your mind): Let it flow through you."
  scene.message "\\bXerneas\\b (in your mind): Like water through a stream."
  
  # TODO: Event Sequence - Acceptance
  # scene.message "You tried."
  # scene.message "Stopped grasping."
  # scene.message "Started accepting."
  
  # scene.message "And slowly... it became bearable."
end

GameData::Cutscene.define :ch14_5_finding_peace do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  # TODO: Event Sequence - Stream
  # scene.message "The torrent became a river."
  # scene.message "The river became a stream."
  # scene.message "The stream became a gentle warmth."
  
  scene.message "\\bLyra\\b: (I... I can feel it now...)"
  scene.message "\\bLyra\\b: (Without drowning in it...)"
  
  scene.message "\\bXerneas\\b: You learn quickly."
  scene.message "\\bXerneas\\b: Most take days. You took moments."
  
  scene.message "\\bLyra\\b: Is this... is this how you feel? Always?"
  
  scene.message "\\bXerneas\\b: Always."
  scene.message "\\bXerneas\\b: For three thousand years."
  scene.message "\\bXerneas\\b: Every joy. Every sorrow. Every life."
  
  scene.message "\\bLyra\\b: How do you bear it?"
  
  scene.message "\\bXerneas\\b: *gently* Because I must."
  scene.message "\\bXerneas\\b: Because no one else will."
  scene.message "\\bXerneas\\b: And now... so will you."
end

GameData::Cutscene.define :ch14_5_final_wisdom do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bXerneas\\b: Before you go..."
  scene.message "\\bXerneas\\b: A warning."
  
  scene.message "\\bLyra\\b: What is it?"
  
  scene.message "\\bXerneas\\b: The power I've given you is not for destruction."
  scene.message "\\bXerneas\\b: It is for nurturing. Healing. Protecting."
  scene.message "\\bXerneas\\b: If you use it in anger..."
  scene.message "\\bXerneas\\b: It will consume you."
  
  scene.message "\\bLyra\\b: I... I won't. I promise."
  
  scene.message "\\bXerneas\\b: Good."
  scene.message "\\bXerneas\\b: And remember—your greatest strength is not power."
  scene.message "\\bXerneas\\b: It is your capacity for love."
  scene.message "\\bXerneas\\b: Do not lose that. Ever."
  
  scene.message "\\bLyra\\b: I won't, Moira. I promise."
  
  # TODO: Event Sequence - Smile
  # scene.message "Xerneas smiled."
  # scene.message "The first time you'd seen her truly smile."
  
  scene.message "\\bXerneas\\b: No one has called me that in a very long time."
  scene.message "\\bXerneas\\b: Thank you, child."
end

GameData::Cutscene.define :ch14_5_returning do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  scene.fade_out 20
  
  scene.message "\\bXerneas\\b: Now... return to your friends."
  scene.message "\\bXerneas\\b: They are worried about you."
  
  scene.message "\\bLyra\\b: Will I see you again?"
  
  scene.message "\\bXerneas\\b: Whenever you need me."
  scene.message "\\bXerneas\\b: In dreams. In visions."
  scene.message "\\bXerneas\\b: And when the final battle comes..."
  scene.message "\\bXerneas\\b: I will be there."
  
  # TODO: Event Sequence - Returning
  # scene.message "The crystal forest began to fade."
  # scene.message "Xerneas's voice grew distant."
  
  scene.message "\\bXerneas\\b: Remember, Lyra..."
  scene.message "\\bXerneas\\b: Love is stronger than death."
  scene.message "\\bXerneas\\b: Never forget that."
  
  # TODO: Event Sequence - Fading
  # scene.message "The light swallowed everything."
  # scene.message "And you began to fall..."
  # scene.message "Back toward the waking world..."
end

GameData::Cutscene.define :ch14_5_waking do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_in 20
  
  # TODO: Event Sequence - Location
  scene.message "\\i[PRESENT - The Temple]"
  
  scene.message "\\b\\PN\\b: Lyra?! Lyra, can you hear me?!"
  scene.message "\\bKael\\b: She's moving! She's waking up!"
  
  # TODO: Event Sequence - Waking Up
  # scene.message "Your eyes fluttered open."
  # scene.message "Two worried faces stared down at you."
  
  scene.message "\\bLyra\\b: *weakly* Hey..."
  
  scene.message "\\b\\PN\\b: Oh thank Arceus!"
  
  scene.message "\\bKael\\b: You were out for ten minutes."
  scene.message "\\bKael\\b: We couldn't wake you. Couldn't move you."
  scene.message "\\bKael\\b: What happened?"
  
  scene.message "\\bLyra\\b: *sitting up slowly* I met her."
  scene.message "\\bLyra\\b: Xerneas. Moira. The Life-Giver."
  scene.message "\\bLyra\\b: And she gave me... everything."
  
  # TODO: Event Sequence - Willow
  # scene.message "Willow jumped into your lap."
  scene.message "\\bWillow\\b: VEE! Vee vee!"
  scene.message "\\bLyra\\b: I missed you too, girl."
end

GameData::Cutscene.define :ch14_5_new_senses do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Auras
  # scene.message "The world looked different now."
  # scene.message "You could see... auras?"
  # scene.message "Around every living thing."
  
  # scene.message "Kael's was deep crimson, threaded with gold."
  # scene.message "Pain and hope, intertwined."
  
  # scene.message "\\PN's was brilliant silver-blue."
  # scene.message "Courage and determination."
  
  # scene.message "Willow's was rainbow-bright."
  # scene.message "Pure love. Unconditional."
  
  scene.message "\\bLyra\\b: (I can see... I can SEE...)"
  
  scene.message "\\bKael\\b: Lyra? You okay?"
  scene.message "\\bKael\\b: You're staring at us weird."
  
  scene.message "\\bLyra\\b: *laughing* Sorry."
  scene.message "\\bLyra\\b: I'm just... seeing things differently now."
  scene.message "\\bLyra\\b: Beautiful things."
end

GameData::Cutscene.define :ch14_5_ending do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.fade_out 20
  
  # TODO: Event Sequence - Vision End
  scene.message "\\i[Lyra's Vision - End]"
  scene.message "\\i[She had glimpsed eternity.]"
  scene.message "\\i[And found it full of love.]"
  
  scene.fade_in 20
  scene.message "\\i[Return to main story...]"
end

#===============================================================================
# Chapter 15: The Trail Goes Cold - Mystery Deepens
#===============================================================================

GameData::Cutscene.define :ch15_leaving_farm do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Leaving Farm
  # scene.message "You departed Sunrise Farm with new purpose."
  # scene.message "The second seal was strengthened."
  # scene.message "But three remained."
  
  scene.message "\\bLyra\\b: *waving* Bye, Grandma! I'll be back soon!"
  
  scene.message "\\bGrandmother\\b: Be safe, child!"
  scene.message "\\bGrandmother\\b: All of you—be safe!"
  
  scene.message "\\bKael\\b: The Abyssal Caves are east."
  scene.message "\\bKael\\b: That's likely where my Guardian waits."
  
  scene.message "\\b\\PN\\b: And then the last seal..."
  scene.message "\\b\\PN\\b: 'The place of falling stars.'"
  
  scene.message "\\bLyra\\b: We'll figure it out."
  scene.message "\\bLyra\\b: We always do."
  
  # TODO: Event Sequence - The Road
  # scene.message "The road stretched before you."
  # scene.message "Long. Uncertain. Necessary."
end

GameData::Cutscene.define :ch15_cult_trail do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Cult Trail
  # scene.message "You tracked the cult's movements across the region."
  # scene.message "Every lead seemed to go cold."
  
  scene.message "\\bKael\\b: They're being careful. Covering their tracks."
  scene.message "\\bKael\\b: Whoever's leading them isn't stupid."
  
  scene.message "\\bLyra\\b: What do we do?"
  
  scene.message "\\b\\PN\\b: We keep looking."
  scene.message "\\b\\PN\\b: They have to slip up eventually."
  
  scene.message "\\bKael\\b: Or we could try a different approach..."
  scene.message "\\bKael\\b: Instead of chasing them..."
  scene.message "\\bKael\\b: We figure out what they're after next."
end

GameData::Cutscene.define :ch15_strategic_planning do |scene|
  scene.play_bgm 'Pokemon DPPT - Emotion'
  
  # TODO: Event Sequence - Strategic Planning
  # scene.message "You spread the stolen tablets on a table."
  # scene.message "A town's library provided shelter and study space."
  
  scene.message "\\bKael\\b: The tablets show seal locations."
  scene.message "\\bKael\\b: The cult will target them."
  
  scene.message "\\b\\PN\\b: So we get there first."
  
  scene.message "\\bLyra\\b: But we can't guard all of them at once."
  
  scene.message "\\bKael\\b: No. But we can strengthen them."
  scene.message "\\bKael\\b: Like Lyra did at the forest shrine."
  
  scene.message "\\b\\PN\\b: Each of us strengthens the seal matching our Guardian?"
  
  scene.message "\\bKael\\b: Logical."
  scene.message "\\bKael\\b: Lyra's done. I'm next."
  scene.message "\\bKael\\b: The Abyssal Caves."
  
  scene.message "\\bLyra\\b: *shuddering* Underground caves..."
  scene.message "\\bLyra\\b: I'm not a fan of dark places."
  
  scene.message "\\bKael\\b: Good thing I am."
end

GameData::Cutscene.define :ch15_library_research do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  # TODO: Event Sequence - Research
  # scene.message "You spent the day researching."
  # scene.message "Ancient texts. Regional histories. Myth collections."
  
  scene.message "\\bLyra\\b: Listen to this!"
  scene.message "\\bLyra\\b: 'The Place of Falling Stars.'"
  scene.message "\\bLyra\\b: 'Where heaven's tears struck the earth.'"
  
  scene.message "\\bKael\\b: Meteor impacts."
  scene.message "\\bKael\\b: There are several craters in this region."
  
  scene.message "\\b\\PN\\b: How do we know which one?"
  
  scene.message "\\bKael\\b: The largest. The oldest."
  scene.message "\\bKael\\b: *checking maps* Starfall Basin."
  scene.message "\\bKael\\b: An ancient impact site to the north."
  
  scene.message "\\bLyra\\b: That's where \\PN's seal is!"
  
  scene.message "\\b\\PN\\b: And where Zacian waits."
  
  scene.message "\\bKael\\b: First the caves. Then the basin."
  scene.message "\\bKael\\b: One step at a time."
end

GameData::Cutscene.define :ch15_encounter_travelers do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Travelers
  # scene.message "On the road, you met other travelers."
  # scene.message "Stories of strange happenings spread everywhere."
  
  scene.message "\\bTraveler\\b: You heard about the earthquakes?"
  scene.message "\\bTraveler\\b: Something's stirring underground."
  
  scene.message "\\bKael\\b: Where?"
  
  scene.message "\\bTraveler\\b: Near the old caves. East of here."
  scene.message "\\bTraveler\\b: People are scared. Pokémon too."
  
  scene.message "\\bLyra\\b: That's where we're headed..."
  
  scene.message "\\bTraveler\\b: Be careful, kids."
  scene.message "\\bTraveler\\b: Whatever's down there... it's angry."
  
  # TODO: Event Sequence - Traveler Leaves
  # scene.message "The traveler moved on."
  
  scene.message "\\b\\PN\\b: The seals weakening causes disturbances."
  
  scene.message "\\bKael\\b: Or the cult is doing something."
  scene.message "\\bKael\\b: Either way, we need to hurry."
end

GameData::Cutscene.define :ch15_training_break do |scene|
  scene.play_bgm 'Pokemon RSE - Battle Frontier'
  
  # TODO: Event Sequence - Training
  # scene.message "You stopped to train."
  # scene.message "Gym challenges provided structure."
  
  scene.message "\\bLyra\\b: The fourth Gym is ahead!"
  scene.message "\\bLyra\\b: Ground-type, I heard."
  
  scene.message "\\bKael\\b: Good. Shadow needs the challenge."
  
  scene.message "\\b\\PN\\b: Plus, badges mean resources."
  scene.message "\\b\\PN\\b: Access to stronger items. Information."
  
  scene.message "\\bLyra\\b: And it's fun!"
  scene.message "\\bLyra\\b: Even with all the world-ending stuff..."
  scene.message "\\bLyra\\b: I still love battling."
  
  scene.message "\\bKael\\b: Hold onto that."
  scene.message "\\bKael\\b: Joy is... important."
  
  scene.message "\\bLyra\\b: *surprised* Kael! That was almost warm!"
  
  scene.message "\\bKael\\b: Don't get used to it."
end

GameData::Cutscene.define :ch15_ragnar_five_badges do |scene|
  scene.play_bgm 'Pokemon XY - Rival Theme'
  
  # TODO: Event Sequence - Ragnar Waiting
  # scene.message "Outside the fourth Gym, a familiar figure was waiting."
  
  scene.message "\\bRagnar\\b: THERE you are!"
  scene.message "\\bRagnar\\b: Took you long enough to get here!"
  
  # TODO: Event Sequence - Badges
  # scene.message "He flashed FIVE badges."
  
  scene.message "\\b\\PN\\b: Five?! You're ahead of me!"
  
  scene.message "\\bRagnar\\b: *grinning* YUP! Finally!"
  scene.message "\\bRagnar\\b: While you've been doing mysterious destiny stuff..."
  scene.message "\\bRagnar\\b: I've been TRAINING!"
  
  scene.message "\\bLyra\\b: He's really enthusiastic, isn't he?"
  
  scene.message "\\bKael\\b: Unfortunately."
  
  scene.message "\\bRagnar\\b: *to Lyra* Hey! You're Lyra, right?"
  scene.message "\\bRagnar\\b: Keep an eye on Broody here!"
  scene.message "\\bRagnar\\b: They need someone cheerful around!"
  
  scene.message "\\bLyra\\b: *laughing* I try!"
  
  scene.message "\\bRagnar\\b: Alright, I'm off to Gym six!"
  scene.message "\\bRagnar\\b: Catch up when you can, \\PN!"
  
  # TODO: Event Sequence - Ragnar Runs
  # scene.message "He ran off with boundless energy."
  # scene.message "That guy never slowed down."
end

GameData::Cutscene.define :ch15_fourth_gym do |scene|
  scene.play_bgm 'Pokemon RSE - Gym'
  
  # TODO: Event Sequence - Gym 4
  # scene.message "The fourth Gym stood in your path."
  # scene.message "A structure built into the earth itself."
  
  scene.message "\\bLyra\\b: You know, even with all the cult stuff..."
  scene.message "\\bLyra\\b: I still love the Gym Challenge."
  
  scene.message "\\bKael\\b: It keeps us sharp."
  
  scene.message "\\b\\PN\\b: Plus, being Champion would give us resources."
  scene.message "\\b\\PN\\b: More power to stop the cult."
  
  scene.message "\\bLyra\\b: I never thought of it that way."
  scene.message "\\bLyra\\b: Battling for justice!"
  
  scene.message "\\bKael\\b: *snorts* Don't get dramatic."
end

GameData::Cutscene.define :ch15_gym4_battle do |scene|
  scene.play_bgm 'Pokemon SwSh - Gym Leader'
  
  # TODO: Event Sequence - Clay Appears
  # scene.message "The Gym Leader awaited."
  # scene.message "A weathered man with earth-stained hands."
  
  scene.message "\\bClay\\b: So you're the marked ones."
  scene.message "\\bClay\\b: Word travels fast."
  
  scene.message "\\b\\PN\\b: You've heard of us?"
  
  scene.message "\\bClay\\b: The League's been buzzing."
  scene.message "\\bClay\\b: Champion Marcus's kid, fighting a cult?"
  scene.message "\\bClay\\b: Makes for good gossip."
  
  scene.message "\\bLyra\\b: We're not doing it for attention."
  
  scene.message "\\bClay\\b: No. You're not."
  scene.message "\\bClay\\b: That's why I'll test you properly."
  scene.message "\\bClay\\b: Show me what the chosen ones can do!"
  
  # TODO: Event Sequence - Battle
  # scene.message "The battle was fierce."
  # scene.message "Ground-types shook the arena."
  # scene.message "But you prevailed."
end

GameData::Cutscene.define :ch15_gym4_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory'
  
  scene.message "\\bClay\\b: *laughing* Not bad! Not bad at all!"
  
  # TODO: Event Sequence - Badge
  # scene.message "He presented the Quake Badge."
  
  scene.message "\\bClay\\b: You've earned this."
  scene.message "\\bClay\\b: And a word of advice..."
  
  scene.message "\\bClay\\b: The caves to the east are dangerous."
  scene.message "\\bClay\\b: Something's stirred them up."
  scene.message "\\bClay\\b: Be careful down there."
  
  scene.message "\\bKael\\b: We will."
  
  scene.message "\\bClay\\b: And kid..."
  scene.message "\\bClay\\b: Your old man was something else."
  scene.message "\\bClay\\b: I think you might be too."
  
  scene.message "\\b\\PN\\b: ...Thank you."

  scene.message "\\bClay\\b: One more thing. Those aren't natural quakes."
  scene.message "Clay pressed the Quake Badge against an old stone set into the arena wall. The same pattern as your marks flickered beneath it."
  scene.message "\\bClay\\b: This Gym was built over one of the old ward-stones. Something below is striking it from the other side."
  scene.message "\\bClay\\b: The badge will turn the maintenance locks in the eastern caves. You'll need them if the main path collapses."
  
  # TODO: Event Sequence - Leaving Gym
  # scene.message "You left the Gym with new resolve."
  # scene.message "And a new badge."
end

GameData::Cutscene.define :ch15_night_camp do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Night Camp
  # scene.message "That night, you camped under the stars."
  # scene.message "The caves loomed on the horizon."
  
  scene.message "\\bLyra\\b: Kael... are you nervous?"
  
  scene.message "\\bKael\\b: About the caves? No."
  
  scene.message "\\bLyra\\b: About meeting your Guardian."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: Yveltal represents death."
  scene.message "\\bKael\\b: What does that make me?"
  
  scene.message "\\b\\PN\\b: Someone who understands endings."
  scene.message "\\b\\PN\\b: That's not evil. It's just... real."
  
  scene.message "\\bKael\\b: Is it?"
  
  scene.message "\\bLyra\\b: Death is part of life."
  scene.message "\\bLyra\\b: Xerneas told me."
  scene.message "\\bLyra\\b: Without endings, there are no beginnings."
  
  scene.message "\\bKael\\b: ...Perhaps."
  
  # TODO: Event Sequence - Kael Thoughts
  # scene.message "He stared at the fire for a long time."
  # scene.message "Lost in thoughts of death and life."
end

GameData::Cutscene.define :ch15_zacian_speaks do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  # TODO: Event Sequence - Zacian Dream
  scene.message "\\i[That night, you dreamed again.]"
  # scene.message "Steel-blue light surrounded you."
  # scene.message "A noble wolf stood before you."
  
  scene.message "\\bZacian\\b: YOUNG WARRIOR."
  scene.message "\\bZacian\\b: YOU GROW STRONGER."
  
  scene.message "\\b\\PN\\b: Are you... Zacian?"
  
  scene.message "\\bZacian\\b: I AM THE WARRIOR."
  scene.message "\\bZacian\\b: GUARDIAN OF VALOR."
  scene.message "\\bZacian\\b: AND YOU ARE MY CHOSEN."
  
  scene.message "\\b\\PN\\b: Why me?"
  
  scene.message "\\bZacian\\b: BECAUSE YOU DO NOT RUN."
  scene.message "\\bZacian\\b: EVEN WHEN AFRAID."
  scene.message "\\bZacian\\b: THAT IS TRUE COURAGE."
  
  scene.message "\\b\\PN\\b: What must I do?"
  
  scene.message "\\bZacian\\b: GROW. LEARN. PROTECT."
  scene.message "\\bZacian\\b: AND WHEN THE TIME COMES..."
  scene.message "\\bZacian\\b: STAND AGAINST THE DARKNESS."
  
  scene.fade_in
  # TODO: Event Sequence - Waking with Purpose
  # scene.message "You woke with a new sense of purpose."
end

GameData::Cutscene.define :ch15_morning_resolve do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Dawn
  # scene.message "Dawn broke cold and clear."
  # scene.message "The Abyssal Caves waited."
  
  scene.message "\\bLyra\\b: How'd you sleep?"
  
  scene.message "\\b\\PN\\b: Zacian spoke to me."
  scene.message "\\b\\PN\\b: Another dream."
  
  scene.message "\\bKael\\b: *alert* What did it say?"
  
  scene.message "\\b\\PN\\b: That I must grow. Learn. Protect."
  scene.message "\\b\\PN\\b: And stand against the darkness."
  
  scene.message "\\bLyra\\b: We all stand together."
  
  scene.message "\\bKael\\b: The Guardians chose well."
  scene.message "\\bKael\\b: We complement each other."
  scene.message "\\bKael\\b: Valor. Life. Death."
  
  scene.message "\\b\\PN\\b: Three aspects of existence."
  
  scene.message "\\bKael\\b: And together..."
  scene.message "\\bKael\\b: We can face anything."
  
  # TODO: Event Sequence - Hope
  # scene.message "It was the most hopeful thing he'd ever said."
end

GameData::Cutscene.define :ch15_approaching_caves do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  # TODO: Event Sequence - Approach Caves
  # scene.message "The cave entrance loomed like a hungry mouth."
  # scene.message "Darkness seeped from within."
  
  scene.message "\\bLyra\\b: It's... really dark in there."
  
  scene.message "\\bKael\\b: I'll lead."
  scene.message "\\bKael\\b: Shadow can see in the dark."
  
  scene.message "\\bShadow\\b: Zor."
  
  scene.message "\\b\\PN\\b: Stay close. Don't get separated."
  
  # TODO: Event Sequence - Entering Darkness
  # scene.message "The three of you entered the darkness."
  # scene.message "Into Yveltal's domain."
  # scene.message "Into Kael's destiny."
  
  scene.message "\\bKael\\b: (This is it.)"
  scene.message "\\bKael\\b: (Whatever's waiting...)"
  scene.message "\\bKael\\b: (I'm ready.)"
  
  # TODO: Event Sequence - Swallowed
  # scene.message "The caves swallowed them whole."
end

GameData::Cutscene.define :ch15_mystery_deepens do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Cave Clues
  # scene.message "Deeper in the caves, you found signs of disturbance."
  # scene.message "Fresh footprints. Discarded supplies."
  
  scene.message "\\bKael\\b: The cult's been here."
  
  scene.message "\\bLyra\\b: Are they still here?"
  
  scene.message "\\bKael\\b: Hard to say."
  scene.message "\\bKael\\b: These tracks are hours old."
  
  scene.message "\\b\\PN\\b: They're looking for the seal too."
  
  scene.message "\\bKael\\b: Then we find it first."
  scene.message "\\bKael\\b: And this time..."
  scene.message "\\bKael\\b: We don't let them take it."
  
  # TODO: Event Sequence - Resolve
  # scene.message "The mystery deepened."
  # scene.message "But so did your resolve."
end

#===============================================================================
# Chapter 16: Bonds Tested - Rival Challenge
#===============================================================================

GameData::Cutscene.define :ch16_cave_depths do |scene|
  scene.play_bgm 'Pokemon RSE - Cave'
  
  # TODO: Event Sequence - Cave Depths
  # scene.message "The Abyssal Caves descended endlessly."
  # scene.message "Darkness pressed from every direction."
  
  scene.message "\\bLyra\\b: *gripping Kael's arm* I really don't like this."
  
  scene.message "\\bKael\\b: Stay close. Shadow's keeping watch."
  
  # TODO: Event Sequence - Shadow Guide
  # scene.message "Shadow's eyes gleamed in the darkness."
  # scene.message "Guiding them through the black."
  
  scene.message "\\b\\PN\\b: Any sign of the seal?"
  
  scene.message "\\bKael\\b: We should be getting close."
  scene.message "\\bKael\\b: The tablets described a chamber of echoes."
  
  # TODO: Event Sequence - Echoes
  # scene.message "As if on cue, their footsteps began to echo."
  # scene.message "Multiplying. Reverberating. Endless."
  
  scene.message "\\bLyra\\b: That's... unsettling."
  
  scene.message "\\bKael\\b: We're on the right track."
end

GameData::Cutscene.define :ch16_kael_feels_yveltal do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Kael Perspective
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "Something stirred in the darkness."
  # scene.message "Not a threat. Something... older."
  
  scene.message "\\bKael\\b: (It's here.)"
  scene.message "\\bKael\\b: (Yveltal. I can feel it.)"
  
  # TODO: Event Sequence - Mark Glows
  # scene.message "His mark began to glow."
  # scene.message "Dark crimson in the absolute black."
  
  scene.message "\\bYveltal's Voice\\b: You approach my domain."
  scene.message "\\bYveltal's Voice\\b: Bearer of shadows."
  
  scene.message "\\bKael\\b: *quietly* I hear you."
  
  scene.message "\\bLyra\\b: Kael? What is it?"
  
  scene.message "\\bKael\\b: Yveltal. It's... reaching out."
  
  scene.message "\\b\\PN\\b: Is it hostile?"
  
  scene.message "\\bKael\\b: No. It's... waiting."
  scene.message "\\bKael\\b: Testing me, I think."
  
  # TODO: Event Sequence - Breathing Darkness
  # scene.message "The darkness seemed to breathe around them."
end

GameData::Cutscene.define :ch16_cave_encounter do |scene|
  scene.play_bgm 'Pokemon RSE - Wild Battle'
  
  # TODO: Event Sequence - Cave Encounter
  # scene.message "Wild Pokémon blocked the path."
  # scene.message "Aggressive. Territorial. Dangerous."
  
  scene.message "\\bLyra\\b: They don't look friendly!"
  
  scene.message "\\bKael\\b: The caves have made them feral."
  scene.message "\\bKael\\b: The weakening seal affects everything here."
  
  scene.message "\\b\\PN\\b: We don't want to hurt them."
  
  scene.message "\\bKael\\b: *stepping forward* Let me."
  
  # TODO: Event Sequence - Kael Command
  # scene.message "His mark flared."
  # scene.message "The wild Pokémon hesitated."
  
  scene.message "\\bKael\\b: *commanding* Stand. Down."
  
  # TODO: Event Sequence - Pokemon Scatter
  # scene.message "Power laced his voice."
  # scene.message "Something ancient. Undeniable."
  
  # scene.message "The Pokémon scattered into the darkness."
  
  scene.message "\\bLyra\\b: How did you do that?"
  
  scene.message "\\bKael\\b: I... don't know."
  scene.message "\\bKael\\b: Yveltal. It's lending me its authority."
end

GameData::Cutscene.define :ch16_seal_chamber do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Seal Chamber
  # scene.message "The chamber opened before them."
  # scene.message "Vast. Dark. Pulsing with power."
  
  # scene.message "In the center stood a black crystal."
  # scene.message "The seal of Yveltal."
  
  scene.message "\\bKael\\b: There it is."
  
  scene.message "\\bLyra\\b: It feels... heavy."
  scene.message "\\bLyra\\b: Like it's weighing on my soul."
  
  scene.message "\\b\\PN\\b: Death's presence."
  
  scene.message "\\bKael\\b: I'll strengthen it."
  scene.message "\\bKael\\b: Like Lyra did."
  
  # TODO: Event Sequence - Kael Approach
  # scene.message "He approached the crystal."
  # scene.message "His reflection stared back—darker. Older."
  
  scene.message "\\bKael\\b: (This is my test.)"
  scene.message "\\bKael\\b: (Face what I am.)"
end

GameData::Cutscene.define :ch16_yveltal_communion do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Yveltal Communion
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "The world fell away."
  # scene.message "Only darkness remained."
  
  # scene.message "And within the darkness... Yveltal."
  
  # scene.message "Wings like shadows. Eyes like dying suns."
  # scene.message "Beautiful. Terrible. Inevitable."
  
  scene.message "\\bYveltal\\b: Kael. Child of endings."
  
  scene.message "\\bKael\\b: Why choose me?"
  
  scene.message "\\bYveltal\\b: Because you understand."
  scene.message "\\bYveltal\\b: Loss. Pain. The necessity of endings."
  
  scene.message "\\bKael\\b: I hate what I understand."
  
  scene.message "\\bYveltal\\b: Yes. That is why you are worthy."
  scene.message "\\bYveltal\\b: One who wields death must respect it."
  scene.message "\\bYveltal\\b: Fear it. Never use it lightly."
  
  scene.message "\\bKael\\b: And Mira?"
  
  scene.message "\\bYveltal\\b: She waits beyond."
  scene.message "\\bYveltal\\b: At peace. Proud of her brother."
  
  scene.message "\\bKael\\b: *voice breaking* You're lying."
  
  scene.message "\\bYveltal\\b: Death is the only truth."
end

GameData::Cutscene.define :ch16_kael_accepts do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\bYveltal\\b: Will you accept my power?"
  scene.message "\\bYveltal\\b: Not to destroy. But to protect."
  scene.message "\\bYveltal\\b: To end that which must end."
  
  scene.message "\\bKael\\b: And if I refuse?"
  
  scene.message "\\bYveltal\\b: Then the seal weakens."
  scene.message "\\bYveltal\\b: And those you care for die."
  scene.message "\\bYveltal\\b: Not by my hand. By Hoopa's."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I accept."
  scene.message "\\bKael\\b: But I will never become a monster."
  
  scene.message "\\bYveltal\\b: *almost smiling* That is the vow I needed."
  scene.message "\\bYveltal\\b: The others... they embraced death."
  scene.message "\\bYveltal\\b: You will master it."
  
  scene.camera_flash 30
  
  # TODO: Event Sequence - Power Flood
  # scene.message "Power flooded through Kael."
  # scene.message "Dark. Cold. Final."
  # scene.message "But not evil."
end

GameData::Cutscene.define :ch16_seal_strengthened do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Seal Strengthened
  # scene.message "Kael opened his eyes."
  # scene.message "The crystal pulsed with renewed energy."
  
  scene.message "\\bLyra\\b: Kael!"
  # scene.message "She rushed to his side."
  
  scene.message "\\bKael\\b: I'm okay."
  scene.message "\\bKael\\b: It's done."
  
  scene.message "\\b\\PN\\b: The seal?"
  
  scene.message "\\bKael\\b: Strengthened."
  scene.message "\\bKael\\b: Like yours, Lyra."
  
  scene.message "\\bLyra\\b: What did Yveltal show you?"
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: Mira is at peace."
  
  # TODO: Event Sequence - Change
  # scene.message "He didn't elaborate."
  # scene.message "But something in his eyes had changed."
  # scene.message "Lighter. Less burdened."
  
  scene.message "\\bLyra\\b: *taking his hand* I'm glad."
  
  # TODO: Event Sequence - Hand
  # scene.message "He didn't pull away."
end

GameData::Cutscene.define :ch16_leaving_caves do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  # TODO: Event Sequence - Climb Out
  # scene.message "The climb out was easier."
  # scene.message "As if the caves themselves were helping."
  
  scene.message "\\bKael\\b: Yveltal's domain respects me now."
  scene.message "\\bKael\\b: We won't be troubled here again."
  
  scene.message "\\bLyra\\b: That's... actually comforting."
  
  scene.message "\\b\\PN\\b: One seal left."
  scene.message "\\b\\PN\\b: Starfall Basin."
  
  scene.message "\\bKael\\b: Your turn."
  
  scene.message "\\b\\PN\\b: I'm ready."
  
  # TODO: Event Sequence - Light
  # scene.message "Light appeared ahead."
  # scene.message "The cave exit. Freedom."
  
  # scene.message "But waiting outside..."
end

GameData::Cutscene.define :ch16_marcus_returns do |scene|
  scene.play_bgm 'Pokemon RSE - Rival Battle'
  
  scene.message "\\bMarcus\\b: Well, well! If it isn't the mysterious trio!"
  # TODO: Event Sequence - Marcus
  # scene.message "Your rival blocked the path, cocky as ever."
  
  scene.message "\\bMarcus\\b: I've heard rumors about you."
  scene.message "\\bMarcus\\b: Cult attacks. Ancient temples."
  scene.message "\\bMarcus\\b: Sounds like nonsense to me."
  
  scene.message "\\bKael\\b: Then move aside. We don't have time for this."
  
  scene.message "\\bMarcus\\b: Oh no, you don't!"
  scene.message "\\bMarcus\\b: I want to see if you're as strong as they say!"
  
  scene.trainer_battle :RIVAL, "Marcus", 2
  
  scene.message "\\bMarcus\\b: Hah! Not bad!"
  scene.message "\\bMarcus\\b: Maybe those rumors aren't all nonsense."
end

GameData::Cutscene.define :ch16_marcus_warning do |scene|
  scene.play_bgm 'Pokemon RSE - Encounter Rival'
  
  # TODO: Event Sequence - Marcus Serious
  # scene.message "After the battle, Marcus's demeanor changed."
  # scene.message "Serious for once."
  
  scene.message "\\bMarcus\\b: Hey... I joke around, but..."
  scene.message "\\bMarcus\\b: I've seen those hooded creeps too."
  scene.message "\\bMarcus\\b: They're everywhere lately."
  
  scene.message "\\b\\PN\\b: The Shattered Hand cult."
  
  scene.message "\\bMarcus\\b: Whatever they're called."
  scene.message "\\bMarcus\\b: Watch your backs, okay?"
  scene.message "\\bMarcus\\b: I want to beat you fairly, not have some cult do it for me."
  
  scene.message "\\bLyra\\b: That's... surprisingly nice of you, Marcus."
  scene.message "\\bMarcus\\b: Yeah, well... don't get used to it!"
  
  # TODO: Event Sequence - Marcus Leaves
  # scene.message "He ran off, embarrassed."
  scene.message "\\bKael\\b: He's not entirely awful."
  scene.message "\\bLyra\\b: Coming from you, that's high praise!"
end

GameData::Cutscene.define :ch16_road_to_fifth_gym do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Road to 5
  # scene.message "The road to the fifth Gym stretched before you."
  # scene.message "Towns. Fields. Normal life."
  
  scene.message "\\bLyra\\b: It's strange."
  scene.message "\\bLyra\\b: People just... living their lives."
  scene.message "\\bLyra\\b: They don't know what's coming."
  
  scene.message "\\bKael\\b: That's why we fight."
  scene.message "\\bKael\\b: So they never have to know."
  
  scene.message "\\b\\PN\\b: We'll protect them."
  scene.message "\\b\\PN\\b: All of them."
  
  scene.message "\\bLyra\\b: *smiling* When did you both get so heroic?"
  
  scene.message "\\bKael\\b: I'm not heroic."
  scene.message "\\bKael\\b: Just... determined."
  
  scene.message "\\bLyra\\b: Same thing."
  
  # TODO: Event Sequence - Gym 5 View
  # scene.message "The fifth Gym appeared on the horizon."
end

GameData::Cutscene.define :ch16_fifth_gym do |scene|
  scene.play_bgm 'Pokemon RSE - Gym'
  
  # TODO: Event Sequence - Gym 5 Battle
  # scene.message "The fifth Gym was the toughest yet."
  # scene.message "But your team had grown strong."
  
  scene.message "\\bGym Leader\\b: Impressive! You've earned this badge!"
  
  scene.message "\\bLyra\\b: Halfway there!"
  scene.message "\\bKael\\b: Don't celebrate yet."
  scene.message "\\bKael\\b: The second half is always harder."
  
  scene.message "\\b\\PN\\b: He's right. But we'll be ready."
  scene.message "\\b\\PN\\b: For the Gyms... and whatever else comes."

  scene.message "\\bGym Leader\\b: Then you'll need this as much as the badge."
  scene.message "The Leader produced a copied access ledger. Three visitors had entered the sealed archives under false League credentials."
  scene.message "\\bGym Leader\\b: They asked about Starfall Basin, the Guardian vessels, and a chamber with no door."
  scene.message "\\bKael\\b: The Shattered Hand."
  scene.message "\\bGym Leader\\b: I locked the archive after them. Your fifth badge will reopen it—and prove you entered with my consent."
end

GameData::Cutscene.define :ch16_evening_planning do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Planning
  # scene.message "That evening, you planned the next move."
  # scene.message "Maps spread across a table."
  
  scene.message "\\bKael\\b: Starfall Basin is two days north."
  scene.message "\\bKael\\b: The cult might already be there."
  
  scene.message "\\b\\PN\\b: Then we move fast."
  
  scene.message "\\bLyra\\b: What about the last Gym? It's on the way."
  
  scene.message "\\bKael\\b: We can challenge it en route."
  scene.message "\\bKael\\b: Every bit of strength helps."
  
  scene.message "\\b\\PN\\b: Agreed."
  scene.message "\\b\\PN\\b: Tomorrow, we head for Starfall Basin."
  
  scene.message "\\bLyra\\b: And Zacian."
  
  scene.message "\\b\\PN\\b: And Zacian."
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Your mark pulsed."
  # scene.message "As if the Guardian was listening."
  # scene.message "Waiting."
end

GameData::Cutscene.define :ch16_team_moment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Pokemon Family
  # scene.message "Before sleep, you gathered your Pokémon."
  # scene.message "A small family in the darkness."
  
  scene.message "\\bLyra\\b: We've come so far."
  scene.message "\\bLyra\\b: Remember when we first met?"
  
  scene.message "\\bKael\\b: You were annoying."
  
  scene.message "\\bLyra\\b: HEY!"
  
  scene.message "\\bKael\\b: *slight smile* Still are. But..."
  scene.message "\\bKael\\b: It's grown on me."
  
  scene.message "\\b\\PN\\b: We're a team."
  scene.message "\\b\\PN\\b: More than that. We're family."
  
  scene.message "\\bLyra\\b: *tearing up* You guys..."
  
  scene.message "\\bKael\\b: Don't get emotional."
  
  scene.message "\\bLyra\\b: Too late!"
  
  # TODO: Event Sequence - Hug
  # scene.message "She hugged them both."
  # scene.message "Even Kael didn't resist."
  
  # scene.message "Tomorrow would bring challenges."
  # scene.message "But tonight, they had each other."
end

#===============================================================================
# Chapter 17: Your Starter Nearly Dies
#===============================================================================

GameData::Cutscene.define :ch17_peaceful_path do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Forest Path
  # scene.message "The forest path was beautiful in the afternoon light."
  # scene.message "Sunbeams filtered through the canopy above."
  
  scene.message "\\bLyra\\b: It's nice to have a peaceful moment."
  scene.message "\\bLyra\\b: After everything in the caves..."
  
  scene.message "\\bKael\\b: Don't get used to it."
  scene.message "\\bKael\\b: Peace never lasts."
  
  scene.message "\\bLyra\\b: Kael! Can you be optimistic for once?"
  
  scene.message "\\bKael\\b: I'm being realistic."
  scene.message "\\bKael\\b: Shadow agrees."
  
  # TODO: Event Sequence - Pokemon Walking
  # scene.message "Shadow walked beside Kael, ears twitching."
  scene.message "\\bShadow\\b: Zor..."
  
  # scene.message "Your starter bounded alongside you happily."
  # TODO: Event Sequence - Enjoyment
  # scene.message "Enjoying the simple pleasure of the walk."
  
  scene.message "\\b\\PN\\b: Let them have their fun."
  scene.message "\\b\\PN\\b: They've earned it."
  
  # TODO: Event Sequence - Wrongness
  # scene.message "But even as you said it..."
  # scene.message "Something felt wrong."
end

GameData::Cutscene.define :ch17_shadow_warning do |scene|
  scene.play_bgm 'Pokemon RSE - Tension'
  
  # TODO: Event Sequence - Shadow Warning
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # scene.message "Shadow stopped mid-stride."
  # scene.message "Every hair on the Zorua's body stood on end."
  
  scene.message "\\bShadow\\b: Zor... Zorua..."
  
  scene.message "\\bKael\\b: (Something's watching us.)"
  scene.message "\\bKael\\b: (Shadow only acts like this when—)"
  
  # TODO: Event Sequence - Illusion Flicker
  # scene.message "The Zorua's illusion flickered."
  # scene.message "A sign of extreme distress."
  
  scene.message "\\bKael\\b: \\PN. Lyra."
  scene.message "\\bKael\\b: Stop walking. Now."
  
  scene.message "\\bLyra\\b: What is it?"
  
  scene.message "\\bKael\\b: We're surrounded."
  
  # TODO: Event Sequence - Surrounded
  # scene.message "His hand moved to his belt."
  # scene.message "The mark of Yveltal pulsed with warning."
  
  scene.message "\\bKael\\b: (Death is close. Too close.)"
  scene.message "\\bKael\\b: (But whose?)"
end

GameData::Cutscene.define :ch17_ambush_begins do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 5, 15
  
  # TODO: Event Sequence - Ambush
  # scene.message "The forest erupted in dark energy!"
  
  # scene.message "Cultists dropped from trees, emerged from bushes."
  # scene.message "Dozens of them. A coordinated strike."
  
  scene.message "\\bCultist Leader\\b: For the Shattered Hand!"
  scene.message "\\bCultist Leader\\b: Capture the Chosen Ones!"
  scene.message "\\bCultist Leader\\b: General Shade wants them alive!"
  
  scene.message "\\bKael\\b: Shadow, defensive position!"
  scene.message "\\bLyra\\b: Mimi, protect us!"
  
  scene.message "\\b\\PN\\b: Everyone, ready for battle!"
  
  # TODO: Event Sequence - Stance
  # scene.message "Your starter moved in front of you."
  # scene.message "Ready to fight. Ready to protect."
  
  scene.message "\\bCultist\\b: The Guardian marks... they're real!"
  scene.message "\\bCultist\\b: Master Viktor will reward us greatly!"
  
  scene.message "\\bKael\\b: You'll have to go through us first!"
  
  scene.trainer_battle :CULTIST_AMBUSH1, "Hand Ambusher", 0
end

GameData::Cutscene.define :ch17_battle_overwhelmed do |scene|
  scene.play_bgm 'Pokemon XY - Battle! Team Flare'
  scene.camera_shake 8, 25
  
  # TODO: Event Sequence - More Cultists
  # scene.message "More cultists kept coming!"
  # scene.message "For every one defeated, two more appeared."
  
  scene.message "\\bLyra\\b: There's too many!"
  scene.message "\\bKael\\b: We need to break through!"
  
  # TODO: Event Sequence - Battle Chaos
  # scene.message "Shadow was fighting three Pokémon at once."
  # scene.message "Mimi was protecting Lyra desperately."
  
  scene.message "\\bCultist Leader\\b: Use the dark binding!"
  scene.message "\\bCultist Leader\\b: Immobilize the Chosen!"
  
  # scene.message "A cultist aimed a strange device at you."
  # scene.message "Dark energy gathered at its tip."
  
  scene.message "\\b\\PN\\b: What is—"
  
  # TODO: Event Sequence - Beam Fired
  # scene.message "The beam fired!"
  # scene.message "Heading straight for you!"
  
  scene.trainer_battle :CULTIST_AMBUSH2, "Hand Ambusher", 0
end

GameData::Cutscene.define :ch17_starter_sacrifice do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 10, 30
  
  # TODO: Event Sequence - Sacrifice Choice
  # scene.message "Time seemed to slow."
  
  # scene.message "The dark energy beam raced toward you."
  # scene.message "You couldn't dodge. Couldn't move fast enough."
  
  # scene.message "But your starter could."
  
  scene.camera_flash 15
  
  # TODO: Event Sequence - Impact
  # scene.message "Your partner leaped in front of you!"
  # scene.message "Taking the full force of the attack!"
  
  scene.message "\\b\\PN\\b: NO!!!"
  
  # TODO: Event Sequence - Agony
  # scene.message "Your starter cried out in agony."
  # scene.message "Dark energy crackling across their body."
  # scene.message "Then collapsed. Motionless."
  
  scene.message "\\bLyra\\b: Oh no... oh no no no..."
  scene.message "\\bKael\\b: \\PN—!"
  
  # TODO: Event Sequence - Snap
  # scene.message "Something inside you snapped."
  
  # scene.message "Your mark blazed with golden light!"
  # scene.message "Zacian's power surging through you uncontrolled."
end

GameData::Cutscene.define :ch17_rage_awakening do |scene|
  scene.play_bgm 'Pokemon XY - Legendary Battle'
  scene.camera_flash 20
  scene.camera_shake 15, 40
  
  scene.message "\\b\\PN\\b: GET AWAY FROM THEM!!!"
  
  # TODO: Event Sequence - Rage
  # scene.message "Golden energy exploded outward!"
  # scene.message "The Sword of Valor manifested around you."
  
  scene.message "\\bCultist\\b: The Guardian power—it's awakening!"
  scene.message "\\bCultist Leader\\b: Fall back! FALL BACK!"
  
  # TODO: Event Sequence - No Escape
  # scene.message "But you weren't letting them escape."
  
  # TODO: Event Sequence - Fast Movement
  # scene.message "You moved faster than you ever had."
  # scene.message "Zacian's blessing driving you forward."
  
  scene.message "\\bKael\\b: \\PN, stop! Your partner needs help!"
  
  # TODO: Event Sequence - Aftermath
  # scene.message "Kael's words cut through the rage."
  # scene.message "You looked down at your fallen starter."
  
  # scene.message "The cultists used the distraction to flee."
  # scene.message "But you didn't care."
  
  scene.message "\\b\\PN\\b: We need to get them to a Pokémon Center!"
  scene.message "\\b\\PN\\b: NOW!"
end

GameData::Cutscene.define :ch17_desperate_rush do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Rush
  # scene.message "You carried your starter in your arms."
  # scene.message "Running faster than you'd ever run."
  
  scene.message "\\bLyra\\b: The town is just ahead!"
  scene.message "\\bLyra\\b: Hold on, little one. Please hold on!"
  
  # TODO: Event Sequence - Shallow Breathing
  # scene.message "Your starter's breathing was shallow."
  # scene.message "Dark energy still crackled across their body."
  
  scene.message "\\bKael\\b: That weapon—it wasn't normal."
  scene.message "\\bKael\\b: It was designed to hurt Pokémon of Chosen."
  
  scene.message "\\b\\PN\\b: Why would they—"
  
  scene.message "\\bKael\\b: To hurt us. Through our partners."
  scene.message "\\bKael\\b: They know our bonds are our weakness."
  
  scene.message "\\bLyra\\b: There! The Pokémon Center!"
  
  # TODO: Event Sequence - Pokemon Center
  # scene.message "You burst through the doors."
  scene.message "\\b\\PN\\b: HELP! PLEASE HELP!"
end

GameData::Cutscene.define :ch17_ragnar_appears do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: \\PN?! What happened?!"
  
  # TODO: Event Sequence - Ragnar Help
  # scene.message "Ragnar was already in the Pokémon Center."
  # scene.message "His face went white when he saw you."
  
  scene.message "\\bRagnar\\b: Is that— Is your starter—"
  
  scene.message "\\b\\PN\\b: They were hurt. Badly."
  
  scene.message "\\bRagnar\\b: Nurse Joy!"
  scene.message "\\bRagnar\\b: DROP EVERYTHING! EMERGENCY!"
  
  # scene.message "He practically dragged Nurse Joy over."
  # scene.message "For once, his loud energy was useful."
  
  scene.message "\\bNurse Joy\\b: Dark energy poisoning!"
  scene.message "\\bNurse Joy\\b: Chansey, emergency procedures!"
  
  scene.message "\\bRagnar\\b: I'll help carry them!"
  
  # scene.message "He helped rush your starter to the back."
  # scene.message "The doors swung shut behind them."
  
  # scene.message "Ragnar returned moments later, shaking."
  
  scene.message "\\bRagnar\\b: \\PN... what's going on?"
  scene.message "\\bRagnar\\b: Who did this?"
  
  # TODO: Event Sequence - Silence
  # scene.message "You couldn't answer. You could barely stand."
end

GameData::Cutscene.define :ch17_pokemon_center do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Shock State
  # scene.message "You stood there, covered in your partner's blood."
  # scene.message "Shaking."
  
  scene.message "\\bLyra\\b: \\PN..."
  
  # scene.message "She wrapped her arms around you."
  # scene.message "You hadn't realized you were crying."
  
  scene.message "\\bRagnar\\b: *to Kael* What the HELL happened out there?!"
  
  scene.message "\\bKael\\b: Cult attack. They targeted \\PN's partner."
  
  scene.message "\\bRagnar\\b: CULT?! What cult?!"
  
  scene.message "\\bKael\\b: It's complicated."
  
  scene.message "\\bRagnar\\b: *grabbing Kael's collar* Un-complicate it!"
  
  scene.message "\\bLyra\\b: Ragnar, please... not now."
  
  # TODO: Event Sequence - Ragnar Anger
  # scene.message "He released Kael, but his fists were shaking."
  
  scene.message "\\bRagnar\\b: \\PN's been my friend since we were FIVE."
  scene.message "\\bRagnar\\b: And someone just tried to KILL them?!"
  
  scene.message "\\bKael\\b: ...Yes."
  
  scene.message "\\bRagnar\\b: Then I'm staying."
  scene.message "\\bRagnar\\b: Until I know they're okay."
  scene.message "\\bRagnar\\b: And then you're telling me EVERYTHING."
end

GameData::Cutscene.define :ch17_waiting_room do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Waiting
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  # scene.message "Hours passed."
  # scene.message "The longest hours of their lives."
  
  # TODO: Event Sequence - Waiting Room Actions
  # scene.message "\\PN sat motionless, staring at the floor."
  # scene.message "Haven't spoken since they sat down."
  
  scene.message "\\bLyra\\b: (I've never seen them like this.)"
  scene.message "\\bLyra\\b: (So broken. So lost.)"
  
  # scene.message "Kael paced by the windows."
  # scene.message "Shadow watched \\PN with worried eyes."
  
  scene.message "\\bKael\\b: *quietly* The cult knew exactly where we'd be."
  scene.message "\\bKael\\b: This was planned."
  
  scene.message "\\bLyra\\b: Kael, not now..."
  
  scene.message "\\bKael\\b: We need to know how they found us."
  scene.message "\\bKael\\b: Before they find us again."
  
  scene.message "\\bLyra\\b: Right now, \\PN needs us."
  scene.message "\\bLyra\\b: Everything else can wait."
  
  # TODO: Event Sequence - Lyra Comfort
  # scene.message "She sat closer to \\PN."
  # scene.message "Taking their hand in hers."
  
  scene.message "\\bLyra\\b: They're going to be okay."
  scene.message "\\bLyra\\b: They have to be."
end

GameData::Cutscene.define :ch17_kaels_vigil do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Kael Perspective
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # scene.message "Night fell. Lyra had fallen asleep on \\PN's shoulder."
  # scene.message "\\PN still hadn't moved."
  
  # TODO: Event Sequence - Kael Sits
  # scene.message "Kael sat down across from them."
  scene.message "\\bKael\\b: I know what you're feeling."
  
  # scene.message "\\PN looked up. Eyes red."
  
  scene.message "\\bKael\\b: When I lost Mira..."
  scene.message "\\bKael\\b: I felt like my heart had been torn out."
  
  scene.message "\\b\\PN\\b: You never talk about her."
  
  scene.message "\\bKael\\b: It still hurts."
  scene.message "\\bKael\\b: But I've learned something since then."
  
  scene.message "\\bKael\\b: Pain means you loved them."
  scene.message "\\bKael\\b: And love... love is worth the pain."
  
  # TODO: Event Sequence - Shadow Comforts
  # scene.message "Shadow hopped onto \\PN's lap."
  # scene.message "Nuzzling against them comfortingly."
  
  scene.message "\\bKael\\b: Your starter knows that."
  scene.message "\\bKael\\b: That's why they jumped in front of that beam."
  
  scene.message "\\b\\PN\\b: I don't want them to die for me."
  
  scene.message "\\bKael\\b: They don't want to die."
  scene.message "\\bKael\\b: They want to live. With you."
  scene.message "\\bKael\\b: And they will."
end

GameData::Cutscene.define :ch17_the_news do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - News Arrives
  # scene.message "The doors finally opened."
  # scene.message "Nurse Joy stepped out, exhausted."
  
  # scene.message "You jumped to your feet."
  # scene.message "Lyra woke with a start."
  
  scene.message "\\bNurse Joy\\b: \\PN..."
  
  # TODO: Event Sequence - Shock
  # scene.message "Your heart stopped."
  
  scene.message "\\bNurse Joy\\b: Your Pokémon is going to be okay."
  
  # TODO: Event Sequence - Relief
  # scene.message "Relief crashed over you like a wave."
  # scene.message "Your knees nearly gave out."
  
  scene.message "\\bLyra\\b: *crying* Thank goodness... thank goodness..."
  scene.message "\\bKael\\b: *exhales* Good."
  
  scene.message "\\bNurse Joy\\b: It was touch and go for a while."
  scene.message "\\bNurse Joy\\b: That dark energy was nasty."
  scene.message "\\bNurse Joy\\b: But your partner is a fighter."
  
  scene.message "\\b\\PN\\b: Can I see them?"
  
  scene.message "\\bNurse Joy\\b: Of course. Follow me."
end

GameData::Cutscene.define :ch17_reunion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Reunion
  # scene.message "Your starter lay in a small bed."
  # scene.message "Bandaged. Weak. But alive."
  
  # scene.message "Their eyes opened when you entered."
  # scene.message "A small, tired cry of recognition."
  
  scene.message "\\b\\PN\\b: Hey, buddy..."
  
  # TODO: Event Sequence - Beside Bed
  # scene.message "You sat beside them."
  # scene.message "Gently stroking their head."
  
  scene.message "\\b\\PN\\b: You scared me."
  scene.message "\\b\\PN\\b: Don't ever do that again."
  
  # TODO: Event Sequence - Defiant Sound
  # scene.message "Your partner made a small sound."
  # scene.message "Defiant. They'd do it again in a heartbeat."
  
  scene.message "\\b\\PN\\b: *tearful laugh* Yeah. I know."
  scene.message "\\b\\PN\\b: That's what makes you so amazing."
  
  # TODO: Event Sequence - Healing Light
  # scene.message "Your mark glowed softly."
  # scene.message "Golden light washing over your starter."
  
  # scene.message "Zacian's blessing, helping them heal."
  # scene.message "Your partner's breathing grew easier."
  
  scene.message "\\b\\PN\\b: We're going to be okay."
  scene.message "\\b\\PN\\b: Both of us."
end

GameData::Cutscene.define :ch17_recovery_begins do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Recovery
  # scene.message "The next few days were quiet."
  # scene.message "You stayed by your starter's side constantly."
  
  scene.message "\\bLyra\\b: You need to eat something, \\PN."
  scene.message "\\bLyra\\b: You've barely touched your food."
  
  scene.message "\\b\\PN\\b: I'm not hungry."
  
  scene.message "\\bKael\\b: Your partner needs you strong."
  scene.message "\\bKael\\b: Not weak from starvation."
  
  scene.message "He had a point."
  scene.message "You forced yourself to eat."
  
  scene.message "Your starter watched you approvingly."
  scene.message "Making small sounds of encouragement."
  
  scene.message "\\b\\PN\\b: *small smile* You're the one recovering."
  scene.message "\\b\\PN\\b: Shouldn't I be encouraging you?"
  
  scene.message "Your partner huffed."
  scene.message "Clearly taking their caretaking duties seriously."
  
  scene.message "\\bLyra\\b: *giggling* They're looking after you."
  scene.message "\\bLyra\\b: Even from a hospital bed."
end

GameData::Cutscene.define :ch17_partners_bond do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\i[YOUR STARTER'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Starter's Experience
  # scene.message "Pain. Darkness. Then... light."
  # scene.message "Their trainer's face. Worried. Loving."
  
  # scene.message "They didn't regret it. Not for a moment."
  
  # scene.message "That dark energy had been aimed at their human."
  # scene.message "Their best friend. Their whole world."
  
  # scene.message "Of course they jumped in front of it."
  # scene.message "What else would they do?"
  
  # scene.message "Now they were healing."
  # scene.message "Slowly. Painfully. But surely."
  
  # scene.message "Because their trainer was here."
  # scene.message "Talking to them. Caring for them. Loving them."
  
  # scene.message "And something new flowed between them."
  # scene.message "A golden warmth. A connection deeper than before."
  
  # scene.message "The Guardian's blessing touched them too."
  # scene.message "Strengthening their bond."
  
  # scene.message "They would never let anyone hurt their trainer again."
  # scene.message "No matter what it cost."
end

GameData::Cutscene.define :ch17_team_support do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Team Visits
  # scene.message "Your other Pokémon took turns visiting."
  # scene.message "Keeping your starter company."
  
  scene.message "\\bLyra\\b: Look at them."
  scene.message "\\bLyra\\b: Your whole team loves them."
  
  # TODO: Event Sequence - Team Around Bed
  # scene.message "Your Pokémon gathered around the bed."
  # scene.message "Offering small gifts. Comfort. Support."
  
  scene.message "\\bKael\\b: Pokémon understand sacrifice."
  scene.message "\\bKael\\b: They respect what your starter did."
  
  # TODO: Event Sequence - Shadow Guard
  # scene.message "Shadow sat beside the bed protectively."
  # scene.message "Standing guard, even though the danger had passed."
  
  scene.message "\\b\\PN\\b: Thank you. All of you."
  scene.message "\\b\\PN\\b: We're going to need each other."
  
  scene.message "\\bLyra\\b: We're a family now."
  scene.message "\\bLyra\\b: All of us. Trainers and Pokémon alike."
  
  scene.message "\\bKael\\b: ...Yeah."
  scene.message "\\bKael\\b: I guess we are."
  
  # TODO: Event Sequence - Happy Sound
  # scene.message "Your starter made a happy sound."
  # scene.message "Family. Yes. This was family."
end

GameData::Cutscene.define :ch17_first_steps do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Standing
  # scene.message "Three days later, your starter tried to stand."
  # scene.message "Wobbly. Uncertain. But determined."
  
  scene.message "\\bNurse Joy\\b: Easy now. Don't push too hard."
  
  # TODO: Event Sequence - Shaky Steps
  # scene.message "Your partner took a shaky step."
  # scene.message "Then another. Then another."
  
  scene.message "\\b\\PN\\b: That's it. You're doing great."
  
  # TODO: Event Sequence - Looking Up
  # scene.message "Your starter looked up at you."
  # scene.message "Eyes full of determination."
  # scene.message "They weren't going to let this stop them."
  
  scene.message "\\bLyra\\b: *sniffling* They're so brave..."
  
  scene.message "\\bKael\\b: They take after their trainer."
  
  # TODO: Event Sequence - Unexpected Compliment
  # scene.message "You blinked at the unexpected compliment."
  # scene.message "Kael just shrugged."
  
  scene.message "\\bKael\\b: What? It's true."
  
  # TODO: Event Sequence - Nuzzle
  # scene.message "Your starter reached you and nuzzled your leg."
  # scene.message "Weak, but alive. And getting stronger every day."
  
  scene.message "\\b\\PN\\b: We're going to be okay, buddy."
  scene.message "\\b\\PN\\b: I promise."
end

GameData::Cutscene.define :ch17_new_resolve do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Sitting Outside
  # scene.message "A week after the ambush, you sat outside."
  # scene.message "Your recovering starter resting in your lap."
  
  scene.message "\\bLyra\\b: You've been quiet, \\PN."
  scene.message "\\bLyra\\b: What are you thinking about?"
  
  scene.message "\\b\\PN\\b: The cult. What they did."
  scene.message "\\b\\PN\\b: They almost killed my partner."
  
  scene.message "\\bKael\\b: They'll try again."
  scene.message "\\bKael\\b: They won't stop until they have us."
  
  scene.message "\\b\\PN\\b: I know."
  scene.message "\\b\\PN\\b: That's why we need to stop them first."
  
  scene.message "\\bLyra\\b: We're still strengthening the seals."
  scene.message "\\bLyra\\b: We can't just abandon the mission."
  
  scene.message "\\b\\PN\\b: I'm not saying abandon it."
  scene.message "\\b\\PN\\b: I'm saying we do both."
  scene.message "\\b\\PN\\b: Strengthen the seals AND fight back."
  
  scene.message "\\bKael\\b: That's dangerous."
  scene.message "\\bKael\\b: ...I like it."
  
  # TODO: Event Sequence - Sound of Agreement
  # scene.message "Your starter made a sound of agreement."
  # scene.message "They were ready to fight. With you."
  
  scene.message "\\b\\PN\\b: The Shattered Hand hurt my family."
  scene.message "\\b\\PN\\b: They're going to regret that."
end

GameData::Cutscene.define :ch17_ragnar_learns_truth do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Ragnar Waited
  # scene.message "Ragnar had waited. True to his word."
  # scene.message "Now, with your starter recovering, it was time."
  
  scene.message "\\bRagnar\\b: Okay. Talk."
  
  # TODO: Event Sequence - Explaining Everything
  # scene.message "You told him everything."
  # scene.message "The marks. The Guardians. The Shattered Hand."
  # scene.message "Nidhoggr. The end of the world."
  
  # scene.message "Ragnar sat in stunned silence."
  
  scene.message "\\bRagnar\\b: ...So you're telling me..."
  scene.message "\\bRagnar\\b: My best friend is some kind of chosen hero..."
  scene.message "\\bRagnar\\b: Picked by an ancient god-wolf..."
  scene.message "\\bRagnar\\b: To fight a world-eating monster?"
  
  scene.message "\\b\\PN\\b: Basically, yes."
  
  scene.message "\\bRagnar\\b: ..."
  scene.message "\\bRagnar\\b: THAT'S SO COOL!"
  
  scene.message "\\bKael\\b: *facepalm* Of course that's his reaction."
  
  scene.message "\\bRagnar\\b: No wait, I'm also TERRIFIED!"
  scene.message "\\bRagnar\\b: But also... you NEED me!"
  
  scene.message "\\b\\PN\\b: Ragnar—"
  
  scene.message "\\bRagnar\\b: NO! Listen!"
  scene.message "\\bRagnar\\b: You three are off saving the world..."
  scene.message "\\bRagnar\\b: And I'm just... collecting badges?"
  scene.message "\\bRagnar\\b: What kind of friend does that?!"
  
  scene.message "\\bLyra\\b: We didn't want you to get hurt..."
  
  scene.message "\\bRagnar\\b: Your starter almost DIED!"
  scene.message "\\bRagnar\\b: And I wasn't there to help!"
  scene.message "\\bRagnar\\b: *voice breaking* I could've done something!"
  
  scene.message "\\b\\PN\\b: Ragnar..."
  
  scene.message "\\bRagnar\\b: I've got six badges now."
  scene.message "\\bRagnar\\b: I'm not weak. I can fight."
  scene.message "\\bRagnar\\b: Let me help. Please."
  
  # TODO: Event Sequence - Looking at Friends
  # scene.message "You looked at your friends."
  # scene.message "Kael shrugged. Lyra nodded."
  
  scene.message "\\b\\PN\\b: ...Okay. But you follow our lead."
  
  scene.message "\\bRagnar\\b: *grinning through tears* Deal."
  scene.message "\\bRagnar\\b: ...Thanks, \\PN."
  scene.message "\\bRagnar\\b: For trusting me."
end

GameData::Cutscene.define :ch17_bond_strengthened do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Night Scene
  # scene.message "That night, you and your starter sat under the stars."
  # scene.message "Just the two of you."
  
  scene.message "\\b\\PN\\b: You know, when you jumped in front of me..."
  scene.message "\\b\\PN\\b: I thought I was going to lose you."
  
  # TODO: Event Sequence - Reassuring Sound
  # scene.message "Your partner looked up at you."
  # scene.message "Making a soft, reassuring sound."
  
  scene.message "\\b\\PN\\b: I know you'd do it again."
  scene.message "\\b\\PN\\b: And I can't ask you not to."
  
  scene.message "\\b\\PN\\b: But I want you to know something."
  scene.message "\\b\\PN\\b: I'd do the same for you."
  
  # TODO: Event Sequence - Mark Glow
  # scene.message "Your mark glowed."
  # scene.message "Golden light enveloping both of you."
  
  # scene.message "You felt it—a connection deeper than before."
  # scene.message "Guardian and partner, bonded by more than love."
  # scene.message "Bonded by sacrifice. By trust. By destiny."
  
  # scene.message "Your starter cried out happily."
  # scene.message "They understood. They always had."
  
  scene.message "\\b\\PN\\b: Together. No matter what."
  scene.message "\\b\\PN\\b: That's a promise."
  
  # TODO: Event Sequence - Unbreakable Bond
  # scene.message "And in that moment, your bond became unbreakable."
end

GameData::Cutscene.define :ch17_starter_glowing do |scene|
  scene.play_bgm 'Pokemon DPPT - Evolution'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Starter Glowing
  # scene.message "Suddenly, your starter began to glow."
  # scene.message "Bright light emanating from their body."
  
  scene.message "\\b\\PN\\b: What...? What's happening?!"
  
  scene.message "\\bLyra\\b: *gasping* \\PN, look!"
  scene.message "\\bKael\\b: It's evolving."
  
  # TODO: Event Sequence - Evolution
  # scene.message "Your partner's form shimmered and shifted."
  # scene.message "Growing. Changing. Becoming something more."
  
  scene.message "\\bZacian's Voice\\b: The bond between you has deepened."
  scene.message "\\bZacian's Voice\\b: Through sacrifice comes strength."
end

GameData::Cutscene.define :ch17_starter_first_evolution do |scene|
  scene.play_bgm 'Pokemon DPPT - Evolution'
  scene.camera_flash 30
  
  # TODO: Event Sequence - Evolution Complete
  # scene.message "Your starter evolved!"
  
  scene.message "\\b\\PN\\b: *tears of joy* Look at you..."
  
  # TODO: Event Sequence - Standing Proud
  # scene.message "Your partner stood proud, stronger than before."
  # scene.message "The near-death experience hadn't broken them."
  # scene.message "It had forged them into something greater."
  
  scene.message "\\bLyra\\b: They evolved from the bond you share!"
  scene.message "\\bLyra\\b: That's so beautiful!"
  
  scene.message "\\bKael\\b: Makes sense."
  scene.message "\\bKael\\b: They almost died to protect you."
  scene.message "\\bKael\\b: That kind of love... it changes things."
  
  # TODO: Event Sequence - Nuzzle
  # scene.message "Your evolved starter nuzzled against you."
  # scene.message "Same partner. Same love. New strength."
  
  scene.message "\\b\\PN\\b: We're going to be even stronger together."
  scene.message "\\b\\PN\\b: I promise I won't let you down."
  
  # TODO: Event Sequence - Determination Cry
  # scene.message "Your partner cried out with determination."
  # scene.message "Ready for whatever came next."
end

#===============================================================================
# Chapter 18: General Dread - The Second General
#===============================================================================

GameData::Cutscene.define :ch18_recovery_journey do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - On the Road
  # scene.message "Your starter was finally well enough to travel."
  # scene.message "Though you kept a closer eye on them now."
  
  scene.message "\\bLyra\\b: It's good to be moving again."
  scene.message "\\bLyra\\b: I was starting to go stir-crazy."
  
  scene.message "\\bKael\\b: Careful what you wish for."
  scene.message "\\bKael\\b: The road ahead won't be peaceful."
  
  scene.message "\\b\\PN\\b: After that ambush, I don't expect peace."
  scene.message "\\b\\PN\\b: Just give me time to see it coming."
  
  # TODO: Event Sequence - Shadow Scouting
  # scene.message "Shadow ranged ahead, scouting."
  # scene.message "The Zorua had become invaluable for early warnings."
  
  scene.message "\\bKael\\b: Shadow won't let us be surprised again."
  scene.message "\\bKael\\b: He blames himself for the ambush."
  
  scene.message "\\bLyra\\b: It wasn't his fault!"
  
  scene.message "\\bKael\\b: Try telling him that."
  scene.message "\\bKael\\b: He's stubborn."
  
  # TODO: Event Sequence - Path Ahead
  # scene.message "The path wound toward the next town."
  # scene.message "And whatever challenges awaited there."
end

GameData::Cutscene.define :ch18_ominous_signs do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Fog Rolls In
  # scene.message "Strange fog rolled into the area."
  # scene.message "Temperature dropped suddenly."
  
  scene.message "\\bLyra\\b: Something's wrong..."
  scene.message "\\bWillow\\b: V-vee..."
  
  # TODO: Event Sequence - Willow Trembles
  # scene.message "Willow trembled in Lyra's arms."
  
  scene.message "\\bKael\\b: Ghost-type energy. Strong."
  scene.message "\\bKael\\b: Stronger than I've ever felt."
  
  scene.message "\\bShadow\\b: Zor!"
  
  # TODO: Event Sequence - Shadow Returns
  # scene.message "Shadow returned, fur bristling with alarm."
  
  scene.message "\\b\\PN\\b: We have company."
  
  # TODO: Event Sequence - Ghost Pokémon Appear
  # scene.message "The fog thickened until you could barely see."
  # scene.message "Ghostly Pokémon emerged from the mist."
  # scene.message "Gastly. Haunter. Duskull."
  
  # scene.message "And behind them... something far worse."
  # scene.message "A presence that made your mark pulse in warning."
end

GameData::Cutscene.define :ch18_dread_appears do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.camera_shake 3, 10
  
  scene.message "\\bDread\\b: So you're the ones causing all this trouble."
  
  # TODO: Event Sequence - Dread Appears
  # scene.message "A figure in tattered robes floated before you."
  # scene.message "Ghost Pokémon swirled around him like a cloak."
  
  scene.message "\\bDread\\b: I am General Dread."
  scene.message "\\bDread\\b: Master of Shadows. Voice of the Dead."
  
  scene.message "\\bLyra\\b: Another general!"
  
  scene.message "\\bDread\\b: Shade was a fool to underestimate you."
  scene.message "\\bDread\\b: I will not make the same mistake."
  
  scene.message "\\bKael\\b: Then you know we beat her."
  scene.message "\\bKael\\b: What makes you think you'll do better?"
  
  scene.message "\\bDread\\b: *laughs eerily*"
  scene.message "\\bDread\\b: Because I've already died once."
  scene.message "\\bDread\\b: Death holds no power over me."
  
  # TODO: Event Sequence - Cold Air
  # scene.message "The air grew colder."
  # scene.message "Your breath came out in visible puffs."
end

GameData::Cutscene.define :ch18_dreads_revelation do |scene|
  scene.play_bgm 'Pokemon RSE - Evil Team'
  
  scene.message "\\bDread\\b: My master Malachar sends his regards."
  
  scene.message "\\b\\PN\\b: Malachar? Who is that?"
  
  scene.message "\\bDread\\b: The High Priest. Voice of the Gnawing One."
  scene.message "\\bDread\\b: He who will usher in the new age."
  
  scene.message "\\bKael\\b: There's someone above the generals?"
  
  scene.message "\\bDread\\b: Viktor leads the Hand, yes."
  scene.message "\\bDread\\b: But even Viktor bows to Malachar."
  scene.message "\\bDread\\b: The High Priest speaks to the darkness directly."
  
  scene.message "\\bLyra\\b: What do you mean, 'Gnawing One'?"
  scene.message "\\bLyra\\b: I thought you served Hoopa!"
  
  scene.message "\\bDread\\b: *laughs*"
  scene.message "\\bDread\\b: Hoopa? That chaos trickster is merely a key."
  scene.message "\\bDread\\b: The lock it opens... is far more terrifying."
  
  scene.message "\\bDread\\b: Nidhoggr, the World-Eater."
  scene.message "\\bDread\\b: Soon it shall rise..."
  scene.message "\\bDread\\b: And this world will be consumed."
end

GameData::Cutscene.define :ch18_dread_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.camera_shake 5, 15
  
  scene.message "\\b\\PN\\b: We won't let that happen!"
  
  scene.message "\\bDread\\b: You think you have a choice?"
  scene.message "\\bDread\\b: How adorable."
  
  # TODO: Event Sequence - Ghost Energy
  # scene.message "Ghost energy swirled around him."
  # scene.message "The temperature dropped further."
  
  scene.message "\\bDread\\b: Let me show you true fear."
  scene.message "\\bDread\\b: The fear that even death cannot end."
  
  scene.message "\\bKael\\b: Death doesn't scare us anymore!"
  scene.message "\\bLyra\\b: We stand together!"
  
  # TODO: Event Sequence - Marks Blaze
  # scene.message "Your marks blazed in unison."
  # scene.message "Three Guardians against one General."
  
  scene.trainer_battle :SHATTEREDHAND, "Dread", 0
end

GameData::Cutscene.define :ch18_dreads_defeat do |scene|
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  # TODO: Event Sequence - Dread Defeated
  # scene.message "Dread's final Pokémon fell."
  # scene.message "But the General only laughed."
  
  scene.message "\\bDread\\b: You think this is victory?"
  scene.message "\\bDread\\b: I am shadow. I am mist."
  scene.message "\\bDread\\b: You cannot truly defeat me."
  
  scene.message "\\bKael\\b: Watch us try."
  
  scene.message "\\bDread\\b: Oh, but I'm not here to win today."
  scene.message "\\bDread\\b: I'm here to learn."
  
  scene.message "\\bLyra\\b: Learn what?"
  
  scene.message "\\bDread\\b: Your weaknesses. Your limits."
  scene.message "\\bDread\\b: How far your Guardian bonds extend."
  
  # TODO: Event Sequence - Dissipating
  # scene.message "His form began to dissipate."
  
  scene.message "\\bDread\\b: Malachar will be most interested..."
  scene.message "\\bDread\\b: In what I've discovered."
end

GameData::Cutscene.define :ch18_dread_fades do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\b\\PN\\b: Wait!"
  
  scene.message "\\bDread\\b: *fading* We will meet again, Chosen Ones."
  scene.message "\\bDread\\b: Next time... there will be no survivors."
  
  scene.message "\\bDread\\b: And remember..."
  scene.message "\\bDread\\b: The dead are always watching."
  
  # TODO: Event Sequence - Dread Dissolves
  # scene.message "He dissolved into the fog."
  # scene.message "The ghostly Pokémon followed."
  
  # scene.message "The temperature slowly rose."
  # scene.message "The mist began to clear."
  
  # scene.message "But the chill in your hearts remained."
  
  scene.message "\\bKael\\b: He let us win."
  scene.message "\\bKael\\b: He was testing us."
  
  scene.message "\\bLyra\\b: That's... terrifying."
  
  scene.message "\\b\\PN\\b: And now he's reporting to this Malachar."
  scene.message "\\b\\PN\\b: We need to learn more about who that is."
end

GameData::Cutscene.define :ch18_nidhoggr_truth do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  # TODO: Event Sequence - After Dread
  # scene.message "The fog finally cleared."
  # scene.message "But Dread's words lingered."
  
  scene.message "\\bLyra\\b: Malachar... the High Priest."
  scene.message "\\bLyra\\b: So there's someone above even Viktor."
  
  scene.message "\\bKael\\b: And he called Hoopa a 'key.'"
  scene.message "\\bKael\\b: Which means the true threat is behind that door."
  
  scene.message "\\b\\PN\\b: Nidhoggr."
  scene.message "\\b\\PN\\b: The Gnawing One from the temple records."
  
  scene.message "\\bKael\\b: A chaos entity older than the Guardians."
  scene.message "\\bKael\\b: The temples described it as the End of All Things."
  
  scene.message "\\bLyra\\b: So Hoopa's prison..."
  scene.message "\\bLyra\\b: Is also Nidhoggr's prison?"
  
  scene.message "\\bKael\\b: It makes sense. Hoopa's power bends reality."
  scene.message "\\bKael\\b: That power could free something even greater."
  
  scene.message "\\b\\PN\\b: Then we're not just stopping a jailbreak."
  scene.message "\\b\\PN\\b: We're stopping the apocalypse."
end

GameData::Cutscene.define :ch18_team_resolve do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: They won't. We won't let them."
  scene.message "\\bLyra\\b: *determined* We're the Chosen Ones, right?"
  scene.message "\\bLyra\\b: Time to act like it."
  
  scene.message "\\bKael\\b: *surprised* ...That's new."
  
  scene.message "\\bLyra\\b: What? I can be brave too!"
  scene.message "\\bLyra\\b: I'm tired of being scared all the time."
  
  scene.message "\\b\\PN\\b: That's the spirit."
  scene.message "\\b\\PN\\b: We've faced Shade. Faced Dread."
  scene.message "\\b\\PN\\b: Whatever comes next, we face together."
  
  scene.message "Your marks pulsed in unison."
  scene.message "The Guardians approved of your determination."
  
  scene.message "\\bKael\\b: We should contact Dad Marcus."
  scene.message "\\bKael\\b: He might know about Malachar."
  
  scene.message "\\b\\PN\\b: Good idea. But first..."
  scene.message "\\b\\PN\\b: There's still a Gym ahead."
  
  scene.message "\\bLyra\\b: Right! We can't forget the badges."
  scene.message "\\bLyra\\b: We need them to reach the League."
end

GameData::Cutscene.define :ch18_approach_sixth_gym do |scene|
  scene.play_bgm 'Pokemon RSE - Slateport City'
  
  scene.message "The next town emerged from the clearing mist."
  scene.message "A bustling city with a prominent Gym building."
  
  scene.message "\\bLyra\\b: Finally, civilization!"
  scene.message "\\bLyra\\b: I need a hot meal and a warm bed."
  
  scene.message "\\bKael\\b: Don't get too comfortable."
  scene.message "\\bKael\\b: Dread's ghosts could be anywhere."
  
  scene.message "\\b\\PN\\b: Let's check in at the Pokémon Center first."
  scene.message "\\b\\PN\\b: Our partners need rest after that fight."
  
  scene.message "The city seemed normal, oblivious to the threat."
  scene.message "People went about their daily lives."
  
  scene.message "\\bLyra\\b: It's strange, isn't it?"
  scene.message "\\bLyra\\b: Everyone just... living their lives."
  scene.message "\\bLyra\\b: Not knowing what's out there."
  
  scene.message "\\bKael\\b: That's what we're protecting."
  scene.message "\\bKael\\b: Their ignorance. Their peace."
  
  scene.message "\\b\\PN\\b: Then let's make sure they never have to know."
end

GameData::Cutscene.define :ch18_gym_preparation do |scene|
  scene.play_bgm 'Pokemon RSE - Gym'
  
  scene.message "After resting, you stood before the sixth Gym."
  scene.message "An imposing building with a unique design."
  
  scene.message "\\bLyra\\b: I've heard this Gym Leader is tough."
  scene.message "\\bLyra\\b: They say they can read trainers' souls."
  
  scene.message "\\bKael\\b: Psychic-type specialist?"
  
  scene.message "\\bLyra\\b: I think so!"
  
  scene.message "\\b\\PN\\b: After everything we've faced..."
  scene.message "\\b\\PN\\b: A Gym battle is almost relaxing."
  
  scene.message "\\bKael\\b: Just don't underestimate them."
  scene.message "\\bKael\\b: Gym Leaders don't get their positions by being weak."
  
  scene.message "Your starter stood beside you."
  scene.message "Fully recovered. Ready to fight."
  
  scene.message "\\b\\PN\\b: Let's show them what we've learned."
end

GameData::Cutscene.define :ch18_sixth_gym_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Gym'
  
  scene.message "\\bGym Leader\\b: You three... you're different."
  scene.message "\\bGym Leader\\b: There's fire in your eyes."
  scene.message "\\bGym Leader\\b: And something else... something ancient."
  
  scene.message "The Gym Leader studied you intently."
  scene.message "You felt a gentle psychic probe touch your mind."
  
  scene.message "\\bGym Leader\\b: *gasps*"
  scene.message "\\bGym Leader\\b: The Guardian marks..."
  scene.message "\\bGym Leader\\b: I've heard legends, but..."
  
  scene.message "\\b\\PN\\b: We've been through a lot."
  
  scene.message "\\bGym Leader\\b: I can see that. More than most could survive."
  scene.message "\\bGym Leader\\b: Very well. Show me that determination!"
  scene.message "\\bGym Leader\\b: Show me the strength of the Chosen!"
  
  scene.trainer_battle :GYMLEADER, "Gym Leader 6", 0
end

GameData::Cutscene.define :ch18_sixth_badge do |scene|
  scene.play_bgm 'Pokemon RSE - Victory!'
  
  scene.message "\\bGym Leader\\b: Magnificent!"
  scene.message "\\bGym Leader\\b: You've truly earned this badge!"
  
  scene.message "You received the sixth badge!"
  
  scene.message "\\bGym Leader\\b: Wait."
  scene.message "\\bGym Leader\\b: Before you go..."
  
  scene.message "The Gym Leader approached with serious eyes."
  
  scene.message "\\bGym Leader\\b: I sensed something during our battle."
  scene.message "\\bGym Leader\\b: A darkness following you."
  scene.message "\\bGym Leader\\b: Shadows that hunger and watch."
  
  scene.message "\\bKael\\b: General Dread."
  
  scene.message "\\bGym Leader\\b: *nods* Be careful, young ones."
  scene.message "\\bGym Leader\\b: The dead do not rest easily."
  scene.message "\\bGym Leader\\b: And those who command them... are not truly alive."
  
  scene.message "\\b\\PN\\b: What do you mean?"
  
  scene.message "\\bGym Leader\\b: Dread died long ago."
  scene.message "\\bGym Leader\\b: What you faced was something worse than living."
end

GameData::Cutscene.define :ch18_evening_discussion do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "That night, Kael couldn't sleep."
  scene.message "The Gym Leader's words haunted him."
  
  scene.message "\\bKael\\b: (Dread is dead. Has been dead.)"
  scene.message "\\bKael\\b: (What kind of power keeps someone like that moving?)"
  
  scene.message "His mark of Yveltal pulsed."
  scene.message "Death... he understood death better now."
  
  scene.message "\\bKael\\b: (Yveltal governs endings.)"
  scene.message "\\bKael\\b: (But Dread defies that natural order.)"
  scene.message "\\bKael\\b: (He's an abomination.)"
  
  scene.message "Shadow stirred beside him."
  scene.message "\\bShadow\\b: Zor?"
  
  scene.message "\\bKael\\b: Can't sleep."
  scene.message "\\bKael\\b: Too much on my mind."
  
  scene.message "The Zorua curled closer."
  scene.message "Offering silent comfort."
  
  scene.message "\\bKael\\b: We're going to have to face him again."
  scene.message "\\bKael\\b: And next time, he won't be testing us."
end

GameData::Cutscene.define :ch18_lyras_prayer do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  scene.message "Lyra sat by the window, Willow in her lap."
  scene.message "Looking at the stars."
  
  scene.message "\\bLyra\\b: (Xerneas... if you can hear me...)"
  scene.message "\\bLyra\\b: (Please give us strength.)"
  
  scene.message "Her mark glowed softly in response."
  scene.message "A warmth spread through her chest."
  
  scene.message "\\bLyra\\b: (We're trying so hard.)"
  scene.message "\\bLyra\\b: (But the enemy keeps getting stronger.)"
  
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\bLyra\\b: I know, Willow."
  scene.message "\\bLyra\\b: We have to be brave."
  
  scene.message "She thought of \\PN. Of Kael."
  scene.message "Of the journey they'd shared."
  
  scene.message "\\bLyra\\b: (We've come so far.)"
  scene.message "\\bLyra\\b: (I won't let fear stop us now.)"
  
  scene.message "The mark pulsed approvingly."
  scene.message "Xerneas believed in her."
end

GameData::Cutscene.define :ch18_ragnar_checks_in do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Your phone rang. Ragnar's face appeared on the video call."
  
  scene.message "\\bRagnar\\b: Hey! You alive?!"
  
  scene.message "\\b\\PN\\b: Ragnar? How did you get my number?"
  
  scene.message "\\bRagnar\\b: Your mom gave it to me! Duh!"
  scene.message "\\bRagnar\\b: She said you haven't called home in weeks!"
  
  scene.message "\\b\\PN\\b: I've been... busy."
  
  scene.message "\\bRagnar\\b: *serious face* \\PN."
  scene.message "\\bRagnar\\b: There's news about cult attacks everywhere."
  scene.message "\\bRagnar\\b: And wherever they are... you seem to be too."
  
  scene.message "\\b\\PN\\b: ..."
  
  scene.message "\\bRagnar\\b: I'm not dumb, okay?"
  scene.message "\\bRagnar\\b: Whatever's going on... just don't die."
  scene.message "\\bRagnar\\b: I still need to beat you at the League."
  
  scene.message "\\b\\PN\\b: ...Thanks, Ragnar."
  
  scene.message "\\bRagnar\\b: *grinning again* That's my rival!"
  scene.message "\\bRagnar\\b: Call your mom, okay? She's worried!"
  
  scene.message "The call ended."
  scene.message "Even from a distance, he cared."
end

GameData::Cutscene.define :ch18_morning_resolve do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "Morning came. The group gathered for breakfast."
  scene.message "None of them had slept well."
  
  scene.message "\\bLyra\\b: Only two more badges to go."
  scene.message "\\bKael\\b: Then the League."
  scene.message "\\b\\PN\\b: And after that... Malachar."
  
  scene.message "\\bKael\\b: We still don't know much about him."
  scene.message "\\bKael\\b: High Priest of a chaos cult."
  scene.message "\\bKael\\b: Voice of the Gnawing One."
  
  scene.message "\\bLyra\\b: Sounds like the final boss."
  
  scene.message "\\b\\PN\\b: We'll deal with him when we have to."
  scene.message "\\b\\PN\\b: Right now, we focus on what's ahead."
  scene.message "\\b\\PN\\b: Two badges. The League. Then the truth."
  
  scene.message "\\bKael\\b: Agreed. One step at a time."
  
  scene.message "\\bLyra\\b: Together?"
  
  scene.message "\\b\\PN\\b: Together."
  
  scene.message "They finished their meal in companionable silence."
  scene.message "Ready to face whatever came next."
end

#===============================================================================
# ACT 3: THE QUEST (Chapters 19-28)
#===============================================================================

#===============================================================================
# Chapter 19: The Trail - Planning the Shard Hunt
#===============================================================================

GameData::Cutscene.define :ch19_contacting_professor do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "After the encounter with Dread, you contacted Professor Aldric."
  scene.message "His face appeared on the video call, concerned."
  
  scene.message "\\bProfessor Aldric\\b: I've been researching what you told me."
  scene.message "\\bProfessor Aldric\\b: Malachar, the High Priest."
  scene.message "\\bProfessor Aldric\\b: And Nidhoggr... the Gnawing One."
  
  scene.message "\\b\\PN\\b: What did you find?"
  
  scene.message "\\bProfessor Aldric\\b: Come to my research station."
  scene.message "\\bProfessor Aldric\\b: This conversation should be in person."
  scene.message "\\bProfessor Aldric\\b: What I've discovered... is troubling."
  
  scene.message "\\bLyra\\b: That doesn't sound good."
  
  scene.message "\\bKael\\b: It never is."
  
  scene.message "The call ended."
  scene.message "You set off immediately."
end

GameData::Cutscene.define :ch19_professor_briefing do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "Professor Aldric spread ancient maps across his desk."
  scene.message "His research station was cluttered with texts and artifacts."
  
  scene.message "\\bProfessor Aldric\\b: Based on your findings and my research..."
  scene.message "\\bProfessor Aldric\\b: The guardian shards are in three locations."
  scene.message "\\bProfessor Aldric\\b: Eternal Forest. Mortality Ruins. The Blade Shrine."
  
  scene.message "\\bKael\\b: Each tied to a different Guardian."
  
  scene.message "\\bProfessor Aldric\\b: Correct."
  scene.message "\\bProfessor Aldric\\b: Eternal Forest for Xerneas, Guardian of Life."
  scene.message "\\bProfessor Aldric\\b: Mortality Ruins for Yveltal, Guardian of Death."
  scene.message "\\bProfessor Aldric\\b: The Blade Shrine for Zacian, Guardian of Valor."
  
  scene.message "\\bLyra\\b: The cult knows this too?"
  
  scene.message "\\bProfessor Aldric\\b: Almost certainly."
  scene.message "\\bProfessor Aldric\\b: You must reach the shards before they do."
  scene.message "\\bProfessor Aldric\\b: If they corrupt even one..."
end

GameData::Cutscene.define :ch19_shard_explanation do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\b\\PN\\b: What exactly are these shards?"
  
  scene.message "\\bProfessor Aldric\\b: Fragments of the original seal."
  scene.message "\\bProfessor Aldric\\b: When the Guardians imprisoned Nidhoggr..."
  scene.message "\\bProfessor Aldric\\b: They created three anchor points."
  
  scene.message "He pointed to the map."
  
  scene.message "\\bProfessor Aldric\\b: Each shard strengthens the seal."
  scene.message "\\bProfessor Aldric\\b: But they also serve as... backup keys."
  
  scene.message "\\bKael\\b: So the cult could use them to free Nidhoggr?"
  
  scene.message "\\bProfessor Aldric\\b: Worse."
  scene.message "\\bProfessor Aldric\\b: They could corrupt the shards."
  scene.message "\\bProfessor Aldric\\b: Turn the seal into a doorway."
  
  scene.message "\\bLyra\\b: That's... really bad."
  
  scene.message "\\bProfessor Aldric\\b: Your Guardian connections protect the shards."
  scene.message "\\bProfessor Aldric\\b: You must reach them, purify them, strengthen them."
  scene.message "\\bProfessor Aldric\\b: Only then will the seal hold."
end

GameData::Cutscene.define :ch19_route_planning do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: Which one first?"
  
  scene.message "\\b\\PN\\b: The Eternal Forest is closest."
  scene.message "\\b\\PN\\b: And Lyra's mark is connected to life..."
  
  scene.message "\\bLyra\\b: Then that's where we start!"
  
  scene.message "\\bKael\\b: There's a Gym on the way."
  scene.message "\\bKael\\b: We might as well collect the badge."
  
  scene.message "\\bProfessor Aldric\\b: The seventh Gym, yes."
  scene.message "\\bProfessor Aldric\\b: The Gym Leader there is... unusual."
  scene.message "\\bProfessor Aldric\\b: But reliable. A good ally."
  
  scene.message "\\b\\PN\\b: Seventh badge, then the forest."
  scene.message "\\b\\PN\\b: Sounds like a plan."
  
  scene.message "\\bProfessor Aldric\\b: Be careful out there."
  scene.message "\\bProfessor Aldric\\b: Dread won't be the last General you face."
  scene.message "\\bProfessor Aldric\\b: And Malachar... is watching."
end

GameData::Cutscene.define :ch19_journey_to_gym do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "The road to the seventh Gym was long."
  scene.message "But the journey felt lighter now."
  
  scene.message "\\bLyra\\b: We have a real plan now!"
  scene.message "\\bLyra\\b: Three shards. Three locations."
  scene.message "\\bLyra\\b: We can do this!"
  
  scene.message "\\bKael\\b: Don't get overconfident."
  scene.message "\\bKael\\b: The cult will be at every location."
  
  scene.message "\\b\\PN\\b: That's why we train."
  scene.message "\\b\\PN\\b: That's why we get stronger."
  
  scene.message "Your starter walked beside you."
  scene.message "Fully healed now. Stronger than before."
  
  scene.message "\\bLyra\\b: Look at them! So healthy!"
  scene.message "\\bLyra\\b: I'm so glad they recovered."
  
  scene.message "\\b\\PN\\b: Me too."
  scene.message "\\b\\PN\\b: They're my partner. My friend."
  
  scene.message "Your starter looked up at you with affection."
end

GameData::Cutscene.define :ch19_seventh_gym_approach do |scene|
  scene.play_bgm 'Pokemon RSE - Gym'
  
  scene.message "The seventh Gym loomed ahead."
  scene.message "An unusual building with ancient architecture."
  
  scene.message "\\bLyra\\b: It looks old..."
  scene.message "\\bLyra\\b: Like really, really old."
  
  scene.message "\\bKael\\b: Dragon-type Gym."
  scene.message "\\bKael\\b: The Leader is said to be descended from Dragon Tamers."
  
  scene.message "\\b\\PN\\b: Dragons. Nice."
  
  scene.message "\\bLyra\\b: Are you being sarcastic?"
  
  scene.message "\\b\\PN\\b: Only a little."
  
  scene.message "You approached the entrance."
  scene.message "Your marks pulsed—the Gym Leader's aura was powerful."
  
  scene.message "\\bKael\\b: They're strong."
  scene.message "\\bKael\\b: Really strong."
  
  scene.message "\\b\\PN\\b: Good. I need a challenge."
end

GameData::Cutscene.define :ch19_seventh_gym_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Gym'
  
  scene.message "\\bGym Leader\\b: Welcome, young trainers."
  scene.message "\\bGym Leader\\b: I am the keeper of this Gym."
  scene.message "\\bGym Leader\\b: Guardian of the dragon's legacy."
  
  scene.message "The Gym Leader studied you with ancient eyes."
  
  scene.message "\\bGym Leader\\b: You three... you're different."
  scene.message "\\bGym Leader\\b: I sense great destiny in you."
  scene.message "\\bGym Leader\\b: And great danger following."
  
  scene.message "\\bKael\\b: You have no idea."
  
  scene.message "\\bGym Leader\\b: Oh, but I do."
  scene.message "\\bGym Leader\\b: Dragons remember the old times."
  scene.message "\\bGym Leader\\b: They remember Nidhoggr."
  
  scene.message "The name made your marks pulse."

  scene.message "The Leader touched two fingers to your brow. For a heartbeat, the arena disappeared."
  scene.message "You saw Dread kneeling before a broken crown, centuries younger, while a black root threaded itself through his shadow."
  scene.message "Behind him stood a ring of stones identical to the formation near the Eternal Forest."
  scene.message "\\bGym Leader\\b: That memory wasn't yours. It was caught in the darkness following you."
  scene.message "\\bKael\\b: Then Dread isn't only hunting us. He's being pulled back to where he began."
  scene.message "\\bGym Leader\\b: Follow that pull—but do not mistake memory for truth."
  
  scene.message "\\bGym Leader\\b: Show me your strength, Chosen Ones."
  scene.message "\\bGym Leader\\b: Prove you can face what's coming."
  
  scene.trainer_battle :GYMLEADER, "Gym Leader 7", 0
end

GameData::Cutscene.define :ch19_seventh_gym_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  scene.message "The seventh Gym Badge was yours!"
  
  scene.message "\\bGym Leader\\b: Magnificent!"
  scene.message "\\bGym Leader\\b: You've truly earned this badge!"
  
  scene.message "You received the seventh badge!"
  
  scene.message "\\bGym Leader\\b: Before you go..."
  scene.message "\\bGym Leader\\b: A word of advice."
  
  scene.message "The Leader's expression grew serious."
  
  scene.message "\\bGym Leader\\b: The Eternal Forest is wounded."
  scene.message "\\bGym Leader\\b: My dragons have felt it."
  scene.message "\\bGym Leader\\b: Something dark has taken root there."
  
  scene.message "\\bLyra\\b: The cult?"
  
  scene.message "\\bGym Leader\\b: Perhaps. Or something worse."
  scene.message "\\bGym Leader\\b: Be wary, Guardian of Life."
  scene.message "\\bGym Leader\\b: Death hunts in that forest."

  scene.message "A dragon rider entered and placed a carved signal whistle in your hand."
  scene.message "\\bGym Leader\\b: My riders patrol the forest canopy, but the corruption drives most Pokémon away."
  scene.message "\\bGym Leader\\b: Sound this once and they will open an escape corridor. Twice, and they will carry the wounded."
  scene.message "\\bGym Leader\\b: A Gym's duty does not end when the battle does."
  
  scene.set_switch SW::BADGE_7, true
end

GameData::Cutscene.define :ch19_after_gym_planning do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Outside the Gym, you regrouped."
  
  scene.message "\\bLyra\\b: Just one more badge after this!"
  scene.message "\\bLyra\\b: Then the League!"
  
  scene.message "\\bKael\\b: The League is secondary."
  scene.message "\\bKael\\b: The shards come first."
  
  scene.message "\\b\\PN\\b: Kael's right."
  scene.message "\\b\\PN\\b: The League can wait."
  scene.message "\\b\\PN\\b: The world can't."
  
  scene.message "\\bLyra\\b: I know, I know."
  scene.message "\\bLyra\\b: But we're so close!"
  scene.message "\\bLyra\\b: Let's just... do both?"
  
  scene.message "\\bKael\\b: *sighs* Optimist."
  
  scene.message "\\b\\PN\\b: She's not wrong though."
  scene.message "\\b\\PN\\b: We can grab the last badge on our way."
  scene.message "\\b\\PN\\b: Then deal with everything else."
  
  scene.message "\\bLyra\\b: See? Perfect plan!"
end

GameData::Cutscene.define :ch19_team_meal do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "That evening, you all shared a meal together."
  scene.message "A rare moment of peace."
  
  scene.message "\\bLyra\\b: Remember when we first met?"
  scene.message "\\bLyra\\b: I never imagined we'd come this far."
  
  scene.message "\\bKael\\b: *picking at food* I tried to ignore you both."
  scene.message "\\bKael\\b: Clearly, I failed."
  
  scene.message "\\b\\PN\\b: We're glad you did."
  
  scene.message "\\bLyra\\b: Aww! Group hug?"
  scene.message "\\bKael\\b: No."
  scene.message "\\bLyra\\b: ...Later?"
  scene.message "\\bKael\\b: ...Maybe."
  
  scene.message "You laughed. For just a moment."
  scene.message "Tomorrow would bring new challenges."
  scene.message "But tonight, you were just friends."
end

GameData::Cutscene.define :ch19_pokemon_bonding do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "After dinner, your Pokémon gathered together."
  scene.message "Your teams had become a family too."
  
  scene.message "Shadow and Willow played together."
  scene.message "Mimi watched over them like a parent."
  
  scene.message "\\bLyra\\b: Look at them!"
  scene.message "\\bLyra\\b: Our Pokémon are friends too!"
  
  scene.message "\\bKael\\b: Shadow doesn't make friends easily."
  scene.message "\\bKael\\b: Neither do I."
  
  scene.message "\\b\\PN\\b: And yet here we are."
  
  scene.message "Your starter joined the others."
  scene.message "The whole group played in the evening light."
  
  scene.message "\\bKael\\b: ...It's nice."
  scene.message "\\bKael\\b: Having people to travel with."
  
  scene.message "\\bLyra\\b: Kael! Was that a compliment?!"
  
  scene.message "\\bKael\\b: Don't make it weird."
end

GameData::Cutscene.define :ch19_approach_eternal_forest do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "The next morning, you set off for the Eternal Forest."
  scene.message "The journey would take a few days."
  
  scene.message "\\bLyra\\b: I've heard stories about the forest."
  scene.message "\\bLyra\\b: They say it's where life began."
  scene.message "\\bLyra\\b: That Xerneas blessed the first trees."
  
  scene.message "\\bKael\\b: Just stories."
  
  scene.message "\\bLyra\\b: Are they though?"
  scene.message "\\bLyra\\b: After everything we've seen?"
  
  scene.message "Her mark glowed softly."
  scene.message "Responding to the thought of Xerneas."
  
  scene.message "\\b\\PN\\b: Whatever the truth, we'll find out soon."
  scene.message "\\b\\PN\\b: The shard is waiting."
  
  scene.message "The path wound through the countryside."
  scene.message "Drawing ever closer to the legendary forest."
end

GameData::Cutscene.define :ch19_elena_intro do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "A familiar face waited at the edge of Eternal Forest."
  
  scene.message "\\bLyra\\b: ELENA!"
  scene.message "She ran and hugged the older woman."
  
  scene.message "\\bElena\\b: Little sis! You've grown so much!"
  
  scene.message "\\b\\PN\\b: You have a sister?"
  
  scene.message "\\bLyra\\b: Elena's my older sister!"
  scene.message "\\bLyra\\b: She's a traveling researcher!"
  
  scene.message "\\bElena\\b: *smiling* That's right."
  scene.message "\\bElena\\b: I study rare ecosystems."
  scene.message "\\bElena\\b: And right now, this forest needs help."
  
  scene.message "\\bKael\\b: The Gym Leader warned us."
  scene.message "\\bKael\\b: Something's wrong here."
  
  scene.message "\\bElena\\b: More than wrong."
  scene.message "\\bElena\\b: Something's dying."
end

GameData::Cutscene.define :ch19_elena_warning do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Elena led you to a viewpoint overlooking the forest."
  scene.message "Even from here, you could see the problem."
  
  scene.message "Patches of dead trees dotted the landscape."
  scene.message "Gray against the green. Spreading."
  
  scene.message "\\bElena\\b: It started weeks ago."
  scene.message "\\bElena\\b: Pokémon are fleeing. Trees are dying."
  scene.message "\\bElena\\b: Something is draining the life from this place."
  
  scene.message "\\bLyra\\b: The cult?"
  
  scene.message "\\bElena\\b: Possibly. I've seen hooded figures."
  scene.message "\\bElena\\b: They're searching for something."
  
  scene.message "\\bKael\\b: The shard."
  
  scene.message "\\bElena\\b: What shard?"
  
  scene.message "\\b\\PN\\b: A fragment of Xerneas's power."
  scene.message "\\b\\PN\\b: We need to find it before they do."
  
  scene.message "\\bElena\\b: Then let me guide you in."
  scene.message "\\bElena\\b: I know these paths better than anyone."
end

GameData::Cutscene.define :ch19_elena_and_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "While Kael scouted ahead, the sisters talked."
  
  scene.message "\\bElena\\b: I worried about you, you know."
  scene.message "\\bElena\\b: When I heard about the cult attacks..."
  
  scene.message "\\bLyra\\b: I'm tougher than I look."
  
  scene.message "\\bElena\\b: You were always tough."
  scene.message "\\bElena\\b: You just didn't know it yet."
  
  scene.message "\\bLyra\\b: Elena... I need to tell you something."
  scene.message "\\bLyra\\b: About the mark on my hand."
  
  scene.message "\\bElena\\b: *gently* I know."
  scene.message "\\bElena\\b: I felt it the moment I saw you."
  scene.message "\\bElena\\b: Xerneas chose you. Didn't it?"
  
  scene.message "\\bLyra\\b: How did you—"
  
  scene.message "\\bElena\\b: I'm your sister."
  scene.message "\\bElena\\b: I know everything about you."
  
  scene.message "They embraced."
  scene.message "Some bonds transcended destiny."
end

GameData::Cutscene.define :ch19_ragnar_wants_to_help do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "As you prepared to enter the Eternal Forest, footsteps approached."
  
  scene.message "\\bRagnar\\b: WAIT!"
  
  scene.message "Ragnar ran up, out of breath, Raichu at his heels."
  
  scene.message "\\bRagnar\\b: *panting* I heard... you're going... somewhere dangerous!"
  scene.message "\\bRagnar\\b: I'm coming with you!"
  
  scene.message "\\b\\PN\\b: Ragnar, you can't. This is—"
  
  scene.message "\\bRagnar\\b: I KNOW! Destiny stuff! Chosen ones!"
  scene.message "\\bRagnar\\b: But I'm your RIVAL!"
  scene.message "\\bRagnar\\b: That means something!"
  
  scene.message "\\bKael\\b: He'd just get in the way."
  
  scene.message "\\bRagnar\\b: *glaring* I've got SIX badges, spooky boy!"
  
  scene.message "\\bLyra\\b: Ragnar... this is really dangerous."
  scene.message "\\bLyra\\b: Like, world-ending dangerous."
  
  scene.message "\\bRagnar\\b: ..."
  scene.message "\\bRagnar\\b: *deflating* Fine."
  scene.message "\\bRagnar\\b: But you BETTER come back, \\PN."
  scene.message "\\bRagnar\\b: I'll be at the League, waiting."
  
  scene.message "\\b\\PN\\b: I'll be there. Promise."
  
  scene.message "\\bRagnar\\b: You better be."
  
  scene.message "He walked away reluctantly."
  scene.message "For once, he didn't run."
end

GameData::Cutscene.define :ch19_preparing_to_enter do |scene|
  scene.play_bgm 'Pokemon RSE - Tension'
  
  scene.message "At the forest's edge, you made final preparations."
  scene.message "Elena handed out supplies."
  
  scene.message "\\bElena\\b: Potions. Antidotes. Emergency flares."
  scene.message "\\bElena\\b: The forest is dangerous right now."
  
  scene.message "\\bKael\\b: We've faced worse."
  
  scene.message "\\bElena\\b: *studying him* I believe you."
  scene.message "\\bElena\\b: But stay close anyway."
  
  scene.message "\\b\\PN\\b: Elena... you should stay outside."
  scene.message "\\b\\PN\\b: If the cult is in there..."
  
  scene.message "\\bElena\\b: I can handle myself."
  scene.message "\\bElena\\b: Besides, someone needs to watch Lyra's back."
  
  scene.message "\\bLyra\\b: Hey! I don't need watching!"
  
  scene.message "\\bElena\\b: *smiling* Humor me."
  
  scene.message "The group moved toward the treeline."
  scene.message "The Eternal Forest waited."
end

#===============================================================================
# Chapter 20: Eternal Forest - Arrival
#===============================================================================

GameData::Cutscene.define :ch20_forest_entry do |scene|
  scene.play_bgm 'Pokemon XY - Santalune Forest'
  
  # TODO: Event Sequence - Forest Entry
  # scene.message "The Eternal Forest stretched before you."
  # scene.message "Beautiful, but... wrong."
  
  scene.message "\\bLyra\\b: I can feel it..."
  scene.message "\\bLyra\\b: The trees are in pain."
  
  scene.message "\\bElena\\b: You can sense that?"
  
  scene.message "\\bKael\\b: She's connected to the Life Guardian."
  scene.message "\\bKael\\b: It makes sense she'd feel the forest's suffering."
  
  scene.message "\\b\\PN\\b: Then let's find the source and stop it."
  
  # TODO: Event Sequence - Stepping In
  # scene.message "You stepped into the forest."
  # scene.message "The canopy closed overhead like a green cathedral."
  
  scene.message "\\bElena\\b: Stay close."
  scene.message "\\bElena\\b: The paths shift in this forest."
  scene.message "\\bElena\\b: It's easy to get lost."
end

GameData::Cutscene.define :ch20_first_signs do |scene|
  scene.play_bgm 'Pokemon XY - Santalune Forest'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Forest Feelings
  # scene.message "Even the healthy parts of the forest felt... sad."
  # scene.message "The trees seemed to lean toward her as she passed."
  
  scene.message "\\bLyra\\b: (They know I'm connected to Xerneas.)"
  scene.message "\\bLyra\\b: (They're asking for help.)"
  
  # TODO: Event Sequence - Touch Tree
  # scene.message "She touched a tree gently."
  # scene.message "Her mark glowed, and the bark warmed."
  
  scene.message "\\bLyra\\b: I'm trying. I promise."
  
  scene.message "\\bKael\\b: Lyra? You okay?"
  
  scene.message "\\bLyra\\b: Yeah. Just..."
  scene.message "\\bLyra\\b: Feeling a lot right now."
  
  scene.message "\\bElena\\b: *worried* What kind of feelings?"
  
  scene.message "\\bLyra\\b: Hope. Fear. Pain."
  scene.message "\\bLyra\\b: The forest is alive, Elena."
  scene.message "\\bLyra\\b: Really alive. And it's scared."
end

GameData::Cutscene.define :ch20_forest_beauty do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Beautiful Parts
  # scene.message "Despite the corruption, parts of the forest were still beautiful."
  # scene.message "Ancient trees that seemed to touch the clouds."
  # scene.message "Flowers that glowed with gentle light."
  
  scene.message "\\bLyra\\b: *wonderstruck* It's incredible..."
  
  scene.message "\\bElena\\b: The Eternal Forest has stood for millennia."
  scene.message "\\bElena\\b: Every tree here is older than recorded history."
  scene.message "\\bElena\\b: The ancient texts say Xerneas planted the first seed."
  
  scene.message "\\bKael\\b: And someone wants to destroy it."
  scene.message "\\bKael\\b: That's unforgivable."
  
  scene.message "\\bLyra\\b: Wait... did Kael just express an emotion?"
  
  scene.message "\\bKael\\b: Anger is an emotion."
  
  scene.message "\\bLyra\\b: I'll take it!"
  
  # TODO: Event Sequence - Press Deeper
  # scene.message "You pressed deeper into the woods."
  # scene.message "The corruption grew stronger."
end

GameData::Cutscene.define :ch20_wildlife_fleeing do |scene|
  scene.play_bgm 'Pokemon RSE - Tension'
  
  # TODO: Event Sequence - Fleeing Pokémon
  # scene.message "Pokémon were fleeing in droves."
  # scene.message "Oddish. Bulbasaur. Deerling."
  # scene.message "All running from something deeper in the forest."
  
  scene.message "\\bElena\\b: This is worse than I thought."
  scene.message "\\bElena\\b: They're abandoning their homes."
  
  # TODO: Event Sequence - Phantump
  # scene.message "A Phantump drifted past, crying softly."
  # scene.message "Ghost-type. Born from a child's spirit and a tree stump."
  
  scene.message "\\bKael\\b: Even the Ghost-types are leaving."
  scene.message "\\bKael\\b: Whatever's in there is bad."
  
  scene.message "\\b\\PN\\b: We keep moving."
  scene.message "\\b\\PN\\b: We can't help them by running away."
  
  # TODO: Event Sequence - Kneeling Beside Oddish
  # scene.message "Lyra knelt beside a frightened Oddish."
  scene.message "Her mark glowed as she soothed it."
  
  scene.message "\\bLyra\\b: It's okay. We'll fix this."
  scene.message "\\bLyra\\b: I promise."
end

GameData::Cutscene.define :ch20_cult_evidence do |scene|
  scene.play_bgm 'Pokemon RSE - Evil Team'
  
  # TODO: Event Sequence - Cult Evidence
  # scene.message "Elena stopped at a clearing."
  # scene.message "Dark symbols were painted on the trees."
  
  scene.message "\\bElena\\b: I saw these before."
  scene.message "\\bElena\\b: The hooded figures were chanting here."
  
  scene.message "\\bKael\\b: Cult markings."
  scene.message "\\bKael\\b: They're conducting rituals."
  
  scene.message "\\b\\PN\\b: Trying to corrupt the shard."
  
  scene.message "\\bLyra\\b: *touching a symbol*"
  
  # TODO: Event Sequence - Recoil
  # scene.message "She recoiled as if burned."
  
  scene.message "\\bLyra\\b: Don't touch them!"
  scene.message "\\bLyra\\b: They're... wrong. Poisonous to life."
  
  scene.message "\\bElena\\b: Can you sense where they lead?"
  
  # TODO: Event Sequence - Concentrate
  # scene.message "Lyra closed her eyes. Concentrated."
  
  scene.message "\\bLyra\\b: Deeper. Toward the World Tree."
  scene.message "\\bLyra\\b: That's where they're focusing their power."
end

GameData::Cutscene.define :ch20_kael_scouts do |scene|
  scene.play_bgm 'Pokemon RSE - Tension'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Scouting Ahead
  # scene.message "Kael ranged ahead with Shadow."
  # scene.message "The Zorua's senses were sharper than any human's."
  
  scene.message "\\bShadow\\b: Zor... zorua..."
  
  scene.message "\\bKael\\b: (How many?)"
  
  # TODO: Event Sequence - Illusion Fingers
  # scene.message "The Zorua held up several illusion fingers."
  # scene.message "At least a dozen cultists ahead."
  
  scene.message "\\bKael\\b: (They're setting up a perimeter.)"
  scene.message "\\bKael\\b: (Protecting whatever they're doing at the World Tree.)"
  
  # TODO: Event Sequence - Return to Group
  # scene.message "He returned to the group silently."
  
  scene.message "\\bKael\\b: Cultists ahead. Maybe fifteen."
  scene.message "\\bKael\\b: They're guarding the main path."
  
  scene.message "\\bElena\\b: There's a side route."
  scene.message "\\bElena\\b: Harder, but it avoids them."
  
  scene.message "\\b\\PN\\b: We take the side route."
  scene.message "\\b\\PN\\b: Surprise is our advantage."
end

GameData::Cutscene.define :ch20_corruption_spreads do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Visible Corruption
  # scene.message "Deeper in the forest, the corruption was visible."
  # scene.message "Dark veins spread through the bark."
  # scene.message "Leaves withered. Flowers died."
  
  scene.message "\\bLyra\\b: *clutching chest* It hurts..."
  
  scene.message "\\bKael\\b: *concerned* Lyra?"
  
  scene.message "\\bLyra\\b: I can feel them dying."
  scene.message "\\bLyra\\b: Every tree. Every flower."
  scene.message "\\bLyra\\b: Like screaming in my head."
  
  scene.message "\\bElena\\b: We need to hurry."
  scene.message "\\bElena\\b: The source is near the World Tree."
  
  scene.message "\\b\\PN\\b: Lyra, can you keep going?"
  
  scene.message "\\bLyra\\b: *determined* I have to."
  scene.message "\\bLyra\\b: They're counting on me."
  
  # TODO: Event Sequence - Mark Blazes
  # scene.message "She straightened despite the pain."
  # scene.message "The mark of Xerneas blazed on her hand."
end

GameData::Cutscene.define :ch20_rest_point do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Finding Clearing
  # scene.message "You found a small clearing untouched by corruption."
  # scene.message "A natural resting point."
  
  scene.message "\\bElena\\b: We should rest here."
  scene.message "\\bElena\\b: It'll be dark soon."
  
  scene.message "\\bKael\\b: Traveling at night would be dangerous."
  scene.message "\\bKael\\b: Especially with cultists around."
  
  scene.message "\\b\\PN\\b: Agreed. We make camp."
  
  # TODO: Event Sequence - Lyra Exhausted
  # scene.message "Lyra sat against a tree, exhausted."
  # scene.message "The constant pain from the forest was draining her."
  
  scene.message "\\bElena\\b: *sitting beside her* How are you holding up?"
  
  scene.message "\\bLyra\\b: Tired. Really tired."
  scene.message "\\bLyra\\b: But I can't stop now."
  
  scene.message "\\bElena\\b: You've grown so strong, little sis."
  scene.message "\\bElena\\b: Mom and Dad would be proud."
  
  scene.message "\\bLyra\\b: *small smile* Thanks, Elena."
end

GameData::Cutscene.define :ch20_sisters_talk do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Sisters Talking
  # scene.message "While the others slept, Elena and Lyra talked quietly."
  
  scene.message "\\bElena\\b: Tell me about him."
  scene.message "\\bElena\\b: The boy with the Zorua."
  
  scene.message "\\bLyra\\b: *blushing* Kael? What about him?"
  
  scene.message "\\bElena\\b: *smiling* You look at him differently."
  scene.message "\\bElena\\b: Than you look at \\PN."
  
  scene.message "\\bLyra\\b: I... he's..."
  scene.message "\\bLyra\\b: It's complicated."
  
  scene.message "\\bElena\\b: It always is."
  
  scene.message "\\bLyra\\b: He's been through so much, Elena."
  scene.message "\\bLyra\\b: He lost his sister. He was alone for years."
  scene.message "\\bLyra\\b: But he's still kind, underneath everything."
  
  scene.message "\\bElena\\b: Sounds like you understand him."
  
  scene.message "\\bLyra\\b: I want to."
  scene.message "\\bLyra\\b: I want him to know he's not alone anymore."
  
  scene.message "Elena smiled at her sister."
  scene.message "Love in the midst of chaos. How very Lyra."
end

GameData::Cutscene.define :ch20_pokemon_watch do |scene|
  scene.play_bgm 'Pokemon XY - Santalune Forest'
  
  scene.message "\\i[YOUR STARTER'S PERSPECTIVE]"
  
  scene.message "The Pokémon took turns keeping watch."
  scene.message "Shadow's ears twitched at every sound."
  scene.message "Willow curled close to Mimi."
  
  scene.message "Your starter sat alert, guarding."
  scene.message "The forest felt dangerous. Wrong."
  
  scene.message "But their trainer was here."
  scene.message "Their friends were here."
  scene.message "They would protect them all."
  
  scene.message "A small Celebi drifted through the clearing."
  scene.message "Paused. Looked at the gathered Pokémon."
  
  scene.message "\\bCelebi\\b: Bi..."
  
  scene.message "It seemed to say 'thank you' and 'hurry.'"
  scene.message "Then vanished into the trees."
  
  scene.message "Your starter understood."
  scene.message "Even the forest's guardians were counting on them."
end

GameData::Cutscene.define :ch20_lyra_vision do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\i[LYRA'S VISION]"
  scene.message "That night, Xerneas came to her in dreams."
  
  scene.message "The Life Guardian stood in a field of dying flowers."
  scene.message "Beautiful. Majestic. But fading."
  
  scene.message "\\bXerneas\\b: Child of my essence..."
  scene.message "\\bXerneas\\b: The World Tree withers."
  scene.message "\\bXerneas\\b: Without it, I too shall fade."
  
  scene.message "\\bLyra\\b: (In the dream) How do I save you?"
  
  scene.message "\\bXerneas\\b: Sacrifice."
  scene.message "\\bXerneas\\b: Life for life."
  scene.message "\\bXerneas\\b: Are you prepared?"
  
  scene.message "Lyra hesitated. Sacrifice..."
  scene.message "But she thought of Kael. Of \\PN. Of Elena."
  scene.message "Of everyone counting on her."
  
  scene.message "\\bLyra\\b: ...Yes."
  
  scene.message "\\bXerneas\\b: Then come. The World Tree waits."
  
  scene.camera_flash 20
  scene.fade_in
  
  scene.message "She woke with tears on her cheeks."
  scene.message "But her resolve was iron."
end

GameData::Cutscene.define :ch20_morning_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "Morning came too quickly."
  scene.message "The group gathered their supplies."
  
  scene.message "\\bKael\\b: You look tired."
  
  scene.message "\\bLyra\\b: Just dreams."
  scene.message "\\bLyra\\b: Important ones."
  
  scene.message "\\b\\PN\\b: Xerneas?"
  
  scene.message "Lyra nodded."
  
  scene.message "\\b\\PN\\b: What did they say?"
  
  scene.message "\\bLyra\\b: That we need to hurry."
  scene.message "\\bLyra\\b: The World Tree is dying."
  scene.message "\\bLyra\\b: And I'm the only one who can save it."
  
  scene.message "\\bKael\\b: You're not alone."
  scene.message "\\bKael\\b: Whatever you have to do, we're with you."
  
  scene.message "\\bLyra\\b: *grateful* Thank you, Kael."
  
  scene.message "They set off toward the heart of the forest."
  scene.message "Lyra could feel it now."
  scene.message "A massive presence. Ancient and wise."
  scene.message "But weakening. Fading."
  
  scene.message "\\bLyra\\b: It's suffering so much..."
  scene.message "\\bLyra\\b: I can barely stand it."
  
  scene.message "\\bKael\\b: Just a little further."
  scene.message "\\bKael\\b: Then we stop whatever's causing this."
  
  scene.message "\\b\\PN\\b: And we find the shard."
  scene.message "\\b\\PN\\b: Before the cult does."
  
  scene.message "The corruption thickened around them."
  scene.message "The final approach had begun."
end

GameData::Cutscene.define :ch20_cult_patrol do |scene|
  scene.play_bgm 'Pokemon RSE - Evil Team'
  
  scene.message "\\bShadow\\b: Zor!"
  scene.message "Shadow's warning came just in time."
  
  scene.message "A cult patrol emerged from the corrupted trees."
  scene.message "Four cultists with dark Pokémon."
  
  scene.message "\\bCultist\\b: Intruders!"
  scene.message "\\bCultist\\b: The Chosen Ones are here!"
  
  scene.message "\\bKael\\b: So much for surprise."
  
  scene.message "\\b\\PN\\b: Fight through!"
  scene.message "\\b\\PN\\b: We can't let them warn the others!"
  
  scene.trainer_battle :CULTIST_PATROL, "Hand Patrol", 0
  
  scene.message "The cultists fell quickly."
  scene.message "But one had escaped into the trees."
  
  scene.message "\\bElena\\b: They know we're coming."
  
  scene.message "\\b\\PN\\b: Then we don't have time to waste."
  scene.message "\\b\\PN\\b: Move!"
end

GameData::Cutscene.define :ch20_final_approach do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "And then you saw it."
  scene.message "The World Tree."
  
  scene.message "Ancient beyond imagining."
  scene.message "Its trunk wider than a city block."
  scene.message "Its branches reaching into the clouds."
  
  scene.message "And dying."
  
  scene.message "Dark corruption crawled up its bark."
  scene.message "Cultists gathered at its base, chanting."
  scene.message "Dark energy flowed into the sacred tree."
  
  scene.message "\\bLyra\\b: *gasps* No..."
  
  scene.message "\\bElena\\b: They're killing it."
  scene.message "\\bElena\\b: They're actually killing the World Tree."
  
  scene.message "\\bKael\\b: Not if we stop them."
  
  scene.message "\\b\\PN\\b: Everyone ready?"
  scene.message "\\b\\PN\\b: This is going to be a fight."
  
  # TODO: Event Sequence - Marks Blaze
  # scene.message "Your marks blazed in unison."
  # scene.message "The battle for the Eternal Forest was about to begin."
end

#===============================================================================
# Chapter 21: Eternal Forest - The Corruption
#===============================================================================

GameData::Cutscene.define :ch21_world_tree do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - World Tree
  # scene.message "The World Tree stood before you."
  # scene.message "Ancient beyond measure. Beautiful beyond words."
  # scene.message "And dying."
  
  scene.message "\\bLyra\\b: *whispering* Oh no..."
  
  # TODO: Event Sequence - Corruption Visual
  # scene.message "Dark veins crawled up its trunk."
  # scene.message "Leaves fell like black tears."
  
  scene.message "\\bElena\\b: The corruption is worse than I thought."
  scene.message "\\bElena\\b: At this rate, the tree will die within days."
  
  scene.message "\\bKael\\b: And if it dies?"
  
  scene.message "\\bElena\\b: The entire forest goes with it."
  scene.message "\\bElena\\b: And possibly... the Guardian of Life."
  
  scene.message "\\bLyra\\b: Xerneas..."
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Her mark pulsed with pain and sorrow."
end

GameData::Cutscene.define :ch21_assessing_damage do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Approach Tree
  # scene.message "Lyra approached the World Tree slowly."
  # scene.message "She could feel its agony in her bones."
  
  scene.message "\\bLyra\\b: (It's so old. So wise.)"
  scene.message "\\bLyra\\b: (And they're killing it.)"
  
  # TODO: Event Sequence - Hand on Bark
  # scene.message "She pressed her hand against the bark."
  # scene.message "Her mark blazed—and she saw."
  
  # scene.message "Visions of the corruption's source."
  # scene.message "A machine, feeding on life energy."
  # scene.message "Draining everything into itself."
  
  scene.message "\\bLyra\\b: *gasping* There's a machine!"
  scene.message "\\bLyra\\b: Deeper in. That's what's causing this."
  
  scene.message "\\bKael\\b: Then we destroy it."
  
  scene.message "\\b\\PN\\b: Lead the way, Lyra."
end

GameData::Cutscene.define :ch21_cult_base do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  
  # TODO: Event Sequence - Cult Base
  # scene.message "At the forest's heart, you found it."
  # scene.message "A clearing filled with cult activity."
  
  # scene.message "Tents. Equipment. Dark energy containment units."
  # scene.message "This wasn't just an outpost—it was a base."
  
  scene.message "\\bElena\\b: They've been here for weeks."
  scene.message "\\bElena\\b: Planning this."
  
  scene.message "\\bKael\\b: Look at the symbols."
  scene.message "\\bKael\\b: They match what we saw at the temples."
  
  scene.message "\\b\\PN\\b: This is a major operation."
  scene.message "\\b\\PN\\b: Malachar must really want this shard."
  
  scene.message "\\bLyra\\b: The machine is at the center."
  scene.message "\\bLyra\\b: We need to get through their guards."
  
  scene.message "\\bKael\\b: *cracking knuckles* Gladly."
end

GameData::Cutscene.define :ch21_ragnar_supplies do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "At the forest's edge, a figure waved frantically."
  
  scene.message "\\bRagnar\\b: OVER HERE!"
  
  scene.message "\\b\\PN\\b: Ragnar?! I told you to stay away!"
  
  scene.message "\\bRagnar\\b: I AM staying away!"
  scene.message "\\bRagnar\\b: I'm at the edge! Not IN the forest!"
  
  # TODO: Event Sequence - Backpack
  # scene.message "He held up a massive backpack."
  
  scene.message "\\bRagnar\\b: Supplies! Medicine! Food!"
  scene.message "\\bRagnar\\b: I figured you'd need backup support!"
  
  scene.message "\\bElena\\b: *to \\PN* Who is this?"
  
  scene.message "\\b\\PN\\b: My rival. He's... helpful sometimes."
  
  scene.message "\\bRagnar\\b: SOMETIMES?! I'm ALWAYS helpful!"
  
  scene.message "\\bLyra\\b: *taking supplies* Thank you, Ragnar!"
  
  scene.message "\\bRagnar\\b: *blushing* Y-yeah, well..."
  scene.message "\\bRagnar\\b: Can't have you running out of potions, right?"
  
  scene.message "\\bKael\\b: *grudgingly* ...Appreciated."
  
  scene.message "\\bRagnar\\b: *shocked* Did he just—"
  scene.message "\\bRagnar\\b: Did Broody just THANK me?!"
  
  scene.message "\\bKael\\b: Don't let it go to your head."
  
  scene.message "\\bRagnar\\b: TOO LATE!"
end

GameData::Cutscene.define :ch21_cult_machine do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  scene.camera_shake 3, 10
  
  # TODO: Event Sequence - Machine Pulsing
  # scene.message "The massive machine pulsed with dark energy."
  # scene.message "Tubes connected it to the World Tree."
  # scene.message "Draining life force directly."
  
  scene.message "\\bCult Engineer\\b: The extraction is 80% complete!"
  scene.message "\\bCult Engineer\\b: Soon, Xerneas's power will be ours!"
  
  scene.message "\\bCultist\\b: The High Priest will be pleased."
  scene.message "\\bCultist\\b: Nidhoggr hungers for this energy."
  
  scene.message "\\bKael\\b: They're draining the forest's life force."
  scene.message "\\bKael\\b: Feeding it to... that thing."
  
  scene.message "\\bLyra\\b: *mark blazing* I WON'T LET THEM!"
  
  scene.message "\\b\\PN\\b: Neither will we. Let's take them down!"
  
  # TODO: Event Sequence - Charge
  # scene.message "You charged into the clearing."
  # scene.message "The battle for the World Tree had begun."
end

GameData::Cutscene.define :ch21_first_wave do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Battle'
  
  # TODO: Event Sequence - Fierce Battle
  # scene.message "The battle was fierce from the start."
  # scene.message "Cultists rushed to defend their machine."
  
  scene.trainer_battle :CULTIST_WAVE1, "Hand Assault", 0
  
  scene.message "\\bCult Engineer\\b: Don't let them reach the extractor!"
  scene.message "\\bCult Engineer\\b: General Dread will have our heads!"
  
  scene.message "\\bKael\\b: Dread is here?"
  
  scene.message "\\b\\PN\\b: Focus! Keep pushing forward!"
  
  # TODO: Event Sequence - Pokémon Fighting
  # scene.message "Shadow tore through enemy Pokémon."
  # scene.message "Willow's fairy energy countered their dark attacks."
  # scene.message "Your team fought as one."
end

GameData::Cutscene.define :ch21_elena_fights do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Battle'
  
  scene.message "\\i[ELENA'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Elena Fights
  # scene.message "Elena hadn't expected to fight today."
  # scene.message "But her research Pokémon were ready."
  
  scene.message "\\bElena\\b: Beautifly, Silver Wind!"
  
  # TODO: Event Sequence - Strike
  # scene.message "Her Pokémon struck a cultist's team."
  # scene.message "Years of field research had made her tough."
  
  scene.message "\\bLyra\\b: Elena, behind you!"
  
  # TODO: Event Sequence - Spin Attack
  # scene.message "Elena spun and directed Beautifly."
  # scene.message "Another enemy fell."
  
  scene.message "\\bElena\\b: I'm not just a researcher, little sis."
  scene.message "\\bElena\\b: You think I survived the wild by being weak?"
  
  scene.message "\\bLyra\\b: *proud* That's my sister!"
  
  # TODO: Event Sequence - Sisters Forward
  # scene.message "Together, the sisters pushed forward."
  # scene.message "Family fighting side by side."
end

GameData::Cutscene.define :ch21_cult_battle do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Battle'
  
  # TODO: Event Sequence - More Cultists
  # scene.message "More cultists emerged from the tents."
  # scene.message "Reinforcements. This was a bigger operation than expected."
  
  scene.trainer_battle :SHATTEREDHAND, "Cult Engineer", 0
  
  scene.message "\\bElena\\b: The machine! We need to destroy it!"
  
  scene.message "\\bKael\\b: Cover me!"
  
  # TODO: Event Sequence - Sprint
  # scene.message "He sprinted toward the device."
  
  scene.message "\\b\\PN\\b: Lyra, protect Kael!"
  scene.message "\\bLyra\\b: On it!"
  
  # TODO: Event Sequence - Shadow and Willow
  # scene.message "Shadow and Willow fought side by side."
  # scene.message "Dark and fairy. Unlikely allies."
  # scene.message "But perfect together."
  
  scene.message "\\bKael\\b: Almost there—!"
end

GameData::Cutscene.define :ch21_kaels_assault do |scene|
  scene.play_bgm 'Pokemon XY - Battle! Team Flare'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Machine Base
  # scene.message "Kael reached the machine's base."
  # scene.message "Up close, it was monstrous."
  # scene.message "Pulsing with stolen life energy."
  
  scene.message "\\bKael\\b: (This is an abomination.)"
  scene.message "\\bKael\\b: (Yveltal would want it destroyed.)"
  
  # TODO: Event Sequence - Search Weak Points
  # scene.message "He searched for weak points."
  # scene.message "Power cables. Control panels. Anything."
  
  scene.message "\\bCult Engineer\\b: Get away from there!"
  
  # TODO: Event Sequence - Lunge
  # scene.message "A cultist lunged at him."
  # scene.message "Shadow intercepted with a snarl."
  
  scene.message "\\bShadow\\b: ZORUA!"
  
  scene.message "\\bKael\\b: Thanks, buddy."
  scene.message "\\bKael\\b: Now let's break this thing."
end

GameData::Cutscene.define :ch21_elena_captured do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 5, 15
  
  # TODO: Event Sequence - Elena Captured
  # scene.message "Victory was close—"
  # scene.message "Until a cultist grabbed Elena from behind."
  
  scene.message "\\bCultist\\b: Nobody move! Or the researcher dies!"
  
  # TODO: Event Sequence - Blade Glint
  # scene.message "A blade glinted at Elena's throat."
  # scene.message "Everyone froze."
  
  scene.message "\\bLyra\\b: ELENA!"
  scene.message "\\bElena\\b: Don't worry about me! Destroy the machine!"
  
  scene.message "\\bKael\\b: *frozen* We can't risk her life."
  
  scene.message "\\bCultist\\b: Smart choice, boy."
  scene.message "\\bCultist\\b: Now back away. Slowly."
  
  scene.message "\\bElena\\b: *struggling* Lyra, DO IT!"
  
  scene.message "\\bLyra\\b: I... I can't..."
  scene.message "\\bLyra\\b: She's my sister!"
end

GameData::Cutscene.define :ch21_starter_saves do |scene|
  scene.play_bgm 'Pokemon XY - Battle! Team Flare'
  scene.camera_flash 10
  
  scene.message "\\b\\PN\\b: Wait. Look."
  
  # TODO: Event Sequence - Starter Circles
  # scene.message "Your starter had circled behind the cultist."
  # scene.message "Moving silently. Waiting for the moment."
  
  scene.message "\\b\\PN\\b: NOW!"
  
  # TODO: Event Sequence - Starter Strikes
  # scene.message "Your partner struck!"
  # scene.message "The cultist cried out, releasing Elena."
  
  scene.message "\\bElena\\b: *breaking free* Lyra, NOW!"
  
  scene.message "\\bKael\\b: The machine! HIT IT NOW!"
  
  # TODO: Event Sequence - Everyone Attacks
  # scene.message "Everyone attacked at once."
  # scene.message "Fire. Fairy light. Dark energy. Electric bolts."
  # scene.message "Everything they had."
end

GameData::Cutscene.define :ch21_machine_destroyed do |scene|
  scene.camera_shake 10, 50
  scene.camera_flash 30
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  # TODO: Event Sequence - Machine Explodes
  # scene.message "Kael's final attack struck true!"
  # scene.message "The machine exploded in a shower of sparks!"
  
  # scene.message "Dark energy scattered into the air."
  # scene.message "The tubes connecting to the World Tree shattered."
  
  scene.message "\\bCult Engineer\\b: NO! The extraction!"
  scene.message "\\bCultist\\b: Run! It's going to blow!"
  
  # TODO: Event Sequence - Cultists Flee
  # scene.message "The remaining cultists fled."
  # scene.message "The machine collapsed in on itself."
  
  # scene.message "But the damage was done."
  # scene.message "The World Tree still withered."
end

GameData::Cutscene.define :ch21_too_late do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bLyra\\b: It's not enough..."
  scene.message "\\bLyra\\b: The corruption has already spread too far."
  
  # TODO: Event Sequence - Touch Tree
  # scene.message "She touched the World Tree again."
  # scene.message "Felt its pain. Its slow death."
  
  scene.message "\\bElena\\b: There has to be another way!"
  
  scene.message "\\bKael\\b: The machine is destroyed."
  scene.message "\\bKael\\b: The corruption should stop spreading."
  
  scene.message "\\bLyra\\b: But it won't reverse."
  scene.message "\\bLyra\\b: What's already corrupted is still dying."
  
  scene.message "\\b\\PN\\b: Then how do we save it?"
  
  scene.message "Lyra was silent for a long moment."
  scene.message "Her mark pulsed with Xerneas's presence."
end

GameData::Cutscene.define :ch21_lyras_choice do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: There is a way."
  scene.message "\\bLyra\\b: Xerneas told me."
  scene.message "\\bLyra\\b: Life for life."
  
  scene.message "\\bKael\\b: What does that mean?"
  
  # TODO: Event Sequence - Lyra Walks
  # scene.message "\\bLyra\\b: *walking toward the World Tree*"
  
  scene.message "\\bLyra\\b: It means..."
  scene.message "\\bLyra\\b: I have to give part of myself."
  
  scene.message "\\bKael\\b: Lyra, NO!"
  scene.message "\\bElena\\b: Absolutely not!"
  
  scene.message "\\b\\PN\\b: There has to be another way!"
  
  scene.message "\\bLyra\\b: *turning back with tears* There isn't."
  scene.message "\\bLyra\\b: Xerneas showed me."
  scene.message "\\bLyra\\b: Only a Guardian's chosen can heal this."
  scene.message "\\bLyra\\b: And I'm the only one connected to life."
end

GameData::Cutscene.define :ch21_kael_pleads do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Kael Fear
  # scene.message "Kael's heart was pounding."
  # scene.message "Fear—real fear—flooded through him."
  
  scene.message "\\bKael\\b: Lyra, please."
  scene.message "\\bKael\\b: Don't do this."
  
  scene.message "\\bLyra\\b: Kael..."
  
  scene.message "\\bKael\\b: I already lost Mira."
  scene.message "\\bKael\\b: I can't... I won't..."
  
  # TODO: Event Sequence - Voice Break
  # scene.message "His voice broke."
  # scene.message "Shadow pressed against his leg, whimpering."
  
  scene.message "\\bLyra\\b: *gentle* I'm not going to die."
  scene.message "\\bLyra\\b: I'm just going to give some of my energy."
  scene.message "\\bLyra\\b: My life force. To heal the tree."
  
  scene.message "\\bKael\\b: And what happens to you?"
  
  scene.message "\\bLyra\\b: I... I don't know."
  scene.message "\\bLyra\\b: But I have to try."
end

GameData::Cutscene.define :ch21_lyra_approaches_tree do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  # TODO: Event Sequence - Walk to Tree
  # scene.message "Lyra walked to the base of the World Tree."
  # scene.message "Her mark blazing with green-gold light."
  
  scene.message "\\bElena\\b: *crying* Lyra, please..."
  
  scene.message "\\bLyra\\b: Elena. \\PN. Kael."
  scene.message "\\bLyra\\b: You're the best friends I've ever had."
  scene.message "\\bLyra\\b: And Elena... you're the best sister."
  
  scene.message "\\bLyra\\b: If anything happens..."
  scene.message "\\bLyra\\b: Tell Mom and Dad I love them."
  
  # TODO: Event Sequence - Press Hands
  # scene.message "She pressed both hands against the tree."
  # scene.message "Her mark exploded with light."
  
  scene.message "\\bKael\\b: LYRA!"
  
  # TODO: Event Sequence - Light Envelope
  # scene.message "The light enveloped everything."
  # scene.message "And Lyra's scream echoed through the forest."
end

#===============================================================================
# Chapter 22: Xerneas Awakens
#===============================================================================

GameData::Cutscene.define :ch22_light_explosion do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.camera_flash 40
  scene.camera_shake 10, 50
  
  # TODO: Event Sequence - Explosion
  # scene.message "Light exploded from Lyra's hands."
  # scene.message "Green. Gold. Rainbow. Life itself made visible."
  
  # scene.message "The World Tree drank it in greedily."
  # scene.message "Corruption burned away wherever the light touched."
  
  scene.message "\\bKael\\b: LYRA!"
  scene.message "\\bElena\\b: NO!"
  
  # TODO: Event Sequence - Lyra Gone
  # scene.message "But Lyra couldn't hear them."
  # scene.message "She was somewhere else now."
  # scene.message "Somewhere between life and death."
end

GameData::Cutscene.define :ch22_lyras_vision do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\i[LYRA'S INNER VISION]"
  
  # TODO: Event Sequence - Inner Vision
  # scene.message "She floated in endless light."
  # scene.message "The World Tree towered before her, beautiful and whole."
  # scene.message "And there was Xerneas."
  # scene.message "Majestic. Eternal. The embodiment of Life."
  
  scene.message "\\bXerneas\\b: Child of Life... you have come."
  
  scene.message "\\bLyra\\b: Great Xerneas... I'm trying to save you."
  scene.message "\\bLyra\\b: Am I doing enough?"
  
  scene.message "\\bXerneas\\b: You are giving everything."
  scene.message "\\bXerneas\\b: More than I would ask."
  
  scene.message "\\bLyra\\b: I have to. I won't let this forest die."
  scene.message "\\bLyra\\b: I won't let you die."
  
  # TODO: Event Sequence - Guardian Study
  # scene.message "The Guardian studied her with ancient eyes."
  # scene.message "Eyes that had seen billions of years."
  # scene.message "And found her worthy."
end

GameData::Cutscene.define :ch22_xerneas_trial do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.camera_shake 5, 30
  
  scene.message "\\bXerneas\\b: The corruption feeds on despair."
  scene.message "\\bXerneas\\b: To cleanse it... you must give hope."
  scene.message "\\bXerneas\\b: But hope has a price."
  
  scene.message "\\bLyra\\b: What price?"
  
  scene.message "\\bXerneas\\b: Your life force. A fragment of your soul."
  scene.message "\\bXerneas\\b: Years of your life, given to heal these trees."
  scene.message "\\bXerneas\\b: Are you willing?"
  
  scene.message "Lyra hesitated for only a heartbeat."
  scene.message "She thought of Elena. Of Kael. Of \\PN."
  scene.message "Of all the Pokémon fleeing in terror."
  
  scene.message "\\bLyra\\b: Yes."
  scene.message "\\bLyra\\b: I'll give whatever it takes."
  
  scene.message "\\bXerneas\\b: Then receive my blessing, child."
  scene.message "\\bXerneas\\b: And become one with Life itself."
end

GameData::Cutscene.define :ch22_power_flows do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.camera_flash 20
  
  scene.message "\\i[BACK IN THE REAL WORLD]"
  
  scene.message "\\i[BACK IN THE REAL WORLD]"
  
  # TODO: Event Sequence - Rainbow Light
  # scene.message "Rainbow light poured from Lyra's body."
  # scene.message "Into the World Tree. Into the ground."
  # scene.message "Spreading outward in waves."
  
  # scene.message "The corruption screamed."
  # scene.message "A sound like nails on a chalkboard."
  # scene.message "And burned away to nothing."
  
  scene.message "\\bElena\\b: It's working!"
  scene.message "\\bElena\\b: The corruption is disappearing!"
  
  scene.message "\\b\\PN\\b: But Lyra—!"
  
  # TODO: Event Sequence - Lyra Fading
  # scene.message "Lyra's hair was turning white at the tips."
  # scene.message "Her face growing pale."
  # scene.message "Life draining from her with every second."
end

GameData::Cutscene.define :ch22_ragnar_visits do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Ragnar Appears
  # scene.message "While Lyra recovered at the inn, the door burst open."
  
  scene.message "\\bRagnar\\b: I HEARD WHAT HAPPENED!"
  
  scene.message "\\b\\PN\\b: Ragnar?! How did you find us?!"
  
  scene.message "\\bRagnar\\b: I have my sources!"
  scene.message "\\bRagnar\\b: Is she okay?! Is Lyra okay?!"
  
  scene.message "\\bKael\\b: *blocking the door* Keep your voice down."
  scene.message "\\bKael\\b: She's resting."
  
  scene.message "\\bRagnar\\b: *actually quiet* ...Sorry."
  
  # TODO: Event Sequence - Supplies
  # scene.message "He handed over a bundle of supplies."
  # scene.message "Potions. Berries. Fresh food."
  
  scene.message "\\bRagnar\\b: I figured you'd need these."
  scene.message "\\bRagnar\\b: Been stocking up at every town."
  
  scene.message "\\b\\PN\\b: Ragnar... thank you."
  
  scene.message "\\bRagnar\\b: Yeah, well..."
  scene.message "\\bRagnar\\b: Can't have my rival dying of hunger before I beat them."
  
  # TODO: Event Sequence - Look at Lyra
  # scene.message "He looked at Lyra's sleeping form."
  
  scene.message "\\bRagnar\\b: *quietly* She's tough. She'll make it."
  scene.message "\\bRagnar\\b: Now get some rest, you look terrible."
  
  # TODO: Event Sequence - Ragnar Leaves
  # scene.message "He left as quickly as he came."
  # scene.message "That idiot. He really came through."
end

GameData::Cutscene.define :ch22_kael_watches do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Kael Watches
  # scene.message "Kael couldn't move."
  # scene.message "Couldn't breathe."
  # scene.message "Could only watch as Lyra gave everything."
  
  scene.message "\\bKael\\b: (No. Not again.)"
  scene.message "\\bKael\\b: (I can't lose someone else.)"
  
  # TODO: Event Sequence - Mira Flashback
  # scene.message "Mira's face flashed through his mind."
  # scene.message "His sister, burning. Dying. Gone."
  
  # scene.message "And now Lyra—"
  # scene.message "Lyra who smiled at him when no one else would."
  # scene.message "Lyra who saw past his walls."
  # scene.message "Lyra who made him feel alive again."
  
  scene.message "\\bKael\\b: LYRA, STOP!"
  
  # TODO: Event Sequence - Lyra Can't Hear
  # scene.message "But she couldn't hear him."
  # scene.message "She was beyond reach."
end

GameData::Cutscene.define :ch22_lyra_collapses do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 5, 20
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 5, 20
  
  # TODO: Event Sequence - World Tree Healed
  # scene.message "The light faded."
  # scene.message "The World Tree stood tall and healed."
  # scene.message "Green leaves rustled in a gentle breeze."
  
  # TODO: Event Sequence - Lyra Collapses
  # scene.message "And Lyra collapsed."
  
  scene.message "\\bKael\\b: LYRA!"
  
  # TODO: Event Sequence - Catch Lyra
  # scene.message "He was at her side in an instant."
  # scene.message "Catching her before she hit the ground."
  
  scene.message "\\bElena\\b: *running over* Is she—?"
  
  scene.message "\\b\\PN\\b: She's breathing. Barely."
  
  # TODO: Event Sequence - Lyra Pale
  # scene.message "Lyra was pale as snow."
  # scene.message "Her mark of Xerneas flickered weakly."
  # scene.message "But she was alive."
end

GameData::Cutscene.define :ch22_xerneas_speaks do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  # TODO: Event Sequence - Xerneas Spirit
  # scene.message "The World Tree pulsed with light."
  # scene.message "And Xerneas's presence filled the clearing."
  
  # scene.message "Not physically—but spiritually."
  # scene.message "A voice that resonated in your souls."
  
  scene.message "\\bXerneas\\b: She will live."
  scene.message "\\bXerneas\\b: Her heart is strong."
  scene.message "\\bXerneas\\b: Stronger than any I have seen in millennia."
  
  scene.message "\\bKael\\b: *holding Lyra* Why did you let her do this?"
  scene.message "\\bKael\\b: She could have died!"
  
  scene.message "\\bXerneas\\b: I did not ask her to sacrifice."
  scene.message "\\bXerneas\\b: She chose it. Freely. Willingly."
  scene.message "\\bXerneas\\b: That is what makes her worthy."
end

GameData::Cutscene.define :ch22_growth_shard do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.camera_flash 15
  
  scene.message "\\bXerneas\\b: Take the Growth Shard."
  scene.message "\\bXerneas\\b: It contains my essence."
  scene.message "\\bXerneas\\b: Its power will restore her over time."
  
  # TODO: Event Sequence - Shard Appears
  # scene.message "A crystalline object floated from the World Tree."
  # scene.message "Glowing with green-gold light."
  # scene.message "Pulsing with life energy."
  
  # TODO: Event Sequence - Shard Heals
  # scene.message "It settled gently into Lyra's limp hands."
  # scene.message "And her breathing steadied."
  # scene.message "Color returned slowly to her cheeks."
  
  scene.message "\\bElena\\b: *sobbing with relief* She's getting better..."
  
  scene.message "\\bXerneas\\b: The first shard is yours."
  scene.message "\\bXerneas\\b: Two remain. Seek them quickly."
  scene.message "\\bXerneas\\b: The Gnawing One stirs."
  
  # TODO: Event Sequence - Presence Fades
  # scene.message "The presence faded."
  # scene.message "The clearing fell silent."
end

GameData::Cutscene.define :ch22_kael_carries_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: I'll carry her."
  scene.message "\\bKael\\b: We need to find shelter."
  
  # TODO: Event Sequence - Soft Voice
  # scene.message "His voice was softer than anyone had ever heard it."
  
  scene.message "\\b\\PN\\b: Elena, do you know a safe place?"
  
  scene.message "\\bElena\\b: There's a ranger station nearby."
  scene.message "\\bElena\\b: It's safe. Secure."
  
  # TODO: Event Sequence - Kael Carries Lyra
  # scene.message "Kael lifted Lyra carefully."
  # scene.message "Cradling her against his chest."
  # scene.message "Shadow walked close beside them, whimpering."
  
  scene.message "\\bKael\\b: (I should have stopped her.)"
  scene.message "\\bKael\\b: (I should have found another way.)"
  
  # scene.message "But he hadn't."
  # scene.message "And now all he could do was carry her to safety."
end

GameData::Cutscene.define :ch22_at_the_station do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Ranger Station
  # scene.message "The ranger station was small but comfortable."
  # scene.message "Elena prepared a bed for Lyra."
  
  scene.message "\\bElena\\b: She needs rest. Lots of it."
  scene.message "\\bElena\\b: The shard is healing her, but slowly."
  
  scene.message "\\b\\PN\\b: How long until she wakes?"
  
  scene.message "\\bElena\\b: I don't know."
  scene.message "\\bElena\\b: Hours? Days? It depends on her."
  
  # TODO: Event Sequence - Kael Sits
  # scene.message "Kael sat beside the bed."
  # scene.message "He hadn't let go of Lyra's hand."
  
  scene.message "\\bElena\\b: *to \\PN* He really cares about her."
  
  scene.message "\\b\\PN\\b: Yeah. He does."
  scene.message "\\b\\PN\\b: Even if he won't admit it."
end

GameData::Cutscene.define :ch22_kael_stays do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[THAT NIGHT]"
  
  # TODO: Event Sequence - Kael Watches
  # scene.message "That night, Kael refused to leave Lyra's bedside."
  
  scene.message "\\b\\PN\\b: Kael, you should get some sleep."
  
  scene.message "\\bKael\\b: Go sleep. I'll watch over her."
  scene.message "\\bKael\\b: Someone has to make sure she doesn't do anything else stupid."
  
  # TODO: Event Sequence - Hand Holding
  # scene.message "But his eyes never left her face."
  # scene.message "His hand never left hers."
  
  # scene.message "Shadow curled at the foot of the bed."
  # scene.message "Willow lay beside Lyra, offering warmth."
  
  scene.message "\\bKael\\b: *quietly* You scared me."
  scene.message "\\bKael\\b: Don't you ever do that again."
  
  # TODO: Event Sequence - Fingers Tighten
  # scene.message "Lyra didn't respond."
  # scene.message "But her fingers tightened slightly on his."
end

GameData::Cutscene.define :ch22_kaels_confession do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE - LATE NIGHT]"
  
  # TODO: Event Sequence - Others Sleeping
  # scene.message "The others were asleep."
  # scene.message "Only Kael remained awake."
  
  scene.message "\\bKael\\b: *whispering* I never told you about Mira properly."
  scene.message "\\bKael\\b: My sister. She was kind, like you."
  scene.message "\\bKael\\b: She always saw the best in people."
  
  # TODO: Event Sequence - Look at Lyra
  # scene.message "He looked at Lyra's peaceful face."
  
  scene.message "\\bKael\\b: When she died... I stopped believing."
  scene.message "\\bKael\\b: In kindness. In people. In everything."
  
  scene.message "\\bKael\\b: But then I met you."
  scene.message "\\bKael\\b: And you're so stupidly brave."
  scene.message "\\bKael\\b: And annoyingly optimistic."
  scene.message "\\bKael\\b: And..."
  
  # TODO: Event Sequence - Trailed Off
  # scene.message "He trailed off."
  # scene.message "Shadow looked up at him knowingly."
  
  scene.message "\\bKael\\b: ...And I can't lose you."
  scene.message "\\bKael\\b: So wake up. Please."
end

GameData::Cutscene.define :ch22_lyra_recovers do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Morning Light
  # scene.message "Morning light filled the room."
  # scene.message "Lyra's eyes fluttered open."
  
  scene.message "\\bLyra\\b: *groggy* K-Kael...?"
  
  scene.message "\\bKael\\b: *jerking awake* Lyra!"
  
  scene.message "\\bLyra\\b: Did... did it work?"
  scene.message "\\bLyra\\b: Is the forest okay?"
  
  scene.message "\\bKael\\b: It worked. You idiot."
  scene.message "\\bKael\\b: You saved everything."
  scene.message "\\bKael\\b: And almost killed yourself doing it."
  
  scene.message "\\bLyra\\b: *weak smile* Worth it..."
  
  # TODO: Event Sequence - Elena Bursts In
  # scene.message "Elena burst into the room."
  scene.message "\\bElena\\b: LYRA!"
  
  # scene.message "She embraced her sister, crying."
  # scene.message "\\PN followed, grinning with relief."
  
  scene.message "\\b\\PN\\b: Welcome back."
end

GameData::Cutscene.define :ch22_recovery_talk do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Lyra Sits Up
  # scene.message "Lyra sat up slowly, supported by pillows."
  # scene.message "The Growth Shard glowed in her hands."
  
  scene.message "\\bLyra\\b: I can feel it healing me."
  scene.message "\\bLyra\\b: Xerneas's power."
  
  scene.message "\\bElena\\b: You need at least a few days of rest."
  
  scene.message "\\bLyra\\b: But the other shards—"
  
  scene.message "\\b\\PN\\b: Can wait. You come first."
  
  scene.message "\\bKael\\b: For once, listen to us."
  scene.message "\\bKael\\b: You almost died."
  
  scene.message "\\bLyra\\b: *looking at Kael* You stayed with me."
  scene.message "\\bLyra\\b: All night."
  
  scene.message "\\bLyra\\b: *looking at Kael* You stayed with me."
  scene.message "\\bLyra\\b: All night."
  
  # TODO: Event Sequence - Kael Embarrassed
  # scene.message "Kael looked away, embarrassed."
  
  scene.message "\\bKael\\b: Someone had to make sure you didn't do anything stupid."
  
  scene.message "\\bLyra\\b: *smiling* Thank you, Kael."
  
  # TODO: Event Sequence - Blush
  # scene.message "He didn't respond."
  # scene.message "But a faint blush colored his cheeks."
end

GameData::Cutscene.define :ch22_forest_healed do |scene|
  scene.play_bgm 'Pokemon XY - Santalune Forest'
  
  # TODO: Event Sequence - Forest Healed
  # scene.message "Outside, the Eternal Forest was transformed."
  # scene.message "The corruption was gone completely."
  # scene.message "Green and gold light filtered through healthy leaves."
  
  # TODO: Event Sequence - Pokemon Returning
  # scene.message "Pokémon were returning."
  # scene.message "Oddish. Deerling. Celebi."
  # scene.message "Life returning to the forest of life."
  
  scene.message "\\bElena\\b: It's... it's beautiful."
  scene.message "\\bElena\\b: Better than it was before."
  
  scene.message "\\b\\PN\\b: Lyra's sacrifice did this."
  scene.message "\\b\\PN\\b: She saved everything."
  
  # TODO: Event Sequence - Lyra Watches
  # scene.message "Through the window, Lyra watched the forest."
  # scene.message "Tears of joy on her cheeks."
  
  scene.message "\\bLyra\\b: Worth it."
  scene.message "\\bLyra\\b: Definitely worth it."
  
  # TODO: Event Sequence - Shard Pulse
  # scene.message "The Growth Shard pulsed with life."
  # scene.message "One shard secured. Two remained."
end

GameData::Cutscene.define :ch22_the_argument do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "The others celebrated outside. Kael stayed in the recovery room."
  scene.message "He had not released Lyra's hand, but he would not look at her."

  scene.message "\\bLyra\\b: Say it."
  scene.message "\\bKael\\b: You made a choice for all of us."
  scene.message "\\bKael\\b: You didn't know the price. You did it anyway."
  scene.message "\\bLyra\\b: The forest was dying. What would you have chosen?"
  scene.message "\\bKael\\b: A plan that didn't spend your life like a potion!"

  scene.message "\\bLyra\\b: This isn't only about me. You saw Mira and decided every risk I take is her death again."
  scene.message "\\bKael\\b: Don't use her name to make recklessness sound brave."

  # TODO: Event Sequence - Kael releases Lyra's hand and leaves the room.
  # Neither character is wholly right. Do not resolve the conflict in this scene.
  scene.message "The door closed softly. That hurt more than if he had slammed it."
end

#===============================================================================
# Chapter 23: Yveltal's Trial - Champion of Balance
#===============================================================================

GameData::Cutscene.define :ch23_lyra_awakes do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Waking Up
  # scene.message "Lyra's eyes fluttered open."
  
  scene.message "\\bLyra\\b: *groggy* Wha... what happened?"
  
  scene.message "\\bKael\\b: You nearly died, that's what happened."
  scene.message "\\bKael\\b: Again."
  
  scene.message "\\bLyra\\b: Did we get the shard?"
  scene.message "\\bKael\\b: Yes. Now stop talking and rest."
  scene.message "\\bLyra\\b: Were you... watching over me all night?"
  
  scene.message "\\bKael\\b: *looking away* Someone had to make sure you didn't stop breathing."
  
  scene.message "\\bLyra\\b: *weak smile* Careful, Kael."
  scene.message "\\bLyra\\b: Someone might think you actually care."
  
  scene.message "\\bKael\\b: Don't be ridiculous."
  
  # TODO: Event Sequence - Hand Holding
  # scene.message "(He still didn't let go of her hand.)"
end

GameData::Cutscene.define :ch23_recovery_days do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Quiet Days
  # scene.message "The next few days were quiet."
  # scene.message "Lyra recovered slowly but surely."
  
  scene.message "\\bElena\\b: The Growth Shard is incredible."
  scene.message "\\bElena\\b: It's speeding her healing exponentially."
  
  scene.message "\\b\\PN\\b: Will she be okay to travel?"
  
  scene.message "\\bElena\\b: In a few days. Maybe a week."
  scene.message "\\bElena\\b: She'll need to take it easy."
  
  scene.message "\\bKael\\b: Lyra doesn't know the meaning of 'easy.'"
  
  scene.message "\\bLyra\\b: *from bed* I heard that!"
  
  scene.message "\\bKael\\b: Good. Maybe you'll listen for once."
  
  scene.message "\\bLyra\\b: Since when do I listen to you?"
  
  scene.message "\\bKael\\b: Never. That's the problem."
  
  # TODO: Event Sequence - Shift in Tone
  # scene.message "But there was affection in his voice now."
  # scene.message "Something had shifted between them."
end

GameData::Cutscene.define :ch23_terms_of_trust do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "On the fourth morning, Lyra found Kael packing supplies alone."
  scene.message "For days they had spoken only about routes, food and medicine."

  scene.message "\\bLyra\\b: I won't promise never to risk myself."
  scene.message "\\bKael\\b: I know. I wouldn't believe you."
  scene.message "\\bLyra\\b: But next time, I tell you the whole truth before I choose."
  scene.message "\\bLyra\\b: And you don't turn fear into an order."

  scene.message "\\bKael\\b: I was trying to keep you alive."
  scene.message "\\bLyra\\b: Then stand beside me while I live. Don't build a cage around it."

  scene.message "Kael held out the repaired strap of her travel bag."
  scene.message "\\bKael\\b: No cages. No secret sacrifices."
  scene.message "\\bLyra\\b: Agreed."

  # TODO: Event Sequence - They do not hug. Lyra shoulders the repaired bag;
  # Kael adjusts it once, and they rejoin the others side by side.
end

GameData::Cutscene.define :ch23_elena_farewell do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Elena Leaves
  # scene.message "When Lyra was well enough to travel, Elena prepared to leave."
  
  scene.message "\\bElena\\b: I need to report what happened here."
  scene.message "\\bElena\\b: The academic community needs to know."
  
  scene.message "\\bLyra\\b: Will you be safe?"
  
  scene.message "\\bElena\\b: I'll stay far from the cult."
  scene.message "\\bElena\\b: You three are the ones in danger."
  
  # TODO: Event Sequence - Sisters Embrace
  # scene.message "The sisters embraced tightly."
  
  scene.message "\\bElena\\b: Be careful, Lyra."
  scene.message "\\bElena\\b: And you two—"
  
  # TODO: Event Sequence - Look at Kael and PN
  # scene.message "She looked at Kael and \\PN."
  
  scene.message "\\bElena\\b: Take care of my sister."
  
  scene.message "\\bKael\\b: We will."
  scene.message "\\b\\PN\\b: Promise."
  
  # TODO: Event Sequence - Elena Departs
  # scene.message "Elena nodded and set off."
  # scene.message "The group continued toward Mount Entropy."
end

GameData::Cutscene.define :ch23_path_to_yveltal do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'
  
  # TODO: Event Sequence - Journey to Mount Entropy
  # scene.message "A week later, you journeyed to Mount Entropy."
  # scene.message "The final trial awaited. Yveltal's domain."
  
  scene.message "\\bLyra\\b: This place is... creepy."
  
  # TODO: Event Sequence - Dead Scenery
  # scene.message "Dead trees. Withered flowers. Silent birds."
  
  scene.message "\\bKael\\b: Not creepy. Peaceful."
  scene.message "\\bKael\\b: Everything here has accepted its end."
  
  scene.message "\\b\\PN\\b: You feel something from this place?"
  
  scene.message "\\bKael\\b: Connection."
  scene.message "\\bKael\\b: This is where I belong."
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "His mark pulsed steadily."
  # scene.message "Yveltal was close."
  
  scene.message "\\bLyra\\b: We'll be right behind you."
  scene.message "\\bLyra\\b: Just like you were for me."
  
  scene.message "\\bKael\\b: I know. But this trial... it's meant for me."
end

GameData::Cutscene.define :ch23_mountain_ascent do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Dark Mountain
  # scene.message "The mountain grew darker as we climbed."
  # scene.message "Not frightening. Familiar."
  
  scene.message "\\bKael\\b: (I've been running from death my whole life.)"
  scene.message "\\bKael\\b: (From Mira's death. From my parents'.)"
  scene.message "\\bKael\\b: (But here... I can't run anymore.)"
  
  # TODO: Event Sequence - Shadow's Support
  # scene.message "Shadow walked close beside him."
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\bKael\\b: I know, buddy."
  scene.message "\\bKael\\b: I'm not scared."
  
  # TODO: Event Sequence - Lyra Hand Brush
  # scene.message "Lyra's hand brushed against his."
  # scene.message "He didn't pull away."
  
  scene.message "\\bLyra\\b: Whatever happens up there..."
  scene.message "\\bLyra\\b: We're with you."
  
  scene.message "\\bKael\\b: I know."
end

GameData::Cutscene.define :ch23_ragnar_message do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Phone Buzz
  # scene.message "Your phone buzzed. A video message from Ragnar."
  # scene.message "You opened it."
  
  scene.message "\\bRagnar (Recording)\\b: Hey, \\PN."
  scene.message "\\bRagnar (Recording)\\b: I know you're heading somewhere I can't follow."
  scene.message "\\bRagnar (Recording)\\b: Some trial or whatever."
  
  # TODO: Event Sequence - Serious Ragnar
  # scene.message "He was uncharacteristically serious."
  
  scene.message "\\bRagnar (Recording)\\b: I just wanted to say..."
  scene.message "\\bRagnar (Recording)\\b: You've got this."
  scene.message "\\bRagnar (Recording)\\b: You've ALWAYS had this."
  
  scene.message "\\bRagnar (Recording)\\b: Ever since we were kids..."
  scene.message "\\bRagnar (Recording)\\b: You never backed down from anything."
  scene.message "\\bRagnar (Recording)\\b: That's why I've been chasing you."
  
  # TODO: Event Sequence - Grin
  # scene.message "He grinned."
  
  scene.message "\\bRagnar (Recording)\\b: So go be a hero or whatever."
  scene.message "\\bRagnar (Recording)\\b: And then come beat me at the League!"
  
  # TODO: Event Sequence - Message Ends
  # scene.message "The message ended."
  # scene.message "You smiled. That idiot always knew what to say."
end

GameData::Cutscene.define :ch23_yveltal_appears do |scene|
  scene.play_bgm 'Pokemon XY - Yveltal Theme'
  scene.camera_shake 10, 40
  
  scene.play_bgm 'Pokemon XY - Yveltal Theme'
  scene.camera_shake 10, 40
  
  # TODO: Event Sequence - Crimson Sky
  # scene.message "At the summit, the sky turned crimson."
  # scene.message "Wings blotted out the sun."
  
  # TODO: Event Sequence - Yveltal Descends
  # scene.message "Yveltal descended."
  # scene.message "Eyes like dying stars."
  # scene.message "The embodiment of endings."
  
  scene.message "\\bYveltal\\b: CHAMPION OF BALANCE."
  scene.message "\\bYveltal\\b: YOU WHO HAVE KNOWN DEATH."
  
  scene.message "\\bKael\\b: I've known it."
  scene.message "\\bKael\\b: And I don't fear it."
  
  scene.message "\\bYveltal\\b: SHOW ME."
  scene.message "\\bYveltal\\b: FACE THE END WITHOUT FLINCHING."
  scene.message "\\bYveltal\\b: AND PROVE YOU UNDERSTAND THE CYCLE."
  
  # TODO: Event Sequence - Kael Steps Forward
  # scene.message "Kael stepped forward alone."
  # scene.message "His mark blazed with crimson light."
end

GameData::Cutscene.define :ch23_yveltal_trial do |scene|
  scene.play_bgm 'Pokemon XY - Intense Battle'
  scene.fade_out
  
  scene.message "\\bYveltal\\b: YOUR TRIAL IS NOT OF COMBAT."
  scene.message "\\bYveltal\\b: IT IS OF UNDERSTANDING."
  
  scene.message "\\bYveltal\\b: YOUR TRIAL IS NOT OF COMBAT."
  scene.message "\\bYveltal\\b: IT IS OF UNDERSTANDING."
  
  # TODO: Event Sequence - Visions
  # scene.message "Visions flooded Kael's mind."
  # scene.message "His parents' deaths. Mira's sacrifice. His own near-deaths."
  
  # scene.message "Every ending he'd ever witnessed."
  # scene.message "Every goodbye he'd ever said."
  # scene.message "Every loss that had shaped him."
  
  scene.message "\\bYveltal\\b: WHY DO MORTALS CLING TO LIFE?"
  scene.message "\\bYveltal\\b: WHEN DEATH IS INEVITABLE?"
  
  scene.message "\\bKael\\b: Because the time we have... matters."
  scene.message "\\bKael\\b: Not how long we live. But how."
  
  scene.message "\\bYveltal\\b: AND WHEN YOUR TIME COMES?"
  
  scene.message "\\bKael\\b: I'll meet it standing."
  scene.message "\\bKael\\b: But until then... I'll fight for those I love."
end

GameData::Cutscene.define :ch23_love_question do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bYveltal\\b: ...LOVE?"
  scene.message "\\bYveltal\\b: A CURIOUS FORCE."
  scene.message "\\bYveltal\\b: EVEN I DO NOT FULLY UNDERSTAND IT."
  
  scene.message "\\bKael\\b: Neither do I, honestly."
  
  scene.message "\\bYveltal\\b: YOU HAVE FELT GREAT LOSS."
  scene.message "\\bYveltal\\b: YET YOU OPEN YOUR HEART AGAIN."
  scene.message "\\bYveltal\\b: WHY?"
  
  scene.message "\\bKael\\b: Because..."
  scene.message "\\bKael\\b: The pain of losing someone..."
  scene.message "\\bKael\\b: Means they mattered."
  
  scene.message "\\bKael\\b: And I'd rather feel that pain..."
  scene.message "\\bKael\\b: Than never love at all."
  
  # TODO: Event Sequence - Yveltal Studies
  # scene.message "Yveltal was silent for a long moment."
  # scene.message "Ancient eyes studied the young human before it."
  
  scene.message "\\bYveltal\\b: ...UNEXPECTED."
  scene.message "\\bYveltal\\b: BUT TRUTHFUL."
end

GameData::Cutscene.define :ch23_mira_vision do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_flash 15
  
  scene.message "\\i[KAEL'S VISION]"
  
  # TODO: Event Sequence - Vision Starts
  # scene.message "And then... he saw her."
  # scene.message "A girl with his eyes and a gentle smile."
  # scene.message "Standing in a field of silver flowers."
  
  scene.message "\\bMira\\b: Hey, little brother."
  
  scene.message "\\bKael\\b: *voice breaking* Mira...?"
  
  scene.message "\\bMira\\b: I'm proud of you, you know."
  scene.message "\\bMira\\b: Look at you. Saving the world."
  
  scene.message "\\bKael\\b: I miss you. Every day."
  
  scene.message "\\bMira\\b: I know. But I'm always with you."
  scene.message "\\bMira\\b: Here."
  
  # TODO: Event Sequence - Touch Heart
  # scene.message "She touched his chest. Over his heart."
  
  scene.message "\\bMira\\b: And those friends of yours..."
  scene.message "\\bMira\\b: They're good for you."
end

GameData::Cutscene.define :ch23_mira_advice do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bKael\\b: They're annoying."
  
  scene.message "\\bMira\\b: *laughing* You love them."
  scene.message "\\bMira\\b: Don't lie to me. I'm your sister."
  
  scene.message "\\bKael\\b: ...Maybe a little."
  
  scene.message "\\bMira\\b: Especially the loud one?"
  scene.message "\\bMira\\b: The one with the pretty smile?"
  
  scene.message "\\bKael\\b: *flushing* That's—"
  
  scene.message "\\bMira\\b: Be happy, Kael."
  scene.message "\\bMira\\b: That's all I ever wanted for you."
  scene.message "\\bMira\\b: Live. Love. For both of us."
  
  scene.message "\\bKael\\b: I don't know how."
  
  scene.message "\\bMira\\b: Yes you do."
  scene.message "\\bMira\\b: You've already started."
  scene.message "\\bMira\\b: Just... keep going."
  
  # TODO: Event Sequence - Vision Fades
  # scene.message "She began to fade into light."
  
  scene.message "\\bKael\\b: Mira, wait—"
  
  scene.message "\\bMira\\b: I love you, little brother."
  scene.message "\\bMira\\b: Always."
  
  # TODO: Event Sequence - Kael Cries
  # scene.message "And for the first time in years..."
  # scene.message "Kael let himself cry."
end

GameData::Cutscene.define :ch23_trial_complete do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.fade_in
  
  # TODO: Event Sequence - Trial Ends
  # scene.message "The vision faded."
  # scene.message "Kael stood before Yveltal once more."
  # scene.message "Tears still wet on his cheeks."
  
  scene.message "\\bYveltal\\b: YOU HAVE FACED DEATH."
  scene.message "\\bYveltal\\b: NOT WITH FEAR. NOT WITH ANGER."
  scene.message "\\bYveltal\\b: BUT WITH ACCEPTANCE. AND LOVE."
  
  scene.message "\\bYveltal\\b: THIS IS THE TRUTH OF THE CYCLE."
  scene.message "\\bYveltal\\b: ENDINGS ARE NOT EVIL."
  scene.message "\\bYveltal\\b: THEY ARE NECESSARY."
  
  scene.message "\\bKael\\b: I understand."
  
  scene.message "\\bYveltal\\b: YES."
  scene.message "\\bYveltal\\b: YOU DO."
end

GameData::Cutscene.define :ch23_third_shard do |scene|
  scene.play_bgm 'Pokemon XY - Victory'
  scene.camera_flash 20
  
  scene.message "\\bYveltal\\b: YOU HAVE PROVEN YOURSELF."
  scene.message "\\bYveltal\\b: CHAMPION OF BALANCE."
  scene.message "\\bYveltal\\b: GUARDIAN OF THE CYCLE."
  
  # TODO: Event Sequence - Shard Appears
  # scene.message "The Entropy Shard floated from Yveltal's wings."
  # scene.message "Deep crimson, pulsing with quiet power."
  # scene.message "The essence of endings."
  
  # TODO: Event Sequence - Shard Taken
  # scene.message "It settled gently into Kael's hands."
  # scene.message "His mark blazed brighter than ever."
  
  scene.message "\\bYveltal\\b: THE SECOND SHARD IS YOURS."
  scene.message "\\bYveltal\\b: GUARD IT WELL."
  scene.message "\\bYveltal\\b: FOR NIDHOGGR WILL COME."
  
  scene.message "\\bKael\\b: We'll be ready."
  
  scene.message "\\bYveltal\\b: I BELIEVE YOU WILL."
  
  scene.play_bgm 'Pokemon XY - Yveltal Theme'
  
  # TODO: Event Sequence - Yveltal Leaves
  # scene.message "The Guardian of Death ascended."
  # scene.message "Crimson wings disappearing into the clouds."
end

GameData::Cutscene.define :ch23_friends_reunite do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Descent
  # scene.message "Kael descended the mountain."
  # scene.message "Lyra ran to him immediately."
  
  scene.message "\\bLyra\\b: Are you okay?! What happened?!"
  
  scene.message "\\bKael\\b: I'm fine. I got the shard."
  
  scene.message "\\bLyra\\b: Your eyes are red..."
  
  scene.message "\\bKael\\b: Dust. There was a lot of dust."
  
  scene.message "\\bLyra\\b: Kael..."
  
  scene.message "\\bKael\\b: *small smile* I'm okay, Lyra."
  scene.message "\\bKael\\b: Really. Better than okay."
  
  # TODO: Event Sequence - Hug
  # scene.message "She hugged him."
  # scene.message "He didn't pull away."
  # scene.message "For once, he hugged her back."
  
  scene.message "\\b\\PN\\b: We have two shards now."
  scene.message "\\b\\PN\\b: One more to go."
  
  scene.message "\\bKael\\b: The Blade Shrine."
  scene.message "\\bKael\\b: Your trial, \\PN."
end

GameData::Cutscene.define :ch23_eighth_gym_approach do |scene|
  scene.play_bgm 'Pokemon RSE - Gym'
  
  # TODO: Event Sequence - Gym Approach
  # scene.message "But first, one more stop."
  # scene.message "The eighth and final Gym."
  
  scene.message "\\bLyra\\b: We're so close to the League!"
  scene.message "\\bLyra\\b: One more badge!"
  
  scene.message "\\bKael\\b: Focus on what matters."
  
  scene.message "\\bLyra\\b: The League DOES matter!"
  scene.message "\\bLyra\\b: ...Okay, maybe not as much as saving the world."
  
  scene.message "\\b\\PN\\b: We can do both."
  scene.message "\\b\\PN\\b: Badge first, then the Blade Shrine."
  
  # TODO: Event Sequence - Gym Looming
  # scene.message "The final Gym building loomed before you."
  # scene.message "Dragon-type. The hardest of them all."
end

GameData::Cutscene.define :ch23_eighth_gym do |scene|
  scene.play_bgm 'Pokemon Gym Leader Battle'
  
  scene.message "\\bGym Leader Draco\\b: You seek the final badge?"
  scene.message "\\bGym Leader Draco\\b: Many have tried. Few have succeeded."
  
  scene.message "\\b\\PN\\b: I'll succeed."
  
  scene.message "\\bGym Leader Draco\\b: Confident!"
  scene.message "\\bGym Leader Draco\\b: I sense something in you three."
  scene.message "\\bGym Leader Draco\\b: Ancient power. Guardian blessings."
  
  scene.message "\\bKael\\b: You can sense that?"
  
  scene.message "\\bGym Leader Draco\\b: Dragons remember the old times."
  scene.message "\\bGym Leader Draco\\b: Show me you're worthy of that power!"
  
  scene.trainer_battle :LEADER, "Draco", 0
  
  scene.message "\\bGym Leader Draco\\b: One last thing..."
  scene.message "\\bGym Leader Draco\\b: Magnificent!"
  scene.message "\\bGym Leader Draco\\b: You've earned the Dragon Badge."
  scene.message "\\bGym Leader Draco\\b: And with it... you're qualified for the league."

  scene.message "Draco fitted the eight badges into an ancient bronze plate behind the arena."
  scene.message "Instead of a League crest, a map of the Gateway burned across its surface."
  scene.message "\\bGym Leader Draco\\b: The League challenge was built over an older trial. Eight leaders, eight witnesses."
  scene.message "\\bGym Leader Draco\\b: Together, our badges certify more than strength—they permit passage through the royal wards."
  scene.message "\\bKael\\b: So the Gyms were guarding the road to the Shattered Throne all along."
  scene.message "\\bGym Leader Draco\\b: Most leaders no longer remember. The wards do."
  
  # TODO: Event Sequence - Eight Badges
  # scene.message "Eight badges. At last."
  # scene.message "The League awaited."
end

#===============================================================================
# Chapter 24: Professor Aldric Dies - The Greatest Loss
#===============================================================================

GameData::Cutscene.define :ch24_urgent_message do |scene|
  scene.play_bgm 'Pokemon XY - Emergency'
  scene.camera_shake 3, 10
  
  # TODO: Event Sequence - Communicator Buzz
  # scene.message "Your communicator buzzed urgently."
  # scene.message "A distress signal. From the lab."
  
  # scene.message "Static. Explosions. And the Professor's voice—"
  
  scene.message "\\bProfessor Aldric\\b: *static* They're here—!"
  scene.message "\\bProfessor Aldric\\b: The cult—attacking—!"
  scene.message "\\bProfessor Aldric\\b: Need help—can't hold—"
  
  # TODO: Event Sequence - Transmission Cut
  # scene.message "The transmission cut off."
  
  scene.message "\\b\\PN\\b: The Professor's in trouble!"
  scene.message "\\bLyra\\b: What?!"
  scene.message "\\bKael\\b: Move. NOW."
  
  # TODO: Event Sequence - Running
  # scene.message "You ran. Faster than you'd ever run before."
  # scene.message "But somehow... you knew you'd be too late."
end

GameData::Cutscene.define :ch24_racing_back do |scene|
  scene.play_bgm 'Pokemon XY - Emergency'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Running Back
  # scene.message "Every second felt like an eternity."
  # scene.message "The lab was too far. Too far away."
  
  scene.message "\\bLyra\\b: (Please be okay. Please be okay.)"
  
  # TODO: Event Sequence - Kael Running
  # scene.message "Kael ran ahead, Shadow keeping pace."
  # scene.message "\\PN's jaw was set with determination."
  
  scene.message "\\bLyra\\b: Why would they attack the Professor?"
  scene.message "\\bLyra\\b: He's not a fighter!"
  
  scene.message "\\bKael\\b: His knowledge. His research."
  scene.message "\\bKael\\b: He knows too much about the seals."
  
  scene.message "\\b\\PN\\b: Then they're trying to blind us."
  scene.message "\\b\\PN\\b: Cut us off from information."
  
  # TODO: Event Sequence - Smoke
  # scene.message "Smoke rose in the distance."
  # scene.message "The lab was burning."
end

GameData::Cutscene.define :ch24_lab_destroyed do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 5, 15
  
  # TODO: Event Sequence - Lab Ruins
  # scene.message "The lab was in ruins."
  # scene.message "Smoke. Fire. Destruction."
  
  scene.message "\\bLyra\\b: No... no, this can't be..."
  
  # TODO: Event Sequence - Bodies
  # scene.message "Cultist bodies lay everywhere."
  # scene.message "The Professor had fought back."
  # scene.message "But there had been too many."
  
  scene.message "\\bKael\\b: The damage... they used explosives."
  scene.message "\\bKael\\b: This was planned. Coordinated."
  
  scene.message "\\b\\PN\\b: Find the Professor! NOW!"
  
  # TODO: Event Sequence - Searching
  # scene.message "You split up, searching through the rubble."
  # scene.message "Calling his name. Praying for an answer."
  
  scene.message "\\bKael\\b: Over there!"
  
  # TODO: Event Sequence - Found Him
  # scene.message "He pointed to a figure slumped against the wall."
end

GameData::Cutscene.define :ch24_finding_professor do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Found Professor
  # scene.message "You found him among the debris."
  # scene.message "Professor Aldric. Your mentor. Your friend."
  
  # scene.message "He was badly wounded."
  # scene.message "Blood soaked his lab coat."
  # scene.message "But he was still breathing."
  
  scene.message "\\b\\PN\\b: Professor!"
  
  scene.message "\\bProfessor Aldric\\b: *weakly* \\PN... you came..."
  
  scene.message "\\bLyra\\b: We're here! Hold on!"
  scene.message "\\bLyra\\b: Kael, help me!"
  
  scene.message "\\bKael\\b: *kneeling beside him* The wounds are too severe..."
  scene.message "\\bKael\\b: *quietly* There's nothing..."
  
  scene.message "\\bLyra\\b: Don't say that! There has to be something!"
end

GameData::Cutscene.define :ch24_professors_words do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bProfessor Aldric\\b: No... my time is done."
  scene.message "\\bProfessor Aldric\\b: Listen... this is important..."
  
  # TODO: Event Sequence - Grab Hand
  # scene.message "He grabbed your hand with surprising strength."
  
  scene.message "\\bProfessor Aldric\\b: The truth... is in the crowns..."
  scene.message "\\bProfessor Aldric\\b: The Shattered Crowns... they're not just symbols."
  scene.message "\\bProfessor Aldric\\b: They're fragments... of Nidhoggr's prison."
  
  scene.message "\\b\\PN\\b: What do you mean?"
  
  scene.message "\\bProfessor Aldric\\b: Nidhoggr... is the true threat..."
  scene.message "\\bProfessor Aldric\\b: Hoopa... is just a key..."
  scene.message "\\bProfessor Aldric\\b: The cult wants both... but Nidhoggr..."
  
  # TODO: Event Sequence - Coughing
  # scene.message "He coughed. Blood on his lips."
  
  scene.message "\\bProfessor Aldric\\b: Nidhoggr consumes... everything..."
end

GameData::Cutscene.define :ch24_final_message do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bProfessor Aldric\\b: My research... I hid it..."
  scene.message "\\bProfessor Aldric\\b: In the place where you first... met..."
  
  scene.message "\\bKael\\b: Where we first met? Professor, stay with us!"
  
  scene.message "\\bProfessor Aldric\\b: Believe... in each other..."
  scene.message "\\bProfessor Aldric\\b: You three... are the key..."
  scene.message "\\bProfessor Aldric\\b: Not the shards... you..."
  
  scene.message "\\bLyra\\b: *crying* We don't understand!"
  
  scene.message "\\bProfessor Aldric\\b: You will... when the time..."
  scene.message "\\bProfessor Aldric\\b: I... believe... in..."
  
  # TODO: Event Sequence - Professor Dies
  # scene.message "His grip loosened."
  # scene.message "His eyes went distant."
  # scene.message "And then... still."
end

GameData::Cutscene.define :ch24_aldric_death do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 3, 10
  
  # TODO: Event Sequence - Gone
  # scene.message "Professor Aldric was gone."
  
  # scene.message "The mentor who believed in you."
  # scene.message "The guide who taught you so much."
  # scene.message "The friend who never gave up on you."
  
  scene.message "\\bLyra\\b: *sobbing* No... no no no..."
  scene.message "\\bKael\\b: ..."
  
  # TODO: Event Sequence - Kael Reaction
  # scene.message "Kael's face was stone."
  # scene.message "But his hands were shaking."
  
  scene.message "\\b\\PN\\b: *clenching fists* They will pay for this."
  scene.message "\\b\\PN\\b: I swear it."
  
  # TODO: Event Sequence - Mark Burns
  # scene.message "Your mark blazed with furious golden light."
  # scene.message "Zacian's power responding to your rage."
  
  scene.set_switch SW::ALDRIC_DIED, true
end

GameData::Cutscene.define :ch24_grief do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Another Death
  # scene.message "Another death."
  # scene.message "Another person taken too soon."
  
  scene.message "\\bKael\\b: (This never ends.)"
  scene.message "\\bKael\\b: (Everyone we care about...)"
  
  # TODO: Event Sequence - Look at Friends
  # scene.message "He looked at Lyra, sobbing in the ruins."
  # scene.message "At \\PN, burning with rage."
  
  scene.message "\\bKael\\b: (I can't let this break them.)"
  scene.message "\\bKael\\b: (I have to be strong. For them.)"
  
  # TODO: Event Sequence - Comfort Lyra
  # scene.message "He knelt beside Lyra."
  # scene.message "Put his arm around her."
  # scene.message "Let her cry into his shoulder."
  
  scene.message "\\bKael\\b: We'll make this mean something."
  scene.message "\\bKael\\b: His death won't be in vain."
end

GameData::Cutscene.define :ch24_players_rage do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[YOUR PERSPECTIVE]"
  
  # TODO: Event Sequence - Rage
  # scene.message "Rage burned through you."
  # scene.message "Hotter than any fire. Sharper than any blade."
  
  scene.message "\\b\\PN\\b: (Malachar did this.)"
  scene.message "\\b\\PN\\b: (The cult. Viktor. All of them.)"
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Your mark pulsed."
  # scene.message "Zacian's voice echoed in your mind."
  
  scene.message "\\bZacian\\b: (Vengeance is not justice, child.)"
  scene.message "\\bZacian\\b: (Do not let your sword become an instrument of hate.)"
  
  scene.message "\\b\\PN\\b: (He was innocent. He was helping us.)"
  
  scene.message "\\bZacian\\b: (And his sacrifice deserves more than blind rage.)"
  scene.message "\\bZacian\\b: (It deserves purpose. Victory.)"
  
  # TODO: Event Sequence - Rage Focused
  # scene.message "The fury didn't fade."
  # scene.message "But it... focused."
  # scene.message "Became something sharper. More dangerous."
end

GameData::Cutscene.define :ch24_leaving_lab do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Leave Ruins
  # scene.message "You couldn't stay in the ruins."
  # scene.message "There was nothing left to save."
  
  scene.message "\\bKael\\b: We need to move."
  scene.message "\\bKael\\b: The cult might come back."
  
  scene.message "\\bLyra\\b: *wiping tears* What about... his body?"
  
  scene.message "\\b\\PN\\b: We'll make arrangements."
  scene.message "\\b\\PN\\b: He deserves a proper burial."
  
  # TODO: Event Sequence - Carry Body
  # scene.message "You carried the Professor's body to safety."
  # scene.message "One final act of respect."
  # scene.message "One final goodbye."
end

GameData::Cutscene.define :ch24_dad_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Dad Arrives
  # scene.message "Dad Marcus arrived within hours."
  # scene.message "The Champion's face was grim."
  
  scene.message "\\bDad Marcus\\b: I heard. I came as fast as I could."
  
  scene.message "\\b\\PN\\b: Dad..."
  
  # TODO: Event Sequence - Embrace
  # scene.message "He embraced you."
  # scene.message "Strong arms holding you tight."
  
  scene.message "\\bDad Marcus\\b: I'm so sorry."
  scene.message "\\bDad Marcus\\b: Aldric was a good man."
  scene.message "\\bDad Marcus\\b: One of the best."
  
  scene.message "\\b\\PN\\b: The cult did this."
  scene.message "\\b\\PN\\b: Malachar ordered it."
  
  scene.message "\\bDad Marcus\\b: *darkly* I know."
  scene.message "\\bDad Marcus\\b: And they will answer for it."
  scene.message "\\bDad Marcus\\b: To you. To me. To justice."
end

GameData::Cutscene.define :ch24_funeral do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Funeral Start
  # scene.message "The funeral was small. Private."
  # scene.message "The Professor had no family left."
  # scene.message "Only his research. And his memories."
  
  # TODO: Event Sequence - Standing at Grave
  # scene.message "You stood before the grave."
  # scene.message "Lyra. Kael. \\PN."
  # scene.message "And Dad Marcus, silent and strong."
  
  scene.message "\\bLyra\\b: He believed in us until the end..."
  
  scene.message "\\bKael\\b: Then we can't let him down."
  
  scene.message "\\b\\PN\\b: We won't."
  scene.message "\\b\\PN\\b: I promise, Professor."
  scene.message "\\b\\PN\\b: We'll finish what you started."
  
  # TODO: Event Sequence - Unity
  # scene.message "The three of you stood together."
  # scene.message "Unified in grief. Strengthened by purpose."
end

GameData::Cutscene.define :ch24_new_resolve do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bDad Marcus\\b: What will you do now?"
  
  scene.message "\\b\\PN\\b: Find Malachar."
  scene.message "\\b\\PN\\b: Stop the cult."
  scene.message "\\b\\PN\\b: Save the world."
  
  scene.message "\\bDad Marcus\\b: You'll need help."
  
  scene.message "\\bKael\\b: We have each other."
  
  scene.message "\\bLyra\\b: And the Guardians."
  
  scene.message "\\bDad Marcus\\b: Then I'll do what I can from here."
  scene.message "\\bDad Marcus\\b: Mobilize the League. Gather allies."
  scene.message "\\bDad Marcus\\b: When you face them... you won't be alone."
  
  scene.message "\\b\\PN\\b: Thanks, Dad."
  
  scene.message "\\b\\PN\\b: Thanks, Dad."
  
  # TODO: Event Sequence - Shoulder Touch
  # scene.message "He placed a hand on your shoulder."
  
  scene.message "\\bDad Marcus\\b: Make them pay."
  scene.message "\\bDad Marcus\\b: For Aldric. For all of us."
  
  # TODO: Event Sequence - Personal Quest
  # scene.message "The hunt for Malachar had become personal."
end

GameData::Cutscene.define :ch24_hidden_research do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Return to Meeting Place
  # scene.message "Later, you returned to where you first met the group."
  # scene.message "The place the Professor mentioned."
  
  scene.message "\\bLyra\\b: He said he hid his research here."
  
  scene.message "\\bKael\\b: There must be a hidden compartment."
  
  # TODO: Event Sequence - Search and Find
  # scene.message "You searched carefully."
  # scene.message "And found it—a loose stone in the wall."
  
  # scene.message "Behind it: a bundle of papers."
  # scene.message "The Professor's final research."
  
  scene.message "\\b\\PN\\b: He knew they might come for him."
  scene.message "\\b\\PN\\b: He prepared for this."
  
  scene.message "\\bKael\\b: What does it say?"
  
  scene.message "\\bLyra\\b: It's... everything."
  scene.message "\\bLyra\\b: Everything he knew about the seals, the cult, Nidhoggr."
  
  scene.message "\\b\\PN\\b: Then his sacrifice wasn't in vain."
  scene.message "\\b\\PN\\b: He gave us the knowledge to win."
end

#===============================================================================
# Chapter 25: Kael faces Hel / Lady Morwen - Trial of Death
#===============================================================================

GameData::Cutscene.define :ch25_after_funeral do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Days Pass
  # scene.message "Days passed after the Professor's funeral."
  # scene.message "The grief hadn't faded. But it had... focused."
  
  scene.message "\\bKael\\b: (Three trials. Three guardians.)"
  scene.message "\\bKael\\b: (\\PN completed his. Lyra completed hers.)"
  scene.message "\\bKael\\b: (Now it's my turn.)"
  
  # TODO: Event Sequence - Shadow Comfort
  # scene.message "Shadow pressed against his leg."
  # scene.message "The Zorua understood. She always did."
  
  scene.message "\\bKael\\b: The Mortality Ruins."
  scene.message "\\bKael\\b: That's where Yveltal waits."
  
  scene.message "\\bLyra\\b: We'll go with you."
  scene.message "\\b\\PN\\b: Whatever you face, you won't face it alone."
  
  scene.message "\\bKael\\b: ...Thanks."
  scene.message "\\bKael\\b: (But I think this is a trial I have to face myself.)"
end

GameData::Cutscene.define :ch25_journey_begins do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Harsh Landscape
  # scene.message "The path to the Mortality Ruins was harsh."
  # scene.message "The landscape grew darker as you traveled."
  
  scene.message "\\bLyra\\b: The plants here... they're all dead."
  scene.message "\\bLyra\\b: But not rotting. Just... still."
  
  scene.message "\\bKael\\b: Preserved in the moment of death."
  scene.message "\\bKael\\b: That's Yveltal's domain."
  
  scene.message "\\b\\PN\\b: How do you know so much about this?"
  
  scene.message "\\bKael\\b: I don't know. It just feels... familiar."
  scene.message "\\bKael\\b: Like I've always known."
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Kael's mark pulsed beneath his glove."
  # scene.message "Crimson light flickering in the darkness."
  
  scene.message "\\bKael\\b: We're getting close."
end

GameData::Cutscene.define :ch25_mortality_ruins do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Ruins Appear
  # scene.message "The Mortality Ruins rose from the wasteland."
  # scene.message "A place of endings. Of death."
  
  scene.message "\\bLyra\\b: I don't like this place..."
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\bKael\\b: It feels... familiar."
  scene.message "\\bKael\\b: Like I've been here before."
  
  scene.message "\\b\\PN\\b: This is Yveltal's domain."
  scene.message "\\b\\PN\\b: Kael... this might be your trial."
  
  scene.message "\\bKael\\b: *grimly* Then let's get it over with."
  
  # TODO: Event Sequence - Entrance Maw
  # scene.message "The entrance to the ruins was a gaping maw."
  # scene.message "Stone teeth carved to resemble a devouring beast."
  
  scene.message "\\bLyra\\b: *shivering* It's like it wants to swallow us."
  
  scene.message "\\bKael\\b: Not you. Just me."
  scene.message "\\bKael\\b: Stay here. Both of you."
  
  scene.message "\\b\\PN\\b: Kael—"
  
  scene.message "\\bKael\\b: Please. I have to do this alone."
end

GameData::Cutscene.define :ch25_entering_ruins do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.fade_out
  scene.fade_in
  
  # TODO: Event Sequence - Enter Ruins
  # scene.message "Kael stepped into the ruins alone."
  # scene.message "The darkness swallowed him immediately."
  
  # TODO: Event Sequence - Door Seals
  # scene.message "Behind him, the entrance sealed."
  # scene.message "Stone grinding against stone."
  
  scene.message "\\bKael\\b: (No going back now.)"
  
  # TODO: Event Sequence - Shadow
  # scene.message "Shadow walked beside him, fur bristling."
  # scene.message "The Zorua's eyes glowed in the darkness."
  
  scene.message "\\bKael\\b: At least I have you, girl."
  scene.message "\\bShadow\\b: *growl of agreement*"
  
  # TODO: Event Sequence - Corridor Whispers
  # scene.message "The corridor stretched endlessly."
  # scene.message "Whispers echoed from the walls."
  # scene.message "Voices of the dead. Calling his name."
  
  scene.message "\\bVoices\\b: Kael... Kael... Kael..."
end

GameData::Cutscene.define :ch25_memories_surface do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Whispers Grow
  # scene.message "The whispers grew louder."
  # scene.message "And with them came memories."
  
  scene.message "\\bKael\\b: (The fire. Mira screaming.)"
  scene.message "\\bKael\\b: (I couldn't save her. I was too weak.)"
  
  # TODO: Event Sequence - Flashbacks
  # scene.message "Images flickered in the darkness."
  # scene.message "The burning orphanage. Children crying."
  # scene.message "And Mira, pushing him out the window."
  
  scene.message "\\bMira's Memory\\b: RUN, KAEL! RUN!"
  
  scene.message "\\bKael\\b: *clutching his head* Stop... stop it..."
  
  scene.message "\\bVoice\\b: Why do you resist?"
  scene.message "\\bVoice\\b: These are your memories. Your truth."
  
  scene.message "\\bKael\\b: Who's there?!"
  
  # TODO: Event Sequence - Figure Emerges
  # scene.message "A figure emerged from the shadows."
  # scene.message "Pale. Beautiful. Wrong."
end

GameData::Cutscene.define :ch25_hel_temptation do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Lady Morwen
  # scene.message "A woman's form emerged from the shadows."
  # scene.message "Beautiful. Sorrowful. Wrong."
  
  scene.message "\\bLady Morwen\\b: Kael... child of death..."
  scene.message "\\bLady Morwen\\b: I can feel your pain."
  scene.message "\\bLady Morwen\\b: You lost someone, didn't you?"
  
  scene.message "\\bKael\\b: Don't... don't talk about her."
  
  scene.message "\\bLady Morwen\\b: Mira. Such a pretty name."
  scene.message "\\bLady Morwen\\b: I can bring her back, you know."
  scene.message "\\bLady Morwen\\b: My mistress Hel commands the dead."
  scene.message "\\bLady Morwen\\b: All you have to do... is join us."
  
  scene.message "\\bKael\\b: Join... the cult?"
  
  scene.message "\\bLady Morwen\\b: Not the cult. Something greater."
  scene.message "\\bLady Morwen\\b: When Nidhoggr rises, death will have no meaning."
  scene.message "\\bLady Morwen\\b: Everyone who died will return."
  scene.message "\\bLady Morwen\\b: Your sister. Your parents. Everyone."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: (Tempting. So tempting.)"
end

GameData::Cutscene.define :ch25_the_offer do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bLady Morwen\\b: All endings will be undone."
  scene.message "\\bLady Morwen\\b: All pain erased."
  scene.message "\\bLady Morwen\\b: Is that not what you want?"
  
  scene.message "\\bKael\\b: (To see Mira again...)"
  scene.message "\\bKael\\b: (To tell her I'm sorry...)"
  
  scene.message "\\bLady Morwen\\b: Take my hand."
  scene.message "\\bLady Morwen\\b: And I will show you."
  
  # TODO: Event Sequence - Hand Extended
  # scene.message "Her pale hand extended toward him."
  # scene.message "Cold. Inviting. A path to the past."
  
  # TODO: Event Sequence - Shadow Growl
  # scene.message "Shadow growled, stepping between them."
  scene.message "\\bShadow\\b: *warning snarl*"
  
  scene.message "\\bLady Morwen\\b: Your beast knows nothing."
  scene.message "\\bLady Morwen\\b: But you... you understand."
  scene.message "\\bLady Morwen\\b: The living forget. But the dead remember."
end

GameData::Cutscene.define :ch25_mira_ghost do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Mira Appears
  # scene.message "Before Kael could respond..."
  # scene.message "The shadows shifted."
  # scene.message "And Mira appeared before him."
  
  scene.message "\\bMira's Ghost\\b: Kael..."
  scene.message "\\bKael\\b: M-Mira?!"
  
  # TODO: Event Sequence - Look Description
  # scene.message "She looked exactly as he remembered."
  # scene.message "Warm eyes. Gentle smile."
  # scene.message "The sister who saved his life."
  
  scene.message "\\bMira's Ghost\\b: Don't listen to her."
  scene.message "\\bMira's Ghost\\b: I'm not suffering. I'm at peace."
  
  scene.message "\\bKael\\b: But... I couldn't save you..."
  
  scene.message "\\bMira's Ghost\\b: You were a child, Kael."
  scene.message "\\bMira's Ghost\\b: It wasn't your fault. It was never your fault."
  
  scene.message "\\bLady Morwen\\b: Silence, spirit!"
  
  scene.message "\\bMira's Ghost\\b: You have no power here, servant of Hel."
  scene.message "\\bMira's Ghost\\b: This is Yveltal's domain, not yours."
end

GameData::Cutscene.define :ch25_mira_message do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bMira's Ghost\\b: Kael... look at me."
  scene.message "\\bMira's Ghost\\b: Really look at me."
  
  # TODO: Event Sequence - Eye Contact
  # scene.message "Kael met her eyes."
  # scene.message "Tears streaming down his face."
  
  scene.message "\\bMira's Ghost\\b: You have friends now. Real ones."
  scene.message "\\bMira's Ghost\\b: That girl with the pink hair..."
  scene.message "\\bMira's Ghost\\b: She loves you, you know."
  
  scene.message "\\bKael\\b: Lyra...?"
  
  scene.message "\\bMira's Ghost\\b: And you love her."
  scene.message "\\bMira's Ghost\\b: But you're so scared of losing someone again..."
  scene.message "\\bMira's Ghost\\b: That you won't let yourself feel it."
  
  scene.message "\\bKael\\b: I can't... if I lose her too..."
  
  scene.message "\\bMira's Ghost\\b: Then fight for her."
  scene.message "\\bMira's Ghost\\b: Not against death. Against despair."
  scene.message "\\bMira's Ghost\\b: That's what I did for you."
  
  scene.message "\\bKael\\b: Mira..."
end

GameData::Cutscene.define :ch25_letting_go do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bMira's Ghost\\b: Let me go, little brother."
  scene.message "\\bMira's Ghost\\b: Not from your heart. Never from your heart."
  scene.message "\\bMira's Ghost\\b: But from your guilt."
  
  scene.message "\\bKael\\b: I don't know if I can..."
  
  scene.message "\\bMira's Ghost\\b: You already have."
  scene.message "\\bMira's Ghost\\b: Every time you protected your friends."
  scene.message "\\bMira's Ghost\\b: Every time you chose hope over despair."
  scene.message "\\bMira's Ghost\\b: That was you, Kael. Not the guilt. You."
  
  scene.message "\\bMira's Ghost\\b: That was you, Kael. Not the guilt. You."
  
  # TODO: Event Sequence - Touch Cheek
  # scene.message "She reached out and touched his cheek."
  # scene.message "Warm. Not cold. Alive with memory."
  
  scene.message "\\bMira's Ghost\\b: I'm so proud of you."
  scene.message "\\bMira's Ghost\\b: Now go. Be happy."
  scene.message "\\bMira's Ghost\\b: That's all I ever wanted for you."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: Goodbye, Mira."
  scene.message "\\bKael\\b: And thank you."
  
  # TODO: Event Sequence - Mira Fades
  # scene.message "Mira smiled and faded away."
  # scene.message "Not into darkness. Into light."
end

GameData::Cutscene.define :ch25_morwen_rage do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.camera_shake 5, 15
  
  scene.message "\\bLady Morwen\\b: NO!"
  scene.message "\\bLady Morwen\\b: You dare reject my mistress's gift?!"
  
  scene.message "\\bKael\\b: It wasn't a gift."
  scene.message "\\bKael\\b: It was a chain."
  
  scene.message "\\bKael\\b: I don't need to bring back the dead."
  scene.message "\\bKael\\b: I need to protect the living."
  
  scene.message "\\bLady Morwen\\b: FOOL! The living all become the dead!"
  scene.message "\\bLady Morwen\\b: You fight against the inevitable!"
  
  scene.message "\\bKael\\b: Maybe."
  scene.message "\\bKael\\b: But I'd rather fight for today than mourn yesterday."
  
  # TODO: Event Sequence - Mark Burns
  # scene.message "His mark blazed with crimson light."
  # scene.message "Yveltal's power flowing through him."
  
  scene.message "\\bLady Morwen\\b: THEN YOU WILL JOIN THE DEAD!"
end

GameData::Cutscene.define :ch25_morwen_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.camera_flash
  
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.camera_flash
  
  # TODO: Event Sequence - Morwen Transforms
  # scene.message "Lady Morwen transformed."
  # scene.message "Her beauty twisted into something monstrous."
  # scene.message "A servant of Hel, goddess of the dishonored dead."
  
  scene.message "\\bKael\\b: Shadow! Let's end this!"
  scene.message "\\bShadow\\b: *battle cry*"
  
  scene.trainer_battle :FORGOTTEN, "Lady Morwen", 0
  
  scene.message "\\bLady Morwen\\b: How... impossible..."
  scene.message "\\bLady Morwen\\b: You're just a boy..."
  
  scene.message "\\bKael\\b: A boy who let go of his chains."
  scene.message "\\bKael\\b: You should try it sometime."
  
  # TODO: Event Sequence - Morwen Fades
  # scene.message "Lady Morwen screamed."
  # scene.message "And faded into nothing."
  # scene.message "Her darkness consumed by Yveltal's greater power."
end

GameData::Cutscene.define :ch25_trial_complete do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Ruins Shift
  # scene.message "The ruins shifted around him."
  # scene.message "Stone walls crumbling. Light breaking through."
  
  scene.message "\\bYveltal\\b: (Well done, chosen one.)"
  scene.message "\\bYveltal\\b: (You have faced the darkness within.)"
  scene.message "\\bYveltal\\b: (And emerged victorious.)"
  
  scene.message "\\bKael\\b: Yveltal..."
  
  scene.message "\\bYveltal\\b: (Death is not an enemy, child.)"
  scene.message "\\bYveltal\\b: (It is a part of life. A necessary ending.)"
  scene.message "\\bYveltal\\b: (To fear it is natural. To be consumed by it is tragedy.)"
  
  scene.message "\\bKael\\b: I think I finally understand."
  
  scene.message "\\bYveltal\\b: (Then take my power. Use it to protect what you love.)"
  scene.message "\\bYveltal\\b: (Not against death. Against those who would corrupt it.)"
  
  # TODO: Event Sequence - Mark Complete
  # scene.message "Kael's mark blazed."
  # scene.message "The Entropy Shard pulsed in his pocket."
  # scene.message "Connected. Accepted. Complete."
end

GameData::Cutscene.define :ch25_reunion do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Shadow Wall Crumbles
  # scene.message "The shadow wall crumbled."
  # scene.message "Light flooded the ruins."
  
  # TODO: Event Sequence - Lyra Rushes
  # scene.message "And Lyra rushed to Kael."
  
  scene.message "\\bLyra\\b: KAEL!"
  scene.message "\\bLyra\\b: Are you okay?!"
  
  # TODO: Event Sequence - Hug
  # scene.message "She threw her arms around him."
  # scene.message "Holding him tight."
  
  scene.message "\\bKael\\b: ...Yeah. I am now."
  
  # TODO: Event Sequence - Smile
  # scene.message "For the first time, Kael smiled at her."
  # scene.message "Really smiled. Without walls. Without fear."
  
  scene.message "\\b\\PN\\b: You did it."
  
  scene.message "\\bKael\\b: I couldn't have without you two."
  scene.message "\\bKael\\b: Even out here... knowing you were waiting..."
  scene.message "\\bKael\\b: It gave me strength."
  
  scene.message "\\bLyra\\b: *still hugging him* Don't ever do that alone again."
  scene.message "\\bKael\\b: ...No promises."
  scene.message "\\bKael\\b: But I'll try."
end

GameData::Cutscene.define :ch25_walking_forward do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Exit Ruins
  # scene.message "The three of you left the Mortality Ruins."
  # scene.message "Behind you, the stone entrance crumbled."
  # scene.message "Its purpose fulfilled."
  
  scene.message "\\b\\PN\\b: All three trials complete."
  scene.message "\\b\\PN\\b: Now we have the power of the Guardians."
  
  scene.message "\\bLyra\\b: But what do we do with it?"
  
  scene.message "\\bKael\\b: We stop the cult."
  scene.message "\\bKael\\b: We stop Nidhoggr."
  scene.message "\\bKael\\b: And we save the world."
  
  scene.message "\\b\\PN\\b: Sounds like a plan."
  
  scene.message "Kael walked between his friends."
  scene.message "Lyra's hand brushed against his."
  scene.message "He didn't pull away."
  
  scene.message "For the first time in years..."
  scene.message "Kael felt free."
end

#===============================================================================
# INTERLUDE: Chapter 25.5 - Valley of Shadows (Kael Perspective Chapter)
# Full playable chapter from Kael's POV during his complete trial
#===============================================================================

GameData::Cutscene.define :ch25_5_intro do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[INTERLUDE: VALLEY OF SHADOWS]"
  scene.message "\\i[Kael's Complete Trial...]"
  scene.fade_out 10
  scene.fade_in 10
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Kael Thoughts
  # scene.message "The moment you stepped into the Mortality Ruins..."
  # scene.message "You knew this wouldn't be like the others' trials."
  
  scene.message "\\bKael\\b: (This place... it's calling to me.)"
  
  # TODO: Event Sequence - Shadow
  # scene.message "Shadow pressed against your leg."
  scene.message "\\bShadow\\b: Zor..."
  scene.message "\\bKael\\b: I know, girl. Stay close."
  
  # TODO: Event Sequence - Door Seals
  # scene.message "The door sealed behind you."
  # scene.message "No going back now."
end

GameData::Cutscene.define :ch25_5_first_corridor do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Corridor Description
  # scene.message "The corridor stretched ahead."
  # scene.message "Walls carved with bones and skulls."
  # scene.message "Candles that burned without flame."
  
  scene.message "\\bKael\\b: (Death imagery everywhere.)"
  scene.message "\\bKael\\b: (Subtle, Yveltal. Real subtle.)"
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Your mark pulsed with crimson light."
  # scene.message "It was the only illumination you needed."
  
  scene.message "\\bVoice\\b: (Child of endings...)"
  scene.message "\\bVoice\\b: (Welcome home.)"
  
  scene.message "\\bKael\\b: This isn't home."
  
  scene.message "\\bVoice\\b: (Isn't it?)"
  scene.message "\\bVoice\\b: (Death has always been with you.)"
  scene.message "\\bVoice\\b: (Even before you knew my name.)"
end

GameData::Cutscene.define :ch25_5_first_memory do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.message "\\i[MEMORY - Age Seven]"
  
  # TODO: Event Sequence - Wall Vision
  # scene.message "The walls showed you something."
  # scene.message "A young boy. A dying Pokémon."
  
  scene.message "\\bYoung Kael\\b: Please don't go!"
  scene.message "\\bYoung Kael\\b: Please, please, please..."
  
  # TODO: Event Sequence - Dying Growlithe
  # scene.message "The Growlithe in his arms was fading."
  # scene.message "Hit by a carriage. Nothing could save it."
  
  scene.message "\\bGrowlithe\\b: *weakly* Grow..."
  
  scene.message "\\bYoung Kael\\b: *sobbing* I'll stay with you."
  scene.message "\\bYoung Kael\\b: You won't be alone. I promise."
  
  # TODO: Event Sequence - Kael Remembers
  # scene.message "You remembered this."
  # scene.message "The first death you'd ever witnessed."
  # scene.message "The first time you understood."
  
  scene.message "\\bKael\\b: (He was a stray. I'd been feeding him for weeks.)"
  scene.message "\\bKael\\b: (I couldn't save him.)"
end

GameData::Cutscene.define :ch25_5_yveltal_first_lesson do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bYveltal\\b: (You sat with him until the end.)"
  scene.message "\\bYveltal\\b: (That was your first act of mercy.)"
  
  scene.message "\\bKael\\b: Mercy? He died."
  
  scene.message "\\bYveltal\\b: (Everyone dies.)"
  scene.message "\\bYveltal\\b: (But not everyone dies with someone who cares.)"
  scene.message "\\bYveltal\\b: (You gave him that gift.)"
  
  scene.message "\\bKael\\b: I gave him nothing. I couldn't stop it."
  
  scene.message "\\bYveltal\\b: (And there it is.)"
  scene.message "\\bYveltal\\b: (The guilt you've carried ever since.)"
  scene.message "\\bYveltal\\b: (You blame yourself for deaths you cannot prevent.)"
  
  # TODO: Event Sequence - Silence
  # scene.message "You said nothing."
  # scene.message "Because it was true."
end

GameData::Cutscene.define :ch25_5_second_corridor do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Walk Deeper
  # scene.message "You walked deeper into the ruins."
  # scene.message "Shadow stayed close, growling at the shadows."
  
  scene.message "\\bKael\\b: It's okay, girl."
  scene.message "\\bKael\\b: They're just memories."
  
  scene.message "\\bShadow\\b: *unconvinced* Zor..."
  
  # TODO: Event Sequence - Wall Visions
  # scene.message "The walls changed."
  # scene.message "More scenes. More deaths."
  # scene.message "A parade of endings you'd witnessed."
  
  # scene.message "The old man at the market who collapsed."
  # scene.message "The Pidgey that flew into a window."
  # scene.message "The flower Mira planted that withered in frost."
  
  scene.message "\\bKael\\b: (So many endings.)"
  scene.message "\\bKael\\b: (I remember them all.)"
  scene.message "\\bKael\\b: (Every single one.)"
end

GameData::Cutscene.define :ch25_5_the_fire_approaches do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Walls Glow
  # scene.message "And then the walls began to glow."
  # scene.message "Orange. Red. The color of flame."
  
  scene.message "\\bKael\\b: (No. Not this.)"
  scene.message "\\bKael\\b: (Not yet.)"
  
  # TODO: Event Sequence - Visions Force
  # scene.message "But the ruins didn't care what you wanted."
  # scene.message "They showed you anyway."
  
  # scene.message "The orphanage."
  # scene.message "The night that changed everything."
  
  scene.message "\\bKael\\b: (I can't... I don't want to see this again...)"
  
  scene.message "\\bYveltal\\b: (You must.)"
  scene.message "\\bYveltal\\b: (To move forward, you must face what lies behind.)"
  scene.message "\\bYveltal\\b: (All of it.)"
end

GameData::Cutscene.define :ch25_5_fire_memory do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 5, 40
  
  scene.message "\\i[MEMORY - The Orphanage Fire]"
  
  # TODO: Event Sequence - Fire Chaos
  # scene.message "Smoke. Screaming. Chaos."
  # scene.message "You were eleven years old."
  # scene.message "And everything was burning."
  
  scene.message "\\bYoung Kael\\b: MIRA! MIRA, WHERE ARE YOU?!"
  
  # TODO: Event Sequence - Running in Flames
  # scene.message "You ran through the flames."
  # scene.message "Coughing. Choking. Barely seeing."
  
  scene.message "\\bMira's Voice\\b: KAEL! Over here!"
  
  # TODO: Event Sequence - Found Mira
  # scene.message "You found her in the main hall."
  # scene.message "Trapped behind a collapsed beam."
  # scene.message "The ceiling was falling."
  
  scene.message "\\bYoung Kael\\b: I'll get you out!"
  
  scene.message "\\bMira\\b: There's no time!"
  scene.message "\\bMira\\b: The window, Kael!"
  scene.message "\\bMira\\b: You have to jump!"
end

GameData::Cutscene.define :ch25_5_mira_sacrifice_detailed do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_flash 10
  
  scene.message "\\bYoung Kael\\b: I won't leave you!"
  
  scene.message "\\bMira\\b: *crying* You have to."
  scene.message "\\bMira\\b: Please, Kael."
  scene.message "\\bMira\\b: Let me save you. Just this once."
  
  scene.message "\\bYoung Kael\\b: Mira..."
  
  scene.message "\\bMira\\b: I love you, little brother."
  scene.message "\\bMira\\b: Now GO!"
  
  # TODO: Event Sequence - Push
  # scene.message "She pushed you."
  # scene.message "Hard. Toward the window."
  # scene.message "The glass shattered around you."
  
  # TODO: Event Sequence - Fall
  # scene.message "You fell into the night."
  # scene.message "Looking back at the inferno."
  # scene.message "At your sister's face, wreathed in flame."
  
  scene.message "\\bYoung Kael\\b: MIRAAAA!!!"
  
  scene.camera_shake 10, 60
  
  # TODO: Event Sequence - Collapse
  # scene.message "The building collapsed."
  # scene.message "And silence."
end

GameData::Cutscene.define :ch25_5_guilt_manifests do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.message "\\i[PRESENT - The Mortality Ruins]"
  
  # TODO: Event Sequence - Present
  # scene.message "You fell to your knees."
  # scene.message "The memory fading but the pain remaining."
  
  scene.message "\\bKael\\b: *trembling* I should have saved her."
  scene.message "\\bKael\\b: I should have been stronger."
  
  # TODO: Event Sequence - Shadow Comfort
  # scene.message "Shadow whimpered, nuzzling your hand."
  
  scene.message "\\bVoice\\b: (Yes. You should have.)"
  
  # TODO: Event Sequence - Shadow Kael Appears
  # scene.message "A figure emerged from the shadows."
  # scene.message "Yourself. But wrong."
  # scene.message "Eyes hollow. Clothes burned."
  # scene.message "The version of you that died in that fire."
  
  scene.message "\\bShadow Kael\\b: You should have burned with her."
  scene.message "\\bShadow Kael\\b: Instead, you ran away."
  scene.message "\\bShadow Kael\\b: Coward."
end

GameData::Cutscene.define :ch25_5_facing_shadow_self do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bKael\\b: I didn't run. She pushed me."
  
  scene.message "\\bShadow Kael\\b: You could have stayed."
  scene.message "\\bShadow Kael\\b: Could have tried harder."
  scene.message "\\bShadow Kael\\b: But you gave up."
  
  scene.message "\\bKael\\b: I was eleven!"
  
  scene.message "\\bShadow Kael\\b: And she was fourteen."
  scene.message "\\bShadow Kael\\b: She died for you."
  scene.message "\\bShadow Kael\\b: And what have you done with that gift?"
  scene.message "\\bShadow Kael\\b: Hidden. Pushed people away."
  scene.message "\\bShadow Kael\\b: Wasted her sacrifice."
  
  # TODO: Event Sequence - Words Cut
  # scene.message "The words cut deeper than any blade."
  # scene.message "Because part of you believed them."
  
  scene.message "\\bKael\\b: *quietly* You're right."
  scene.message "\\bKael\\b: I've been a coward."
  
  scene.message "\\bShadow Kael\\b: *leaning closer* Then give up."
  scene.message "\\bShadow Kael\\b: Let the darkness take you."
  scene.message "\\bShadow Kael\\b: You can be with her again."
end

GameData::Cutscene.define :ch25_5_temptation_deepens do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Lady Morwen Appears
  # scene.message "Lady Morwen materialized beside your shadow self."
  # scene.message "Beautiful. Serene. Wrong."
  
  scene.message "\\bLady Morwen\\b: He speaks the truth, child."
  scene.message "\\bLady Morwen\\b: Why fight against the inevitable?"
  
  scene.message "\\bKael\\b: Who... who are you?"
  
  scene.message "\\bLady Morwen\\b: A servant of Hel. A mistress of endings."
  scene.message "\\bLady Morwen\\b: And I can give you what you truly want."
  
  # TODO: Event Sequence - Mira Illusion
  # scene.message "She waved her hand."
  # scene.message "And Mira appeared before you."
  # scene.message "Whole. Unburned. Alive."
  
  scene.message "\\bMira (Illusion)\\b: Kael... I've missed you..."
  
  scene.message "\\bKael\\b: *staggering back* M-Mira?"
  
  scene.message "\\bLady Morwen\\b: Join us, and she can be real."
  scene.message "\\bLady Morwen\\b: Forever."
end

GameData::Cutscene.define :ch25_5_almost_falling do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Reaching
  # scene.message "Your hand reached toward the illusion."
  # scene.message "Trembling. Desperate."
  
  scene.message "\\bKael\\b: (Mira... real again...)"
  scene.message "\\bKael\\b: (Is that possible?)"
  
  scene.message "\\bMira (Illusion)\\b: Take my hand, Kael."
  scene.message "\\bMira (Illusion)\\b: Come with me."
  
  # TODO: Event Sequence - Shadow Intervention
  # scene.message "Shadow growled."
  # scene.message "Louder than before."
  # scene.message "Desperate."
  
  scene.message "\\bShadow\\b: ZORUA!"
  
  # TODO: Event Sequence - Tackle
  # scene.message "She tackled you."
  # scene.message "Knocked you away from the reaching hand."
  
  scene.message "\\bKael\\b: Shadow! What—"
  
  scene.message "\\bShadow\\b: *eyes blazing* Zor! Zor zorua!"
  
  # TODO: Event Sequence - Realization
  # scene.message "And suddenly you understood."
  # scene.message "The illusion's eyes were empty."
  # scene.message "Not Mira's warm brown. Just... nothing."
end

GameData::Cutscene.define :ch25_5_seeing_truth do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: (That's not her.)"
  scene.message "\\bKael\\b: (Mira's eyes were always full of life.)"
  scene.message "\\bKael\\b: (Even at the end. Even in the fire.)"
  
  scene.message "\\bKael\\b: You're not my sister."
  
  scene.message "\\bMira (Illusion)\\b: *smile faltering* Kael..."
  
  scene.message "\\bKael\\b: My sister would never ask me to give up."
  scene.message "\\bKael\\b: She died so I could LIVE."
  scene.message "\\bKael\\b: Not so I could follow her into death."
  
  scene.message "\\bLady Morwen\\b: *hissing* Foolish boy."
  scene.message "\\bLady Morwen\\b: You reject eternal peace?"
  
  scene.message "\\bKael\\b: I reject YOUR version of peace."
  scene.message "\\bKael\\b: There's nothing peaceful about empty eyes."
end

GameData::Cutscene.define :ch25_5_shadow_fights do |scene|
  scene.play_bgm 'Pokemon XY - Battle! Team Flare'
  scene.camera_flash 10
  
  # TODO: Event Sequence - Shadow Glows
  # scene.message "And then Shadow began to glow."
  # scene.message "Not evolving. Not yet."
  # scene.message "But burning with determination."
  
  scene.message "\\bKael\\b: Shadow?!"
  
  # TODO: Event Sequence - Light Erupts
  # scene.message "Light erupted from the Zorua."
  # scene.message "Not darkness. LIGHT."
  # scene.message "The light of determination. Of loyalty."
  # scene.message "Of five years of unwavering love."
  
  scene.message "\\bShadow\\b: ZORUA!"
  
  # TODO: Event Sequence - Shadow Stands
  # scene.message "She stood between you and Lady Morwen."
  # scene.message "Small but fierce. Ready to give everything."
  
  scene.message "\\bKael\\b: *tears in eyes* Shadow..."
  
  scene.message "\\bLady Morwen\\b: *recoiling* That light...!"
  
  scene.message "\\bKael\\b: That's the power of someone who stayed."
  scene.message "\\bKael\\b: When everyone else left me..."
  scene.message "\\bKael\\b: She never did."
end

GameData::Cutscene.define :ch25_5_morwen_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Elite Four Battle'
  
  scene.message "\\bLady Morwen\\b: Then you'll both die here!"
  scene.message "\\bLady Morwen\\b: My mistress Hel will not be denied!"
  
  scene.message "\\bKael\\b: Try me."
  
  scene.message "\\bKael\\b: Try me."
  
  # TODO: Event Sequence - Shadow Ready
  # scene.message "Shadow stood at your side."
  # scene.message "Still small. Still a Zorua."
  # scene.message "But fiercer than any Zoroark."
  
  scene.message "\\bKael\\b: Shadow—let's show her what we're made of!"
  scene.message "\\bShadow\\b: ZORUA!"
  
  scene.trainer_battle :FORGOTTEN, "Lady Morwen", 0
  
  scene.message "\\bLady Morwen\\b: *fading* Impossible..."
  scene.message "\\bLady Morwen\\b: How can love be stronger than death...?"
  
  scene.message "\\bKael\\b: Because love is what makes life worth living."
  scene.message "\\bKael\\b: Without it, death is just... nothing."
  
  # TODO: Event Sequence - Morwen Screams
  # scene.message "Lady Morwen screamed."
  # scene.message "And dissolved into the shadows."
end

GameData::Cutscene.define :ch25_5_real_mira_appears do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Darkness Lifts
  # scene.message "The darkness lifted."
  # scene.message "And in its place..."
  
  scene.message "\\bMira (Real)\\b: Kael..."
  
  # TODO: Event Sequence - Turn
  # scene.message "You turned."
  # scene.message "And there she was."
  # scene.message "Not the illusion. Not the temptation."
  # scene.message "The REAL Mira."
  
  # TODO: Event Sequence - Look Description
  # scene.message "Her eyes were warm. Brown. Full of love."
  # scene.message "Just like you remembered."
  
  scene.message "\\bKael\\b: *voice breaking* M-Mira...?"
  
  scene.message "\\bMira (Real)\\b: *smiling* Hey, little brother."
  scene.message "\\bMira (Real)\\b: You've gotten so tall."
  
  scene.message "\\bKael\\b: How... how is this...?"
  
  scene.message "\\bMira (Real)\\b: Yveltal's realm touches all endings."
  scene.message "\\bMira (Real)\\b: Including mine."
  scene.message "\\bMira (Real)\\b: I asked for a chance to speak to you."
  scene.message "\\bMira (Real)\\b: One last time."
end

GameData::Cutscene.define :ch25_5_confession do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: I'm sorry."
  scene.message "\\bKael\\b: I'm so sorry I couldn't save you."
  
  scene.message "\\bMira (Real)\\b: Oh, Kael..."
  scene.message "\\bMira (Real)\\b: You never had to save me."
  scene.message "\\bMira (Real)\\b: SAVING YOU was my choice."
  
  scene.message "\\bKael\\b: But if I'd been stronger—"
  
  scene.message "\\bMira (Real)\\b: You were eleven years old."
  scene.message "\\bMira (Real)\\b: The fire wasn't your fault."
  scene.message "\\bMira (Real)\\b: And neither was my death."
  
  scene.message "\\bMira (Real)\\b: You were eleven years old."
  scene.message "\\bMira (Real)\\b: The fire wasn't your fault."
  scene.message "\\bMira (Real)\\b: And neither was my death."
  
  # TODO: Event Sequence - Tears
  # scene.message "Tears streamed down your face."
  # scene.message "Years of guilt. Years of pain."
  # scene.message "All breaking loose at once."
  
  scene.message "\\bMira (Real)\\b: Look at me, Kael."
  scene.message "\\bMira (Real)\\b: I need you to really look at me."
end

GameData::Cutscene.define :ch25_5_forgiveness do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Met Eyes
  # scene.message "You met her eyes."
  # scene.message "Really met them."
  # scene.message "For the first time since the fire."
  
  scene.message "\\bMira (Real)\\b: I am so proud of you."
  scene.message "\\bMira (Real)\\b: You've become someone amazing."
  
  scene.message "\\bKael\\b: I'm not amazing. I'm just..."
  
  scene.message "\\bMira (Real)\\b: Kind? Brave? Loyal?"
  scene.message "\\bMira (Real)\\b: You think I didn't know who you'd become?"
  scene.message "\\bMira (Real)\\b: I knew, Kael."
  scene.message "\\bMira (Real)\\b: That's why I saved you."
  
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bMira (Real)\\b: You have friends now. Real ones."
  scene.message "\\bMira (Real)\\b: That girl with the pink hair..."
  scene.message "\\bMira (Real)\\b: She loves you, you know."
  
  scene.message "\\bKael\\b: *blushing slightly* Lyra...?"
  
  scene.message "\\bMira (Real)\\b: And you love her."
  scene.message "\\bMira (Real)\\b: I can see it in your heart."
end

GameData::Cutscene.define :ch25_5_lyra_acknowledgment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: I... I don't know..."
  
  scene.message "\\bMira (Real)\\b: Yes, you do."
  scene.message "\\bMira (Real)\\b: You're just scared of losing someone again."
  scene.message "\\bMira (Real)\\b: Of feeling this pain."
  
  scene.message "\\bKael\\b: If I lose her..."
  
  scene.message "\\bMira (Real)\\b: Then you'll hurt."
  scene.message "\\bMira (Real)\\b: But hurting means you LIVED."
  scene.message "\\bMira (Real)\\b: That you LOVED."
  scene.message "\\bMira (Real)\\b: That's not weakness, Kael."
  scene.message "\\bMira (Real)\\b: That's what being human means."
  
  scene.message "\\bKael\\b: *quietly* She doesn't pull away."
  scene.message "\\bKael\\b: Even when I push. She stays."
  
  scene.message "\\bMira (Real)\\b: *smiling* Like someone else you know?"
  
  # TODO: Event Sequence - Shadow Barks
  # scene.message "Shadow barked softly."
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\bMira (Real)\\b: You surround yourself with people who stay."
  scene.message "\\bMira (Real)\\b: Maybe it's time you stayed too."
end

GameData::Cutscene.define :ch25_5_letting_go do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bMira (Real)\\b: Let me go, little brother."
  scene.message "\\bMira (Real)\\b: Not from your heart. Never from your heart."
  scene.message "\\bMira (Real)\\b: But from your guilt."
  
  scene.message "\\bKael\\b: I don't know if I can..."
  
  scene.message "\\bMira (Real)\\b: You already have."
  scene.message "\\bMira (Real)\\b: Every time you protected your friends."
  scene.message "\\bMira (Real)\\b: Every time you chose hope over despair."
  scene.message "\\bMira (Real)\\b: That was you, Kael. Not the guilt. YOU."
  
  # TODO: Event Sequence - Touch Face
  # scene.message "She reached out."
  # scene.message "Touched your face."
  # scene.message "Warm. Real. Present."
  
  scene.message "\\bMira (Real)\\b: I'm so proud of you."
  scene.message "\\bMira (Real)\\b: Now go. Be happy."
  scene.message "\\bMira (Real)\\b: That's all I ever wanted for you."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: Goodbye, Mira."
  scene.message "\\bKael\\b: And... thank you."
  scene.message "\\bKael\\b: For everything."
end

GameData::Cutscene.define :ch25_5_mira_departs do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Mira Fades
  # scene.message "Mira smiled."
  # scene.message "The same smile she'd worn at the end."
  # scene.message "But now, it wasn't wreathed in flame."
  # scene.message "It was wreathed in light."
  
  scene.message "\\bMira (Real)\\b: I'll always be with you."
  scene.message "\\bMira (Real)\\b: In your heart. In your strength."
  scene.message "\\bMira (Real)\\b: In the way you protect the people you love."
  
  scene.message "\\bKael\\b: I love you, Mira."
  
  scene.message "\\bMira (Real)\\b: I know."
  scene.message "\\bMira (Real)\\b: I love you too, little brother."
  scene.message "\\bMira (Real)\\b: Always."
  
  # TODO: Event Sequence - Gone
  # scene.message "She faded."
  # scene.message "Not into darkness. Into peace."
  # scene.message "And for the first time..."
  # scene.message "The memory didn't hurt."
end

GameData::Cutscene.define :ch25_5_yveltal_appears do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  # TODO: Event Sequence - Yveltal Appears
  # scene.message "The ruins shifted."
  # scene.message "Light broke through the stone."
  # scene.message "And before you stood Yveltal."
  
  # scene.message "Massive. Dark. Beautiful."
  # scene.message "Not the monster of legend."
  scene.message "But a guardian of endings."
  
  scene.message "\\bYveltal\\b: (You have passed my trial, child.)"
  
  scene.message "\\bKael\\b: The trial was... saying goodbye?"
  
  scene.message "\\bYveltal\\b: (The trial was accepting.)"
  scene.message "\\bYveltal\\b: (Death is not the enemy.)"
  scene.message "\\bYveltal\\b: (It is a part of life. A necessary ending.)"
  scene.message "\\bYveltal\\b: (To fear it is natural.)"
  scene.message "\\bYveltal\\b: (To be consumed by it is tragedy.)"
  
  scene.message "\\bKael\\b: I think I understand now."
  
  scene.message "\\bYveltal\\b: (Then take my power.)"
  scene.message "\\bYveltal\\b: (Not against death. Against those who would corrupt it.)"
end

GameData::Cutscene.define :ch25_5_power_accepted do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  scene.camera_flash 30
  
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  scene.camera_flash 30
  
  # TODO: Event Sequence - Mark Burns
  # scene.message "Your mark blazed."
  # scene.message "Crimson light flooded the chamber."
  # scene.message "Power surged through you."
  
  scene.message "\\bKael\\b: (This is... incredible...)"
  
  # TODO: Event Sequence - Power Description
  # scene.message "You could feel it now."
  # scene.message "The endings of things."
  # scene.message "The entropy that surrounded everything."
  # scene.message "Not as a curse. As a fact."
  
  scene.message "\\bYveltal\\b: (Use this power wisely.)"
  scene.message "\\bYveltal\\b: (It can end suffering—or cause it.)"
  scene.message "\\bYveltal\\b: (The choice is yours.)"
  
  scene.message "\\bKael\\b: I'll protect them."
  scene.message "\\bKael\\b: My friends. The world."
  scene.message "\\bKael\\b: That's what I choose."
  
  scene.message "\\bYveltal\\b: (Then go, child of entropy.)"
  scene.message "\\bYveltal\\b: (And when the final battle comes...)"
  scene.message "\\bYveltal\\b: (I will fight beside you.)"
end

GameData::Cutscene.define :ch25_5_ruins_collapse do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_shake 10, 40
  
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_shake 10, 40
  
  # TODO: Event Sequence - Ruins Crumble
  # scene.message "The ruins began to crumble."
  # scene.message "The trial complete."
  # scene.message "The prison no longer needed."
  
  scene.message "\\bKael\\b: Shadow! Let's go!"
  scene.message "\\bShadow\\b: ZORUA!"
  
  # TODO: Event Sequence - Running
  # scene.message "You ran."
  # scene.message "Through collapsing corridors."
  # scene.message "Past crumbling walls."
  # scene.message "Toward the light of day."
  
  # TODO: Event Sequence - Ruins Silent
  # scene.message "And behind you..."
  # scene.message "The Mortality Ruins fell silent."
  # scene.message "Their purpose fulfilled."
  # scene.message "Their secrets released."
end

GameData::Cutscene.define :ch25_5_emergence do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 20
  scene.fade_in 20
  
  scene.message "\\i[OUTSIDE THE RUINS]"
  
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 20
  scene.fade_in 20
  
  scene.message "\\i[OUTSIDE THE RUINS]"
  
  # TODO: Event Sequence - Burst Out
  # scene.message "You burst into the light."
  # scene.message "Gasping. Trembling."
  # scene.message "But whole."
  
  scene.message "\\bLyra\\b: KAEL!"
  
  # TODO: Event Sequence - Lyra Runs
  # scene.message "She was running toward you."
  # scene.message "Pink hair streaming behind her."
  # scene.message "Eyes full of tears."
  
  scene.message "\\bLyra\\b: Are you okay?! We heard the earthquake—"
  
  # TODO: Event Sequence - Hug
  # scene.message "She threw her arms around you."
  # scene.message "And for the first time..."
  # scene.message "You hugged her back."
  
  scene.message "\\bKael\\b: ...Yeah."
  scene.message "\\bKael\\b: I am now."
  
  scene.message "\\b\\PN\\b: *relieved* You made it."
  
  scene.message "\\bKael\\b: I did."
  scene.message "\\bKael\\b: And... I saw her."
  scene.message "\\bKael\\b: Mira. She was at peace."
end

GameData::Cutscene.define :ch25_5_ending do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.fade_out 20
  
  scene.message "\\i[Valley of Shadows - End]"
  scene.message "\\i[He had walked through death's domain.]"
  scene.message "\\i[And emerged, finally, into life.]"
  
  scene.fade_in 20
  scene.message "\\i[Return to main story...]"
end

#===============================================================================
# Chapter 26: Yveltal Awakens - Kael's Acceptance
#===============================================================================

GameData::Cutscene.define :ch26_kael_reflection do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Sat Alone
  # scene.message "You sat alone after the battle."
  # scene.message "Processing everything that had happened."
  
  scene.message "\\bKael\\b: (Mira... she was at peace.)"
  scene.message "\\bKael\\b: (All this time, I thought I'd failed her.)"
  scene.message "\\bKael\\b: (But she wanted me to live.)"
  
  # TODO: Event Sequence - Shadow Curls
  # scene.message "Shadow curled beside you."
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\bKael\\b: I know, girl. Things are different now."
  
  # TODO: Event Sequence - Weight Lifts
  # scene.message "The weight in your chest was still there."
  # scene.message "But it felt... different."
  # scene.message "Less like a burden. More like a foundation."
end

GameData::Cutscene.define :ch26_lyra_approach do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Lyra Sits
  # scene.message "Footsteps approached. Lyra."
  scene.message "\\bLyra\\b: Hey... can I sit?"
  scene.message "\\bKael\\b: ...Yeah."
  
  # scene.message "She sat beside him, closer than before."
  # scene.message "Neither spoke."
  # scene.message "But for once, the silence was comfortable."
  
  scene.message "\\bLyra\\b: *quietly* What did you see in there?"
  
  scene.message "\\bKael\\b: My sister."
  scene.message "\\bKael\\b: She told me... to be happy."
  
  scene.message "\\bLyra\\b: That's good advice."
  
  scene.message "\\bKael\\b: Yeah. I'm starting to think so too."
  
  # TODO: Event Sequence - Shoulder Touch
  # scene.message "He didn't look at her."
  # scene.message "But he didn't pull away when her shoulder touched his."
end

GameData::Cutscene.define :ch26_ragnar_video do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Phone Buzz
  # scene.message "Your phone buzzed. Another message from Ragnar."
  
  scene.message "\\bRagnar (Recording)\\b: Hey."
  scene.message "\\bRagnar (Recording)\\b: I know you can't tell me where you are."
  scene.message "\\bRagnar (Recording)\\b: But I've been training like crazy."
  
  # TODO: Event Sequence - Seven Badges
  # scene.message "He held up SEVEN badges."
  
  scene.message "\\bRagnar (Recording)\\b: See? Almost caught up!"
  scene.message "\\bRagnar (Recording)\\b: One more and I'm League-ready!"
  
  # TODO: Event Sequence - Faded Grin
  # scene.message "His grin faded slightly."
  
  scene.message "\\bRagnar (Recording)\\b: I hear things, you know."
  scene.message "\\bRagnar (Recording)\\b: About the cult. About what's coming."
  scene.message "\\bRagnar (Recording)\\b: People are scared."
  
  scene.message "\\bRagnar (Recording)\\b: But I tell them..."
  scene.message "\\bRagnar (Recording)\\b: My rival's gonna save the world."
  scene.message "\\bRagnar (Recording)\\b: So they've got nothing to worry about."
  
  scene.message "\\bRagnar (Recording)\\b: Don't make a liar out of me, okay?"
  
  # TODO: Event Sequence - Message Ends
  # scene.message "The message ended."
  # scene.message "Seven badges. He really was catching up."
end

GameData::Cutscene.define :ch26_player_watches do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[YOUR PERSPECTIVE]"
  
  # TODO: Event Sequence - Watching Friends
  # scene.message "You watched from a distance."
  # scene.message "Kael and Lyra, sitting together."
  
  scene.message "\\b\\PN\\b: (Good for them.)"
  scene.message "\\b\\PN\\b: (They deserve this.)"
  
  # TODO: Event Sequence - Starter Nudge
  # scene.message "Your starter nudged your hand."
  # scene.message "You scratched behind its ears."
  
  scene.message "\\b\\PN\\b: (We all need something to fight for.)"
  scene.message "\\b\\PN\\b: (Dad. Mom. My friends.)"
  scene.message "\\b\\PN\\b: (That's what gives me strength.)"
  
  # TODO: Event Sequence - Zacian Echo
  # scene.message "Zacian's voice echoed faintly."
  scene.message "\\bZacian\\b: (And that strength will be tested soon, young one.)"
  scene.message "\\bZacian\\b: (Enjoy this peace while it lasts.)"
end

GameData::Cutscene.define :ch26_yveltal_awakens do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.camera_shake 10, 40
  
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.camera_shake 10, 40
  
  # TODO: Event Sequence - Ground Tremble
  # scene.message "The ground trembled."
  # scene.message "At the heart of the Mortality Ruins..."
  # scene.message "Something stirred."
  
  scene.message "\\b\\PN\\b: What's happening?!"
  
  scene.message "\\bKael\\b: Yveltal..."
  scene.message "\\bKael\\b: It's waking up."
  
  # TODO: Event Sequence - Cocoon Cracks
  # scene.message "The cocoon at the heart of the ruins cracked."
  # scene.message "Ancient stone splitting apart."
  # scene.message "Crimson light bleeding through."
  
  scene.message "\\bLyra\\b: *gasping* It's beautiful..."
  
  # TODO: Event Sequence - Yveltal Form
  # scene.message "Yveltal, the Destruction Pokémon, spread its wings."
  # scene.message "Massive. Terrifying. Magnificent."
  # scene.message "The embodiment of death itself."
end

GameData::Cutscene.define :ch26_yveltal_speaks do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\bYveltal\\b: You passed my test, child."
  scene.message "\\bYveltal\\b: Most who hear Hel's whispers succumb."
  scene.message "\\bYveltal\\b: They reach for what is lost."
  scene.message "\\bYveltal\\b: And in doing so, lose themselves."
  
  scene.message "\\bKael\\b: I had friends to fight for."
  
  scene.message "\\bYveltal\\b: Hmm. Perhaps that is your weakness."
  scene.message "\\bYveltal\\b: Or perhaps... your greatest strength."
  
  # TODO: Event Sequence - Yveltal Descends
  # scene.message "The great bird descended."
  # scene.message "Its crimson eyes fixed on Kael."
  
  scene.message "\\bYveltal\\b: I am the ending that gives meaning to beginnings."
  scene.message "\\bYveltal\\b: Without death, there is no life."
  scene.message "\\bYveltal\\b: Without loss, there is no love."
  scene.message "\\bYveltal\\b: You understand this now."
end

GameData::Cutscene.define :ch26_entropy_shard do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.camera_flash
  
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  scene.camera_flash
  
  scene.message "\\bYveltal\\b: Take the Entropy Shard."
  scene.message "\\bYveltal\\b: You have earned it."
  
  # TODO: Event Sequence - Shard Floats
  # scene.message "The crimson shard floated from Yveltal's chest."
  # scene.message "Pulsing with ancient power."
  # scene.message "The essence of necessary endings."
  
  # TODO: Event Sequence - Kael Takes Shard
  # scene.message "Kael reached out."
  # scene.message "The moment his fingers touched it..."
  # scene.message "His mark blazed with power."
  
  scene.message "\\bKael\\b: *gasping* The power..."
  
  scene.message "\\bYveltal\\b: It is not power over death."
  scene.message "\\bYveltal\\b: It is acceptance of it."
  scene.message "\\bYveltal\\b: The greatest strength is knowing what ends."
  scene.message "\\bYveltal\\b: And what must endure."
end

GameData::Cutscene.define :ch26_yveltal_warning do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\bYveltal\\b: But know this..."
  scene.message "\\bYveltal\\b: The Shattered Hand approaches Asgaheim."
  scene.message "\\bYveltal\\b: Nidhoggr stirs in its prison."
  
  scene.message "\\b\\PN\\b: The Gnawing One."
  
  scene.message "\\bYveltal\\b: Yes. My opposite in every way."
  scene.message "\\bYveltal\\b: I end things that their essence might continue."
  scene.message "\\bYveltal\\b: Nidhoggr consumes things utterly."
  scene.message "\\bYveltal\\b: Leaving nothing. Not even memory."
  
  scene.message "\\bLyra\\b: That's... terrifying."
  
  scene.message "\\bYveltal\\b: If it escapes... all we protect will end."
  scene.message "\\bYveltal\\b: Not in natural cycles... but in chaos."
  scene.message "\\bYveltal\\b: Entropy without renewal. Void without purpose."
end

GameData::Cutscene.define :ch26_shadow_glowing do |scene|
  scene.play_bgm 'Pokemon DPPT - Evolution'
  
  scene.play_bgm 'Pokemon DPPT - Evolution'
  
  # TODO: Event Sequence - Shadow Glows
  # scene.message "As Yveltal spoke, Shadow began to glow."
  # scene.message "Dark energy swirling around the Zorua."
  
  scene.message "\\bKael\\b: Shadow...? What's happening?"
  
  scene.message "\\bLyra\\b: She's evolving!"
  
  # TODO: Event Sequence - Evolution Animation
  # scene.message "Shadow's form stretched, grew."
  # scene.message "The illusion fox becoming something greater."
  
  scene.message "\\bYveltal\\b: Your bond has deepened."
  scene.message "\\bYveltal\\b: Through trials and blood."
  scene.message "\\bYveltal\\b: Through facing death itself."
  scene.message "\\bYveltal\\b: She grows with you."
end

GameData::Cutscene.define :ch26_shadow_battle_flashback do |scene|
  scene.play_bgm 'Pokemon DPPT - Evolution'
  
  scene.play_bgm 'Pokemon DPPT - Evolution'
  
  # TODO: Event Sequence - Flashback Visuals
  # scene.message "In the light, you saw flashes..."
  # scene.message "Every battle Shadow had fought by Kael's side."
  
  # scene.message "The ambushes she'd sensed."
  # scene.message "The enemies she'd tricked."
  # scene.message "The times she'd thrown herself between Kael and danger."
  
  scene.message "\\bKael\\b: *whispered* You were always protecting me..."
  scene.message "\\bKael\\b: Even when I pushed everyone away."
  
  # TODO: Event Sequence - Evolution Final Stage
  # scene.message "Shadow's form continued to shift."
  # scene.message "Darkness becoming power."
  # scene.message "Pain becoming strength."
end

GameData::Cutscene.define :ch26_shadow_evolves do |scene|
  scene.play_bgm 'Pokemon DPPT - Evolution'
  scene.camera_flash 25
  
  scene.play_bgm 'Pokemon DPPT - Evolution'
  scene.camera_flash 25
  
  # TODO: Event Sequence - Zoroark Appears
  # scene.message "Shadow evolved into Zoroark!"
  
  scene.message "\\bKael\\b: *genuinely smiling* Look at you."
  scene.message "\\bShadow\\b: *proud howl*"
  
  scene.message "\\bLyra\\b: She's magnificent!"
  scene.message "\\b\\PN\\b: That's incredible!"
  
  # TODO: Event Sequence - Zoroark Description
  # scene.message "The Zoroark stood tall and powerful."
  # scene.message "Master of illusions. Guardian of her trainer."
  
  scene.message "\\bYveltal\\b: This evolution is born of true loyalty."
  scene.message "\\bYveltal\\b: She has accepted death's touch..."
  scene.message "\\bYveltal\\b: And transformed it into unbreakable devotion."
  
  # TODO: Event Sequence - Shadow Affection
  # scene.message "The Zoroark pressed against Kael's side."
  # scene.message "Her eyes gleaming with protective affection."
  
  scene.message "\\bKael\\b: ...Guess you were holding back too."
  scene.message "\\bKael\\b: Waiting for me to catch up."
  
  scene.message "\\bKael\\b: ...Guess you were holding back too."
  scene.message "\\bKael\\b: Waiting for me to catch up."
  
  # TODO: Event Sequence - Bond
  # scene.message "Shadow nuzzled him in response."
  # scene.message "The bond between them had grown stronger."
  # scene.message "Through pain. Through acceptance."
  # scene.message "Through learning to live again."
end

GameData::Cutscene.define :ch26_yveltal_departs do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\bYveltal\\b: I cannot fight alongside you."
  scene.message "\\bYveltal\\b: My presence would unbalance the world."
  
  scene.message "\\bKael\\b: Then what can we do?"
  
  scene.message "\\bYveltal\\b: The shards contain our essence."
  scene.message "\\bYveltal\\b: When the time comes... you will know."
  scene.message "\\bYveltal\\b: Trust in each other. Trust in what you've learned."
  
  scene.message "\\bYveltal\\b: Trust in each other. Trust in what you've learned."
  
  # TODO: Event Sequence - Yveltal Leaves
  # scene.message "The great bird spread its wings."
  
  scene.message "\\bYveltal\\b: I will watch. I will wait."
  scene.message "\\bYveltal\\b: And when the final moment comes..."
  scene.message "\\bYveltal\\b: I will answer."
  
  # TODO: Event Sequence - Yveltal Flies
  # scene.message "Yveltal soared into the sky."
  # scene.message "Crimson light trailing behind it."
  # scene.message "Until it disappeared into the clouds."
end

GameData::Cutscene.define :ch26_three_shards do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  # TODO: Event Sequence - Shards Resonate
  # scene.message "With all three shards in hand..."
  # scene.message "You felt the power resonate."
  
  scene.message "\\bLyra\\b: My shard is glowing!"
  scene.message "\\bKael\\b: Mine too."
  scene.message "\\b\\PN\\b: They want to be together."
  
  # TODO: Event Sequence - Shards Float
  # scene.message "The three shards floated toward each other."
  # scene.message "Blade Shard. Growth Shard. Entropy Shard."
  # scene.message "Sword. Life. Death."
  
  # TODO: Event Sequence - Ready to Merge
  # scene.message "Not merging. Not yet."
  # scene.message "But ready. Waiting."
  
  scene.message "\\bKael\\b: When the time comes..."
  scene.message "\\bKael\\b: They'll become something greater."
  
  scene.message "\\bLyra\\b: The Crown. Reformed."
  
  scene.message "\\b\\PN\\b: And we'll need it."
  scene.message "\\b\\PN\\b: Nidhoggr won't go down easy."
end

GameData::Cutscene.define :ch26_planning_next do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  scene.message "\\bKael\\b: So what's our next move?"
  
  scene.message "\\b\\PN\\b: We need to reach Asgaheim."
  scene.message "\\b\\PN\\b: Stop Malachar before he releases Nidhoggr."
  
  scene.message "\\bLyra\\b: But where is Asgaheim?"
  
  scene.message "\\bKael\\b: The Professor's research mentioned a Gateway."
  scene.message "\\bKael\\b: In the mountains beyond the eighth gym."
  
  scene.message "\\b\\PN\\b: Then that's where we're going."
  
  scene.message "\\bLyra\\b: We should rest first."
  scene.message "\\bLyra\\b: We've been through so much..."
  
  scene.message "\\bKael\\b: *nodding* She's right."
  scene.message "\\bKael\\b: We won't be any good to anyone if we're exhausted."
  
  scene.message "\\b\\PN\\b: One night. Then we move."
end

GameData::Cutscene.define :ch26_camp_setup do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Camp Setup
  # scene.message "You made camp near the ruins."
  # scene.message "A fire crackling in the darkness."
  
  scene.message "\\bLyra\\b: I'll cook something."
  scene.message "\\bLyra\\b: Grandma always said food heals the soul."
  
  scene.message "\\bKael\\b: Need help?"
  
  scene.message "\\bLyra\\b: *surprised* You're offering?"
  
  scene.message "\\bKael\\b: *shrugging* I can cut vegetables."
  
  scene.message "\\b\\PN\\b: *watching with a smile* I'll gather more firewood."
  
  # TODO: Event Sequence - Working Together
  # scene.message "The three of you worked together."
  # scene.message "Simple tasks. Quiet comfort."
  # scene.message "The calm before the storm."
end

GameData::Cutscene.define :ch26_evening_talk do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Sitting Fire
  # scene.message "After dinner, you sat around the fire."
  # scene.message "Stars scattered across the sky."
  
  scene.message "\\bLyra\\b: Do you think... we can actually do this?"
  
  scene.message "\\bKael\\b: Does it matter?"
  scene.message "\\bKael\\b: We have to try."
  
  scene.message "\\b\\PN\\b: We've come this far."
  scene.message "\\b\\PN\\b: Beaten every challenge."
  scene.message "\\b\\PN\\b: We can do this too."
  
  scene.message "\\bLyra\\b: *smiling* When you say it, I almost believe it."
  
  scene.message "\\bKael\\b: Believe it."
  scene.message "\\bKael\\b: We're not the same people who started this journey."
  
  scene.message "\\b\\PN\\b: No. We're stronger."
  scene.message "\\b\\PN\\b: Together."
  
  # TODO: Event Sequence - Fire Crackle
  # scene.message "The fire crackled."
  # scene.message "And for a moment, everything felt possible."
end

# Aldric's absence changes how the team works; it is not resolved by the funeral.
GameData::Cutscene.define :ch26_the_question_no_one_answers do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "At the crossroads, you stopped with the map in your hands."
  scene.message "\\b\\PN\\b: We should ask Professor Aldric which route—"
  scene.message "The sentence ended by itself."

  scene.message "Lyra looked down. Kael unfolded Aldric's copied notes."
  scene.message "\\bKael\\b: He marked both paths. The eastern route is safer."
  scene.message "\\bLyra\\b: Then we take the western one. There's a village inside the danger zone."

  scene.message "Once, Aldric would have made the decision and carried the blame."
  scene.message "Now the three of you argued, chose, and signed the route together."
  scene.message "His absence was not silence. It was responsibility."
end

#===============================================================================
# Chapter 27: Love Confession - The Night Before
#===============================================================================

GameData::Cutscene.define :ch27_last_night do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Night Before
  # scene.message "The night before the final journey."
  # scene.message "You made camp at the foot of the Gateway."
  
  # scene.message "Tomorrow, you would enter Asgaheim."
  # scene.message "Face Malachar. Face Nidhoggr."
  
  scene.message "\\bLyra\\b: I made dinner! Grandma's recipe."
  scene.message "\\bKael\\b: *takes bowl* ...Thanks."
  
  # TODO: Event Sequence - Silence
  # scene.message "You ate in silence."
  # scene.message "Not because you had nothing to say."
  # scene.message "But because words seemed inadequate."
  
  # scene.message "The weight of tomorrow hung over everything."
end

GameData::Cutscene.define :ch27_ragnar_call do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Phone Rings
  # scene.message "While checking the perimeter, your phone rang."
  # scene.message "Ragnar's face appeared on the screen."
  
  scene.message "\\bRagnar\\b: ...Hey."
  
  scene.message "\\b\\PN\\b: Hey."
  
  scene.message "\\bRagnar\\b: So... tomorrow's the big day, huh?"
  
  scene.message "\\b\\PN\\b: How do you always know?"
  
  scene.message "\\bRagnar\\b: I pay attention, duh."
  scene.message "\\bRagnar\\b: Everyone's talking about the Gateway glowing."
  scene.message "\\bRagnar\\b: And where there's weird glowing stuff..."
  scene.message "\\bRagnar\\b: There's my rival."
  
  # TODO: Event Sequence - Silence
  # scene.message "Silence."
  
  scene.message "\\bRagnar\\b: ...Just come back, okay?"
  scene.message "\\bRagnar\\b: I need you to be at the League."
  scene.message "\\bRagnar\\b: I've been training my whole life for that battle."
  
  scene.message "\\b\\PN\\b: I'll be there. I promise."
  
  scene.message "\\bRagnar\\b: *trying to smile* Good."
  scene.message "\\bRagnar\\b: 'Cause I'm finally gonna beat you."
  
  scene.message "\\b\\PN\\b: We'll see about that."
  
  scene.message "\\bRagnar\\b: Yeah. We will."
  
  # TODO: Event Sequence - Call Ends
  # scene.message "The call ended."
  # scene.message "Even from far away, Ragnar was there."
end

GameData::Cutscene.define :ch27_fire_talk do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Fire Talk
  # scene.message "After dinner, you sat around the fire."
  # scene.message "Watching the flames dance."
  
  scene.message "\\bLyra\\b: Do you remember when we first met?"
  
  scene.message "\\b\\PN\\b: At the crossroads. You were lost."
  
  scene.message "\\bLyra\\b: *laughing* I was not lost! I was... exploring."
  
  scene.message "\\bKael\\b: You were walking in circles."
  
  scene.message "\\bLyra\\b: *pouting* You don't have to be so blunt."
  
  scene.message "\\b\\PN\\b: And Kael tried to pickpocket me."
  
  scene.message "\\bKael\\b: ...I was hungry."
  
  scene.message "\\bLyra\\b: Look at us now."
  scene.message "\\bLyra\\b: From strangers to... this."
  
  scene.message "\\bKael\\b: Whatever 'this' is."
  
  scene.message "\\b\\PN\\b: Family."
  scene.message "\\b\\PN\\b: That's what 'this' is."
end

GameData::Cutscene.define :ch27_player_walks_away do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Kael and Lyra Talking
  # scene.message "Later, you noticed Kael and Lyra talking quietly."
  # scene.message "Something in their body language..."
  
  scene.message "\\b\\PN\\b: (They need a moment.)"
  
  # TODO: Event Sequence - Player Leaves
  # scene.message "You stood and stretched."
  
  scene.message "\\b\\PN\\b: I'm going to check the perimeter."
  scene.message "\\b\\PN\\b: Make sure no cultists are sneaking up on us."
  
  scene.message "\\bLyra\\b: Oh! Be careful!"
  
  scene.message "\\bKael\\b: *nods*"
  
  # TODO: Event Sequence - Player Exit
  # scene.message "You walked away, giving them privacy."
  # scene.message "Your starter followed at your side."
end

GameData::Cutscene.define :ch27_confession do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Silence
  # scene.message "The silence stretched between them."
  # scene.message "Lyra's hand rested near his."
  # scene.message "Almost touching. Not quite."
  
  scene.message "\\bLyra\\b: Kael... if we don't make it back..."
  
  scene.message "\\bKael\\b: We will."
  
  scene.message "\\bLyra\\b: But if we don't..."
  scene.message "\\bLyra\\b: I need you to know..."
  
  # TODO: Event Sequence - Voice Waver
  # scene.message "Her voice wavered."
  # scene.message "The fear wasn't of death."
  # scene.message "It was of leaving something unsaid."
end

GameData::Cutscene.define :ch27_confession_scene do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bLyra\\b: I know you don't do feelings."
  scene.message "\\bLyra\\b: I know you push people away."
  scene.message "\\bLyra\\b: But I—"
  
  # TODO: Event Sequence - Kiss
  # scene.message "Kael turned to face her."
  # scene.message "And kissed her before she could finish."
  
  # scene.message "Gentle. Desperate. Everything he couldn't say."
  
  scene.message "\\bLyra\\b: *surprised* Kael..."
  
  scene.message "\\bKael\\b: I know."
  scene.message "\\bKael\\b: I've known for a while."
  scene.message "\\bKael\\b: I was just... scared."
  
  scene.message "\\bLyra\\b: You? Scared?"
  
  scene.message "\\bKael\\b: Of losing you."
  scene.message "\\bKael\\b: Like I lost Mira."
end

GameData::Cutscene.define :ch27_willow_senses do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Willow Watching
  # scene.message "Willow, Lyra's Eevee, had been watching them."
  # scene.message "The little Pokémon understood."
  
  # scene.message "She'd seen Lyra's loneliness."
  # scene.message "She'd felt Lyra's longing."
  # scene.message "And now she felt something else:"
  # scene.message "Pure, overwhelming love."
  
  scene.message "\\bWillow\\b: Vee...?"
  
  # TODO: Event Sequence - Willow Stirs
  # scene.message "Something stirred inside her."
  # scene.message "A warmth. A change."
end

GameData::Cutscene.define :ch27_willow_evolves do |scene|
  scene.play_bgm 'Pokemon DPPT - Evolution'
  scene.camera_flash 20
  
  scene.play_bgm 'Pokemon DPPT - Evolution'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Willow Glows
  # scene.message "Willow, Lyra's Eevee, began to glow!"
  
  scene.message "\\bLyra\\b: *gasp* Willow!"
  scene.message "\\bKael\\b: What the...?"
  
  # TODO: Event Sequence - Evolution Visuals
  # scene.message "Brilliant pink light surrounded the little Pokémon."
  # scene.message "Ribbons of energy unfurling."
  # scene.message "The power of love given form."
  
  scene.message "\\bXerneas's Voice\\b: The bonds you forge..."
  scene.message "\\bXerneas's Voice\\b: They empower more than just yourselves."
  
  scene.camera_flash 25
  
  scene.camera_flash 25
  
  # TODO: Event Sequence - Sylveon Appears
  # scene.message "Willow evolved into Sylveon!"
  
  scene.message "\\bKael\\b: ...Figures. The love Pokémon."
  
  scene.message "\\bLyra\\b: *laughs through tears* Shut up."
  scene.message "\\bLyra\\b: She's beautiful!"
  
  scene.message "\\bWillow\\b: *Sylveon cry*"
  
  # TODO: Event Sequence - Sylveon Ribbons
  # scene.message "The newly-evolved Sylveon twirled gracefully."
  # scene.message "Her ribbon-like feelers flowing."
  # scene.message "She wrapped them around Lyra and Kael."
  # scene.message "Sharing in their joy."
  
  scene.message "\\bLyra\\b: She evolved from all the love we share!"
  
  scene.message "\\bKael\\b: *softly* Makes sense."
  scene.message "\\bKael\\b: There's a lot of it to go around."
  
  # TODO: Event Sequence - Purring
  # scene.message "Willow purred contentedly."
  # scene.message "Her trainer's happiness was her own."
end

GameData::Cutscene.define :ch27_under_stars do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Holding Hands
  # scene.message "They held each other under the stars."
  # scene.message "No more walls. No more pretending."
  
  scene.message "\\bLyra\\b: I've wanted this for so long..."
  
  scene.message "\\bKael\\b: I didn't think I deserved it."
  
  scene.message "\\bLyra\\b: Everyone deserves love, Kael."
  scene.message "\\bLyra\\b: Even people who think they don't."
  
  # TODO: Event Sequence - Hold Tighter
  # scene.message "He held her tighter."
  
  scene.message "\\bKael\\b: Tomorrow..."
  
  scene.message "\\bLyra\\b: Tomorrow, we fight."
  scene.message "\\bLyra\\b: But tonight... tonight is ours."
  
  # TODO: Event Sequence - Fade Out
  # scene.message "Tomorrow, they'd face the end of the world."
  # scene.message "But tonight... tonight was theirs."
end

GameData::Cutscene.define :ch27_player_returns do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\i[YOUR PERSPECTIVE]"
  
  scene.message "You returned to camp an hour later."
  scene.message "Kael and Lyra sat close together by the fire."
  
  scene.message "Something had changed between them."
  scene.message "Something good."
  
  scene.message "\\b\\PN\\b: *smiling* About time."
  
  scene.message "\\bKael\\b: *embarrassed* Shut up."
  
  scene.message "\\bLyra\\b: *blushing* \\PN!"
  
  scene.message "\\b\\PN\\b: I'm happy for you."
  scene.message "\\b\\PN\\b: Both of you."
  
  scene.message "\\bKael\\b: ...Thanks."
  
  scene.message "\\bLyra\\b: We're still the same team!"
  scene.message "\\bLyra\\b: Nothing changes that!"
  
  scene.message "\\b\\PN\\b: I know."
  scene.message "\\b\\PN\\b: But maybe this gives us more to fight for."
end

GameData::Cutscene.define :ch27_player_reflection do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Walk Alone
  # scene.message "Later, you walked alone for a while."
  # scene.message "Your starter by your side, as always."
  
  scene.message "\\b\\PN\\b: (Tomorrow, everything changes.)"
  scene.message "\\b\\PN\\b: (Either we save the world...)"
  scene.message "\\b\\PN\\b: (Or there won't be a world to save.)"
  
  # TODO: Event Sequence - Partner Sound
  # scene.message "Your partner made a soft sound."
  # scene.message "Encouraging. Determined."
  
  scene.message "\\b\\PN\\b: You're right."
  scene.message "\\b\\PN\\b: We've come too far to doubt ourselves now."
  
  # TODO: Event Sequence - Look at Mark
  # scene.message "You looked at your mark. Steel-blue. Zacian's blessing."
  scene.message "\\b\\PN\\b: Whatever happens..."
  scene.message "\\b\\PN\\b: I won't run."
end

GameData::Cutscene.define :ch27_thinking_of_home do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Thoughts of Home
  # scene.message "You thought of home."
  # scene.message "Of Mom Aurora, waiting for news."
  # scene.message "Of Dad Marcus, probably gathering allies."
  
  scene.message "\\b\\PN\\b: (I'll make you proud.)"
  scene.message "\\b\\PN\\b: (Both of you.)"
  
  # TODO: Event Sequence - Blade Shard
  # scene.message "You pulled out the Blade Shard."
  # scene.message "Steel-blue light pulsing gently."
  
  scene.message "\\bZacian\\b: (You do not need to prove yourself, young one.)"
  scene.message "\\bZacian\\b: (You have already done so, many times over.)"
  
  scene.message "\\b\\PN\\b: (Then I'll prove it one more time.)"
  
  scene.message "\\bZacian\\b: (Rest now. Tomorrow will demand everything.)"
  
  # TODO: Event Sequence - Sleep
  # scene.message "You returned to camp."
  # scene.message "Lay down near the fire."
  # scene.message "And somehow, found sleep."
end

GameData::Cutscene.define :ch27_dawn_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Dawn
  # scene.message "Dawn came slowly."
  # scene.message "Gray light creeping over the mountains."
  
  # TODO: Event Sequence - Wake Up
  # scene.message "You woke to the sound of Lyra cooking breakfast."
  # scene.message "Some things never changed."
  
  scene.message "\\bLyra\\b: Good morning! I made—"
  
  scene.message "\\b\\PN\\b: Grandma's recipe?"
  
  scene.message "\\bLyra\\b: *laughing* How did you know?"
  
  scene.message "\\bKael\\b: *stretching* It's always grandma's recipe."
  
  scene.message "\\bLyra\\b: Because grandma's recipe is the best!"
  
  # TODO: Event Sequence - Eating
  # scene.message "You ate together."
  # scene.message "One last meal before the final battle."
end

GameData::Cutscene.define :ch27_gathering_gear do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Gathering Gear
  # scene.message "After breakfast, you gathered your gear."
  # scene.message "Checked your Pokémon. Your supplies. Your hearts."
  
  scene.message "\\b\\PN\\b: Everyone ready?"
  
  scene.message "\\bLyra\\b: As ready as I'll ever be."
  
  scene.message "\\bKael\\b: Born ready."
  
  # TODO: Event Sequence - Partners Stand
  # scene.message "Your Pokémon stood with you."
  # scene.message "Partners. Friends. Family."
  
  scene.message "\\b\\PN\\b: Then let's do this."
end

GameData::Cutscene.define :ch27_team_united do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Morning Sun
  # scene.message "Morning sun broke through the clouds."
  # scene.message "The three of you gathered before the Gateway."
  
  scene.message "\\b\\PN\\b: Whatever happens in there..."
  scene.message "\\b\\PN\\b: I'm glad I met you two."
  
  scene.message "\\bLyra\\b: *smiling* Same here."
  scene.message "\\bKael\\b: ...Likewise."
  
  # TODO: Event Sequence - Hand Holding
  # scene.message "Kael took Lyra's hand."
  # scene.message "She smiled at him, tears in her eyes."
  
  scene.message "\\b\\PN\\b: Then let's make Professor Aldric proud."
  scene.message "\\b\\PN\\b: Let's save the world."
  
  # TODO: Event Sequence - Pokemon Cry
  # scene.message "Your Pokémon cried out in unison."
  # scene.message "Ready. Determined. Unafraid."
  
  # TODO: Event Sequence - Enter Gateway
  # scene.message "Together, you faced the Gateway."
  # scene.message "Together, you stepped into destiny."
end

#===============================================================================
# Chapter 28: General Ruin - The Last Gate
#===============================================================================

GameData::Cutscene.define :ch28_gateway_approach do |scene|
  scene.play_bgm 'Pokemon RSE - Sky Pillar'
  
  scene.play_bgm 'Pokemon RSE - Sky Pillar'
  
  # TODO: Event Sequence - Gateway Appearance
  # scene.message "The Gateway loomed before you."
  # scene.message "Ancient. Massive. Terrifying."
  
  # scene.message "Stone pillars carved with runes that pulsed with dark energy."
  # scene.message "The entrance to Asgaheim itself."
  
  scene.message "\\bLyra\\b: This is it..."
  scene.message "\\bKael\\b: The door to Asgaheim."
  
  # TODO: Event Sequence - Dark Energy
  # scene.message "Dark energy crackled around the archway."
  # scene.message "Something was keeping it sealed."
  
  scene.message "\\b\\PN\\b: Someone's guarding it."
  scene.message "\\b\\PN\\b: Get ready."
end

GameData::Cutscene.define :ch28_dragons_appear do |scene|
  scene.play_bgm 'Pokemon RSE - Sky Pillar'
  scene.camera_shake 5, 15
  
  scene.play_bgm 'Pokemon RSE - Sky Pillar'
  scene.camera_shake 5, 15
  
  # TODO: Event Sequence - Ground Tremble
  # scene.message "The ground trembled."
  # scene.message "Shadows passed overhead."
  
  scene.message "\\bLyra\\b: Look out!"
  
  # TODO: Event Sequence - Dragons Appear
  # scene.message "Dragons. Dozens of them."
  # scene.message "Circling the Gateway like vultures."
  
  scene.message "\\bKael\\b: That's a lot of dragons..."
  
  scene.message "\\b\\PN\\b: Someone commands them."
  scene.message "\\b\\PN\\b: The fourth general."
  
  scene.message "A roar split the sky."
  scene.message "Deeper than thunder. More terrible than any storm."
  
  scene.message "Something was coming."
end

GameData::Cutscene.define :ch28_ruin_appears do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 10, 20
  
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 10, 20
  
  # TODO: Event Sequence - Ruin Descends
  # scene.message "A figure descended from the sky."
  # scene.message "Riding a massive Salamence."
  
  # scene.message "She landed before you with earth-shaking force."
  # scene.message "Massive. Powerful. Terrifying."
  
  scene.message "\\bRuin\\b: The Chosen Ones."
  scene.message "\\bRuin\\b: You've made it further than expected."
  
  # TODO: Event Sequence - Ruin Appearance
  # scene.message "Dragon scales seemed to armor her body."
  # scene.message "Eyes gleaming with draconic power."
  
  scene.message "\\bRuin\\b: I am Ruin. Fourth General."
  scene.message "\\bRuin\\b: The strongest of Malachar's servants."
  scene.message "\\bRuin\\b: And the last thing you will ever see."
end

GameData::Cutscene.define :ch28_ruin_boasts do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bKael\\b: We've beaten the other three."
  
  scene.message "\\bRuin\\b: *laughing* Vex? Shade? Dread?"
  scene.message "\\bRuin\\b: They were nothing compared to me."
  
  scene.message "\\bLyra\\b: They said the same thing."
  
  scene.message "\\bRuin\\b: They mistook grief for conviction."
  scene.message "\\bRuin\\b: Did they carry the blessing of Rayquaza?"
  scene.message "\\bRuin\\b: The Sky Guardian chose me long before Malachar did."
  scene.message "\\bRuin\\b: It gave me the strength to guard this world."
  scene.message "\\bRuin\\b: I kept its blessing when I decided this world was beyond saving."

  scene.message "\\bLyra\\b: A blessing isn't approval! Rayquaza trusted who you were."
  scene.message "\\bRuin\\b: Then it should have chosen more carefully."
  
  # TODO: Event Sequence - Dragons Roar
  # scene.message "She raised her hand."
  # scene.message "The dragons overhead roared in unison."
  # scene.message "High above them, a faded emerald sigil turned like a wounded star."
  
  scene.message "\\bRuin\\b: I was the first to understand the void."
  scene.message "\\bRuin\\b: The first to see that existence creates suffering by design."
  scene.message "\\bRuin\\b: Lord Malachar trusts ME with this gate."
  
  scene.message "\\b\\PN\\b: Then you'll fall hardest."
end

GameData::Cutscene.define :ch28_ruin_challenge do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bRuin\\b: Bold words from a child."
  
  scene.message "\\b\\PN\\b: This child carries Zacian's blessing."
  scene.message "\\b\\PN\\b: And my friends carry Xerneas and Yveltal."
  
  # TODO: Event Sequence - Shards Pulse
  # scene.message "The three shards pulsed in unison."
  # scene.message "Blade. Growth. Entropy."
  
  scene.message "\\bRuin\\b: *stepping back* The Guardian Shards..."
  
  scene.message "\\bKael\\b: Afraid now?"
  
  scene.message "\\bRuin\\b: Afraid? No."
  scene.message "\\bRuin\\b: Intrigued."
  scene.message "\\bRuin\\b: Lord Malachar will be pleased when I bring those to him."
  
  scene.message "\\b\\PN\\b: You'll have to take them from us first."
  
  scene.message "\\bRuin\\b: With pleasure."
end

GameData::Cutscene.define :ch28_dragons_attack do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 5, 15
  
  scene.message "\\bRuin\\b: DRAGONS! ATTACK!"
  
  # TODO: Event Sequence - Dragons Attack
  # scene.message "The sky darkened with wings."
  # scene.message "Dragonfire rained down."
  
  scene.message "\\bLyra\\b: There's too many!"
  
  scene.message "\\bKael\\b: Focus on Ruin! Cut off the head!"
  
  scene.message "\\b\\PN\\b: Lyra, you and Kael hold back the dragons!"
  scene.message "\\b\\PN\\b: I'll take Ruin!"
  
  scene.message "\\bLyra\\b: Be careful!"
  scene.message "\\bKael\\b: Don't die."
  
  scene.message "\\b\\PN\\b: Wasn't planning on it."
  
  # TODO: Event Sequence - Charge
  # scene.message "You charged toward the fourth general."
  # scene.message "The final obstacle before Asgaheim."
end

GameData::Cutscene.define :ch28_ragnar_arrives do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  scene.camera_flash 15
  
  scene.message "\\bRagnar\\b: THUNDER!"
  
  # TODO: Event Sequence - Lightning Bolt
  # scene.message "A massive bolt of lightning struck from the sky!"
  # scene.message "Three dragons fell, electrocuted."
  
  scene.message "\\bLyra\\b: What the—"
  
  scene.message "\\bRagnar\\b: DID SOMEBODY CALL FOR BACKUP?!"
  
  # TODO: Event Sequence - Ragnar Appears
  # scene.message "Ragnar burst onto the battlefield."
  # scene.message "His Raichu crackling with power."
  # scene.message "Behind him—his entire team of six."
  
  scene.message "\\b\\PN\\b: RAGNAR?!"
  
  scene.message "\\bRagnar\\b: You didn't think I'd let you fight an army alone, did you?!"
  scene.message "\\bRagnar\\b: I've been following you since you left!"
  
  scene.message "\\bKael\\b: *actually impressed* Useful for once."
  
  scene.message "\\bRagnar\\b: Was that a COMPLIMENT, Broody?!"
  scene.message "\\bRagnar\\b: Mark the date!"
  
  # TODO: Event Sequence - Raichu Thunder
  # scene.message "His Raichu let loose another Thunder."
  # scene.message "More dragons scattered."
  
  scene.message "\\bRagnar\\b: Go get the big guy, \\PN!"
  scene.message "\\bRagnar\\b: We'll handle the lizards!"
  
  scene.message "\\bLyra\\b: Ragnar, you're amazing!"
  
  scene.message "\\bRagnar\\b: *grinning* TELL ME SOMETHING I DON'T KNOW!"
end

GameData::Cutscene.define :ch28_ruin_battle do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_flash
  
  scene.message "\\bRuin\\b: So. The leader of the Chosen steps forward."
  scene.message "\\bRuin\\b: Let's see if you're worthy of your legend."
  
  scene.trainer_battle :SHATTEREDHAND, "Ruin", 0
  
  scene.message "\\bRuin\\b: Impossible..."
  scene.message "\\bRuin\\b: My dragons... fell before you..."
  
  scene.message "\\b\\PN\\b: It's over, Ruin."
  
  scene.message "\\bRuin\\b: The prophecy... it was true..."
  scene.message "\\bRuin\\b: Malachar... the equation remains true..."
  
  # TODO: Event Sequence - Ruin Collapses
  # scene.message "She collapsed to her knees."
  # scene.message "The dragons in the sky scattered."
  # scene.message "Without their master, they had no fight."
end

GameData::Cutscene.define :ch28_ruin_dying_words do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Ruin Weak
  # scene.message "Ruin reached out weakly."
  
  scene.message "\\bRuin\\b: Wait... listen..."
  scene.message "\\b\\PN\\b: Why should we listen to you?"
  
  scene.message "\\bRuin\\b: Vex wanted mercy. Shade wanted Mara. Dread wanted justice."
  scene.message "\\bRuin\\b: Children bargaining with the dark for something they had lost."
  scene.message "\\bRuin\\b: I alone asked for nothing. I chose the end freely."
  
  scene.message "\\bKael\\b: Then why serve him?"
  
  scene.message "\\bRuin\\b: Because your victory changes no law of existence."
  scene.message "\\bRuin\\b: You will hurt. You will bury everyone you love."
  scene.message "\\bRuin\\b: And one day... you will understand me..."
  
  # TODO: Event Sequence - Ruin Dies
  # scene.message "Her hand fell limp."
  # scene.message "Not every enemy died repentant. Some choices remained terrible to the end."
end

GameData::Cutscene.define :ch28_ruin_regret do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: She really believed it."
  
  scene.message "\\bKael\\b: It's a warning."
  scene.message "\\bKael\\b: Malachar manipulated most of them. Not her."
  scene.message "\\bKael\\b: We need to remember the difference."
  
  scene.message "\\b\\PN\\b: She saw the pain clearly."
  scene.message "\\b\\PN\\b: She just refused to see anything else."
  
  scene.message "\\bLyra\\b: Then we prove her wrong by what survives us."
  
  scene.message "\\bKael\\b: Exactly."
  
  scene.message "\\b\\PN\\b: Then we end this. Now."
end

GameData::Cutscene.define :ch28_dragon_ambush do |scene|
  scene.play_bgm 'Pokemon RSE - Tension'
  scene.camera_shake 10, 40
  
  scene.play_bgm 'Pokemon RSE - Tension'
  scene.camera_shake 10, 40
  
  # TODO: Event Sequence - Hydreigon Rises
  # scene.message "A roar split the air!"
  # scene.message "Ruin's Hydreigon—thought defeated—rose again!"
  # scene.message "Dark energy blazing from its three heads!"
  
  scene.message "\\bHydreigon\\b: GRAAAAAH!"
  
  # TODO: Event Sequence - Draco Meteor
  # scene.message "It launched a Draco Meteor directly at you!"
  # scene.message "You couldn't dodge in time!"
  
  scene.message "\\bLyra\\b: \\PN, WATCH OUT!"
  
  # TODO: Event Sequence - Impact Warning
  # scene.message "Time seemed to slow."
  # scene.message "Ragnar stood closest to the open road. He could still escape."
  # scene.message "Instead he looked at you, made his choice, and turned back."
end

GameData::Cutscene.define :ch28_ragnar_sacrifice do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_flash 30
  scene.camera_shake 15, 60
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_flash 30
  scene.camera_shake 15, 60
  
  scene.message "\\bRagnar\\b: \\PN!!!"
  scene.message "\\bRagnar\\b: I choose who matters!"
  
  # TODO: Event Sequence - Ragnar Jumps
  # scene.message "Ragnar threw himself in front of you!"
  # scene.message "The Draco Meteor struck him full force!"
  
  scene.message "\\b\\PN\\b: RAGNAR!!!"
  
  # TODO: Event Sequence - Ragnar Falls
  # scene.message "His body crumpled to the ground."
  # scene.message "His Raichu screamed, rushing to his side."
  
  scene.message "\\bRaichu\\b: RAI! RAI RAI!"
  
  # TODO: Event Sequence - Shadow Retaliates
  # scene.message "Kael's Shadow tore the Hydreigon apart."
  # scene.message "But it was too late."
  # scene.message "The damage was done."
end

GameData::Cutscene.define :ch28_ragnar_dying do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Kneeling
  # scene.message "You fell to your knees beside him."
  # scene.message "Blood pooled beneath his broken body."
  
  scene.message "\\b\\PN\\b: Ragnar! Ragnar, stay with me!"
  
  scene.message "\\bRagnar\\b: *coughing blood* H-hey... Broody..."
  scene.message "\\bRagnar\\b: Did I... did I look cool...?"
  
  scene.message "\\b\\PN\\b: You idiot! Why did you—"
  
  scene.message "\\bRagnar\\b: *weak grin* 'Cause that's... what rivals do..."
  scene.message "\\bRagnar\\b: We protect... each other..."
  
  scene.message "\\bLyra\\b: *crying* We need to heal him! Kael!"
  
  # TODO: Event Sequence - Kael Checks
  # scene.message "\\bKael\\b: *kneeling, checking* The damage is too severe."
  scene.message "\\bKael\\b: *voice cracking* There's nothing—"
  
  scene.message "\\bRagnar\\b: It's okay..."
  scene.message "\\bRagnar\\b: I knew... when I followed you..."
  scene.message "\\bRagnar\\b: This might happen..."
end

GameData::Cutscene.define :ch28_ragnar_last_words do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bRagnar\\b: \\PN... come closer..."
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bRagnar\\b: \\PN... come closer..."
  
  # TODO: Event Sequence - Lean In
  # scene.message "You leaned in, tears streaming down your face."
  
  scene.message "\\bRagnar\\b: You gotta... save the world now..."
  scene.message "\\bRagnar\\b: Can't let me... die for nothing..."
  
  scene.message "\\b\\PN\\b: *sobbing* Ragnar..."
  
  scene.message "\\bRagnar\\b: And hey..."
  scene.message "\\bRagnar\\b: I guess this means..."
  scene.message "\\bRagnar\\b: We never got... our League battle..."
  
  scene.message "\\b\\PN\\b: We will! Just hold on!"
  
  scene.message "\\bRagnar\\b: *shaking head* Nah..."
  scene.message "\\bRagnar\\b: But I already know... how it'd go..."
  scene.message "\\bRagnar\\b: I'd finally... beat you..."
  
  # TODO: Event Sequence - Ragnar Weakens
  # scene.message "He laughed weakly."
  # scene.message "Then coughed. More blood."
end

GameData::Cutscene.define :ch28_ragnar_death do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bRagnar\\b: Take care... of Raichu..."
  scene.message "\\bRagnar\\b: He's a good... partner..."
  
  scene.message "\\bRaichu\\b: *nuzzling him desperately* Rai..."
  
  scene.message "\\bRagnar\\b: Hey buddy... you did good..."
  scene.message "\\bRagnar\\b: The best..."
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bRagnar\\b: Take care... of Raichu..."
  scene.message "\\bRagnar\\b: He's a good... partner..."
  
  scene.message "\\bRaichu\\b: *nuzzling him desperately* Rai..."
  
  scene.message "\\bRagnar\\b: Hey buddy... you did good..."
  scene.message "\\bRagnar\\b: The best..."
  
  # TODO: Event Sequence - Final Touch
  # scene.message "He reached up weakly."
  # scene.message "Touched your face."
  
  scene.message "\\bRagnar\\b: \\PN..."
  scene.message "\\bRagnar\\b: Best rival... I ever had..."
  scene.message "\\bRagnar\\b: Best... friend..."

  scene.set_switch SW::RAGNAR_DIED, true
  
  # TODO: Event Sequence - Ragnar Dies
  # scene.message "His hand fell."
  # scene.message "His eyes closed."
  # scene.message "A final breath escaped his lips."
  
  # scene.message "And Ragnar was gone."
end

GameData::Cutscene.define :ch28_mourning do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\b\\PN\\b: No... no no no..."
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\b\\PN\\b: No... no no no..."
  
  # TODO: Event Sequence - Grief
  # scene.message "You held his body."
  # scene.message "Screamed into the uncaring sky."
  
  scene.message "\\bLyra\\b: *sobbing into Kael's chest*"
  
  # TODO: Event Sequence - Kael Grief
  # scene.message "\\bKael\\b: *holding her, face twisted with grief*"
  scene.message "\\bKael\\b: He was... annoying..."
  scene.message "\\bKael\\b: But he was brave."
  scene.message "\\bKael\\b: Braver than any of us."
  
  # TODO: Event Sequence - Raichu Mourns
  # scene.message "Raichu curled up beside his fallen trainer."
  # scene.message "Whimpering softly."
  # scene.message "Refusing to leave."
  
  # TODO: Event Sequence - Silence
  # scene.message "The battlefield fell silent."
  # scene.message "Even the wind seemed to mourn."
end

GameData::Cutscene.define :ch28_rage do |scene|
  scene.play_bgm 'Pokemon RSE - Evil Team'
  scene.camera_shake 5, 20
  
  scene.play_bgm 'Pokemon RSE - Evil Team'
  scene.camera_shake 5, 20
  
  # TODO: Event Sequence - Mark Blazes
  # scene.message "Something inside you snapped."
  # scene.message "Your mark blazed with steel-blue fire."
  # scene.message "Zacian's power surged through you."
  
  scene.message "\\b\\PN\\b: Malachar..."
  scene.message "\\b\\PN\\b: He's going to PAY for this."
  
  scene.message "\\bKael\\b: We'll make sure of it."
  
  scene.message "\\bLyra\\b: *wiping tears, hardening* Together."
  
  # TODO: Event Sequence - Laying Ragnar Down
  # scene.message "You gently laid Ragnar's body down."
  # scene.message "Closed his eyes."
  
  scene.message "\\b\\PN\\b: I'll finish what we started, Ragnar."
  scene.message "\\b\\PN\\b: I promise."
  
  # TODO: Event Sequence - Raichu Joins
  # scene.message "Raichu looked up at you."
  # scene.message "Then walked to your side."
  # scene.message "Ready to fight. For his trainer's memory."
end

GameData::Cutscene.define :ch28_gateway_opens do |scene|
  scene.play_bgm 'Pokemon RSE - Sky Pillar'
  scene.camera_shake 10, 30
  
  scene.play_bgm 'Pokemon RSE - Sky Pillar'
  scene.camera_shake 10, 30
  
  # TODO: Event Sequence - Gateway Opens
  # scene.message "With Ruin's defeat, the Gateway reacted."
  # scene.message "The dark energy crackled and dissipated."
  
  # scene.message "The ancient doors groaned open."
  # scene.message "Light—cold and otherworldly—spilled through."
  
  scene.message "\\bLyra\\b: The way is open..."
  
  scene.message "\\bKael\\b: Asgaheim awaits."
  
  scene.message "\\b\\PN\\b: This is what we've been working toward."
  scene.message "\\b\\PN\\b: Every gym, every battle, every loss..."
  scene.message "\\b\\PN\\b: It all led to this moment."
end

GameData::Cutscene.define :ch28_lyra_worry do |scene|
  scene.play_bgm 'Pokemon RSE - Sky Pillar'
  
  scene.message "\\bLyra\\b: I'm scared."
  scene.message "\\bLyra\\b: What if we fail?"
  
  scene.message "\\bKael\\b: *taking her hand* Then we fail together."
  scene.message "\\bKael\\b: But we won't."
  
  scene.message "\\bLyra\\b: How can you be so sure?"
  
  scene.message "\\bKael\\b: Because I have you."
  scene.message "\\bKael\\b: And \\PN."
  scene.message "\\bKael\\b: And that's enough."
  
  scene.message "\\bLyra\\b: *smiling through tears* When did you become such a sap?"
  
  scene.message "\\bKael\\b: Blame it on you."
end

GameData::Cutscene.define :ch28_final_resolve do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\b\\PN\\b: Lyra. Kael."
  scene.message "\\b\\PN\\b: No matter what happens in there..."
  scene.message "\\b\\PN\\b: I want you to know something."
  
  scene.message "\\bLyra\\b: What?"
  
  scene.message "\\b\\PN\\b: When I started this journey, I was alone."
  scene.message "\\b\\PN\\b: Just me and my Pokémon."
  scene.message "\\b\\PN\\b: But you two... you made me stronger."
  
  scene.message "\\bKael\\b: *nodding* Likewise."
  
  scene.message "\\bLyra\\b: *hugging both* We're a family!"
  
  scene.message "\\bKael\\b: *awkwardly accepting hug* ...Don't push it."
  
  scene.message "\\b\\PN\\b: *laughing* Let's go save the world."
end

GameData::Cutscene.define :ch28_stepping_through do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.fade_out
  
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.fade_out
  
  # TODO: Event Sequence - Step Through
  # scene.message "Together, you stepped through the Gateway."
  # scene.message "Into the cold light of Asgaheim."
  
  # scene.message "Raichu walked at your side."
  # scene.message "Ragnar's partner. Now yours."
  
  # scene.message "Behind you, the doors sealed."
  # scene.message "There was no turning back now."
  
  scene.message "\\b\\PN\\b: (For Professor Aldric.)"
  scene.message "\\b\\PN\\b: (For Mom and Dad.)"
  scene.message "\\b\\PN\\b: (For Ragnar.)"
  scene.message "\\b\\PN\\b: (For everyone we've lost.)"
  scene.message "\\b\\PN\\b: (We will not fail.)"
  
  scene.fade_in
  
  # TODO: Event Sequence - Asgaheim Arrival
  # scene.message "Asgaheim awaited."
  # scene.message "And with it, Malachar and Nidhoggr."
  
  # scene.message "The final battle had begun."
end

#===============================================================================
# ACT 4: FINALE (Chapters 29-35)
#===============================================================================

#===============================================================================
# Chapter 29: The Championship
#===============================================================================

GameData::Cutscene.define :ch29_league_arrival do |scene|
  scene.play_bgm 'Pokemon BW - Pokémon League'
  
  scene.play_bgm 'Pokemon BW - Pokémon League'
  
  # TODO: Event Sequence - League View
  # scene.message "Valoria City. The Pokémon League Headquarters."
  # scene.message "The culmination of every trainer's dream."
  
  scene.message "\\bLyra\\b: We're really here..."
  scene.message "\\bLyra\\b: After everything we've been through."
  
  scene.message "\\bKael\\b: The Elite Four await."
  scene.message "\\bKael\\b: And beyond them, the Champion."
  
  scene.message "\\b\\PN\\b: Let's show them what we're made of."
end

GameData::Cutscene.define :ch29_ragnar_memory do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[YOUR PERSPECTIVE]"
  
  # TODO: Event Sequence - League Pause
  # scene.message "At the League entrance, you paused."
  # scene.message "Raichu walked beside you now."
  # scene.message "Ragnar's partner. Your partner."
  
  scene.message "\\b\\PN\\b: (We made it, Ragnar.)"
  scene.message "\\b\\PN\\b: (The League. Like we always dreamed.)"
  
  # TODO: Event Sequence - Raichu Interaction
  # scene.message "Raichu looked up at you."
  scene.message "\\bRaichu\\b: Rai..."
  
  scene.message "\\b\\PN\\b: *kneeling* I know, buddy."
  scene.message "\\b\\PN\\b: I miss him too."
  
  # TODO: Event Sequence - Touch Pokeball
  # scene.message "You touched the Pokéball at your belt."
  # scene.message "Ragnar's team. Entrusted to you."
  
  scene.message "\\b\\PN\\b: (I'll win this for both of us.)"
  scene.message "\\b\\PN\\b: (Watch me, rival.)"
  
  scene.message "\\bLyra\\b: *gently* \\PN... are you okay?"
  
  scene.message "\\b\\PN\\b: *standing* Yeah. I'm ready."
  scene.message "\\b\\PN\\b: Let's go become Champions."
end

GameData::Cutscene.define :ch29_league_entrance do |scene|
  scene.play_bgm 'Pokemon BW - Pokémon League'
  
  scene.message "The League building was massive."
  scene.message "Marble columns. Golden banners. History on every wall."
  
  scene.message "\\bLyra\\b: Look at all those portraits..."
  scene.message "\\bLyra\\b: Champions from across the ages."
  
  scene.message "\\bKael\\b: Soon \\PN's face will be up there."
  
  scene.message "\\b\\PN\\b: We'll see."
  
  # TODO: Event Sequence - Receptionist
  # scene.message "A receptionist greeted you."
  
  scene.message "\\bReceptionist\\b: Welcome, challengers!"
  scene.message "\\bReceptionist\\b: The Elite Four await in the chambers above."
  scene.message "\\bReceptionist\\b: You must defeat all four to face the Champion."
  
  scene.message "\\b\\PN\\b: Then let's not keep them waiting."
end

GameData::Cutscene.define :ch29_first_elite do |scene|
  scene.play_bgm 'Pokemon XY - Elite Four Battle'
  
  scene.message "The first chamber opened."
  scene.message "A trainer stood amidst swirling shadows."
  
  scene.message "\\bElite Gareth\\b: I am Gareth of the Elite Four."
  scene.message "\\bElite Gareth\\b: Master of Ghost types."
  scene.message "\\bElite Gareth\\b: I've heard of you, Chosen Ones."
  
  scene.message "\\b\\PN\\b: News travels fast."
  
  scene.message "\\bElite Gareth\\b: The spirits whisper your names."
  scene.message "\\bElite Gareth\\b: Let's see if you live up to the legend."
  
  # TODO: Event Sequence - Battle Transition
  # scene.message "The battle was fierce."
  # scene.message "But you prevailed."
  
  scene.message "\\bElite Gareth\\b: Impressive..."
  scene.message "\\bElite Gareth\\b: The next chamber awaits."
end

GameData::Cutscene.define :ch29_second_elite do |scene|
  scene.play_bgm 'Pokemon XY - Elite Four Battle'
  
  scene.message "The second chamber blazed with heat."
  scene.message "Fire danced along the walls."
  
  scene.message "\\bElite Seraphina\\b: Seraphina. Fire specialist."
  scene.message "\\bElite Seraphina\\b: You've done well to reach me."
  
  scene.message "\\bLyra\\b: She's intense..."
  
  scene.message "\\bElite Seraphina\\b: Passion fuels my flames!"
  scene.message "\\bElite Seraphina\\b: Show me yours!"
  
  # TODO: Event Sequence - Battle Intensity
  # scene.message "The battle pushed your team to their limits."
  # scene.message "But fire could not burn your resolve."
  
  scene.message "\\bElite Seraphina\\b: *laughing* Wonderful!"
  scene.message "\\bElite Seraphina\\b: Your passion burns brighter than mine!"
  scene.message "\\bElite Seraphina\\b: Onward!"
end

GameData::Cutscene.define :ch29_third_elite do |scene|
  scene.play_bgm 'Pokemon XY - Elite Four Battle'
  
  scene.message "The third chamber was cold."
  scene.message "Ice crystals hung from the ceiling."
  
  scene.message "\\bElite Frost\\b: I am Frost."
  scene.message "\\bElite Frost\\b: I will freeze your advance."
  
  scene.message "\\bKael\\b: Another edgy one."
  
  scene.message "\\bElite Frost\\b: Mock all you want."
  scene.message "\\bElite Frost\\b: The cold cares not for your words."
  
  # TODO: Event Sequence - Battle Struggle
  # scene.message "The battle was grueling."
  # scene.message "Frost's ice nearly overwhelmed you."
  # scene.message "But warmth won out."
  
  scene.message "\\bElite Frost\\b: ...Thawed by the fire of your bonds."
  scene.message "\\bElite Frost\\b: Impressive."
end

GameData::Cutscene.define :ch29_fourth_elite do |scene|
  scene.play_bgm 'Pokemon XY - Elite Four Battle'
  
  scene.message "The fourth chamber opened to the sky."
  scene.message "Wind howled through the open ceiling."
  
  scene.message "\\bElite Tempest\\b: Tempest. Master of Flying types."
  scene.message "\\bElite Tempest\\b: You've come far, children."
  
  scene.message "\\b\\PN\\b: We're not children."
  
  scene.message "\\bElite Tempest\\b: To me, all are children."
  scene.message "\\bElite Tempest\\b: But let's see how high you can fly."
  
  # TODO: Event Sequence - Battle Soar
  # scene.message "The battle soared."
  # scene.message "Tempest's Pokémon ruled the air."
  # scene.message "But you brought them down."
  
  scene.message "\\bElite Tempest\\b: The sky bows to you."
  scene.message "\\bElite Tempest\\b: The Champion awaits."
end

GameData::Cutscene.define :ch29_pre_champion_moment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Pre-Champion Pause
  # scene.message "Before the Champion's chamber..."
  # scene.message "You paused to look at your team."
  
  scene.message "\\b\\PN\\b: We've come so far."
  scene.message "\\b\\PN\\b: From that first day in the lab..."
  scene.message "\\b\\PN\\b: To here. The Championship."
  
  # TODO: Event Sequence - Partner Reflection
  # scene.message "Your partner—your first Pokémon—stood beside you."
  # scene.message "They'd been through everything with you."
  # scene.message "The battles. The losses. The near-death experience."
  
  scene.message "\\bLyra\\b: You ready, \\PN?"
  scene.message "\\bKael\\b: One more fight."
  
  scene.message "\\b\\PN\\b: We were born ready."
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Your mark pulsed with golden light."
  # scene.message "And your starter began to glow."
end

GameData::Cutscene.define :ch29_starter_final_evolution do |scene|
  scene.play_bgm 'Pokemon DPPT - Evolution'
  scene.camera_flash 40
  
  # TODO: Event Sequence - Evolution Light
  # scene.message "Light blazed from your partner!"
  # scene.message "Brighter than before. Stronger."
  
  scene.message "\\bLyra\\b: Again! They're evolving again!"
  
  scene.message "\\bKael\\b: *impressed* Right before the final battle."
  scene.message "\\bKael\\b: Dramatic timing."
  
  # TODO: Event Sequence - Evolution Visuals
  # scene.message "Your starter's form transformed."
  # scene.message "Reaching their final evolution."
  # scene.message "The culmination of your entire journey."
  
  scene.message "\\bZacian's Voice\\b: Champion of Valor..."
  scene.message "\\bZacian's Voice\\b: Your partner reflects your growth."
  scene.message "\\bZacian's Voice\\b: Together, you are unstoppable."
  
  scene.camera_flash 30
  
  # TODO: Event Sequence - Final Form
  # scene.message "Your starter achieved their final form!"
  
  scene.message "\\b\\PN\\b: *breathless* You're... incredible."
  
  # TODO: Event Sequence - Roar
  # scene.message "Your fully evolved partner roared with power."
  # scene.message "The same loyal soul. But now at full strength."
  
  scene.message "\\bLyra\\b: Now THAT'S an entrance!"
  scene.message "\\bKael\\b: *smirking* The Champion won't know what hit them."
  
  scene.message "\\b\\PN\\b: Let's finish this, partner."
  
  # TODO: Event Sequence - Nod
  # scene.message "Your starter nodded."
  # scene.message "You'd started this journey together."
  # scene.message "And you'd reach the top together."
end

GameData::Cutscene.define :ch29_elite_four_complete do |scene|
  scene.play_bgm 'Pokemon BW - Pokémon League'
  
  scene.play_bgm 'Pokemon BW - Pokémon League'
  
  # TODO: Event Sequence - Elite Complete
  # scene.message "All four Elite defeated."
  # scene.message "The path to the Champion opened."
  
  scene.message "\\bLyra\\b: We did it!"
  scene.message "\\bLyra\\b: All four!"
  
  scene.message "\\bKael\\b: Don't celebrate yet."
  scene.message "\\bKael\\b: The Champion is the real challenge."
  
  scene.message "\\b\\PN\\b: Let's finish this."
  
  # TODO: Event Sequence - Heal and Enter
  # scene.message "You healed your Pokémon."
  # scene.message "Steeled your nerves."
  # scene.message "And stepped into the Champion's chamber."
end

GameData::Cutscene.define :ch29_champion_reveal do |scene|
  scene.play_bgm 'Pokemon XY - Champion Battle'
  
  scene.play_bgm 'Pokemon XY - Champion Battle'
  
  # TODO: Event Sequence - Champion Chamber
  # scene.message "The Champion's chamber was magnificent."
  # scene.message "A throne at the center. Battle arena below."
  
  # scene.message "A figure stood waiting."
  # scene.message "Not on the throne. In the arena."
  
  scene.message "\\bChampion Viktor\\b: \\PN. You've come far."
  
  scene.message "\\b\\PN\\b: Champion Viktor..."
  
  scene.message "\\bChampion Viktor\\b: I've heard the stories. The Chosen Ones."
  scene.message "\\bChampion Viktor\\b: Three trainers blessed by the Guardians."
  
  scene.message "\\b\\PN\\b: We didn't ask for that title."
  
  scene.message "\\bChampion Viktor\\b: *smiling* The best ones never do."
end

GameData::Cutscene.define :ch29_viktor_remembers do |scene|
  scene.play_bgm 'Pokemon XY - Champion Battle'
  
  scene.message "\\bChampion Viktor\\b: I knew Professor Aldric."
  scene.message "\\bChampion Viktor\\b: He spoke of you three with great pride."
  
  scene.message "\\bLyra\\b: *quietly* The Professor..."
  
  scene.message "\\bChampion Viktor\\b: His death was a tragedy."
  scene.message "\\bChampion Viktor\\b: The cult took someone precious from us all."
  
  scene.message "\\b\\PN\\b: We'll make them pay."
  
  scene.message "\\bChampion Viktor\\b: I know you will."
  scene.message "\\bChampion Viktor\\b: But first, prove yourself to me."
  scene.message "\\bChampion Viktor\\b: Show me the strength of the Chosen Ones!"
end

GameData::Cutscene.define :ch29_champion_battle do |scene|
  scene.play_bgm 'Pokemon XY - Champion Battle'
  scene.camera_flash
  
  scene.message "\\bChampion Viktor\\b: Come, \\PN!"
  scene.message "\\bChampion Viktor\\b: Show me everything you have!"
  
  scene.trainer_battle :CHAMPION, "Viktor", 0
  
  scene.message "\\bChampion Viktor\\b: *breathing hard* Incredible..."
  scene.message "\\bChampion Viktor\\b: You've surpassed even my expectations."
end

GameData::Cutscene.define :ch29_championship_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  scene.camera_flash 30
  
  # TODO: Event Sequence - Victory
  # scene.message "The Champion fell."
  # scene.message "You stood victorious."
  
  scene.message "\\bChampion Viktor\\b: *laughing* Remarkable!"
  scene.message "\\bChampion Viktor\\b: Truly remarkable!"
  
  scene.message "\\bLyra\\b: \\PN... you did it!"
  
  scene.message "\\bKael\\b: *nodding* Well fought."
  
  scene.message "\\bChampion Viktor\\b: \\PN, I hereby declare you—"
end

GameData::Cutscene.define :ch29_sky_darkens do |scene|
  scene.camera_shake 20, 100
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  # TODO: Event Sequence - Sky Darkens
  # scene.message "The sky darkened."
  # scene.message "The earth trembled."
  # scene.message "Something was happening."
  
  scene.message "\\bChampion Viktor\\b: What—?!"
  
  # TODO: Event Sequence - Rift Visible
  # scene.message "Through the windows, you saw it."
  # scene.message "A rift in the sky. Swirling darkness."
  # scene.message "Energy pouring from another realm."
  
  scene.message "\\bChampion Viktor\\b: No... it can't be..."
  scene.message "\\bChampion Viktor\\b: They've opened the gateway!"
end

GameData::Cutscene.define :ch29_portal_opens do |scene|
  scene.camera_shake 10, 60
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  scene.message "\\bLyra\\b: *running in* \\PN!"
  scene.message "\\bKael\\b: *following* The cult's done it!"
  scene.message "\\bKael\\b: They've opened a portal to Asgaheim!"
  
  scene.message "\\b\\PN\\b: From where?!"
  
  scene.message "\\bKael\\b: The Gateway we sealed!"
  scene.message "\\bKael\\b: Malachar must have found another way!"
  
  scene.message "\\bLyra\\b: The shards are reacting!"
  
  # TODO: Event Sequence - Shards React
  # scene.message "All three shards pulsed with urgent light."
  # scene.message "The Guardians calling their chosen."
end

GameData::Cutscene.define :ch29_champion_orders do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  scene.message "\\bChampion Viktor\\b: Then go!"
  scene.message "\\bChampion Viktor\\b: Your championship can wait!"
  scene.message "\\bChampion Viktor\\b: Save the world first!"
  
  scene.message "\\b\\PN\\b: What about you?"
  
  scene.message "\\bChampion Viktor\\b: I'll mobilize the League."
  scene.message "\\bChampion Viktor\\b: We'll hold the line here."
  scene.message "\\bChampion Viktor\\b: You three—stop whatever's coming through."
  
  scene.message "\\bKael\\b: We need to move. NOW."
  
  scene.message "\\bLyra\\b: Be careful!"
  
  scene.message "\\b\\PN\\b: Let's move!"
  
  # TODO: Event Sequence - Run to Destiny
  # scene.message "You ran toward destiny."
  # scene.message "The final battle awaited."
end

GameData::Cutscene.define :ch29_ragnars_empty_place do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "In the League preparation room, four benches faced the arena."
  scene.message "Ragnar's name had been carved into the last one months ago."
  scene.message "He had qualified for this circuit. He had simply never reached it."

  scene.message "Raichu jumped onto the empty bench and placed Ragnar's cracked badge beside you."
  scene.message "\\b\\PN\\b: He wanted this battle more than any of us."
  scene.message "\\bKael\\b: Then don't fight instead of him. Fight as the trainer he made better."
  scene.message "\\bLyra\\b: And when we win, his name goes into the record with ours."

  scene.message "The League official added a fourth line to the challenger registry."
  scene.message "Ragnar of Dawnhaven. Did not finish. Was here."
end

#===============================================================================
# Chapter 30: Friends United - Preparing for the Final Battle
#===============================================================================

GameData::Cutscene.define :ch30_rift_approach do |scene|
  scene.play_bgm 'Pokemon SwSh - Tower Summit'
  
  scene.message "The rift dominated the sky."
  scene.message "A wound in reality itself."
  scene.message "Darkness pouring through like blood."
  
  scene.message "\\bLyra\\b: It's so... massive."
  
  scene.message "\\bKael\\b: And getting bigger."
  scene.message "\\bKael\\b: We need to hurry."
  
  scene.message "\\b\\PN\\b: The shards are reacting."
  
  scene.message "All three Guardian Shards pulsed in unison."
  scene.message "Blade. Growth. Entropy."
  scene.message "Calling to each other."
end

GameData::Cutscene.define :ch30_gathering_point do |scene|
  scene.play_bgm 'Pokemon SwSh - Tower Summit'
  
  scene.play_bgm 'Pokemon SwSh - Tower Summit'
  
  # TODO: Event Sequence - Gathering
  # scene.message "At the edge of the rift, you gathered."
  # scene.message "Three friends. Three shards. One destiny."
  
  scene.message "\\b\\PN\\b: This is it."
  scene.message "\\b\\PN\\b: Everything we've done has led to this moment."
  
  scene.message "\\bLyra\\b: I'm scared."
  scene.message "\\bLyra\\b: But I'm ready."
  
  scene.message "\\bKael\\b: Fear is natural."
  scene.message "\\bKael\\b: What matters is what we do with it."
  
  scene.message "\\b\\PN\\b: Then let's turn that fear into strength."
end

GameData::Cutscene.define :ch30_shards_combine do |scene|
  scene.play_bgm 'Pokemon SwSh - Tower Summit'
  scene.camera_flash 50
  
  scene.play_bgm 'Pokemon SwSh - Tower Summit'
  scene.camera_flash 50
  
  scene.message "\\bKael\\b: *holding the Entropy Shard* Together."
  scene.message "\\bLyra\\b: *holding the Growth Shard* Together."
  scene.message "\\b\\PN\\b: *holding the Blade Shard* Together."
  
  # TODO: Event Sequence - Shards Resonate
  # scene.message "The shards began to resonate."
  # scene.message "Light poured from each one."
  # scene.message "Converging. Combining."
  
  # TODO: Event Sequence - Crown Forms
  # scene.message "A partial crown formed between them."
  # scene.message "Incomplete, but powerful."
  # scene.message "Fragments of the original seal."
  
  scene.message "\\bZacian's Voice\\b: Champions..."
  scene.message "\\bXerneas's Voice\\b: The time has come..."
  scene.message "\\bYveltal's Voice\\b: Face your destiny..."
end

GameData::Cutscene.define :ch30_guardians_appear do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  scene.camera_shake 10, 30
  
  # TODO: Event Sequence - Guardians Appear
  # scene.message "The air split open."
  # scene.message "Divine energy flooding the area."
  
  # scene.message "Three figures materialized."
  # scene.message "Zacian, blade gleaming."
  # scene.message "Xerneas, antlers glowing."
  # scene.message "Yveltal, wings spread wide."
  
  scene.message "\\bLyra\\b: *gasping* They came..."
  
  scene.message "\\bKael\\b: The Guardians themselves."
  
  scene.message "\\b\\PN\\b: We're honored."
end

GameData::Cutscene.define :ch30_guardian_blessing do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  scene.message "\\bZacian\\b: \\PN. Champion of Valor."
  scene.message "\\bZacian\\b: You have proven your courage countless times."
  scene.message "\\bZacian\\b: Against the cult. Against despair. Against fear."
  scene.message "\\bZacian\\b: My sword is yours to wield."
  
  scene.message "\\bXerneas\\b: Lyra. Champion of Life."
  scene.message "\\bXerneas\\b: You have shown true sacrifice."
  scene.message "\\bXerneas\\b: You gave of yourself to save the World Tree."
  scene.message "\\bXerneas\\b: My blessing flows through you."
  
  scene.message "\\bYveltal\\b: Kael. Champion of Cycles."
  scene.message "\\bYveltal\\b: You have accepted death and chosen life."
  scene.message "\\bYveltal\\b: You let go of the past to embrace the future."
  scene.message "\\bYveltal\\b: My power is yours to command."
end

GameData::Cutscene.define :ch30_power_flows do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  scene.camera_flash 30
  
  # TODO: Event Sequence - Power Flows
  # scene.message "Energy flowed into each of you."
  # scene.message "Your marks blazed with divine light."
  # scene.message "Steel-blue for \\PN. Valor and courage."
  # scene.message "Pale green for Lyra. Life and hope."
  # scene.message "Crimson for Kael. Endings and new beginnings."
  
  scene.message "\\b\\PN\\b: This power... incredible."
  
  scene.message "\\bLyra\\b: I feel like I could do anything!"
  
  scene.message "\\bKael\\b: Don't get cocky."
  scene.message "\\bKael\\b: Nidhoggr won't fall easily."
  
  scene.message "\\bZacian\\b: He speaks truth."
  scene.message "\\bZacian\\b: Our power strengthens you, but the battle is yours."
end

GameData::Cutscene.define :ch30_guardian_warning do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  scene.message "\\bYveltal\\b: A warning, Chosen."
  
  scene.message "\\bYveltal\\b: Nidhoggr cannot be destroyed."
  scene.message "\\bYveltal\\b: Only sealed."
  
  scene.message "\\bXerneas\\b: The original crown was forged by gods."
  scene.message "\\bXerneas\\b: Your shards are but fragments."
  
  scene.message "\\bXerneas\\b: Your shards are but fragments."
  
  # TODO: Event Sequence - Zacian Warning
  # scene.message "\\bZacian\\b: But fragments wielded by true hearts..."
  # scene.message "\\bZacian\\b: May accomplish what crowns could not."
  
  scene.message "\\b\\PN\\b: You mean we might actually defeat it?"
  
  scene.message "\\bZacian\\b: Perhaps."
  scene.message "\\bZacian\\b: Or perhaps seal it forever."
  scene.message "\\bZacian\\b: The outcome depends on you."
end

GameData::Cutscene.define :ch30_ready_statement do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  scene.message "\\b\\PN\\b: We're ready."
  
  scene.message "\\bLyra\\b: Let's end this."
  
  scene.message "\\bKael\\b: For everyone."
  scene.message "\\bKael\\b: For Professor Aldric."
  scene.message "\\bKael\\b: For Mira."
  scene.message "\\bKael\\b: For everyone who believed in us."
  
  scene.message "The Guardians nodded."
  
  scene.message "\\bZacian\\b: Then go."
  scene.message "\\bZacian\\b: We will watch over you."
  scene.message "\\bZacian\\b: And when the final moment comes..."
  scene.message "\\bZacian\\b: We will answer."
  
  scene.message "\\bZacian\\b: We will answer."
  
  # TODO: Event Sequence - Guardians Fade
  # scene.message "The three Guardians faded."
  # scene.message "Their power remained within you."
end

GameData::Cutscene.define :ch30_elena_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Elena Arrives
  # scene.message "Before you could enter the rift..."
  # scene.message "A familiar voice called out."
  
  scene.message "\\bElena\\b: LYRA!"
  
  scene.message "\\bLyra\\b: Elena?!"
  
  # TODO: Event Sequence - Elena Runs
  # scene.message "Elena ran toward them, breathless."
  # scene.message "Her lab coat fluttering in the wind."
  
  scene.message "\\bElena\\b: I had to come..."
  scene.message "\\bElena\\b: I couldn't let you go without..."
  
  scene.message "\\bLyra\\b: You shouldn't be here!"
  scene.message "\\bLyra\\b: It's too dangerous!"
  
  scene.message "\\bElena\\b: I know. But you're my sister."
end

GameData::Cutscene.define :ch30_sisters_farewell do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bElena\\b: Little sis..."
  scene.message "\\bElena\\b: I'm so proud of you."
  
  scene.message "\\bLyra\\b: Elena, I have to go."
  
  scene.message "\\bElena\\b: I know."
  scene.message "\\bElena\\b: Just... come back, okay?"
  scene.message "\\bElena\\b: Promise me."
  
  scene.message "\\bLyra\\b: I will. I promise."
  
  scene.message "\\bLyra\\b: I will. I promise."
  
  # TODO: Event Sequence - Hug
  # scene.message "They hugged tightly."
  # scene.message "Neither knowing what was to come."
  # scene.message "But hoping. Always hoping."
  
  scene.message "\\bElena\\b: *whispering* I love you."
  scene.message "\\bLyra\\b: *crying* I love you too."
end

GameData::Cutscene.define :ch30_kael_shadow_moment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Kael Kneels
  # scene.message "Kael knelt beside Shadow."
  # scene.message "The Zoroark pressed against him."
  
  scene.message "\\bKael\\b: *to Shadow* Stay close, girl."
  scene.message "\\bKael\\b: No matter what happens in there."
  
  scene.message "\\bShadow\\b: *determined growl*"
  
  scene.message "\\bKael\\b: I know. You've always had my back."
  scene.message "\\bKael\\b: Since the beginning."
  
  scene.message "He scratched behind her ears."
  scene.message "The way Mira used to do for him."
  
  scene.message "\\bKael\\b: Let's finish this. Together."
end

GameData::Cutscene.define :ch30_player_moment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[YOUR PERSPECTIVE]"
  
  # TODO: Event Sequence - Player Reflection
  # scene.message "You looked at your starter."
  # scene.message "Your partner from the very beginning."
  
  scene.message "\\b\\PN\\b: *to starter* Whatever happens..."
  scene.message "\\b\\PN\\b: We're in this together."
  scene.message "\\b\\PN\\b: Like always."
  
  # TODO: Event Sequence - Partner Nod
  # scene.message "Your Pokémon nodded, ready for anything."
  # scene.message "Eyes burning with determination."
  
  scene.message "\\b\\PN\\b: Mom. Dad."
  scene.message "\\b\\PN\\b: Professor Aldric."
  scene.message "\\b\\PN\\b: Everyone we've met on this journey."
  scene.message "\\b\\PN\\b: We carry them with us."
end

GameData::Cutscene.define :ch30_final_farewell do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Gathering at Rift
  # scene.message "The three of you gathered before the rift."
  # scene.message "Behind you, Elena watched with tears in her eyes."
  
  scene.message "\\b\\PN\\b: Lyra. Kael."
  scene.message "\\b\\PN\\b: Whatever happens in there..."
  scene.message "\\b\\PN\\b: It's been an honor."
  
  scene.message "\\bLyra\\b: *smiling through tears* The honor is ours."
  
  scene.message "\\bKael\\b: ...Likewise."
  scene.message "\\bKael\\b: Now let's stop wasting time."
  scene.message "\\bKael\\b: We have a world to save."
  
  scene.message "\\b\\PN\\b: Right."
  scene.message "\\b\\PN\\b: Into the rift. Into Asgaheim."
  scene.message "\\b\\PN\\b: Into destiny."
  
  # TODO: Event Sequence - Enter Rift
  # scene.message "Together, you stepped forward."
  # scene.message "And the rift swallowed you whole."
end

#===============================================================================
# Chapter 31: Asgaheim - The Divine Realm
#===============================================================================

GameData::Cutscene.define :ch31_asgaheim_entry do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  scene.fade_in
  
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  scene.fade_in
  
  # TODO: Event Sequence - Asgaheim Reveal
  # scene.message "You stepped through the portal."
  # scene.message "And into another world."
  
  # scene.message "Asgaheim. The realm of gods."
  # scene.message "Beautiful beyond description."
  # scene.message "But corrupted by spreading darkness."
  
  scene.message "\\bLyra\\b: It's... it's dying."
  scene.message "\\bLyra\\b: Just like the Eternal Forest."
  
  scene.message "\\bKael\\b: The cult's work."
  scene.message "\\bKael\\b: They're draining the realm itself."
  
  scene.message "\\b\\PN\\b: Then we stop them. Now."
end

GameData::Cutscene.define :ch31_realm_description do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Landscape Description
  # scene.message "The landscape was beyond anything you'd imagined."
  # scene.message "Floating islands. Rivers of light. Crystalline structures."
  
  scene.message "\\bLyra\\b: This is where the gods lived?"
  
  scene.message "\\bKael\\b: Live. They still exist."
  scene.message "\\bKael\\b: Just... not here. Not anymore."
  
  scene.message "\\b\\PN\\b: Why did they leave?"
  
  scene.message "\\bKael\\b: To protect it, maybe."
  scene.message "\\bKael\\b: Their presence kept Nidhoggr contained."
  scene.message "\\bKael\\b: But now..."
  
  # TODO: Event Sequence - Corruption Check
  # scene.message "Dark corruption spread across the ground."
  # scene.message "Where it touched, beauty became decay."
end

GameData::Cutscene.define :ch31_corruption_spreads do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Corruption Detail
  # scene.message "The corruption was everywhere."
  # scene.message "Black tendrils eating away at reality."
  
  scene.message "\\bLyra\\b: My shard is reacting..."
  scene.message "\\bLyra\\b: It wants to heal this place."
  
  scene.message "\\bKael\\b: Not yet."
  scene.message "\\bKael\\b: We need to save that power for Nidhoggr."
  
  scene.message "\\b\\PN\\b: He's right."
  scene.message "\\b\\PN\\b: We can heal Asgaheim after we win."
  
  scene.message "\\bLyra\\b: IF we win."
  
  scene.message "\\b\\PN\\b: WHEN we win."
  scene.message "\\b\\PN\\b: Stay positive."
  
  scene.message "\\bLyra\\b: *small smile* You're right. Sorry."
end

GameData::Cutscene.define :ch31_hall_of_chosen do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'

  scene.message "A broken bridge forced you through a hall buried beneath the divine road."
  scene.message "Statues lined its walls—not gods, but mortal Chosen from forgotten eras."
  scene.message "Some held crowns. Some carried shattered rings. Every final statue had been deliberately left faceless."

  # TODO: Asgaheim exploration chamber
  # - Restore three memory prisms using each Guardian mark.
  # - Each prism shows a different version of the first Hoopa seal.
  # - Optional inscriptions name the people erased from the official legend.

  scene.message "\\bKael\\b: History remembered their function and erased the people."
  scene.message "\\bLyra\\b: Then we remember both."
  scene.message "You copied every surviving name into Aldric's journal."
end

GameData::Cutscene.define :ch31_wounded_asgaheim do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "A divine Pokémon lay where the corruption had severed an island from its river of light."
  scene.message "Lyra's shard pulled toward it while the main trail darkened ahead."

  scene.message "\\bKael\\b: Healing it will reveal us to every cultist in the realm."
  scene.message "\\bLyra\\b: And leaving it teaches us exactly what Malachar believes—that some lives are acceptable fuel."
  scene.message "\\b\\PN\\b: We heal it. Then we handle whoever comes."

  # TODO: Optional defense encounter
  # - Lyra channels the Growth Shard for three turns while player and Kael defend her.
  # - The healed Pokémon creates a light bridge that bypasses one cult wave.
  # - Refusing the rescue keeps stealth longer but removes this aid.
end

GameData::Cutscene.define :ch31_path_forward do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  scene.message "\\b\\PN\\b: Which way to Malachar?"
  
  scene.message "\\bKael\\b: Follow the corruption."
  scene.message "\\bKael\\b: It's flowing toward something."
  
  scene.message "\\bLyra\\b: The source."
  
  scene.message "\\bKael\\b: Or Hoopa's prison."
  scene.message "\\bKael\\b: Either way, that's where we need to go."
  
  scene.message "\\b\\PN\\b: Then we follow the darkness."
  scene.message "\\b\\PN\\b: Into the heart of the enemy."
  
  scene.message "\\b\\PN\\b: Then we follow the darkness."
  scene.message "\\b\\PN\\b: Into the heart of the enemy."
  
  # TODO: Event Sequence - Travel
  # scene.message "You moved forward."
  # scene.message "Every step bringing you closer."
  # scene.message "Closer to the final confrontation."
end

GameData::Cutscene.define :ch31_cult_spotted do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bKael\\b: Quiet. Ahead."
  
  scene.message "\\bKael\\b: Quiet. Ahead."
  
  # TODO: Event Sequence - Hiding
  # scene.message "You ducked behind a corrupted pillar."
  # scene.message "Peered around the edge."
  
  # scene.message "Cultists. Hundreds of them."
  # scene.message "An army guarding the path forward."
  
  scene.message "\\bLyra\\b: *whispering* There's so many..."
  
  scene.message "\\bKael\\b: *whispering* We can't sneak past."
  
  scene.message "\\b\\PN\\b: *whispering* Then we don't sneak."
  scene.message "\\b\\PN\\b: We go through."
end

GameData::Cutscene.define :ch31_cult_army do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  # TODO: Event Sequence - Reveal
  # scene.message "You stepped out from hiding."
  # scene.message "The cultists turned. Saw you."
  
  scene.message "\\bCult Commander\\b: The Chosen Ones..."
  scene.message "\\bCult Commander\\b: You're too late!"
  scene.message "\\bCult Commander\\b: Lord Malachar completes the ritual as we speak!"
  
  scene.message "\\bKael\\b: Then we'll just have to go through you."
  
  scene.message "\\bLyra\\b: All of you."
  
  scene.message "\\b\\PN\\b: Guardians, lend us strength!"
  
  scene.message "\\b\\PN\\b: Guardians, lend us strength!"
  
  # TODO: Event Sequence - Marks Blaze
  # scene.message "Your marks blazed with power."
  # scene.message "Divine energy surged through your Pokémon."
  # scene.message "The battle began."
end

GameData::Cutscene.define :ch31_battle_begins do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle Tower'
  scene.camera_flash
  
  scene.play_bgm 'Pokemon SWSH - Battle Tower'
  scene.camera_flash
  
  # TODO: Event Sequence - Clashing
  # scene.message "Pokémon clashed."
  # scene.message "Light against darkness."
  # scene.message "Hope against despair."
  
  scene.message "\\bCult Commander\\b: TAKE THEM DOWN!"
  
  # TODO: Event Sequence - Waves Charge
  # scene.message "Waves of cultists charged."
  # scene.message "But your Pokémon fought like legends."
  
  # TODO: Event Sequence - Action Montage
  # scene.message "Your starter blazed a path forward."
  # scene.message "Shadow's illusions sowed confusion."
  # scene.message "Willow's fairy power shattered dark energy."
  
  scene.message "\\b\\PN\\b: Keep pushing! Don't stop!"
end

GameData::Cutscene.define :ch31_pushing_through do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle Tower'
  
  scene.play_bgm 'Pokemon SWSH - Battle Tower'
  
  # TODO: Event Sequence - Fighting Waves
  # scene.message "You fought through wave after wave."
  # scene.message "Each cultist fell. Each Pokémon retreated."
  
  # scene.message "But the numbers seemed endless."
  
  scene.message "\\bLyra\\b: *panting* There's too many!"
  
  scene.message "\\bKael\\b: We have to keep moving!"
  scene.message "\\bKael\\b: \\PN, take the lead!"
  scene.message "\\bKael\\b: Lyra and I will cover you!"
  
  scene.message "\\b\\PN\\b: Got it! Stay close!"
  
  # TODO: Event Sequence - Pushing Forward
  # scene.message "You pushed forward."
  # scene.message "Lyra healed your Pokémon between battles."
  # scene.message "Kael's Shadow created illusions, confusing enemies."
  # scene.message "Teamwork. Synergy. Friendship."
end

GameData::Cutscene.define :ch31_breakthrough do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle Tower'
  scene.camera_shake 5, 15
  
  scene.play_bgm 'Pokemon SWSH - Battle Tower'
  scene.camera_shake 5, 15
  
  # TODO: Event Sequence - Breakthrough
  # scene.message "With a final surge of power..."
  # scene.message "You broke through the cult lines."
  
  scene.message "\\bCult Commander\\b: NO! Stop them!"
  
  # TODO: Event Sequence - Too Late
  # scene.message "But it was too late."
  # scene.message "You'd pushed past their defenses."
  
  scene.message "\\bKael\\b: The inner sanctum! Ahead!"
  
  scene.message "\\bLyra\\b: I can feel the corruption's source!"
  
  scene.message "\\b\\PN\\b: Malachar's there."
  scene.message "\\b\\PN\\b: And so is Hoopa's prison."
  
  # TODO: Event Sequence - Run to Destiny
  # scene.message "You ran toward destiny."
end

GameData::Cutscene.define :ch31_inner_sanctum do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Inner Sanctum
  # scene.message "The inner sanctum was massive."
  # scene.message "A cathedral of crystal and light."
  # scene.message "Now tainted by darkness."
  
  # scene.message "And at its center..."
  
  scene.message "\\bLyra\\b: Is that...?"
  
  scene.message "\\bKael\\b: Hoopa's prison."
  
  # TODO: Event Sequence - Prison Description
  # scene.message "A crystalline cage of divine light."
  # scene.message "Ancient beyond measure."
  # scene.message "Cracks spreading across its surface."
end

GameData::Cutscene.define :ch31_prison_testimony do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'

  scene.message "The copied names in Aldric's journal ignited near the crystalline cage."
  scene.message "The prison answered with the voices of those who had built it."

  scene.message "\\bFirst Chosen's Memory\\b: The ring-bearer refuses. Hold it still."
  scene.message "\\bSecond Chosen's Memory\\b: If Hoopa leaves, the hunger follows."
  scene.message "\\bHoopa's Memory\\b: Hoopa said no! Hoopa said NO!"

  scene.message "The memory ended. No heroic music. No noble final words."
  scene.message "\\bLyra\\b: They called this place divine because they didn't want to call it a torture chamber."
  scene.message "\\b\\PN\\b: Whatever happens next, Hoopa leaves as itself—not as our lock."
end

GameData::Cutscene.define :ch31_elenas_trail do |scene|
  scene.play_bgm 'Pokemon XY - Tension'

  scene.message "Near the sanctum door, you found three nearly invisible cuts in the crystal."
  scene.message "Elena's field notation: danger, captive, ritual incomplete."
  scene.message "A fourth mark pointed toward a narrow conduit beneath the altar."

  scene.message "\\bLyra\\b: She left this for us. She was still investigating while they dragged her here."
  scene.message "\\bKael\\b: The conduit carries the ritual's overflow. If it remains open, Malachar cannot stabilize Nidhoggr immediately."
  scene.message "\\b\\PN\\b: Remember it. Elena just gave us time."

  # TODO: Player opens the overflow conduit before entering the sanctum.
  # This creates the stagger window used in Chapter 34 and proves Elena's work
  # materially contributes beyond the emotional force of her sacrifice.
end

GameData::Cutscene.define :ch31_hoopa_prison do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bLyra\\b: It's almost broken..."
  scene.message "\\bLyra\\b: The seal is failing!"
  
  scene.message "\\bKael\\b: Where's Malachar?"
  
  scene.message "\\bMalachar's Voice\\b: Right here, Chosen Ones."
  
  # TODO: Event Sequence - Malachar Steps Out
  # scene.message "He stepped from the shadows."
  # scene.message "Tall. Dark. Radiating malevolent power."
  
  # scene.message "And in his grip..."
  # scene.message "A figure wrapped in dark energy."
  
  scene.message "\\bLyra\\b: ELENA!"
  
  # TODO: Event Sequence - Elena Bound
  # scene.message "Elena, captured and bound."
  # scene.message "The trap had been set."
end

GameData::Cutscene.define :ch31_malachar_reveals do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bMalachar\\b: Did you think I wouldn't know you were coming?"
  scene.message "\\bMalachar\\b: The Guardians' power is... conspicuous."
  
  scene.message "\\b\\PN\\b: Let Elena go!"
  
  scene.message "\\bMalachar\\b: Oh, I think not."
  scene.message "\\bMalachar\\b: She's insurance."
  scene.message "\\bMalachar\\b: And perhaps... a key."
  
  scene.message "\\bKael\\b: What do you mean?"
  
  scene.message "\\bMalachar\\b: Her blood. Lyra's sister."
  scene.message "\\bMalachar\\b: Connected to the Growth Shard's power."
  scene.message "\\bMalachar\\b: The perfect sacrifice."
  
  scene.message "\\bLyra\\b: NO!"
end

#===============================================================================
# Chapter 32: Malachar & Elena's Sacrifice
#===============================================================================

GameData::Cutscene.define :ch32_elena_captured do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  scene.play_bgm 'Pokemon XY - Tension'
  
  # TODO: Event Sequence - Elena Bound Detail
  # scene.message "Elena was bound in dark energy."
  # scene.message "Beaten, but defiant."
  
  scene.message "\\bElena\\b: Lyra! I'm sorry... they got me when I was—"
  scene.message "\\bMalachar\\b: Silence!"
  
  # TODO: Event Sequence - Tendrils Tighten
  # scene.message "Dark tendrils tightened around her throat."
  # scene.message "Elena gasped."
  
  scene.message "\\bLyra\\b: LET HER GO!"
  scene.message "\\bMalachar\\b: Or what? You'll fight me?"
  scene.message "\\bMalachar\\b: Attack me and she dies."
  
  scene.message "\\bKael\\b: What do you want?"
  scene.message "\\bMalachar\\b: Want? I already HAVE what I want."
  scene.message "\\bMalachar\\b: You arrived too late."
end

GameData::Cutscene.define :ch32_standoff do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  scene.message "\\b\\PN\\b: It doesn't have to be this way."
  scene.message "\\b\\PN\\b: Whatever you're planning, stop it now."
  
  scene.message "\\bMalachar\\b: *laughing* Stop? STOP?"
  scene.message "\\bMalachar\\b: I've spent decades preparing for this moment."
  scene.message "\\bMalachar\\b: Why would I stop now?"
  
  scene.message "\\bKael\\b: Because you'll die too."
  scene.message "\\bKael\\b: Nidhoggr won't spare you."
  
  scene.message "\\bMalachar\\b: You think I fear death?"
  scene.message "\\bMalachar\\b: Death is a mercy. An ending."
  scene.message "\\bMalachar\\b: What I fear is eternal suffering."
  scene.message "\\bMalachar\\b: And THIS is the cure."
end

GameData::Cutscene.define :ch32_malachar_monologue do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre Theme'
  
  scene.message "\\bMalachar\\b: Do you know WHY we sought Nidhoggr?"
  scene.message "\\bMalachar\\b: It's not destruction for its own sake."
  
  scene.message "\\bLyra\\b: You're insane!"
  
  scene.message "\\bMalachar\\b: Perhaps. But I've SEEN the truth."
  scene.message "\\bMalachar\\b: I've lived through horrors you cannot imagine."
  
  scene.message "\\bMalachar\\b: The world is broken. Full of suffering."
  scene.message "\\bMalachar\\b: The cycle of life and death..."
  scene.message "\\bMalachar\\b: It breeds only pain."
  
  scene.message "\\bKael\\b: So your solution is to end everything?"
  
  scene.message "\\bMalachar\\b: My solution is PEACE."
  scene.message "\\bMalachar\\b: When nothing exists, nothing suffers."
end

GameData::Cutscene.define :ch32_twisted_logic do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre Theme'
  
  scene.message "\\bElena\\b: That's not peace! That's annihilation!"
  
  scene.message "\\bMalachar\\b: To a mortal, perhaps."
  scene.message "\\bMalachar\\b: But I've evolved beyond such concerns."
  
  scene.message "\\b\\PN\\b: You're no god. You're just afraid."
  scene.message "\\b\\PN\\b: Afraid of life. Afraid of loss."
  scene.message "\\b\\PN\\b: So you want to destroy everything."
  
  scene.message "\\bMalachar\\b: *laughs* Afraid? I stopped being afraid long ago."
  scene.message "\\bMalachar\\b: Now I am enlightened."
  
  scene.message "\\bKael\\b: You're not enlightened."
  scene.message "\\bKael\\b: You're broken."
  scene.message "\\bKael\\b: I know. I almost became you."
  
  scene.message "\\bMalachar\\b: Then you should understand."
  
  scene.message "\\bKael\\b: I understand you gave up."
  scene.message "\\bKael\\b: I chose to fight."
end

GameData::Cutscene.define :ch32_ritual_begins do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre Theme'
  scene.camera_shake 5, 20
  
  scene.message "\\bMalachar\\b: Enough talk."
  scene.message "\\bMalachar\\b: The ritual is nearly complete."
  
  # TODO: Event Sequence - Ritual
  # scene.message "He raised his hands."
  # scene.message "Dark energy poured from him."
  # scene.message "Into Hoopa's prison."
  
  scene.message "\\bMalachar\\b: The final seal breaks NOW!"
  
  # TODO: Event Sequence - Cracks Spread
  # scene.message "Cracks spread across the crystalline cage."
  # scene.message "Ancient light flickering. Failing."
  
  scene.message "\\bLyra\\b: NO!"
  scene.message "\\b\\PN\\b: We have to stop him!"
  
  scene.message "\\bMalachar\\b: Try. And Elena dies."
end

GameData::Cutscene.define :ch32_elena_decision do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[ELENA'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Elena Watches
  # scene.message "Elena watched her sister."
  # scene.message "Watched her friends."
  # scene.message "Saw the impossible choice before them."
  
  scene.message "\\bElena\\b: (If they attack, I die.)"
  scene.message "\\bElena\\b: (If they don't, everyone dies.)"
  scene.message "\\bElena\\b: (There's only one way to break this deadlock.)"
  
  # TODO: Event Sequence - Look at Lyra
  # scene.message "She looked at Lyra."
  # scene.message "Memorized her face."
  # scene.message "The sister she'd protected her whole life."
  
  scene.message "\\bElena\\b: (I love you, little sis.)"
  scene.message "\\bElena\\b: (It's my turn to save the world.)"
end

GameData::Cutscene.define :ch32_elena_sacrifice do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_shake 10, 30
  
  # TODO: Event Sequence - Eye Contact
  # scene.message "Elena looked at Lyra."
  # scene.message "And Lyra saw peace in her sister's eyes."
  
  scene.message "\\bElena\\b: Lyra... I love you. Always remember that."
  
  scene.message "\\bLyra\\b: Elena, what are you—"
  
  scene.message "\\bElena\\b: Live for both of us."
  
  # TODO: Event Sequence - Tackle
  # scene.message "With a surge of desperate strength..."
  # scene.message "Elena broke free of the dark bonds."
  # scene.message "Dark energy couldn't hold her determination."
  
  # scene.message "She tackled Malachar away from the prison."
  # scene.message "Toward the edge. Toward the void."
  
  scene.message "\\bMalachar\\b: FOOLISH GIRL!"
  
  scene.message "\\bElena\\b: If I go... you're coming with me!"
end

GameData::Cutscene.define :ch32_falling do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 10, 40
  
  # TODO: Event Sequence - Fall
  # scene.message "They tumbled over the edge."
  # scene.message "Into the abyss below."
  # scene.message "Together."
  
  # scene.message "Time seemed to slow."
  # scene.message "Elena's eyes found Lyra's one last time."
  # scene.message "A smile on her face."
  
  scene.message "\\bLyra\\b: ELEEEENAAA!"
  
  # TODO: Event Sequence - Reach
  # scene.message "Lyra reached out."
  # scene.message "Too far. Too late."
  
  # scene.message "Elena and Malachar vanished into the darkness."
  
  # scene.message "Silence."
  # scene.message "They were gone."
end

GameData::Cutscene.define :ch32_lyra_breaks do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bLyra\\b: No... no no no no..."
  
  # TODO: Event Sequence - Collapse
  # scene.message "Lyra collapsed to her knees."
  
  scene.message "\\bLyra\\b: ELENA!"
  
  # TODO: Event Sequence - Scream
  # scene.message "She screamed until her voice broke."
  # scene.message "Tears streaming down her face."
  
  scene.message "\\bLyra\\b: She can't be gone! She CAN'T BE!"

  scene.set_switch SW::ELENA_DIED, true
  
  # TODO: Event Sequence - Kael Comfort
  # scene.message "Kael knelt beside her."
  # scene.message "Pulled her into his arms."
  # scene.message "Let her sob against his chest."
  
  scene.message "\\bKael\\b: I know. I know."
  scene.message "\\bKael\\b: I'm so sorry, Lyra."
end

GameData::Cutscene.define :ch32_kael_comforts do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Memory Flash
  # scene.message "I held Lyra as she screamed."
  # scene.message "I knew this pain. Too well."
  # scene.message "Mira's face flashed in my memory."
  
  scene.message "\\bKael\\b: She saved us. She saved EVERYONE."
  scene.message "\\bKael\\b: That's what heroes do, Lyra."
  scene.message "\\bKael\\b: And we honor them... by finishing the fight."
  
  scene.message "\\bLyra\\b: *sobbing* I... I can't..."
  
  scene.message "\\bKael\\b: You can. You're the strongest person I know."
  scene.message "\\bKael\\b: She believed in you."
  scene.message "\\bKael\\b: Now you need to believe in yourself."
end

GameData::Cutscene.define :ch32_lyra_resolve do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Lyra Recovers
  # scene.message "Lyra wiped her tears."
  # scene.message "Took a shuddering breath."
  
  # scene.message "When she looked up, there was steel in her eyes."
  # scene.message "And something else. Fire."
  
  scene.message "\\bLyra\\b: I'll make them pay for this."
  scene.message "\\bLyra\\b: For Elena. For everyone."
  
  scene.message "\\b\\PN\\b: We'll do it together."
  
  scene.message "\\bKael\\b: Always."
  
  # TODO: Event Sequence - Stand Up
  # scene.message "The three of you stood."
  # scene.message "Grief and rage and determination."
  # scene.message "The fight wasn't over yet."
end

GameData::Cutscene.define :ch32_hoopa_freed do |scene|
  scene.camera_shake 10, 60
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  # TODO: Event Sequence - Ritual Succeeds
  # scene.message "But the ritual was already complete."
  # scene.message "Malachar's last act had succeeded."
  # scene.message "Hoopa's prison shattered."
  
  scene.message "\\bHoopa Unbound\\b: Free... Hoopa is free..."
  scene.message "\\bHoopa Unbound\\b: How long? How long was Hoopa dreaming?"
  
  # TODO: Event Sequence - Hoopa Rises
  # scene.message "The imprisoned trickster rose, rings spinning wildly."
  # scene.message "Reality warped around a creature waking in pain and confusion."
  
  scene.message "\\bHoopa Unbound\\b: Little mortals... you broke the lock."
  scene.message "\\bHoopa Unbound\\b: Run! Something watched through Hoopa's dreams!"
end

GameData::Cutscene.define :ch32_nidhoggr_stirs do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 15, 50
  
  # TODO: Event Sequence - Something Else
  # scene.message "But then... something else stirred."
  # scene.message "Darker. Older. Hungrier."
  
  # scene.message "Beyond Hoopa, the void rippled."
  # scene.message "Something massive moved in the darkness."
  
  scene.message "\\bVoice\\b: YESSS... THE KEY HAS TURNED..."
  scene.message "\\bVoice\\b: NOW... I SHALL FEED..."
  
  scene.message "\\bHoopa Unbound\\b: No... the hungry voice. Hoopa warned you!"
  
  scene.message "\\bLyra\\b: That's... that's what they really wanted..."
  scene.message "\\bKael\\b: Hoopa was just the key..."
  scene.message "\\bKael\\b: To release THAT."
  
  # TODO: Event Sequence - Nidhoggr reveal
  # scene.message "Nidhoggr. The Gnawing One. The World-Eater."
  # scene.message "Emerging from its ancient prison."
end

GameData::Cutscene.define :ch32_hoopa_consumed do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 20, 80
  
  scene.message "\\bNidhoggr\\b: LITTLE CHAOS SPIRIT..."
  scene.message "\\bNidhoggr\\b: YOU ARE NOTHING..."
  scene.message "\\bNidhoggr\\b: COMPARED TO TRUE OBLIVION."
  
  scene.message "\\bHoopa Unbound\\b: NO! Hoopa will not be your door again!"
  scene.message "\\bHoopa Unbound\\b: CLOSE THE RINGS! CLOSE—"
  
  # TODO: Event Sequence - Consumption
  # scene.message "Dark tendrils wrapped around Hoopa."
  # scene.message "And consumed it. Devoured it whole."
  
  scene.message "\\bHoopa Unbound\\b: AAAAARGH!"
  
  # TODO: Event Sequence - Absorption
  # scene.message "The chaos entity was absorbed."
  # scene.message "Nidhoggr grew even larger."
  # scene.message "Its form blocked out the sky."
  
  scene.message "\\b\\PN\\b: It... it dragged Hoopa inside itself."
  scene.message "\\bKael\\b: That's what it does."
  scene.message "\\bKael\\b: It consumes. Everything."
  
  scene.message "\\bNidhoggr\\b: NOW THEN..."
  scene.message "\\bNidhoggr\\b: WHO SHALL BE NEXT?"
end

#===============================================================================
# INTERLUDE: Chapter 32.5 - Elena's Choice (Elena Perspective Chapter)
# Full playable chapter from Elena's POV during her final moments
#===============================================================================

GameData::Cutscene.define :ch32_5_intro do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[INTERLUDE: ELENA'S CHOICE]"
  scene.message "\\i[A sister's final sacrifice...]"
  scene.fade_out 10
  scene.fade_in 10
  
  scene.message "\\i[ELENA'S PERSPECTIVE]"
  scene.message "\\i[Twelve hours earlier...]"
  
  # TODO: Event Sequence - Research
  # scene.message "You stared at the research notes."
  # scene.message "The data didn't lie."
  # scene.message "Nidhoggr's prison was weakening. Fast."
  
  scene.message "\\bElena\\b: (The seal will break today.)"
  scene.message "\\bElena\\b: (And Lyra's going to be right in the middle of it.)"
  
  # TODO: Event Sequence - Concern
  # scene.message "Your hands shook as you set down the tablet."
  # scene.message "Your little sister. Your baby sister."
  # scene.message "Walking into something she might not walk out of."
end

GameData::Cutscene.define :ch32_5_lab_work do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Lab Work
  # scene.message "You tried to focus on the research."
  # scene.message "Running simulations. Calculating probabilities."
  # scene.message "That's what you were good at."
  
  scene.message "\\bElena\\b: (If I can just find something—)"
  scene.message "\\bElena\\b: (Some weakness in Malachar's plans—)"
  
  # TODO: Event Sequence - Failed Sims
  # scene.message "But every simulation ended the same way."
  # scene.message "The cult's ritual would work."
  # scene.message "Hoopa would be freed."
  # scene.message "And then Nidhoggr."
  
  scene.message "\\bElena\\b: (Unless someone stops Malachar directly.)"
  scene.message "\\bElena\\b: (Someone gets close enough to interrupt.)"
  
  # TODO: Event Sequence - Realization
  # scene.message "Your hands stopped shaking."
  # scene.message "Because suddenly, you had an idea."
  # scene.message "A terrible, wonderful, necessary idea."
end

GameData::Cutscene.define :ch32_5_the_decision do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Profile Review
  # scene.message "You pulled up Malachar's profile."
  # scene.message "His weaknesses. His blind spots."
  
  scene.message "\\bElena\\b: (He needs a hostage to ensure compliance.)"
  scene.message "\\bElena\\b: (Someone important to Lyra.)"
  scene.message "\\bElena\\b: (Someone he'd take alive.)"
  
  # TODO: Event Sequence - Cold Logic
  # scene.message "The logic was cold. Clinical."
  # scene.message "The way you'd always thought."
  
  scene.message "\\bElena\\b: (If I let myself get captured—)"
  scene.message "\\bElena\\b: (He'll bring me to the ritual.)"
  scene.message "\\bElena\\b: (Close enough to stop him.)"
  
  # TODO: Event Sequence - Deep Breath
  # scene.message "You took a deep breath."
  
  scene.message "\\bElena\\b: (Lyra would never forgive me.)"
  scene.message "\\bElena\\b: (But at least she'd be alive.)"
end

GameData::Cutscene.define :ch32_5_memories_lyra_child do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.message "\\i[MEMORY - Fifteen Years Ago]"
  
  # TODO: Event Sequence - Memory Baby
  # scene.message "You were eight years old."
  # scene.message "Holding a tiny, crying baby."
  
  scene.message "\\bMother\\b: Elena, meet your sister. Lyra."
  
  scene.message "\\bYoung Elena\\b: She's so small..."
  
  scene.message "\\bMother\\b: You're her big sister now."
  scene.message "\\bMother\\b: You'll protect her, won't you?"
  
  scene.message "\\bYoung Elena\\b: I will! I promise!"
  
  # TODO: Event Sequence - Memory Promise
  # scene.message "You'd held her so carefully."
  # scene.message "Like she was made of glass."
  # scene.message "This tiny, perfect creature."
  
  scene.message "\\bYoung Elena\\b: (I'll always keep you safe, Lyra.)"
  scene.message "\\bYoung Elena\\b: (Always.)"
end

GameData::Cutscene.define :ch32_5_memories_mother_death do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[MEMORY - Thirteen Years Ago]"
  
  # TODO: Event Sequence - Death News
  # scene.message "Mother was gone."
  # scene.message "The illness had taken her quickly."
  # scene.message "Too quickly to say goodbye."
  
  scene.message "\\bYoung Elena\\b: *to crying Lyra* Shh, shh..."
  scene.message "\\bYoung Elena\\b: It's okay. I'm here."
  
  scene.message "\\bBaby Lyra\\b: *crying* Mama...?"
  
  scene.message "\\bYoung Elena\\b: Mama's... Mama's sleeping."
  scene.message "\\bYoung Elena\\b: But I'm here. Big sister's here."
  
  # TODO: Event Sequence - Holding Lyra
  # scene.message "You held her all night."
  # scene.message "While Grandmother made arrangements."
  # scene.message "While the world fell apart."
  
  scene.message "\\bYoung Elena\\b: (I'll be everything you need.)"
  scene.message "\\bYoung Elena\\b: (Mother. Sister. Friend.)"
  scene.message "\\bYoung Elena\\b: (Whatever you need. I'll be it.)"
end

GameData::Cutscene.define :ch32_5_memories_growing_up do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.message "\\i[MEMORY - Five Years Ago]"
  
  # TODO: Event Sequence - Egg Discovery
  # scene.message "Lyra ran through the house."
  # scene.message "A Pokémon egg clutched in her arms."
  
  scene.message "\\bTeenage Lyra\\b: ELENA! ELENA, LOOK!"
  scene.message "\\bTeenage Lyra\\b: I found an egg in the garden!"
  
  scene.message "\\bElena\\b: *laughing* Slow down! You'll trip!"
  
  scene.message "\\bTeenage Lyra\\b: I'm going to take care of it!"
  scene.message "\\bTeenage Lyra\\b: And when it hatches, we'll be best friends!"
  
  scene.message "\\bElena\\b: (Look at you. So full of life.)"
  scene.message "\\bElena\\b: (So full of love.)"
  
  scene.message "\\bElena\\b: What will you name it?"
  
  scene.message "\\bTeenage Lyra\\b: If it's a girl... Willow!"
  scene.message "\\bTeenage Lyra\\b: Because it's pretty and strong!"
  
  scene.message "\\bElena\\b: *smiling* Perfect name."
  scene.message "\\bElena\\b: (Just like you.)"
end

GameData::Cutscene.define :ch32_5_seeing_lyra_leave do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.message "\\i[MEMORY - One Month Ago]"
  
  # TODO: Event Sequence - Departure
  # scene.message "Lyra stood at the door."
  # scene.message "Backpack on. Willow at her feet."
  # scene.message "Ready for her journey."
  
  scene.message "\\bLyra\\b: I'll be careful, I promise!"
  
  scene.message "\\bElena\\b: You better be."
  scene.message "\\bElena\\b: Or I'll track you down myself."
  
  scene.message "\\bLyra\\b: *laughing* Like you'd leave your research."
  
  scene.message "\\bElena\\b: For you? In a heartbeat."
  
  # TODO: Event Sequence - Goodbye Hug
  # scene.message "You hugged her tight."
  # scene.message "Trying to memorize the feeling."
  # scene.message "Just in case."
  
  scene.message "\\bElena\\b: *whispering* I love you, little sis."
  scene.message "\\bLyra\\b: Love you too, Elena."
  
  # TODO: Event Sequence - Walk Away
  # scene.message "And then she was gone."
  # scene.message "Off to become something extraordinary."
end

GameData::Cutscene.define :ch32_5_back_to_present do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.fade_out 15
  scene.fade_in 15
  
  scene.message "\\i[PRESENT - The Laboratory]"
  
  # TODO: Event Sequence - Wiping Tears
  # scene.message "You wiped your eyes."
  # scene.message "No time for tears. Not yet."
  
  scene.message "\\bElena\\b: (She became something extraordinary.)"
  scene.message "\\bElena\\b: (A Chosen One. A guardian.)"
  scene.message "\\bElena\\b: (And now she needs me one more time.)"
  
  # TODO: Event Sequence - Preparations
  # scene.message "You began to prepare."
  # scene.message "Nothing that would tip off the cult."
  # scene.message "Just... small things."
  
  # scene.message "A letter, hidden where Lyra would find it."
  # scene.message "Research notes, organized for whoever came after."
  # scene.message "A final message for Grandmother."
  
  scene.message "\\bElena\\b: (I'm coming, Lyra.)"
  scene.message "\\bElena\\b: (Whether you want me to or not.)"
end

GameData::Cutscene.define :ch32_5_letting_herself_be_caught do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Trap Setup
  # scene.message "You walked outside."
  # scene.message "Into the night."
  # scene.message "Where you knew they'd be watching."
  
  scene.message "\\bElena\\b: (Three cult scouts. Just like I predicted.)"
  scene.message "\\bElena\\b: (They've been following Lyra's family for weeks.)"
  
  # TODO: Event Sequence - Struggle
  # scene.message "You made it look convincing."
  # scene.message "A scream. A struggle."
  # scene.message "But not too much. They had to succeed."
  
  scene.message "\\bCult Scout\\b: Got her! Lyra's sister!"
  scene.message "\\bCult Scout\\b: Malachar will reward us greatly!"
  
  scene.message "\\bElena\\b: *pretending to struggle* Let me go!"
  
  scene.message "\\bCult Scout\\b: Quiet, woman."
  scene.message "\\bCult Scout\\b: You're coming with us."
  
  scene.message "\\bElena\\b: (Perfect.)"
  scene.message "\\bElena\\b: (Take me to him.)"
  scene.message "\\bElena\\b: (Take me close.)"
end

GameData::Cutscene.define :ch32_5_in_captivity do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Distant Rift
  # scene.message "They took you to the Distortion Rift."
  # scene.message "The heart of the cult's operation."
  
  # scene.message "Malachar stood at the center."
  # scene.message "Preparing the final ritual."
  
  scene.message "\\bMalachar\\b: The researcher sister. How convenient."
  scene.message "\\bMalachar\\b: She'll come for you. They always do."
  
  scene.message "\\bElena\\b: (That's what I'm counting on, monster.)"
  
  # TODO: Event Sequence - Bound Near Circle
  # scene.message "They bound your hands."
  # scene.message "Left you near the ritual circle."
  # scene.message "Close enough to see everything."
  
  scene.message "\\bElena\\b: (The seal is there. The prison.)"
  scene.message "\\bElena\\b: (If I can disrupt the ritual—)"
  scene.message "\\bElena\\b: (Even for a moment—)"
  
  # TODO: Event Sequence - Wait
  # scene.message "You watched. Waited. Planned."
end

GameData::Cutscene.define :ch32_5_seeing_lyra_arrive do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Lyra Arrives
  # scene.message "And then she came."
  # scene.message "Lyra. Your little sister."
  # scene.message "Blazing with power you'd never seen."
  
  scene.message "\\bLyra\\b: ELENA!"
  
  scene.message "\\bElena\\b: (Oh, Lyra...)"
  scene.message "\\bElena\\b: (Look at you. So brave.)"
  
  # TODO: Event Sequence - Friends Arrive
  # scene.message "Beside her: her friends."
  # scene.message "Kael, with crimson eyes and dark power."
  # scene.message "\\PN, wielding a sword of pure light."
  
  scene.message "\\bElena\\b: (She found her people.)"
  scene.message "\\bElena\\b: (She's not alone anymore.)"
  
  scene.message "\\bMalachar\\b: Welcome, Chosen Ones!"
  scene.message "\\bMalachar\\b: You're just in time to witness the end!"
  
  scene.message "\\bElena\\b: (Not if I can help it.)"
end

GameData::Cutscene.define :ch32_5_watching_the_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Elite Four Battle'
  
  scene.play_bgm 'Pokemon RSE - Elite Four Battle'
  
  # TODO: Event Sequence - Battle Montage
  # scene.message "The battle was incredible."
  # scene.message "Lyra and her friends against Malachar's forces."
  # scene.message "Light against darkness. Life against death."
  
  scene.message "\\bElena\\b: (They're winning. They're actually winning.)"
  
  # TODO: Event Sequence - Malachar Ritual
  # scene.message "But Malachar wasn't fighting."
  # scene.message "He was continuing the ritual."
  # scene.message "Drawing power from the chaos."
  
  scene.message "\\bMalachar\\b: Let them play their games!"
  scene.message "\\bMalachar\\b: It matters not! The seal breaks!"
  
  scene.message "\\bElena\\b: (The ritual's almost complete.)"
  scene.message "\\bElena\\b: (If I don't act now—)"
  
  # TODO: Event Sequence - Struggle Bonds
  # scene.message "You strained against your bonds."
  # scene.message "Working on the knots you'd been loosening for hours."
  
  scene.message "\\bElena\\b: (Come on... come on...)"
end

GameData::Cutscene.define :ch32_5_the_moment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Free
  # scene.message "The bonds snapped."
  # scene.message "You were free."
  
  # scene.message "Malachar stood at the ritual's edge."
  # scene.message "One push. That's all it would take."
  # scene.message "One push to send him into the void."
  
  scene.message "\\bElena\\b: (But I'll go with him.)"
  scene.message "\\bElena\\b: (There's no surviving this.)"
  
  # TODO: Event Sequence - Look Sister
  # scene.message "You looked at Lyra."
  # scene.message "Your beautiful, wonderful, brave little sister."
  # scene.message "Fighting with everything she had."
  
  scene.message "\\bElena\\b: (I love you so much.)"
  scene.message "\\bElena\\b: (More than research. More than life.)"
  scene.message "\\bElena\\b: (You're everything, Lyra.)"
  scene.message "\\bElena\\b: (And I will not let this monster take you.)"
end

GameData::Cutscene.define :ch32_5_last_look do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Eye Contact Far
  # scene.message "You caught her eye."
  # scene.message "Across the battlefield."
  # scene.message "Through the chaos and the fire."
  
  scene.message "\\bLyra\\b: Elena?!"
  
  # TODO: Event Sequence - Smile
  # scene.message "You smiled."
  # scene.message "The same smile you gave her when she was scared."
  # scene.message "The same smile that said 'everything will be okay.'"
  
  scene.message "\\bElena\\b: I love you. Always remember that."
  
  scene.message "\\bLyra\\b: Elena, what are you—"
  
  scene.message "\\bElena\\b: Live for both of us."
  
  # TODO: Event Sequence - The Move
  # scene.message "And then you moved."
end

GameData::Cutscene.define :ch32_5_the_charge do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 5, 30
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 5, 30
  
  # TODO: Event Sequence - Slow Motion Charge
  # scene.message "Time seemed to slow."
  # scene.message "Each step felt like an eternity."
  
  # scene.message "Malachar turned. Too late."
  # scene.message "His eyes widened in understanding."
  
  scene.message "\\bMalachar\\b: YOU—!"
  
  # TODO: Event Sequence - Impact
  # scene.message "You hit him with everything you had."
  # scene.message "All your grief. All your love. All your determination."
  
  scene.message "\\bElena\\b: IF I GO—"
  scene.message "\\bElena\\b: YOU'RE COMING WITH ME!"
  
  # TODO: Event Sequence - The Fall
  # scene.message "You tumbled over the edge together."
  # scene.message "Into the void."
  # scene.message "Into darkness."
end

GameData::Cutscene.define :ch32_5_falling do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Falling Void
  # scene.message "You fell."
  # scene.message "Malachar screaming beside you."
  # scene.message "The void swallowing everything."
  
  # scene.message "But you weren't afraid."
  # scene.message "You were... peaceful."
  
  scene.message "\\bElena\\b: (I kept my promise, Mom.)"
  scene.message "\\bElena\\b: (I protected her.)"
  scene.message "\\bElena\\b: (Until the very end.)"
  
  # TODO: Event Sequence - Lyra Above
  # scene.message "Above you, Lyra's face."
  # scene.message "Screaming your name."
  # scene.message "Reaching for you."
  
  scene.message "\\bElena\\b: (Don't cry, little sis.)"
  scene.message "\\bElena\\b: (I'll be with Mom now.)"
  scene.message "\\bElena\\b: (And we'll both be watching.)"
  scene.message "\\bElena\\b: (Always.)"
end

GameData::Cutscene.define :ch32_5_final_thoughts do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[ELENA'S FINAL THOUGHTS]"
  
  scene.message "\\bElena\\b: (Lyra...)"
  scene.message "\\bElena\\b: (Be happy.)"
  scene.message "\\bElena\\b: (Love that boy who looks at you like you're the sun.)"
  scene.message "\\bElena\\b: (Take care of Willow.)"
  scene.message "\\bElena\\b: (Visit Grandma more often.)"
  
  scene.message "\\bElena\\b: (And remember...)"
  scene.message "\\bElena\\b: (I never stopped being proud of you.)"
  scene.message "\\bElena\\b: (Not for a single moment.)"
  
  scene.message "\\bElena\\b: (Not for a single moment.)"
  
  # TODO: Event Sequence - Light
  # scene.message "The darkness grew closer."
  # scene.message "Warm, somehow. Welcoming."
  
  scene.message "\\bElena\\b: (Mom...? Is that you...?)"
  
  # scene.message "Light at the edge of vision."
  # scene.message "A familiar warmth."
  
  scene.message "\\bElena\\b: (I'm coming home.)"
end

GameData::Cutscene.define :ch32_5_mother_meets do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_flash 20
  
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_flash 20
  
  # TODO: Event Sequence - The Space Between
  # scene.message "\\i[THE SPACE BETWEEN]"
  
  scene.message "\\bMother\\b: Elena..."
  
  scene.message "She stood there."
  scene.message "Beautiful. Young. Just like you remembered."
  
  scene.message "\\bElena\\b: Mom...?"
  
  scene.message "\\bMother\\b: My brave, beautiful girl."
  scene.message "\\bMother\\b: You kept your promise."
  
  scene.message "\\bElena\\b: *crying* I tried..."
  scene.message "\\bElena\\b: I tried so hard..."
  
  scene.message "\\bMother\\b: You did more than try."
  scene.message "\\bMother\\b: You gave her everything."
  scene.message "\\bMother\\b: Your whole life was for her."
  
  scene.message "Mother embraced her."
  scene.message "Warm. Safe. Home."
  
  scene.message "\\bMother\\b: I'm so proud of you."
  scene.message "\\bMother\\b: Both of you."
end

GameData::Cutscene.define :ch32_5_watching_from_beyond do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bElena\\b: Is she... will she be okay?"
  
  scene.message "\\bMother\\b: Look."
  
  # TODO: Event Sequence - Image of Lyra
  # scene.message "An image appeared."
  # scene.message "Lyra, rising from her grief."
  # scene.message "Steel in her eyes. Fire in her heart."
  
  scene.message "\\bLyra (image)\\b: I'll make them pay for this."
  scene.message "\\bLyra (image)\\b: For Elena. For everyone."
  
  scene.message "\\bElena\\b: (That's my girl.)"
  
  scene.message "\\bMother\\b: She has your strength."
  scene.message "\\bMother\\b: And your heart."
  scene.message "\\bMother\\b: She'll be okay, Elena."
  scene.message "\\bMother\\b: Because of you."
  
  scene.message "\\bElena\\b: *smiling through tears* Good."
  scene.message "\\bElena\\b: That's all I ever wanted."
end

GameData::Cutscene.define :ch32_5_peace do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bMother\\b: Come, Elena."
  scene.message "\\bMother\\b: It's time to rest."
  
  scene.message "\\bElena\\b: Will I... will I see her again?"
  
  scene.message "\\bMother\\b: One day. Many, many years from now."
  scene.message "\\bMother\\b: She'll live a long, happy life."
  scene.message "\\bMother\\b: And when she's old and gray..."
  scene.message "\\bMother\\b: We'll be waiting."
  
  scene.message "\\bElena\\b: Promise?"
  
  scene.message "\\bMother\\b: Promise."
  
  # TODO: Event Sequence - Walking Into Light
  # scene.message "Elena took her mother's hand."
  # scene.message "And together, they walked into the light."
  
  # scene.message "No more pain."
  # scene.message "No more fear."
  # scene.message "Only peace."
end

GameData::Cutscene.define :ch32_5_ending do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 30
  
  scene.message "\\i[Elena's Choice - End]"
  scene.message "\\i[A sister's love knows no bounds.]"
  scene.message "\\i[Not even death.]"
  
  scene.fade_in 20
  scene.message "\\i[Return to main story...]"
end

#===============================================================================
# Chapter 33: Guardians Manifest
#===============================================================================

GameData::Cutscene.define :ch33_silence_after_elena do |scene|
  # TODO: Stop BGM in the map event before calling this cutscene.

  scene.message "For several breaths, no one moved."
  scene.message "No music answered Elena's death. No Guardian offered meaning."
  scene.message "Only the failing prison, Lyra's broken breathing, and Nidhoggr taking shape beyond the altar."

  # TODO: Silent playable walk
  # - Remove sprinting and disable battle music for the short route to the altar.
  # - Player collects Elena's damaged recorder and closes the overflow conduit she marked.
  # - Party Pokémon walk outside their balls without celebratory animations.

  scene.message "Kael lifted Elena's recorder. You supported Lyra."
  scene.message "The three of you moved because stopping would waste the time Elena had bought."
end

GameData::Cutscene.define :ch33_lyras_silence do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "Lyra reached for Xerneas and found nothing."
  scene.message "Her mark remained dark no matter how desperately she called."

  scene.message "\\bLyra\\b: It chose the healer. What good is a healer who couldn't save her own sister?"
  scene.message "\\bKael\\b: Right now? You don't have to be one."
  scene.message "Kael placed Willow's Poké Ball in Lyra's hand and turned toward the collapsing passage."
  scene.message "\\bKael\\b: Be Elena's sister. We'll carry the rest until you can stand."

  scene.message "He coordinated the retreating Pokémon and assigned positions without turning fear into an order."
  scene.message "When Lyra finally stood, it was her decision."
end

GameData::Cutscene.define :ch33_elenas_last_research do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'

  scene.message "Elena's recorder crackled to life when Nidhoggr crossed the open conduit."
  scene.message "\\bElena's Recording\\b: If you're hearing this, the ritual reached embodiment. Don't attack the core while it feeds."
  scene.message "\\bElena's Recording\\b: The overflow pulses seven times. On the silence after the seventh, the vessel becomes separate from Nidhoggr."

  scene.message "\\bKael\\b: That's our opening to free Eternatus."
  scene.message "\\bLyra\\b: She found it. Even here, she found it."
  scene.message "\\b\\PN\\b: Then we make her work count."

  # TODO: Chapter 34 boss telegraph
  # Seven visible pulses precede a one-turn stagger phase. Attacking early heals
  # Nidhoggr; striking during silence damages the bond and protects Eternatus.
end

GameData::Cutscene.define :ch33_grief_answers do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'

  scene.message "The Guardian marks did not answer anger. They answered when the three of you spoke the truth."

  scene.message "\\bLyra\\b: Elena is dead, and I cannot make that fair."
  scene.message "\\bKael\\b: We are frightened, and we cannot promise everyone survives."
  scene.message "\\b\\PN\\b: But no one faces what comes alone. Not even us."

  scene.message "Gold, green, and crimson light returned—not erasing grief, but making room beside it."
  scene.message "Only then did the Guardians begin to manifest."
end

GameData::Cutscene.define :ch33_facing_nidhoggr do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  
  # TODO: Event Sequence - Nidhoggr Looms
  # scene.message "Nidhoggr loomed above you."
  # scene.message "A nightmare made flesh."
  # scene.message "Entropy given form."
  
  scene.message "\\bNidhoggr\\b: SO... THE MORTALS THINK TO FIGHT."
  scene.message "\\bNidhoggr\\b: HOW AMUSING."
  
  scene.message "\\b\\PN\\b: We don't think. We know."
  
  scene.message "\\bNidhoggr\\b: YOU KNOW NOTHING, CHILD."
  scene.message "\\bNidhoggr\\b: I AM THE END OF ALL THINGS."
  scene.message "\\bNidhoggr\\b: I HAVE DEVOURED WORLDS."
  
  scene.message "\\bLyra\\b: Not this one."
  
  scene.message "\\bKael\\b: Not today."
end

GameData::Cutscene.define :ch33_marks_resonate do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  # TODO: Event Sequence - Mark Glow
  # scene.message "Your mark blazed with sudden heat."
  # scene.message "Almost painful. But... comforting."
  
  scene.message "\\bZacian's Voice\\b: Chosen One..."
  scene.message "\\bZacian's Voice\\b: The hour is upon us."
  
  # TODO: Event Sequence - Others Glow
  # scene.message "Lyra gasped. Her mark was glowing too."
  # scene.message "Pale green light spilling from beneath her sleeve."
  
  # scene.message "And Kael's mark blazed crimson."
  # scene.message "Dark energy swirling around his hand."
  
  scene.message "\\bLyra\\b: The guardians..."
  scene.message "\\bKael\\b: They're coming."
  scene.message "\\bKael\\b: All of them."
end

GameData::Cutscene.define :ch33_shards_activate do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Shards Float
  # scene.message "The three Guardian Shards lifted from your bodies."
  # scene.message "Floating. Spinning. Resonating."
  
  scene.message "\\bLyra\\b: What's happening?!"
  
  scene.message "\\bKael\\b: They're responding to Nidhoggr."
  scene.message "\\bKael\\b: Calling the Guardians."
  
  scene.message "\\b\\PN\\b: Then we answer."
  
  # TODO: Event Sequence - Call Zacian
  # scene.message "You reached out to your shard."
  # scene.message "And called to Zacian with everything you had."
  
  scene.message "\\b\\PN\\b: Zacian! We need you!"
end

GameData::Cutscene.define :ch33_zacian_appears do |scene|
  scene.camera_flash 30
  scene.play_bgm 'Pokemon SwSh - Zacian Theme'
  
  # TODO: Event Sequence - Zacian Arrives
  # scene.message "Golden light blazed around you."
  # scene.message "So bright it hurt to look at."
  
  # scene.message "And from that light, Zacian emerged."
  # scene.message "The Warrior of Valor. The Crowned Sword."
  
  scene.message "\\bZacian\\b: Champion of Valor."
  scene.message "\\bZacian\\b: You have come so far."
  scene.message "\\bZacian\\b: From the child I chose to the hero you've become."
  
  scene.message "\\b\\PN\\b: Zacian..."
  
  scene.message "\\bZacian\\b: Fear not the darkness before you."
  scene.message "\\bZacian\\b: For I am with you."
  scene.message "\\bZacian\\b: My strength is your strength."
  
  # TODO: Event Sequence - Power Up
  # scene.message "Power flowed from Zacian into your body."
  # scene.message "Your shard blazed like a star."
end

GameData::Cutscene.define :ch33_xerneas_appears do |scene|
  scene.camera_flash 30
  
  # TODO: Event Sequence - Xerneas Arrives
  # scene.message "Rose-gold light surrounded Lyra."
  # scene.message "The light of life itself."
  # scene.message "Warm and gentle and impossibly strong."
  
  # scene.message "Xerneas materialized, antlers shimmering."
  # scene.message "The Guardian of Life. The Tree of Eternal Light."
  
  scene.message "\\bXerneas\\b: Child of Life."
  scene.message "\\bXerneas\\b: Your heart knows great sorrow."
  
  scene.message "\\bLyra\\b: *tears streaming* Elena..."
  
  scene.message "\\bXerneas\\b: She lives on. Through you."
  scene.message "\\bXerneas\\b: The love you shared transcends death."
  scene.message "\\bXerneas\\b: Her sacrifice was not in vain."
  
  scene.message "\\bXerneas\\b: Let your grief become strength."
  scene.message "\\bXerneas\\b: And fight for those who still draw breath."
  
  # TODO: Event Sequence - Lyra Power Up
  # scene.message "Lyra's tears crystallized into light."
  # scene.message "Her shard blazed with life energy."
end

GameData::Cutscene.define :ch33_yveltal_appears do |scene|
  scene.camera_flash 30
  
  # TODO: Event Sequence - Yveltal Arrives
  # scene.message "Crimson light enveloped Kael."
  # scene.message "The light of endings. Of necessary conclusions."
  # scene.message "Not evil. Simply... final."
  
  # scene.message "Yveltal descended, wings spread wide."
  # scene.message "The Guardian of Destruction. The Bringer of End."
  
  scene.message "\\bYveltal\\b: Champion of Balance."
  scene.message "\\bYveltal\\b: You understand what others cannot."
  
  scene.message "\\bKael\\b: *meeting Yveltal's gaze* Death is not the enemy."
  
  scene.message "\\bYveltal\\b: Correct. Death is natural."
  scene.message "\\bYveltal\\b: But ANNIHILATION... that is abomination."
  scene.message "\\bYveltal\\b: The cycle must continue."
  
  scene.message "\\bYveltal\\b: Fight not to prevent death."
  scene.message "\\bYveltal\\b: Fight to preserve the cycle."
  
  scene.message "\\bKael\\b: I understand."
  
  # TODO: Event Sequence - Kael Power Up
  # scene.message "Kael's shard pulsed with dark energy."
  # scene.message "Not evil. Just... balanced."
end

GameData::Cutscene.define :ch33_guardians_together do |scene|
  scene.play_bgm 'Pokemon SWSH - Eternatus Phase 2'
  scene.camera_shake 10, 30
  
  # TODO: Event Sequence - Trio Assemble
  # scene.message "The three Guardians stood together."
  # scene.message "Zacian. Xerneas. Yveltal."
  # scene.message "Sword. Life. Death."
  
  scene.message "\\bNidhoggr\\b: PATHETIC GUARDIANS!"
  scene.message "\\bNidhoggr\\b: YOU COULDN'T STOP ME BEFORE!"
  scene.message "\\bNidhoggr\\b: YOU WON'T STOP ME NOW!"
  
  scene.message "\\bZacian\\b: We have something we lacked before."
  
  scene.message "\\bXerneas\\b: Champions who fight together."
  
  scene.message "\\bYveltal\\b: Not gods alone... but bonds of friendship."
  
  scene.message "\\bNidhoggr\\b: FRIENDSHIP?!"
  scene.message "\\bNidhoggr\\b: THAT WILL NOT SAVE YOU!"
end

GameData::Cutscene.define :ch33_guardians_manifest do |scene|
  scene.camera_flash 50
  scene.play_bgm 'Pokemon SWSH - Eternatus Phase 2'
  
  # TODO: Event Sequence - Full Power
  # scene.message "Your three shards blazed with light!"
  # scene.message "Brighter than the sun. Brighter than hope."
  
  scene.message "\\bZacian's Voice\\b: Rise, Champion of Valor!"
  scene.message "\\bXerneas's Voice\\b: Life shall not be extinguished!"
  scene.message "\\bYveltal's Voice\\b: The cycle will not be broken!"
  
  # TODO: Event Sequence - Guardians Support
  # scene.message "The three guardians manifested behind their Chosen."
  # scene.message "Power flowed through you like nothing you'd felt before."
  
  scene.message "\\bZacian\\b: We will lend you our strength."
  scene.message "\\bXerneas\\b: But the final battle... is yours."
  scene.message "\\bYveltal\\b: Together, you can stop this."
  
  scene.message "\\b\\PN\\b: Let's end this. Together!"
  
  # TODO: Event Sequence - Starters Glow
  # scene.message "Lyra and Kael at your sides."
  # scene.message "Your starters glowed with divine power."
  
  # scene.message "It was time."
end

GameData::Cutscene.define :ch33_starters_transform do |scene|
  scene.play_bgm 'Pokemon SWSH - Eternatus Phase 2'
  scene.camera_flash 30
  
  # TODO: Event Sequence - Awakening
  # scene.message "Your Pokémon began to change."
  # scene.message "Guardian energy flooding through them."
  
  # scene.message "Your starter blazed with steel-blue light."
  # scene.message "Willow shimmered with life energy."
  # scene.message "Shadow pulsed with controlled darkness."
  
  scene.message "\\bLyra\\b: They're... transforming?"
  
  scene.message "\\bZacian\\b: Not transforming. Awakening."
  scene.message "\\bZacian\\b: The bonds you share allow our power to flow through."
  
  scene.message "\\bXerneas\\b: Your love strengthens them."
  
  scene.message "\\bYveltal\\b: And their loyalty empowers you."
  
  scene.message "\\bKael\\b: Then we're ready."
end

GameData::Cutscene.define :ch33_united_speech do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Zacian/Zamazenta'
  
  scene.message "\\bLyra\\b: For Elena!"
  scene.message "\\bKael\\b: For Mira!"
  scene.message "\\b\\PN\\b: For everyone!"
  
  # TODO: Event Sequence - Roar
  # scene.message "Your Pokémon roared in unison."
  # scene.message "Starters glowing with guardian power."
  
  scene.message "\\bNidhoggr\\b: HOW TOUCHING..."
  scene.message "\\bNidhoggr\\b: YOUR BONDS WILL MAKE YOUR DESPAIR..."
  scene.message "\\bNidhoggr\\b: ALL THE MORE DELICIOUS!"
  
  scene.message "\\b\\PN\\b: We're not afraid of you!"
  scene.message "\\bLyra\\b: We've come too far to lose now!"
  scene.message "\\bKael\\b: And we have something you don't understand."
  scene.message "\\bKael\\b: Something worth fighting for."
  
  # TODO: Event Sequence - Guardians Ready
  # scene.message "The guardians raised their heads."
  # scene.message "Unity blazed between the three Chosen."
  # scene.message "The battle for existence began."
end

GameData::Cutscene.define :ch33_charge do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Zacian/Zamazenta'
  scene.camera_shake 15, 40
  
  scene.message "\\b\\PN\\b: CHARGE!"
  
  # TODO: Event Sequence - The Charge
  # scene.message "The three of you rushed forward."
  # scene.message "Guardians at your backs."
  # scene.message "Pokémon at your sides."
  
  # scene.message "Nidhoggr roared."
  # scene.message "The ground cracked beneath its fury."
  # scene.message "Reality itself seemed to warp."
  
  # scene.message "But you didn't falter."
  # scene.message "You didn't hesitate."
  
  # scene.message "The final battle had begun."
end

GameData::Cutscene.define :ch33_lyra_cannot_heal_this do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "Between battles, Lyra found blood on her sleeve."
  scene.message "Her light closed the wound beneath it in seconds."
  scene.message "For one terrible heartbeat, she hated how easy that was."

  scene.message "\\bLyra\\b: I can heal this. I could heal the tree."
  scene.message "\\bLyra\\b: Why couldn't I heal her?"

  scene.message "Xerneas lowered its head until their foreheads touched."
  scene.message "\\bXerneas\\b: Because Elena made a choice, not a wound."
  scene.message "\\bXerneas\\b: Love does not honor her by pretending she was yours to overrule."

  scene.message "Lyra removed Elena's ring from its chain and placed it on her finger."
  scene.message "She did not stop grieving. She stopped calling grief a failure."
end

#===============================================================================
# Chapter 34: Final Battle - Nidhoggr (Eternatus)
#===============================================================================

GameData::Cutscene.define :ch34_nidhoggr_emerges do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 30, 100
  
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 30, 100
  
  # TODO: Event Sequence - Nidhoggr Emerges
  # scene.message "Nidhoggr loomed before you in its true form."
  # scene.message "Eternatus—corrupted, twisted, ancient beyond comprehension."
  
  scene.message "\\bNidhoggr\\b: AT LAST... WORTHY OPPONENTS."
  scene.message "\\bNidhoggr\\b: THE GUARDIANS' CHAMPIONS."
  
  scene.message "\\b\\PN\\b: This ends now!"
  
  scene.message "\\bNidhoggr\\b: OH YES..."
  scene.message "\\bNidhoggr\\b: IT ENDS."
  scene.message "\\bNidhoggr\\b: BUT NOT AS YOU IMAGINE."
end

GameData::Cutscene.define :ch34_first_clash do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 20, 40
  
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 20, 40
  
  # TODO: Event Sequence - First Attacks
  # scene.message "Your first attacks struck the World-Eater."
  # scene.message "But they seemed like pinpricks against infinity."
  
  scene.message "\\bNidhoggr\\b: AMUSING."
  
  # TODO: Event Sequence - Dark Energy
  # scene.message "Dark energy swept toward you."
  # scene.message "Zacian's power deflected it barely."
  
  scene.message "\\bLyra\\b: It's so strong!"
  scene.message "\\bKael\\b: Of course it is. It's a world-eater."
  scene.message "\\bKael\\b: But we're world-savers."
  
  scene.message "\\b\\PN\\b: Together!"
end

GameData::Cutscene.define :ch34_nidhoggr_power do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 25, 50
  
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 25, 50
  
  # TODO: Event Sequence - Entropy Wave
  # scene.message "Nidhoggr unleashed a wave of pure entropy."
  # scene.message "Reality itself seemed to crack around it."
  
  scene.message "\\bNidhoggr\\b: I HAVE DEVOURED STARS!"
  scene.message "\\bNidhoggr\\b: I HAVE CONSUMED DIMENSIONS!"
  scene.message "\\bNidhoggr\\b: WHAT ARE THREE MORTALS TO ME?!"
  
  # TODO: Event Sequence - Ground Dissolves
  # scene.message "The ground beneath you began to dissolve."
  # scene.message "Xerneas's life energy barely held it together."
  
  scene.message "\\bXerneas's Voice\\b: The cycle fights back... but you must push harder!"
end

GameData::Cutscene.define :ch34_nidhoggr_battle do |scene|
  scene.play_bgm 'Pokemon SWSH - Eternatus Phase 2'
  
  scene.message "\\bNidhoggr\\b: COME THEN, MORTALS!"
  scene.message "\\bNidhoggr\\b: LET ME TASTE YOUR DESPAIR!"
  
  scene.play_bgm 'Pokemon SWSH - Eternatus Phase 2'
  
  scene.message "\\bNidhoggr\\b: COME THEN, MORTALS!"
  scene.message "\\bNidhoggr\\b: LET ME TASTE YOUR DESPAIR!"
  
  # TODO: Event Sequence - Full Glory
  # scene.message "Eternatus emerged in its full corrupted glory."
  # scene.message "Dark miasma poured from every surface."
  # scene.message "The very air felt like poison."
  
  scene.message "\\b\\PN\\b: Everyone—for the world!"
  
  scene.trainer_battle :POKEMON, "Nidhoggr", 0
end

GameData::Cutscene.define :ch34_first_form_defeated do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_flash 30
  
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_flash 30
  
  # TODO: Event Sequence - Stagger Back
  # scene.message "Nidhoggr staggered back!"
  
  scene.message "\\bNidhoggr\\b: IMPOSSIBLE...!"
  scene.message "\\bNidhoggr\\b: HOW CAN MORTAL POKÉMON...!"
  
  scene.message "\\bLyra\\b: We did it!"
  scene.message "\\bKael\\b: No... look..."
  
  # TODO: Event Sequence - Reformation
  # scene.message "Nidhoggr began to transform."
  # scene.message "Growing. Expanding. Becoming something worse."
  
  scene.message "\\bNidhoggr\\b: YOU THINK THAT WAS MY TRUE POWER?"
  scene.message "\\bNidhoggr\\b: FOOLISH MORTALS..."
end

GameData::Cutscene.define :ch34_eternamax do |scene|
  scene.camera_shake 40, 100
  scene.play_bgm 'Pokemon SWSH - Eternatus Phase 2'
  
  scene.camera_shake 40, 100
  scene.play_bgm 'Pokemon SWSH - Eternatus Phase 2'
  
  # TODO: Event Sequence - Eternamax Explosion
  # scene.message "Nidhoggr's form exploded outward!"
  # scene.message "Eternamax—the ultimate form of annihilation!"
  
  scene.message "\\bNidhoggr\\b: BEHOLD YOUR END!"
  scene.message "\\bNidhoggr\\b: THE GNAWING ONE IN FULL POWER!"
  
  # TODO: Event Sequence - Sky Cracks
  # scene.message "The sky itself seemed to crack."
  # scene.message "Stars winked out above you."
  
  scene.message "\\bLyra\\b: It's... it's too big..."
  scene.message "\\bKael\\b: We can't fight that...!"
  
  scene.message "\\b\\PN\\b: We have to try!"
end

GameData::Cutscene.define :ch34_desperate_moment do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Pokemon Fall
  # scene.message "Your Pokémon fell. One by one."
  # scene.message "Even with Guardian power, Nidhoggr was overwhelming."
  
  scene.message "\\bNidhoggr\\b: IS THIS ALL YOU HAVE?"
  scene.message "\\bNidhoggr\\b: PATHETIC MORTALS!"
  
  scene.message "\\bLyra\\b: *falling to knees* We can't... we can't beat it..."
  scene.message "\\bKael\\b: *gritting teeth* No... not like this..."
  
  scene.message "\\b\\PN\\b: *struggling* We can't give up!"
  scene.message "\\b\\PN\\b: The whole world is counting on us!"
  scene.message "\\b\\PN\\b: Elena... Professor Aldric... Mira..."
  scene.message "\\b\\PN\\b: They didn't die so we could lose!"
  
  # TODO: Event Sequence - Marks Glow
  # scene.message "Your marks began to glow."
  # scene.message "Brighter than ever before."
end

GameData::Cutscene.define :ch34_guardians_surge do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  scene.camera_flash 30
  
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  scene.camera_flash 30
  
  # TODO: Event Sequence - Guardians Appear
  # scene.message "The three Guardians appeared in full manifestation!"
  
  scene.message "\\bZacian\\b: DO NOT FALTER!"
  scene.message "\\bXerneas\\b: YOUR BONDS ARE YOUR STRENGTH!"
  scene.message "\\bYveltal\\b: THE CYCLE DEMANDS BALANCE!"
  
  # TODO: Event Sequence - Hope Power
  # scene.message "Power flooded through you."
  # scene.message "Not just yours—but everyone who believed in you."
  
  # scene.message "Your parents. Your friends. The whole region."
  # scene.message "Their hope became your strength."
end

GameData::Cutscene.define :ch34_crown_forms do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  scene.camera_flash 50
  
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  scene.camera_flash 50
  
  # TODO: Event Sequence - Shards Fly
  # scene.message "The three shards flew from your bodies!"
  # scene.message "They spiraled together in brilliant light!"
  
  scene.message "\\bZacian\\b: THE TIME HAS COME!"
  scene.message "\\bXerneas\\b: THE CROWN WILL BE RESTORED!"
  scene.message "\\bYveltal\\b: AND CHAOS WILL BE SEALED!"
  
  # TODO: Event Sequence - Crown Forms
  # scene.message "The Crown of Unity formed before you."
  # scene.message "Complete. Radiant. Powerful."
  # scene.message "The artifact that sealed Nidhoggr millennia ago."
  
  scene.message "\\b\\PN\\b: Everyone... together!"
  
  # TODO: Event Sequence - Reach for Crown
  # scene.message "You, Lyra, and Kael reached for the Crown."
  # scene.message "Your marks blazed with unified power."
  # scene.message "Guardian and Chosen. Mortal and divine."
  # scene.message "Together as one."
end

GameData::Cutscene.define :ch34_final_attack do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Zacian/Zamazenta'
  scene.camera_flash 40
  scene.camera_shake 30, 80
  
  scene.play_bgm 'Pokemon SWSH - Battle! Zacian/Zamazenta'
  scene.camera_flash 40
  scene.camera_shake 30, 80
  
  # TODO: Event Sequence - Crown Blaze
  # scene.message "The Crown blazed with the light of three Guardians!"
  
  scene.message "\\b\\PN\\b: FOR THE WORLD!"
  scene.message "\\bLyra\\b: FOR EVERYONE WE LOVE!"
  scene.message "\\bKael\\b: FOR THOSE WHO CAME BEFORE!"
  
  # TODO: Event Sequence - Beam Strike
  # scene.message "Golden, green, and crimson light merged."
  # scene.message "A beam of pure balance struck Nidhoggr."
  
  scene.message "\\bNidhoggr\\b: WHAT?! IMPOSSIBLE!"
  scene.message "\\bNidhoggr\\b: THE CROWN... YOU RESTORED IT?!"
  
  scene.message "\\bZacian\\b: What was broken is now whole!"
  scene.message "\\bXerneas\\b: What was corrupted is now cleansed!"
  scene.message "\\bYveltal\\b: What was unbound is now SEALED!"
end

GameData::Cutscene.define :ch34_nidhoggr_sealed do |scene|
  scene.camera_flash 60
  scene.play_bgm 'Pokemon SWSH - Ending Theme'
  
  scene.camera_flash 60
  scene.play_bgm 'Pokemon SWSH - Ending Theme'
  
  scene.message "\\bNidhoggr\\b: NOOOOOOOO!"
  scene.message "\\bNidhoggr\\b: I WILL NOT BE IMPRISONED AGAIN!"
  scene.message "\\bNidhoggr\\b: I WILL RETURN! I WILL ALWAYS RETURN!"
  
  # TODO: Event Sequence - Sealing
  # scene.message "The Crown's power bound the World-Eater."
  # scene.message "Chains of light wrapped around Nidhoggr."
  # scene.message "Dragging it into a new prison."
  
  scene.message "\\bNidhoggr\\b: THIS... IS NOT... OVER...!"
  
  # TODO: Event Sequence - Silence
  # scene.message "And then..."
  # scene.message "Silence."
  
  # scene.message "Nidhoggr was sealed."
  # scene.message "The Gnawing One was bound once more."
end

GameData::Cutscene.define :ch34_eternatus_freed do |scene|
  scene.play_bgm 'Pokemon SWSH - Ending Theme'
  
  scene.play_bgm 'Pokemon SWSH - Ending Theme'
  
  # TODO: Event Sequence - Eternatus Remains
  # scene.message "As Nidhoggr's corruption faded..."
  # scene.message "Eternatus remained."
  
  # scene.message "Not evil. Not corrupted."
  # scene.message "Just... ancient. Confused. Lost."
  
  scene.message "\\bZacian\\b: Eternatus was never the enemy."
  scene.message "\\bZacian\\b: It was Nidhoggr's vessel, nothing more."
  
  # TODO: Event Sequence - Bow
  # scene.message "The great Pokémon looked at you."
  # scene.message "And bowed its head."
  
  scene.message "\\b\\PN\\b: Go. Be free."
  
  # TODO: Event Sequence - Fly Away
  # scene.message "Eternatus rose into the sky."
  # scene.message "And disappeared among the stars."
  # scene.message "Finally free after millennia of possession."
end

GameData::Cutscene.define :ch34_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  scene.message "\\bLyra\\b: We... we did it?"
  scene.message "\\bLyra\\b: WE DID IT!"
  
  scene.message "\\bKael\\b: *smiling genuinely* Yeah. We did."
  
  scene.message "\\b\\PN\\b: *laughing in relief* We actually did it!"
  
  # TODO: Event Sequence - Group Hug
  # scene.message "The three of you embraced."
  # scene.message "Pokémon and humans together."
  # scene.message "Victorious. Alive. Together."
  
  scene.message "\\bZacian\\b: Well done, Chosen Ones."
  scene.message "\\bXerneas\\b: The world owes you everything."
  scene.message "\\bYveltal\\b: The cycle continues. Because of you."
end

GameData::Cutscene.define :ch34_asgaheim_crumbles do |scene|
  scene.play_bgm 'Pokemon RSE - Danger'
  scene.camera_shake 30, 80
  
  scene.play_bgm 'Pokemon RSE - Danger'
  scene.camera_shake 30, 80
  
  # TODO: Event Sequence - Collapse Starts
  # scene.message "But then..."
  # scene.message "Asgaheim began to collapse."
  
  # scene.message "Without Nidhoggr's power sustaining it..."
  # scene.message "The corrupted realm was falling apart."
  
  scene.message "\\bLyra\\b: Oh no... the whole dimension is collapsing!"
  scene.message "\\bKael\\b: We need to go! NOW!"
  
  # TODO: Event Sequence - Ground Cracks
  # scene.message "The ground cracked beneath your feet."
  # scene.message "Reality itself was unraveling."
  
  scene.message "\\b\\PN\\b: The portal! Run!"
  
  # TODO: Event Sequence - Sprint
  # scene.message "You sprinted for the Gateway."
  # scene.message "Debris fell around you."
  # scene.message "Every second counted."
end

#===============================================================================
# Chapter 35: Ending - Epilogue
#===============================================================================

GameData::Cutscene.define :ch35_escape do |scene|
  scene.play_bgm 'Pokemon RSE - Danger'
  scene.camera_shake 20, 60
  
  scene.play_bgm 'Pokemon RSE - Danger'
  scene.camera_shake 20, 60
  
  # TODO: Event Sequence - Walls Collapse
  # scene.message "Asgaheim crumbled around you."
  # scene.message "Walls of void collapsing inward."
  # scene.message "Reality unmaking itself."
  
  scene.message "\\bLyra\\b: The portal! There!"
  scene.message "\\bKael\\b: GO GO GO!"
  
  # TODO: Event Sequence - Running
  # scene.message "You sprinted with everything you had."
  # scene.message "Pokémon running alongside you."
  # scene.message "Debris crashed behind you."
  
  scene.message "\\b\\PN\\b: JUMP!"
  
  # TODO: Event Sequence - Jump
  # scene.message "The three of you dove through the portal."
  # scene.message "Just as the realm collapsed entirely."
end

GameData::Cutscene.define :ch35_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Grass
  # scene.message "You hit grass."
  # scene.message "Real grass. Warm sunlight."
  
  # scene.message "For a long moment, no one moved."
  # scene.message "Just breathing. Just alive."
  
  scene.message "\\bLyra\\b: *laughing weakly* We made it..."
  scene.message "\\bKael\\b: *flat on his back* I'm never moving again."
  
  scene.message "\\b\\PN\\b: *staring at the sky* We actually won."
  
  # TODO: Event Sequence - Portal Seals
  # scene.message "The portal sealed behind you."
  # scene.message "Asgaheim—and Nidhoggr's prison—was gone forever."
  # scene.message "The world was safe."
end

GameData::Cutscene.define :ch35_reunion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Parents Arrive
  # scene.message "You heard running footsteps."
  # scene.message "Shouting. Crying."
  
  scene.message "\\bMarcus\\b: \\PN!"
  scene.message "\\bAurora\\b: MY BABY!"
  
  # TODO: Event Sequence - Hug
  # scene.message "Your parents crashed into you."
  # scene.message "Mom was crying. Dad was trying not to."
  
  scene.message "\\bMarcus\\b: Don't you EVER scare us like that again!"
  scene.message "\\bAurora\\b: We thought... we thought..."
  
  scene.message "\\b\\PN\\b: I'm okay, Mom. I'm okay."
  
  # TODO: Event Sequence - Crowd Arrives
  # scene.message "More people arrived."
  # scene.message "Lyra's parents. Officials. Friends."
  # scene.message "Everyone who'd been waiting, hoping, praying."
end

GameData::Cutscene.define :ch35_ragnar_grave do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Leave Celebration
  # scene.message "Later, you slipped away from the celebrations."
  # scene.message "There was somewhere you needed to be."
  
  # scene.message "The hilltop overlooking your hometown."
  # scene.message "Where Ragnar's grave now stood."
  
  # scene.message "A simple stone marker."
  # scene.message "'Ragnar - The Bravest Rival'"
  
  scene.message "\\b\\PN\\b: Hey, idiot."
  scene.message "\\b\\PN\\b: We did it."
  
  # TODO: Event Sequence - Sit Down
  # scene.message "You sat beside the grave."
  # scene.message "Raichu curled up at the base of the stone."
  
  scene.message "\\b\\PN\\b: Saved the world. Beat Nidhoggr."
  scene.message "\\b\\PN\\b: You should've been there."
  
  # TODO: Event Sequence - Tears
  # scene.message "Tears rolled down your cheeks."
  
  scene.message "\\b\\PN\\b: I used Raichu in the final battle."
  scene.message "\\b\\PN\\b: He was amazing."
  scene.message "\\b\\PN\\b: Just like you."
end

GameData::Cutscene.define :ch35_ragnar_goodbye do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bRaichu\\b: *whimpering* Rai..."
  
  scene.message "\\b\\PN\\b: I know, buddy. I miss him too."
  
  # TODO: Event Sequence - Place Badge
  # scene.message "You placed something on the grave."
  # scene.message "Ragnar's eighth badge."
  # scene.message "The one he never got to earn."
  
  scene.message "\\b\\PN\\b: I got this for you."
  scene.message "\\b\\PN\\b: Champion of Asgheim."
  scene.message "\\b\\PN\\b: That's what you would've been."
  
  # TODO: Event Sequence - Wind
  # scene.message "The wind rustled the grass."
  # scene.message "Almost like a response."
  
  scene.message "\\b\\PN\\b: *laughing through tears* Yeah, yeah."
  scene.message "\\b\\PN\\b: I know you would've beaten me eventually."
  scene.message "\\b\\PN\\b: That's what you always said."
end

GameData::Cutscene.define :ch35_moving_forward do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Footsteps
  # scene.message "Footsteps approached."
  # scene.message "Lyra and Kael."
  
  scene.message "\\bLyra\\b: We figured you'd be here."
  
  scene.message "\\bKael\\b: *placing a flower on the grave* He was annoying."
  scene.message "\\bKael\\b: But he saved your life."
  scene.message "\\bKael\\b: That makes him a hero."
  
  scene.message "\\bLyra\\b: *kneeling* Thank you, Ragnar."
  scene.message "\\bLyra\\b: For protecting our friend."
  
  # TODO: Event Sequence - Silence
  # scene.message "The three of you stood in silence."
  # scene.message "Honoring the one who gave everything."
  
  scene.message "\\b\\PN\\b: ...Let's go."
  scene.message "\\b\\PN\\b: He wouldn't want us moping around."
  
  scene.message "\\bLyra\\b: *smiling sadly* You're right."
  scene.message "\\bLyra\\b: He'd tell us to stop being 'broody'."
  
  scene.message "\\bKael\\b: *small smile* He would."
  
  # TODO: Event Sequence - Last Look
  # scene.message "You took one last look at the grave."
  
  scene.message "\\b\\PN\\b: Goodbye, Ragnar."
  scene.message "\\b\\PN\\b: Best rival I ever had."
  
  # TODO: Event Sequence - Raichu Follows
  # scene.message "Raichu nuzzled the stone one last time."
  # scene.message "Then followed you down the hill."
  
  # scene.message "The sun was setting."
  # scene.message "But tomorrow would bring a new dawn."
end

GameData::Cutscene.define :ch35_kael_family do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Kael Isolated
  # scene.message "Kael stood apart."
  # scene.message "Watching the reunions with an unreadable expression."
  
  # scene.message "Lyra noticed. Of course she did."
  
  scene.message "\\bLyra\\b: *taking his hand* Hey."
  scene.message "\\bKael\\b: *softly* I'm fine."
  scene.message "\\bLyra\\b: No, you're not. And that's okay."
  
  scene.message "\\bLyra\\b: You're not alone anymore, Kael."
  scene.message "\\bLyra\\b: You have us."
  
  # TODO: Event Sequence - Parents approach Kael
  # scene.message "Lyra's parents approached."
  scene.message "\\bLyra's Mother\\b: You saved our daughter."
  scene.message "\\bLyra's Mother\\b: You're family now."
  
  # TODO: Event Sequence - Kael Reaction
  # scene.message "Kael's eyes widened."
  # scene.message "For once, he had no sharp response."
end

GameData::Cutscene.define :ch35_celebration do |scene|
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  # TODO: Event Sequence - Celebration Montage
  # scene.message "The celebration lasted for days."
  # scene.message "The whole region rejoiced."
  
  # scene.message "Heroes. That's what they called you."
  # scene.message "The Three Chosen Who Saved the World."
  
  scene.message "\\bLyra\\b: *embarrassed* This is so much..."
  scene.message "\\bKael\\b: I hate crowds."
  scene.message "\\b\\PN\\b: *grinning* Deal with it. We earned this."
  
  # TODO: Event Sequence - Starters Happy
  # scene.message "Your starters basked in the attention."
  # scene.message "Willow preened. Shadow tolerated it with dignity."
  # scene.message "Your starter tackled you in joy."
end

GameData::Cutscene.define :ch35_memorial do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Visit Memorials
  # scene.message "A week later, you visited the memorials."
  # scene.message "Professor Aldric. Elena. The fallen guards. Everyone."
  
  scene.message "\\bLyra\\b: *placing flowers on Elena's grave* Hey, sis..."
  scene.message "\\bLyra\\b: We did it. Like you knew we would."
  
  # scene.message "Tears fell. But peaceful ones."
  
  scene.message "\\bKael\\b: *at a small unmarked stone* Mira..."
  scene.message "\\bKael\\b: I hope you're proud of me."
  scene.message "\\bKael\\b: I kept my promise. I protected them."
  
  scene.message "\\b\\PN\\b: *at Aldric's memorial* Professor..."
  scene.message "\\b\\PN\\b: Your research saved everyone."
  scene.message "\\b\\PN\\b: We couldn't have done it without you."
  
  # TODO: Event Sequence - Stand Together
  # scene.message "The three of you stood together."
  # scene.message "Honoring those who couldn't be here."
end

GameData::Cutscene.define :ch35_lyra_kael_moment do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - On The Hill
  # scene.message "You found them on the hill. Their hill."
  # scene.message "Where they'd first kissed, what felt like ages ago."
  
  scene.message "\\bLyra\\b: *leaning on Kael* What happens now?"
  scene.message "\\bKael\\b: I don't know. I've never had a 'now' before."
  scene.message "\\bKael\\b: Just surviving. Just the next fight."
  
  scene.message "\\bLyra\\b: Well... now you have time."
  scene.message "\\bLyra\\b: Time for... us."
  
  scene.message "\\bKael\\b: *small smile* I suppose I do."
  
  scene.message "\\bKael\\b: *small smile* I suppose I do."
  
  # TODO: Event Sequence - Kiss
  # scene.message "They kissed. Soft and sweet."
  # scene.message "Not desperate. Not fearful."
  # scene.message "Just... love."
  
  # TODO: Event Sequence - Walk Away
  # scene.message "You smiled and quietly left them alone."
end

GameData::Cutscene.define :ch35_guardians_farewell do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  # TODO: Event Sequence - Dream Appearance
  # scene.message "That night, the guardians appeared one last time."
  # scene.message "In dreams. Together. All three of you."
  
  scene.message "\\bZacian\\b: You have proven yourselves."
  scene.message "\\bZacian\\b: True warriors of light."
  
  scene.message "\\bXerneas\\b: Your bonds are stronger than any magic."
  scene.message "\\bXerneas\\b: Cherish them always."
  
  scene.message "\\bYveltal\\b: Life and death. Joy and sorrow."
  scene.message "\\bYveltal\\b: Embrace them all. That is balance."
  
  scene.message "\\b\\PN\\b: Will we ever see you again?"
  
  scene.message "\\bZacian\\b: When the world needs you..."
  scene.message "\\bZacian\\b: We will be there."
  
  scene.message "\\bXerneas\\b: But for now... live."
  scene.message "\\bYveltal\\b: Love. Grow. Be human."
  
  # TODO: Event Sequence - Guardians Fade
  # scene.message "The guardians faded into golden light."
  # scene.message "But your marks pulsed warmly."
  # scene.message "The connection would never truly break."
end

GameData::Cutscene.define :ch35_shards_transform do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Shards Transform
  # scene.message "The three shards pulsed once more."
  # scene.message "And transformed."
  
  # scene.message "Yours became a small golden pendant."
  # scene.message "Lyra's became a rose-gold bracelet."
  # scene.message "Kael's became a crimson ring."
  
  scene.message "\\bZacian's Voice\\b: Tokens of our bond."
  scene.message "\\bXerneas's Voice\\b: Reminders of what you achieved."
  scene.message "\\bYveltal's Voice\\b: And promises of our return if needed."
  
  # TODO: Event Sequence - Hold Pendant
  # scene.message "You held your pendant."
  # scene.message "Still warm. Still connected."
  # scene.message "Still chosen."
end

GameData::Cutscene.define :ch35_future_plans do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Final Gathering
  # scene.message "You gathered one last time before going separate ways."
  # scene.message "The heroes who saved the world."
  
  scene.message "\\bLyra\\b: So... what now?"
  scene.message "\\bKael\\b: The world still needs protecting."
  scene.message "\\bKael\\b: There's always something."
  
  scene.message "\\b\\PN\\b: But first... we rest. We live."
  scene.message "\\b\\PN\\b: We've earned that."
  
  scene.message "\\bLyra\\b: *nodding* You're right."
  scene.message "\\bLyra\\b: We can be heroes AND happy."
  
  scene.message "\\bKael\\b: *snorting* Optimist."
  scene.message "\\bLyra\\b: *kissing his cheek* Always."
end

GameData::Cutscene.define :ch35_act4_end do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_in
  
  scene.message "\\ts[]ONE YEAR LATER..."
  
  # TODO: Event Sequence - One Year Later
  # scene.message "Peace had returned to Asgheim."
  # scene.message "But some stories... are not yet finished."
  
  scene.fade_out
end

#===============================================================================
# ACT 5: THE ETERNAL SEAL
# Chapters 36-55: The Final Journey
#===============================================================================

#===============================================================================
# Chapter 36: One Year Later - Peace and Shadows
#===============================================================================

GameData::Cutscene.define :ch36_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Lumiose City'
  scene.fade_in
  
  scene.message "\\ts[]ACT 5: THE ETERNAL SEAL"
  scene.message "\\ts[]Chapter 36: One Year Later"
  
  scene.message "A year had passed since Nidhoggr's sealing."
  scene.message "The world had healed. People had moved on."
  scene.message "But you hadn't forgotten."
end

GameData::Cutscene.define :ch36_peaceful_morning do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "Morning light streamed through your window."
  scene.message "Your starter dozed at the foot of your bed."
  scene.message "Raichu—Ragnar's Raichu—was curled nearby."
  
  scene.message "A year. It still felt surreal."
  
  scene.message "\\bAurora\\b: *from downstairs* Breakfast!"
  scene.message "\\bMarcus\\b: Your mother made pancakes!"
  
  scene.message "You smiled. Some things never changed."
end

GameData::Cutscene.define :ch36_breakfast do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "The kitchen smelled like home."
  scene.message "Mom was humming. Dad was reading the paper."
  
  scene.message "\\bAurora\\b: There's my hero!"
  scene.message "\\bMarcus\\b: *grinning* Champion of Asgheim AND the world."
  
  scene.message "\\b\\PN\\b: Dad, please..."
  scene.message "\\bMarcus\\b: What? I'm proud!"
  
  scene.message "Your pendant pulsed warmly against your chest."
  scene.message "Just a gentle reminder."
  scene.message "You were never truly alone."
end

GameData::Cutscene.define :ch36_letter_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "A Pelipper landed at the window."
  scene.message "It carried a letter with familiar handwriting."
  
  scene.message "\\bAurora\\b: From Lyra?"
  scene.message "\\b\\PN\\b: *smiling* Yeah."
  
  scene.message "You opened it eagerly."
  scene.message "'Hey! Sanctuary's doing great. Kael says hi (he grunted, close enough).'"
  scene.message "'Miss you! Visit soon? - Lyra'"
  
  scene.message "You touched your pendant."
  scene.message "Your mark pulsed in response."
end

GameData::Cutscene.define :ch36_pendant_warning do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_flash 10
  
  scene.message "Suddenly—"
  scene.message "Your pendant BURNED."
  
  scene.message "\\b\\PN\\b: AGH!"
  scene.message "\\bAurora\\b: \\PN?! What's wrong?!"
  
  scene.message "Pain lanced through your mark."
  scene.message "Golden light flickered erratically."
  
  scene.message "And then... a voice."
  scene.message "\\bZacian's Voice\\b: ...Chosen One..."
  scene.message "\\bZacian's Voice\\b: ...The seal... weakens..."
end

GameData::Cutscene.define :ch36_vision do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_shake 10, 30
  
  scene.message "Images flooded your mind."
  scene.message "Darkness. Void. Chains cracking."
  scene.message "Nidhoggr's prison... failing."
  
  scene.message "\\bNidhoggr's Voice\\b: DID YOU THINK IT WOULD LAST?"
  scene.message "\\bNidhoggr's Voice\\b: THE CROWN IS INCOMPLETE..."
  scene.message "\\bNidhoggr's Voice\\b: AND I AM ETERNAL..."
  
  scene.camera_flash 20
  
  scene.message "You gasped, returning to reality."
  scene.message "Your parents were shaking you."
  
  scene.message "\\bMarcus\\b: \\PN! Talk to us!"
  scene.message "\\b\\PN\\b: *shaking* I... I need to find Lyra and Kael."
  scene.message "\\b\\PN\\b: Something's wrong."
end

GameData::Cutscene.define :ch36_parents_worry do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\bAurora\\b: Not again... please, not again..."
  scene.message "\\bMarcus\\b: *grim* It's the mark, isn't it?"
  
  scene.message "\\b\\PN\\b: The seal on Nidhoggr... it's weakening."
  scene.message "\\b\\PN\\b: I saw it. Felt it."
  
  scene.message "Your parents exchanged looks."
  scene.message "Fear. Resignation. Pride."
  
  scene.message "\\bMarcus\\b: Then you know what you have to do."
  scene.message "\\bAurora\\b: *hugging you* Come back to us."
  scene.message "\\b\\PN\\b: I always do."
end

GameData::Cutscene.define :ch36_departure do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "You gathered your team."
  scene.message "Your starter. Raichu. The others."
  
  scene.message "\\b\\PN\\b: Ready, everyone?"
  
  scene.message "They nodded. Determined."
  scene.message "They'd been through this before."
  scene.message "They'd do it again."
  
  scene.message "You headed for the Sanctuary."
  scene.message "Where Lyra and Kael waited."
  scene.message "The journey wasn't over after all."
end

GameData::Cutscene.define :ch36_sanctuary_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "The Pokémon Sanctuary was beautiful."
  scene.message "Rolling hills. Happy Pokémon everywhere."
  scene.message "Lyra and Kael's dream, realized."
  
  scene.message "But as you approached..."
  scene.message "You saw them waiting at the gate."
  scene.message "Their faces told you everything."
  
  scene.message "\\bLyra\\b: You felt it too."
  scene.message "\\bKael\\b: The seal is failing."
end

GameData::Cutscene.define :ch36_reunion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\b\\PN\\b: When did it start?"
  scene.message "\\bLyra\\b: Last night. My bracelet started burning."
  scene.message "\\bKael\\b: My ring too. Yveltal spoke to me."
  
  scene.message "Willow and Shadow stood beside their trainers."
  scene.message "Evolved. Powerful. Ready."
  
  scene.message "\\bKael\\b: The Crown of Unity wasn't complete."
  scene.message "\\bKael\\b: We used fragments. Improvised."
  scene.message "\\bKael\\b: It was enough to seal Nidhoggr... temporarily."
  
  scene.message "\\bLyra\\b: We need to find a permanent solution."
end

GameData::Cutscene.define :ch36_plan do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\b\\PN\\b: The Guardians... can they help?"
  scene.message "\\bKael\\b: I tried calling Yveltal. The connection is... weak."
  scene.message "\\bLyra\\b: Same with Xerneas. Something's blocking them."
  
  scene.message "\\b\\PN\\b: Then we find answers ourselves."
  scene.message "\\b\\PN\\b: Professor Aldric's research. The ancient texts."
  scene.message "\\b\\PN\\b: There has to be something."
  
  scene.message "\\bLyra\\b: The library in Thornwood?"
  scene.message "\\bKael\\b: Already checked. Nothing useful."
  
  scene.message "\\b\\PN\\b: Then we go deeper."
  scene.message "\\b\\PN\\b: The Summit Temple. Where this all started."
end

GameData::Cutscene.define :ch36_preparing do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "You spent the night at the Sanctuary."
  scene.message "Preparing. Planning. Remembering."
  
  scene.message "\\bLyra\\b: *watching the Pokémon* They're so happy here."
  scene.message "\\bKael\\b: They won't be if Nidhoggr returns."
  
  scene.message "\\bLyra\\b: *leaning on him* We won't let that happen."
  scene.message "\\bKael\\b: *softly* No. We won't."
  
  scene.message "\\b\\PN\\b: Tomorrow, we head out."
  scene.message "\\b\\PN\\b: Whatever it takes."
  
  scene.message "Three pendants pulsed in unison."
  scene.message "The Chosen Ones were together again."
end

GameData::Cutscene.define :ch36_night_vision do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.fade_in
  
  scene.message "That night, you dreamed."
  scene.message "All three of you. Together."
  
  scene.message "The Guardians appeared—but faint. Flickering."
  
  scene.message "\\bZacian\\b: The seal... was never meant to be temporary..."
  scene.message "\\bXerneas\\b: The Original Crown... shattered long ago..."
  scene.message "\\bYveltal\\b: Its pieces... scattered across realms..."
  
  scene.message "\\b\\PN\\b: How do we fix it?"
  
  scene.message "\\bZacian\\b: Seek... the Astral Temples..."
  scene.message "\\bZacian\\b: In Astoria... the forgotten region..."
  
  scene.message "The vision faded."
  scene.message "But you had a destination now."
end

GameData::Cutscene.define :ch36_morning_resolve do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "You woke to find Lyra and Kael already up."
  scene.message "They'd had the same dream."
  
  scene.message "\\bKael\\b: Astoria. I've heard legends."
  scene.message "\\bLyra\\b: A region lost to time. Beyond the eastern sea."
  
  scene.message "\\b\\PN\\b: Then that's where we're going."
  
  scene.message "\\bLyra\\b: *smiling despite everything* Adventure awaits?"
  scene.message "\\bKael\\b: *dry* More like certain doom."
  scene.message "\\b\\PN\\b: Same thing with us."
  
  scene.message "Together, you set out."
  scene.message "The final journey had begun."
end

GameData::Cutscene.define :ch36_sanctuary_cost do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "Before leaving, Lyra led you past the Sanctuary's recovery ward."
  scene.message "Pokémon injured by the first fractures filled every enclosure."
  scene.message "A Houndoom whimpered whenever its shadow moved. A flock of Starly refused to look at the sky."

  scene.message "\\bLyra\\b: Last time, danger had a fortress. An army. A face."
  scene.message "\\bLyra\\b: This time it can open beneath someone's bed."
  scene.message "\\bKael\\b: Which is why the Sanctuary needs an evacuation plan before we leave."

  # TODO: Playable Sanctuary preparation
  # - Assign healthy Pokémon to transport, warning, and medical groups.
  # - Speak with three frightened keepers and choose a fallback shelter.
  # - The chosen shelter changes refugee NPC placement in Chapter 48.

  scene.message "For two hours, the heroes who had saved the world moved crates, marked routes, and calmed frightened Pokémon."
  scene.message "Only when everyone else had a way out did you take the road east."
end

#===============================================================================
# Chapter 37: The Fracture - Cracks in Reality
#===============================================================================

GameData::Cutscene.define :ch37_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Route Theme'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 37: The Fracture"
  
  scene.message "The journey east took you through familiar lands."
  scene.message "But something was... wrong."
  scene.message "The world felt different. Unstable."
end

GameData::Cutscene.define :ch37_first_fracture do |scene|
  scene.play_bgm 'Pokemon RSE - Cave'
  scene.camera_shake 15, 40
  
  scene.message "You were crossing the mountain pass when it happened."
  scene.message "Reality... cracked."
  
  scene.message "\\bLyra\\b: What IS that?!"
  
  scene.message "A tear in the air itself."
  scene.message "Purple and black. Writhing with void energy."
  scene.message "Like a wound in existence."
  
  scene.message "\\bKael\\b: *grim* The seal is failing faster than we thought."
  scene.message "\\bKael\\b: Nidhoggr's corruption is leaking through."
end

GameData::Cutscene.define :ch37_void_creature do |scene|
  scene.play_bgm 'Pokemon RSE - Danger'
  scene.camera_shake 10, 30
  
  scene.message "Something emerged from the fracture."
  scene.message "A twisted creature of shadow and malice."
  scene.message "Not quite Pokémon. Not quite anything."
  
  scene.message "\\b\\PN\\b: Defend yourselves!"
  
  scene.message "The creature lunged!"
end

GameData::Cutscene.define :ch37_void_battle do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Legendary'
  
  scene.trainer_battle :VOIDCREATURE, "Void Creature", 1
  
  scene.message "The creature dissolved into nothingness."
  scene.message "But more fractures were appearing in the distance."
  
  scene.message "\\bLyra\\b: They're everywhere..."
  scene.message "\\bKael\\b: The whole region is destabilizing."
end

GameData::Cutscene.define :ch37_refugees do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "You encountered travelers fleeing west."
  scene.message "Families. Trainers. Pokémon. Terrified."
  
  scene.message "\\bRefugee\\b: The eastern towns are gone!"
  scene.message "\\bRefugee\\b: Swallowed by those... those tears!"
  
  scene.message "\\bLyra\\b: *to you* We can't save everyone..."
  scene.message "\\b\\PN\\b: We can save everyone if we stop this at the source."
  
  scene.message "\\bKael\\b: Then we keep moving. Faster."
end

GameData::Cutscene.define :ch37_port_town do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "You reached Port Horizon—the eastern harbor."
  scene.message "Or what was left of it."
  
  scene.message "Half the town had been consumed by fractures."
  scene.message "Ships sat abandoned. People huddled in fear."
  
  scene.message "\\bLyra\\b: We need a ship to Astoria."
  scene.message "\\bKael\\b: Good luck finding a captain crazy enough."
end

GameData::Cutscene.define :ch37_captain_appears do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bVoice\\b: I'll take you."
  
  scene.message "An old sailor stepped forward."
  scene.message "Weathered. Scarred. Eyes full of fire."
  
  scene.message "\\bCaptain Maren\\b: Name's Maren. I've sailed to Astoria before."
  scene.message "\\bCaptain Maren\\b: Fifty years ago. Only one who came back."
  
  scene.message "\\bKael\\b: Why would you go again?"
  
  scene.message "\\bCaptain Maren\\b: *looking at the fractures* Because if you don't stop this..."
  scene.message "\\bCaptain Maren\\b: There won't be a world left to sail."
end

GameData::Cutscene.define :ch37_boarding do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'
  
  scene.message "Captain Maren's ship was old but sturdy."
  scene.message "The Stormbreaker. Built for impossible journeys."
  
  scene.message "\\bCaptain Maren\\b: Astoria lies three days east."
  scene.message "\\bCaptain Maren\\b: If the sea doesn't kill us first."
  
  scene.message "\\bLyra\\b: Cheerful."
  scene.message "\\bCaptain Maren\\b: Realistic."
  
  scene.message "You set sail as the sun set behind you."
  scene.message "Leaving Asgheim. Perhaps for the last time."
end

GameData::Cutscene.define :ch37_at_sea do |scene|
  scene.play_bgm 'Pokemon ORAS - Sailing'
  
  scene.message "The open ocean was vast and terrifying."
  scene.message "And beautiful. In its own way."
  
  scene.message "\\bLyra\\b: *at the bow* I've never been this far from home."
  scene.message "\\bKael\\b: *beside her* Neither have I."
  
  scene.message "\\b\\PN\\b: *joining them* Scared?"
  
  scene.message "\\bLyra\\b: Terrified."
  scene.message "\\bKael\\b: ...Yes."
  scene.message "\\b\\PN\\b: Good. Me too."
  
  scene.message "Your starters gathered around you."
  scene.message "Together. Always together."
end

GameData::Cutscene.define :ch37_storm do |scene|
  scene.play_bgm 'Pokemon RSE - Danger'
  scene.camera_shake 20, 60
  
  scene.message "The storm hit on the second night."
  scene.message "Waves as tall as mountains."
  scene.message "Lightning splitting the sky."
  
  scene.message "\\bCaptain Maren\\b: HOLD ON!"
  
  scene.message "The Stormbreaker groaned and creaked."
  scene.message "But she held. Barely."
  
  scene.message "And through the chaos..."
  scene.message "You saw something in the waves."
end

GameData::Cutscene.define :ch37_sea_guardian do |scene|
  scene.play_bgm 'Pokemon ORAS - Sailing'
  scene.camera_flash 30
  
  scene.message "A massive shape beneath the water."
  scene.message "Ancient. Powerful. Watching."
  
  scene.message "\\bLyra\\b: Is that...?"
  scene.message "\\bKael\\b: Kyogre. Or something like it."
  
  scene.message "The creature's eye met yours."
  scene.message "And then... it dove deeper."
  scene.message "The storm began to calm."
  
  scene.message "\\bCaptain Maren\\b: *awed* It let us pass..."
  scene.message "\\bCaptain Maren\\b: The sea guardians know who you are."
end

GameData::Cutscene.define :ch37_astoria_sighted do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "On the third day, you saw it."
  scene.message "Astoria. The Forgotten Region."
  
  scene.message "Mountains wreathed in mist."
  scene.message "Forests older than civilization."
  scene.message "Ruins dotting the coastline."
  
  scene.message "\\bCaptain Maren\\b: There she is. Haven't changed a bit."
  scene.message "\\bLyra\\b: It's... incredible."
  scene.message "\\bKael\\b: It's dangerous. Stay alert."
  
  scene.message "The Stormbreaker approached the ancient shore."
  scene.message "Your destiny awaited."
end

GameData::Cutscene.define :ch37_landing do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'
  
  scene.message "You disembarked on a crumbling stone dock."
  scene.message "Clearly ancient. Clearly unused for centuries."
  
  scene.message "\\bCaptain Maren\\b: I'll wait here. One week."
  scene.message "\\bCaptain Maren\\b: After that... I assume you're not coming back."
  
  scene.message "\\b\\PN\\b: We'll be back."
  scene.message "\\bCaptain Maren\\b: *small smile* I believe you."
  
  scene.message "The three of you stepped into Astoria."
  scene.message "The forgotten region swallowed you whole."
end

GameData::Cutscene.define :ch37_harbor_rescue do |scene|
  scene.play_bgm 'Pokemon RSE - Danger'
  scene.camera_shake 12, 35

  scene.message "A fracture split the harbor road before the Stormbreaker could depart."
  scene.message "On one side, refugees were trapped beneath a fallen crane. On the other, the ship's mooring began to tear loose."

  # TODO: Timed rescue encounter
  # - Player directs one companion to stabilize the ship and takes the other to the crane.
  # - Use Strength/Surf/Flying field actions and two short Void Creature encounters.
  # - Failure is non-lethal but costs supplies and damages the Stormbreaker for Chapter 48.

  scene.message "\\bCaptain Maren\\b: Choose! We cannot hold both!"
  scene.message "\\b\\PN\\b: We don't have to. Kael—the lines! Lyra—with me!"
  scene.message "Your Pokémon became a chain of hands, paws, vines, and wings."
  scene.message "The last child reached safety an instant before the road vanished."

  scene.message "\\bKael\\b: That was reckless."
  scene.message "\\bLyra\\b: It was also a plan."
  scene.message "\\bKael\\b: ...A reckless plan."
end

GameData::Cutscene.define :ch37_marens_debt do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "That night, Maren unfolded an Astorian chart covered in names."
  scene.message "Only one name was not crossed out: Vera."

  scene.message "\\bCaptain Maren\\b: I wasn't the only one who sailed west fifty years ago. I was the only one allowed to leave."
  scene.message "\\bCaptain Maren\\b: Astoria's Keepers feared outsiders would learn where the Crown slept. My crew chose to remain and guard the secret."
  scene.message "\\bCaptain Maren\\b: I called them cowards for staying. Then I spent fifty years being the one who left."

  scene.message "\\b\\PN\\b: You're not taking us back for the world alone."
  scene.message "\\bCaptain Maren\\b: No. I'm going back to learn whether anyone remembers my name."
end

#===============================================================================
# Chapter 38: Astoria - The Forgotten Region
#===============================================================================

GameData::Cutscene.define :ch38_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 38: Astoria"
  
  scene.message "The air itself felt different here."
  scene.message "Heavier. Older. Charged with forgotten power."
  scene.message "This was a land where legends walked."
end

GameData::Cutscene.define :ch38_ancient_forest do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  
  scene.message "The forest was unlike anything you'd seen."
  scene.message "Trees twisted into impossible shapes."
  scene.message "Pokémon watching from the shadows—species unknown."
  
  scene.message "\\bLyra\\b: These Pokémon... I don't recognize any of them."
  scene.message "\\bKael\\b: They evolved differently here. Isolated for millennia."
  
  scene.message "\\b\\PN\\b: Stay close. We don't know what's hostile."
end

GameData::Cutscene.define :ch38_wild_battle do |scene|
  scene.play_bgm 'Pokemon SWSH - Wild Battle'
  
  scene.message "A strange Pokémon lunged from the underbrush!"
  scene.message "Feral. Territorial. Powerful."
  
  scene.trainer_battle :ASTORIAN_WILD, "Astorian Guardian", 1
  
  scene.message "The creature fled deeper into the forest."
  scene.message "\\bKael\\b: These aren't corrupted. Just... wild."
  scene.message "\\bLyra\\b: Astoria has its own rules."
end

GameData::Cutscene.define :ch38_ruins_spotted do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  
  scene.message "Through the trees, you spotted structures."
  scene.message "Ancient temples. Crumbling towers."
  scene.message "A civilization lost to time."
  
  scene.message "\\b\\PN\\b: The Astral Temples?"
  scene.message "\\bKael\\b: One of them, maybe. The Guardians mentioned multiple."
  
  scene.message "\\bLyra\\b: *pointing* Look—there's light inside."
  scene.message "\\bLyra\\b: Someone's there."
end

GameData::Cutscene.define :ch38_temple_approach do |scene|
  scene.play_bgm 'Pokemon RSE - Cave'
  
  scene.message "You approached cautiously."
  scene.message "The temple was massive. Carved from living stone."
  scene.message "Symbols you didn't recognize covered every surface."
  
  scene.message "And at the entrance..."
  scene.message "An old woman sat, watching you."
  
  scene.message "\\bElder\\b: The Chosen Ones. At last."
  scene.message "\\bElder\\b: We have waited centuries for you."
end

GameData::Cutscene.define :ch38_elder_speaks do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\b\\PN\\b: You know who we are?"
  
  scene.message "\\bElder Vera\\b: I am Vera. Last of the Temple Keepers."
  scene.message "\\bElder Vera\\b: We have guarded the Crown fragments since the First Sealing."
  
  scene.message "\\bKael\\b: The First Sealing?"
  
  scene.message "\\bElder Vera\\b: Millennia ago, the Original Chosen sealed Nidhoggr."
  scene.message "\\bElder Vera\\b: They used the Crown of Unity—whole and complete."
  scene.message "\\bElder Vera\\b: But when Nidhoggr broke free centuries later..."
  scene.message "\\bElder Vera\\b: The Crown was shattered. Its pieces hidden across realms."
end

GameData::Cutscene.define :ch38_crown_explanation do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: We used fragments to seal Nidhoggr last year."
  scene.message "\\bElder Vera\\b: Yes. A temporary measure."
  scene.message "\\bElder Vera\\b: The Crown must be made whole again."
  scene.message "\\bElder Vera\\b: Only then can Nidhoggr be sealed... permanently."
  
  scene.message "\\b\\PN\\b: Where are the fragments?"
  
  scene.message "\\bElder Vera\\b: Three Astral Temples. Three guardians."
  scene.message "\\bElder Vera\\b: Each holds a piece of the Crown."
  scene.message "\\bElder Vera\\b: Retrieve them all. Restore the Crown."
  scene.message "\\bElder Vera\\b: And end this... forever."
end

GameData::Cutscene.define :ch38_temple_locations do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  
  scene.message "Elder Vera showed you an ancient map."
  scene.message "Three temples marked across Astoria."
  
  scene.message "\\bElder Vera\\b: The Temple of Stars. North, in the Crystal Mountains."
  scene.message "\\bElder Vera\\b: The Temple of Tides. East, beneath the Abyssal Falls."
  scene.message "\\bElder Vera\\b: The Temple of Shadows. West, in the Twilight Caverns."
  
  scene.message "\\bKael\\b: Three temples. Three of us."
  scene.message "\\bLyra\\b: Should we split up?"
  scene.message "\\b\\PN\\b: No. We stay together. Always."
end

GameData::Cutscene.define :ch38_warning do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bElder Vera\\b: Be warned, Chosen Ones."
  scene.message "\\bElder Vera\\b: The temples are guarded by ancient Pokémon."
  scene.message "\\bElder Vera\\b: They will test you. Challenge you."
  scene.message "\\bElder Vera\\b: Only the worthy may claim the fragments."
  
  scene.message "\\b\\PN\\b: We've faced worse."
  
  scene.message "\\bElder Vera\\b: *smiling sadly* Have you?"
  scene.message "\\bElder Vera\\b: The temples do not test strength alone."
  scene.message "\\bElder Vera\\b: They test the soul."
end

GameData::Cutscene.define :ch38_rest do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "Elder Vera offered you shelter for the night."
  scene.message "Food. Rest. A moment of peace."
  
  scene.message "\\bLyra\\b: *eating* This is actually good."
  scene.message "\\bKael\\b: Don't sound so surprised."
  
  scene.message "\\bElder Vera\\b: *chuckling* Youth. So impatient."
  scene.message "\\bElder Vera\\b: Savor this peace. It may be the last you find."
  
  scene.message "The fire crackled."
  scene.message "Your Pokémon slept soundly."
  scene.message "Tomorrow, the trials would begin."
end

GameData::Cutscene.define :ch38_dream do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.fade_in
  
  scene.message "You dreamed of the Guardians again."
  scene.message "Stronger now. Clearer."
  
  scene.message "\\bZacian\\b: You approach the temples..."
  scene.message "\\bXerneas\\b: Trust in your bonds..."
  scene.message "\\bYveltal\\b: Face your shadows..."
  
  scene.message "\\b\\PN\\b: We won't fail."
  
  scene.message "\\bZacian\\b: We know. That is why you were chosen."
  
  scene.message "The dream faded."
  scene.message "But their warmth remained."
end

GameData::Cutscene.define :ch38_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'
  
  scene.message "Morning came too quickly."
  scene.message "You gathered your supplies."
  
  scene.message "\\bElder Vera\\b: The Temple of Stars is closest. Begin there."
  scene.message "\\bElder Vera\\b: May the ancient ones guide you."
  
  scene.message "\\b\\PN\\b: Thank you, Elder Vera."
  scene.message "\\bLyra\\b: We won't let you down."
  scene.message "\\bKael\\b: *nodding* We'll return with all three fragments."
  
  scene.message "The three of you set off."
  scene.message "Toward the Crystal Mountains."
  scene.message "Toward the first trial."
end

GameData::Cutscene.define :ch38_keeper_village do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'

  scene.message "Beyond Vera's temple stood a village hidden beneath woven branches."
  scene.message "Astoria was not empty. Families, craftspeople, and temple wardens watched you pass in silence."
  scene.message "Several homes leaned at impossible angles where reality had begun to slip."

  scene.message "\\bYoung Keeper Nia\\b: You're the heroes who made the new seal?"
  scene.message "\\bLyra\\b: We are."
  scene.message "\\bNia\\b: Then you're why the walls started bleeding light."

  scene.message "No one cheered. For Astoria, your victory had arrived as an earthquake."

  # TODO: Astoria village exploration hub
  # - Repair three spatial faults with companion Pokémon.
  # - Collect oral histories that disagree with Vera's official account.
  # - Shops trade through favors rather than money because Astoria is isolated.
end

GameData::Cutscene.define :ch38_veras_omission do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "You confronted Vera beside a mural whose central figure had been deliberately scratched away."

  scene.message "\\b\\PN\\b: You said the Crown was shattered when Nidhoggr escaped. Not what happened to Astoria afterward."
  scene.message "\\bElder Vera\\b: We sealed our shores. We erased roads, names, even families from foreign records."
  scene.message "\\bKael\\b: To protect the fragments."
  scene.message "\\bElder Vera\\b: And condemned generations to guard a crime they did not commit. Both are true."

  scene.message "\\bLyra\\b: When this is over, the people decide whether Astoria stays hidden. Not the Keepers."
  scene.message "\\bElder Vera\\b: Then perhaps your trial has already begun."
end

#===============================================================================
# Chapter 39: Temple of Stars - First Fragment
#===============================================================================

GameData::Cutscene.define :ch39_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 39: Temple of Stars"
  
  scene.message "The Crystal Mountains lived up to their name."
  scene.message "Every surface glittered with ancient minerals."
  scene.message "Beautiful. Deadly. Unforgiving."
end

GameData::Cutscene.define :ch39_climbing do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'
  
  scene.message "The ascent was brutal."
  scene.message "Thin air. Freezing winds. Treacherous paths."
  
  scene.message "\\bLyra\\b: *panting* How much... further?"
  scene.message "\\bKael\\b: The map says... another hour."
  scene.message "\\b\\PN\\b: We can do this. Together."
  
  scene.message "Your Pokémon helped clear the path."
  scene.message "One step at a time."
end

GameData::Cutscene.define :ch39_temple_found do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  scene.camera_flash 20
  
  scene.message "And then—you saw it."
  scene.message "The Temple of Stars."
  
  scene.message "Built into the mountain peak itself."
  scene.message "Towers reaching toward the heavens."
  scene.message "Stars etched into every stone."
  
  scene.message "\\bLyra\\b: *awed* It's beautiful..."
  scene.message "\\bKael\\b: It's a fortress. Stay sharp."
end

GameData::Cutscene.define :ch39_entrance do |scene|
  scene.play_bgm 'Pokemon RSE - Cave'
  
  scene.message "The temple doors were massive."
  scene.message "Sealed with ancient locks."
  
  scene.message "\\b\\PN\\b: How do we get in?"
  
  scene.message "Your pendant pulsed."
  scene.message "The doors began to glow."
  scene.message "And slowly... they opened."
  
  scene.message "\\bKael\\b: The Chosen's mark. It's a key."
  scene.message "\\bLyra\\b: Convenient."
end

GameData::Cutscene.define :ch39_interior do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  
  scene.message "Inside, the temple was vast."
  scene.message "Chambers filled with starlight despite being underground."
  scene.message "Constellations painted on every ceiling."
  
  scene.message "\\bLyra\\b: The stars... they're moving."
  scene.message "\\bKael\\b: Not stars. Energy. Pure cosmic power."
  
  scene.message "\\b\\PN\\b: The fragment must be at the center."
  scene.message "\\b\\PN\\b: Let's go."
end

GameData::Cutscene.define :ch39_guardian_appears do |scene|
  scene.play_bgm 'Pokemon SWSH - Legendary Theme'
  scene.camera_shake 20, 50
  
  scene.message "You reached the inner sanctum."
  scene.message "And there, waiting..."
  
  scene.message "A massive Pokémon of light and cosmic energy."
  scene.message "Like nothing you'd ever seen."
  
  scene.message "\\bCelestis\\b: I AM CELESTIS. GUARDIAN OF STARS."
  scene.message "\\bCelestis\\b: WHO DARES SEEK THE FIRST FRAGMENT?"
  
  scene.message "\\b\\PN\\b: The Chosen Ones. We need the Crown to save the world."
end

GameData::Cutscene.define :ch39_trial_begins do |scene|
  scene.play_bgm 'Pokemon SWSH - Legendary Theme'
  
  scene.message "\\bCelestis\\b: MANY HAVE CLAIMED SUCH PURPOSE."
  scene.message "\\bCelestis\\b: FEW HAVE PROVEN WORTHY."
  
  scene.message "\\bCelestis\\b: THE TRIAL OF STARS TESTS YOUR VISION."
  scene.message "\\bCelestis\\b: CAN YOU SEE BEYOND YOURSELF?"
  scene.message "\\bCelestis\\b: CAN YOU FIND HOPE IN DARKNESS?"
  
  scene.message "The chamber filled with blinding light!"
  scene.camera_flash 40
end

GameData::Cutscene.define :ch39_trial_vision do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.fade_in
  
  scene.message "You found yourself alone."
  scene.message "In infinite darkness."
  scene.message "No Lyra. No Kael. No Pokémon."
  
  scene.message "\\b\\PN\\b: Hello?! Anyone?!"
  
  scene.message "Only silence answered."
  
  scene.message "Visions appeared. Your failures."
  scene.message "Professor Aldric's death. Elena's sacrifice. Ragnar."
  scene.message "Everyone you couldn't save."
end

GameData::Cutscene.define :ch39_overcoming do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "The darkness pressed in."
  scene.message "Whispering that you weren't enough."
  scene.message "That you'd fail again."
  
  scene.message "But then... a glow."
  scene.message "Your pendant. Still warm."
  scene.message "The bonds you'd forged."
  
  scene.message "\\b\\PN\\b: I'm not alone."
  scene.message "\\b\\PN\\b: I never was."
  
  scene.message "Light erupted from within you."
  scene.message "The darkness shattered."
end

GameData::Cutscene.define :ch39_trial_complete do |scene|
  scene.camera_flash 30
  scene.play_bgm 'Pokemon SWSH - Victory Theme'
  
  scene.message "You stood before Celestis once more."
  scene.message "Lyra and Kael beside you—they'd faced their own trials."
  
  scene.message "\\bCelestis\\b: YOU HAVE SEEN BEYOND YOURSELF."
  scene.message "\\bCelestis\\b: YOU CARRY LIGHT EVEN IN DARKNESS."
  scene.message "\\bCelestis\\b: THE FIRST FRAGMENT IS YOURS."
  
  scene.message "A piece of the Crown materialized."
  scene.message "Golden. Radiant. Warm."
  
  scene.message "\\b\\PN\\b: Thank you, Celestis."
  scene.message "\\bCelestis\\b: SAVE THIS WORLD, CHOSEN ONES."
end

GameData::Cutscene.define :ch39_leaving do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "You emerged from the temple."
  scene.message "One fragment in hand. Two to go."
  
  scene.message "\\bLyra\\b: That was... intense."
  scene.message "\\bKael\\b: What did you see?"
  
  scene.message "\\b\\PN\\b: Everything I've lost."
  scene.message "\\b\\PN\\b: And why it was worth fighting for."
  
  scene.message "\\bLyra\\b: *taking your hand* We're here."
  scene.message "\\bKael\\b: *nodding* Always."
  
  scene.message "Next stop: Temple of Tides."
end

GameData::Cutscene.define :ch39_constellation_engine do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'

  scene.message "The path out sealed behind you. Above, the moving constellations stopped in the wrong sky."
  scene.message "Three star-discs controlled the chamber: boundary, life, and ending. Turning one displaced the other two."

  # TODO: Temple of Stars puzzle chain
  # - Rotate three linked constellation discs to recreate the First Sealing.
  # - Each companion holds one platform while the player crosses changing gravity paths.
  # - Wrong alignments summon cosmic Pokémon instead of resetting the room.
  # - Optional side chamber reveals a fourth empty constellation foreshadowing Giratina.

  scene.message "\\bKael\\b: It cannot stabilize with only three points."
  scene.message "\\bLyra\\b: Then why was the old Crown built for three Guardians?"
  scene.message "A fourth socket blinked once in the dark ceiling—and vanished."
end

GameData::Cutscene.define :ch39_light_shared do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "At the mountain pass, you found the Astorian guardian you had battled earlier pinned beneath crystal."
  scene.message "The first fragment could melt the crystal, but its light was already weakening in the cold."

  scene.message "\\bKael\\b: Using it before the restoration may make the next temple harder."
  scene.message "\\b\\PN\\b: Then the next temple is harder."
  scene.message "The fragment flared. The creature pulled free, touched its brow to yours, and opened a hidden descent toward the falls."

  # TODO: If the player helps, Temple of Tides begins with reduced fragment charge
  # but the rescued guardian unlocks a safer route and returns during the finale.
end

#===============================================================================
# Chapter 40: Temple of Tides - Second Fragment
#===============================================================================

GameData::Cutscene.define :ch40_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon ORAS - Sailing'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 40: Temple of Tides"
  
  scene.message "The Abyssal Falls were magnificent."
  scene.message "Water cascading from impossible heights."
  scene.message "Into a depths that seemed endless."
end

GameData::Cutscene.define :ch40_approach do |scene|
  scene.play_bgm 'Pokemon ORAS - Sailing'
  
  scene.message "\\bLyra\\b: The temple is... underwater?"
  scene.message "\\bKael\\b: Beneath the falls, according to Elder Vera."
  
  scene.message "\\b\\PN\\b: How do we get down there?"
  
  scene.message "Your pendant pulsed."
  scene.message "The water before you began to part."
  scene.message "A path opening into the depths."
  
  scene.message "\\bKael\\b: ...That works."
end

GameData::Cutscene.define :ch40_descent do |scene|
  scene.play_bgm 'Pokemon RSE - Cave'
  
  scene.message "You descended through the parted waters."
  scene.message "Fish Pokémon watched curiously from the walls."
  scene.message "Bioluminescent plants lit the way."
  
  scene.message "\\bLyra\\b: It's like walking through a dream."
  scene.message "\\bKael\\b: Don't let your guard down."
  
  scene.message "The temple emerged from the darkness below."
  scene.message "Coral and stone. Life and death intertwined."
end

GameData::Cutscene.define :ch40_temple_interior do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  
  scene.message "Inside, water flowed through every chamber."
  scene.message "Channels carved with precision."
  scene.message "The sound of the tide echoing endlessly."
  
  scene.message "\\b\\PN\\b: Stay alert. The guardian should be close."
  
  scene.message "Your Pokémon tensed."
  scene.message "They could feel it too."
  scene.message "Something ancient. Something powerful."
end

GameData::Cutscene.define :ch40_guardian_appears do |scene|
  scene.play_bgm 'Pokemon SWSH - Legendary Theme'
  scene.camera_shake 25, 60
  
  scene.message "The water surged!"
  scene.message "A serpentine form emerged from the depths."
  scene.message "Scales like sapphires. Eyes like the abyss."
  
  scene.message "\\bTideborn\\b: I AM TIDEBORN. GUARDIAN OF THE DEPTHS."
  scene.message "\\bTideborn\\b: YOU SEEK THE SECOND FRAGMENT."
  scene.message "\\bTideborn\\b: BUT FIRST... YOU MUST FLOW LIKE WATER."
end

GameData::Cutscene.define :ch40_trial_begins do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Legendary'
  
  scene.message "\\bTideborn\\b: THE TRIAL OF TIDES TESTS ADAPTABILITY."
  scene.message "\\bTideborn\\b: CAN YOU CHANGE? CAN YOU GROW?"
  scene.message "\\bTideborn\\b: OR WILL YOU BREAK AGAINST THE CURRENT?"
  
  scene.message "Water rushed around you!"
  scene.message "The chamber became a torrent!"
  
  scene.camera_shake 30, 80
end

GameData::Cutscene.define :ch40_lyra_trial do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  scene.message "The water showed her fears."
  scene.message "Elena's death. Her own inadequacy."
  scene.message "The weight of being the healer who couldn't save everyone."
  
  scene.message "\\bLyra\\b: I tried... I always tried..."
  
  scene.message "But the water didn't judge."
  scene.message "It simply flowed. Adapted. Continued."
  
  scene.message "\\bLyra\\b: *realizing* I don't have to save everyone alone."
  scene.message "\\bLyra\\b: I just have to keep trying. Keep growing."
  
  scene.message "Xerneas's power surged through her."
  scene.message "Life energy purifying the waters."
end

GameData::Cutscene.define :ch40_trial_complete do |scene|
  scene.camera_flash 30
  scene.play_bgm 'Pokemon SWSH - Victory Theme'
  
  scene.message "The waters calmed."
  scene.message "Tideborn regarded you with ancient eyes."
  
  scene.message "\\bTideborn\\b: YOU HAVE LEARNED TO FLOW."
  scene.message "\\bTideborn\\b: TO ADAPT WITHOUT LOSING YOURSELVES."
  scene.message "\\bTideborn\\b: THE SECOND FRAGMENT IS YOURS."
  
  scene.message "Another piece of the Crown appeared."
  scene.message "Blue as the deepest ocean. Cool to the touch."
  
  scene.message "\\bLyra\\b: Two down. One to go."
end

GameData::Cutscene.define :ch40_surface do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "You returned to the surface."
  scene.message "The sunlight felt like a blessing."
  
  scene.message "\\bKael\\b: The Temple of Shadows is last."
  scene.message "\\bKael\\b: *quiet* It's connected to Yveltal. To death."
  scene.message "\\bKael\\b: This one's mine."
  
  scene.message "\\bLyra\\b: *taking his hand* We face it together."
  scene.message "\\b\\PN\\b: All of us."
  
  scene.message "Kael nodded slowly."
  scene.message "The final temple awaited."
end

GameData::Cutscene.define :ch40_floodgate_labyrinth do |scene|
  scene.play_bgm 'Pokemon ORAS - Sailing'

  scene.message "The Temple of Tides answered every opened door by flooding another corridor."
  scene.message "Ancient gauges showed four habitats sharing the same finite current."

  # TODO: Multi-room water-level puzzle
  # - Redirect currents between coral nursery, turbine hall, archive, and central shrine.
  # - The fast solution drains the nursery; the compassionate solution requires an extra battle route.
  # - Lyra can purify one poisoned channel, but not all four, forcing cooperation with Pokémon.

  scene.message "\\bLyra\\b: The trial isn't asking whether water adapts. It's asking who pays when we redirect it."
  scene.message "\\b\\PN\\b: No habitat becomes our sacrifice. Find another route."
  scene.message "\\bKael\\b: There is one. Longer, darker, and full of movement below us."
  scene.message "\\bLyra\\b: So, the usual route."
end

GameData::Cutscene.define :ch40_tideborn_truth do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "Before sinking beneath the shrine, Tideborn showed Lyra a memory carried by the water."
  scene.message "Astorian Keepers diverting life from the coast to keep the Crown fragments dormant. Empty villages. Silent reefs."

  scene.message "\\bTideborn\\b: PRESERVATION WITHOUT CHANGE BECOMES A SLOWER DEATH."
  scene.message "\\bLyra\\b: Then after Nidhoggr, we restore what the temples took."
  scene.message "\\bTideborn\\b: A PROMISE IS NOT RESTORATION. RETURN AND MAKE IT TRUE."
end

#===============================================================================
# Chapter 41: Temple of Shadows - Third Fragment
#===============================================================================

GameData::Cutscene.define :ch41_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Cave'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 41: Temple of Shadows"
  
  scene.message "The Twilight Caverns earned their name."
  scene.message "Neither day nor night existed here."
  scene.message "Only endless dusk. Endless shadows."
end

GameData::Cutscene.define :ch41_kael_tense do |scene|
  scene.play_bgm 'Pokemon RSE - Cave'
  
  scene.message "Kael walked ahead, unusually silent."
  scene.message "Shadow stayed close to him."
  
  scene.message "\\bLyra\\b: *to you, quietly* He's scared."
  scene.message "\\b\\PN\\b: Of the temple?"
  scene.message "\\bLyra\\b: Of what it might show him."
  
  scene.message "You understood."
  scene.message "Kael's past was darker than most."
  scene.message "And this temple would drag it into the light."
end

GameData::Cutscene.define :ch41_temple_found do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "The Temple of Shadows rose from the darkness."
  scene.message "Black stone. No light. No warmth."
  scene.message "Like death made architecture."
  
  scene.message "\\bKael\\b: *stopping* I can feel it."
  scene.message "\\bKael\\b: Yveltal's presence. Stronger here."
  
  scene.message "His ring glowed crimson."
  scene.message "The temple doors opened on their own."
end

GameData::Cutscene.define :ch41_entering do |scene|
  scene.play_bgm 'Pokemon RSE - Cave'
  
  scene.message "Inside was absolute darkness."
  scene.message "Your pendant provided faint light."
  scene.message "But shadows seemed to devour it."
  
  scene.message "\\bLyra\\b: *holding Kael's hand* Together."
  scene.message "\\bKael\\b: *quiet* Together."
  
  scene.message "You moved deeper."
  scene.message "The darkness watching your every step."
end

GameData::Cutscene.define :ch41_guardian_appears do |scene|
  scene.play_bgm 'Pokemon SWSH - Legendary Theme'
  scene.camera_shake 20, 50
  
  scene.message "A presence manifested from the shadows."
  scene.message "Wings of darkness. Eyes of void."
  scene.message "Death incarnate."
  
  scene.message "\\bNightshade\\b: I AM NIGHTSHADE. GUARDIAN OF ENDINGS."
  scene.message "\\bNightshade\\b: DEATH WALKS BESIDE YOU, CHOSEN ONES."
  scene.message "\\bNightshade\\b: BUT CAN YOU ACCEPT IT?"
end

GameData::Cutscene.define :ch41_kael_trial do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.fade_in
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "The shadows showed him everything."
  scene.message "The orphanage. The fire. Mira's last breath."
  scene.message "Every death he'd witnessed. Every life he couldn't save."
  
  scene.message "\\bMira's Ghost\\b: You let me die..."
  scene.message "\\bKael\\b: No... I tried..."
  scene.message "\\bMira's Ghost\\b: You weren't strong enough..."
  
  scene.message "The weight crushed him."
  scene.message "Years of guilt. Years of pain."
end

GameData::Cutscene.define :ch41_kael_acceptance do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: *falling to his knees* I wasn't strong enough."
  scene.message "\\bKael\\b: You're right. I failed."
  
  scene.message "The shadows pressed closer."
  
  scene.message "\\bKael\\b: But I kept going."
  scene.message "\\bKael\\b: I found new people to protect."
  scene.message "\\bKael\\b: I learned to live... despite the pain."
  
  scene.message "\\bKael\\b: *standing* Death isn't the enemy."
  scene.message "\\bKael\\b: It's part of life. Part of the balance."
  scene.message "\\bKael\\b: And I... accept that."
  
  scene.message "Yveltal's power surged through him."
  scene.message "Crimson light shattering the darkness."
end

GameData::Cutscene.define :ch41_trial_complete do |scene|
  scene.camera_flash 30
  scene.play_bgm 'Pokemon SWSH - Victory Theme'
  
  scene.message "Nightshade bowed its head."
  
  scene.message "\\bNightshade\\b: YOU HAVE FACED YOUR SHADOWS."
  scene.message "\\bNightshade\\b: ACCEPTED DEATH AS PART OF LIFE."
  scene.message "\\bNightshade\\b: THE THIRD FRAGMENT IS YOURS."
  
  scene.message "The final piece materialized."
  scene.message "Dark as night. Warm as a final embrace."
  
  scene.message "Three fragments. The Crown could be restored."
end

GameData::Cutscene.define :ch41_kael_moment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Lyra pulled Kael into a tight embrace."
  scene.message "\\bLyra\\b: I'm so proud of you."
  
  scene.message "\\bKael\\b: *voice rough* I saw Mira."
  scene.message "\\bKael\\b: She wasn't angry. She was..."
  scene.message "\\bKael\\b: She was at peace."
  
  scene.message "\\b\\PN\\b: *placing a hand on his shoulder* Let's end this."
  scene.message "\\b\\PN\\b: For everyone we've lost."
  
  scene.message "\\bKael\\b: *nodding* For everyone."
end

GameData::Cutscene.define :ch41_shadow_paths do |scene|
  scene.play_bgm 'Pokemon RSE - Cave'

  scene.message "Nightshade's trial left three doors and only one source of light."
  scene.message "Each torch revealed a safe path for one companion while erasing the paths of the other two."

  # TODO: Shadow Temple companion puzzle
  # - Player alternates control between the trio.
  # - One character carries light, one navigates by sound, one walks with Yveltal's shadow.
  # - Progress requires opening doors for characters the player cannot currently see.

  scene.message "\\bKael\\b: Trust is moving when you cannot prove the others are still there."
  scene.message "\\bLyra\\b: We're here. Keep moving."
end

GameData::Cutscene.define :ch41_broken_lineage do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'

  scene.message "Behind the final door, Kael's blood awakened a mural hidden beneath centuries of soot."
  scene.message "It showed an ancestor bearing Yveltal's mark—and striking the Crown apart after the first seal began consuming Giratina's realm."

  scene.message "\\bKael\\b: My family didn't betray the Chosen. They stopped the Crown from killing another world."
  scene.message "\\bNightshade\\b: THEY SAVED ONE REALM AND LEFT THE NEXT GENERATION AN UNFINISHED WAR."
  scene.message "\\bKael\\b: Then I finish what they could not. Without repeating what they refused to do."

  scene.message "The third fragment warmed in his hands, answering recognition rather than bloodline pride."
end

#===============================================================================
# Chapter 42: The Crown Restored
#===============================================================================

GameData::Cutscene.define :ch42_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 42: The Crown Restored"
  
  scene.message "You returned to Elder Vera's temple."
  scene.message "Three fragments in hand."
  scene.message "The Crown of Unity could finally be whole."
end

GameData::Cutscene.define :ch42_elder_greets do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Elder Vera waited at the entrance."
  scene.message "Her eyes widened seeing the fragments."
  
  scene.message "\\bElder Vera\\b: You succeeded..."
  scene.message "\\bElder Vera\\b: In all my years, I never dared hope..."
  
  scene.message "\\b\\PN\\b: How do we restore the Crown?"
  scene.message "\\bElder Vera\\b: The altar within. It was built for this purpose."
end

GameData::Cutscene.define :ch42_ritual_prep do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'
  
  scene.message "The altar was ancient beyond measure."
  scene.message "Three slots carved into its surface."
  scene.message "Waiting for the fragments."
  
  scene.message "\\bElder Vera\\b: Place the fragments. Let your guardian energy flow."
  scene.message "\\bElder Vera\\b: The Crown will remember what it once was."
  
  scene.message "\\bLyra\\b: *nervous* And if it doesn't work?"
  scene.message "\\bElder Vera\\b: Then hope dies with us all."
end

GameData::Cutscene.define :ch42_restoring do |scene|
  scene.play_bgm 'Pokemon SWSH - Legendary Theme'
  
  scene.message "You placed the golden fragment."
  scene.message "Lyra placed the blue fragment."
  scene.message "Kael placed the dark fragment."
  
  scene.message "Your marks blazed."
  scene.message "Gold. Green. Crimson."
  scene.message "Energy pouring into the altar."
  
  scene.camera_shake 20, 50
  scene.camera_flash 40
end

GameData::Cutscene.define :ch42_crown_forms do |scene|
  scene.play_bgm 'Pokemon SWSH - Victory Theme'
  scene.camera_flash 60
  
  scene.message "Light exploded from the altar!"
  scene.message "The fragments merged. Fused. Became one."
  
  scene.message "The Crown of Unity."
  scene.message "Complete. Perfect. Radiant."
  scene.message "Power beyond comprehension."
  
  scene.message "\\bElder Vera\\b: *tears streaming* At last..."
  scene.message "\\bElder Vera\\b: The Crown is whole once more."
end

GameData::Cutscene.define :ch42_crown_power do |scene|
  scene.play_bgm 'Pokemon SWSH - Legendary Theme'
  
  scene.message "You reached for the Crown."
  scene.message "All three of you. Together."
  
  scene.message "Power surged through you."
  scene.message "The combined might of three Guardians."
  scene.message "Life. Death. Balance."
  
  scene.message "\\b\\PN\\b: This is... incredible."
  scene.message "\\bLyra\\b: I can feel Xerneas... so clearly now."
  scene.message "\\bKael\\b: Yveltal too. They're with us."
end

GameData::Cutscene.define :ch42_giratina_warning do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_shake 30, 80
  
  scene.message "Suddenly—a new presence."
  scene.message "Cold. Ancient. Terrifying."
  
  scene.message "Reality warped around you."
  scene.message "A portal of shadow and void appeared."
  
  scene.message "\\bVoice\\b: CHOSEN ONES..."
  scene.message "\\bVoice\\b: THE CROWN ALONE IS NOT ENOUGH..."
end

GameData::Cutscene.define :ch42_giratina_appears do |scene|
  scene.play_bgm 'Pokemon Platinum - Giratina Theme'
  scene.camera_flash 30
  
  scene.message "From the portal emerged..."
  scene.message "Giratina. Ruler of the Distortion World."
  
  scene.message "\\bGiratina\\b: I HAVE WATCHED YOUR JOURNEY."
  scene.message "\\bGiratina\\b: YOU HAVE PROVEN YOURSELVES."
  scene.message "\\bGiratina\\b: BUT NIDHOGGR CANNOT BE SEALED FROM THIS REALM."
  
  scene.message "\\b\\PN\\b: What do you mean?"
  
  scene.message "\\bGiratina\\b: THE WORLD-EATER RESIDES IN THE SPACE BETWEEN."
  scene.message "\\bGiratina\\b: MY DOMAIN. THE DISTORTION WORLD."
  scene.message "\\bGiratina\\b: YOU MUST ENTER... AND FACE IT THERE."
end

GameData::Cutscene.define :ch42_crown_rejects_command do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_shake 18, 45

  scene.message "You tried to command the restored Crown. Its light turned inward and threw all three of you from the altar."
  scene.message "Words appeared across its rim: UNITY CANNOT BE COMMANDED."

  scene.message "\\bElder Vera\\b: The histories call it a weapon. They were wrong."
  scene.message "\\bKael\\b: Or lying. The fourth socket in the Star Temple belonged to Giratina."
  scene.message "\\bGiratina\\b: YOUR ANCESTORS TOOK POWER FROM MY REALM WITHOUT ASKING."
  scene.message "\\bGiratina\\b: THEY NAMED THE THEFT BALANCE."

  scene.message "\\b\\PN\\b: Then we won't wield the Crown over you. We use it with you—or not at all."
  scene.message "For the first time, Giratina looked at you rather than through you."
end

GameData::Cutscene.define :ch42_astorias_choice do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "Vera summoned the village to the temple instead of making the decision alone."
  scene.message "Some demanded the Crown remain hidden. Others pointed to homes already breaking apart."

  # TODO: Village council sequence
  # - Player gathers testimony from Nia, Maren's former crewmate, a farmer, and a Keeper.
  # - Dialogue choices change the tone, not whether Astoria helps.
  # - The council collectively opens the forbidden archive and rejects hereditary secrecy.

  scene.message "\\bNia\\b: Our ancestors chose silence for us. We choose differently for ourselves."
  scene.message "One by one, Astorians placed their Keeper keys around the Crown."
  scene.message "The portal steadied—not through prophecy, but through public consent."
end

#===============================================================================
# Chapter 43: Giratina's Warning
#===============================================================================

GameData::Cutscene.define :ch43_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon Platinum - Giratina Theme'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 43: Giratina's Warning"
  
  scene.message "Giratina's presence filled the temple."
  scene.message "Elder Vera had collapsed from the sheer power."
  scene.message "But you stood firm."
end

GameData::Cutscene.define :ch43_explanation do |scene|
  scene.play_bgm 'Pokemon Platinum - Giratina Theme'
  
  scene.message "\\bGiratina\\b: WHEN NIDHOGGR WAS FIRST SEALED..."
  scene.message "\\bGiratina\\b: THE CROWN BANISHED IT TO MY REALM."
  scene.message "\\bGiratina\\b: I HAVE KEPT IT IMPRISONED FOR MILLENNIA."
  
  scene.message "\\bKael\\b: You've been fighting it all this time?"
  
  scene.message "\\bGiratina\\b: CONTAINING. WEAKENING. WAITING."
  scene.message "\\bGiratina\\b: BUT THE SEAL YOU CREATED LAST YEAR..."
  scene.message "\\bGiratina\\b: IT DISRUPTED THE BALANCE."
  scene.message "\\bGiratina\\b: NIDHOGGR GROWS STRONGER. I GROW WEAKER."
end

GameData::Cutscene.define :ch43_plea do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "For a moment, Giratina seemed... vulnerable."
  scene.message "An ancient god, asking for help."
  
  scene.message "\\bGiratina\\b: I CANNOT HOLD IT MUCH LONGER."
  scene.message "\\bGiratina\\b: YOU MUST ENTER THE DISTORTION WORLD."
  scene.message "\\bGiratina\\b: USE THE CROWN. END THIS."
  
  scene.message "\\bLyra\\b: We'll do it."
  scene.message "\\b\\PN\\b: Just tell us how."
  
  scene.message "\\bGiratina\\b: *nodding* BRAVE. AS I HOPED."
end

GameData::Cutscene.define :ch43_portal_opens do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_shake 25, 60
  
  scene.message "Giratina's wings spread wide."
  scene.message "Reality tore open before you."
  scene.message "A portal to the Distortion World."
  
  scene.message "\\bGiratina\\b: THIS IS THE PATH."
  scene.message "\\bGiratina\\b: BUT BE WARNED..."
  scene.message "\\bGiratina\\b: MY REALM DOES NOT OBEY YOUR LAWS."
  scene.message "\\bGiratina\\b: GRAVITY. TIME. SPACE. ALL ARE DIFFERENT."
end

GameData::Cutscene.define :ch43_farewell do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bElder Vera\\b: *weakly* Wait..."
  scene.message "She pressed something into your hand."
  scene.message "An ancient compass. Glowing faintly."
  
  scene.message "\\bElder Vera\\b: This will guide you to Nidhoggr's prison."
  scene.message "\\bElder Vera\\b: May the ancestors watch over you."
  
  scene.message "\\b\\PN\\b: Thank you. For everything."
  scene.message "\\bElder Vera\\b: Thank me by saving the world."
end

GameData::Cutscene.define :ch43_entering do |scene|
  scene.play_bgm 'Pokemon Platinum - Distortion World'
  
  scene.message "The three of you stepped toward the portal."
  scene.message "Your Pokémon at your sides."
  scene.message "The Crown of Unity pulsing with power."
  
  scene.message "\\bLyra\\b: No turning back."
  scene.message "\\bKael\\b: There never was."
  scene.message "\\b\\PN\\b: Let's finish this."
  
  scene.message "Together, you entered the Distortion World."
end

GameData::Cutscene.define :ch43_giratinas_wound do |scene|
  scene.play_bgm 'Pokemon Platinum - Distortion World'

  scene.message "Before opening the portal fully, Giratina lowered one wing. Entire sections were translucent, eaten away in geometric scars."

  scene.message "\\bGiratina\\b: NIDHOGGR DID NOT ONLY STRIKE MY BODY. IT CONSUMED THE RULES OF MY HOME."
  scene.message "\\bGiratina\\b: FIRST DISTANCE. THEN SEASONS. THEN THE NAMES OF CREATURES BORN THERE."
  scene.message "\\bGiratina\\b: EACH TIME YOUR WORLD CALLED THIS PLACE A PRISON, MINE BECAME LESS OF A WORLD."

  scene.message "\\bLyra\\b: You're not protecting a cage. You're protecting everyone who lives beyond it."
  scene.message "\\bGiratina\\b: YES. REMEMBER THEM WHEN YOUR CROWN DEMANDS A COST."
end

GameData::Cutscene.define :ch43_terms_of_alliance do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "Kael placed his ring on the floor between you and Giratina."
  scene.message "\\bKael\\b: No hidden price. No eternal victim. Tell us what the seal takes before we agree."

  scene.message "\\bGiratina\\b: IT REQUIRES A WARDEN, BUT NOT A SACRIFICE."
  scene.message "\\bGiratina\\b: I WILL KEEP THE BOUNDARY BY CHOICE. THE CROWN MUST DISTRIBUTE ITS WEIGHT THROUGH THE REALM, NOT THROUGH MY SOUL."
  scene.message "\\b\\PN\\b: And if you ever withdraw that choice?"
  scene.message "\\bGiratina\\b: THE CROWN MUST RELEASE ME AND SUMMON ITS BEARERS. THAT IS THE TERM."

  scene.message "The four marks answered. The alliance became part of the Crown before the battle began."
end

#===============================================================================
# Chapter 44: The Distortion World
#===============================================================================

GameData::Cutscene.define :ch44_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon Platinum - Distortion World'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 44: The Distortion World"
  
  scene.message "Nothing made sense here."
  scene.message "Platforms floated in void. Waterfalls fell upward."
  scene.message "The sky was everywhere and nowhere."
end

GameData::Cutscene.define :ch44_disorientation do |scene|
  scene.play_bgm 'Pokemon Platinum - Distortion World'
  
  scene.message "\\bLyra\\b: *clutching her head* I feel sick..."
  scene.message "\\bKael\\b: Don't look at any one thing too long."
  scene.message "\\bKael\\b: This place breaks minds."
  
  scene.message "Your starter pressed against you."
  scene.message "Grounding you in reality."
  
  scene.message "\\b\\PN\\b: The compass. Follow the compass."
  scene.message "The ancient device glowed, pointing deeper."
end

GameData::Cutscene.define :ch44_traversing do |scene|
  scene.play_bgm 'Pokemon Platinum - Distortion World'
  
  scene.message "You navigated the impossible landscape."
  scene.message "Walking on ceilings. Jumping across void."
  scene.message "Every step a challenge to sanity."
  
  scene.message "\\bKael\\b: *grim* No wonder Nidhoggr is trapped here."
  scene.message "\\bKael\\b: Even a god couldn't escape this maze."
  
  scene.message "\\bLyra\\b: *determined* Then we find it and end this."
end

GameData::Cutscene.define :ch44_void_walkers do |scene|
  scene.play_bgm 'Pokemon RSE - Danger'
  scene.camera_shake 15, 40
  
  scene.message "Shadows coalesced around you."
  scene.message "Creatures of pure void. Nidhoggr's servants."
  
  scene.message "\\bVoid Walker\\b: The Chosen... come to die..."
  scene.message "\\bVoid Walker\\b: Master will be pleased..."
  
  scene.message "\\b\\PN\\b: We're not dying today!"
end

GameData::Cutscene.define :ch44_void_battle do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Legendary'
  
  scene.trainer_battle :VOIDWALKER, "Voidwalker", 1
  
  scene.message "The Void Walkers dissolved."
  scene.message "But more were coming."
  scene.message "You had to move faster."
end

GameData::Cutscene.define :ch44_approaching_prison do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "The compass burned brighter."
  scene.message "You were close."
  
  scene.message "A massive structure loomed ahead."
  scene.message "Chains of light wrapped around a sphere of darkness."
  scene.message "The prison. Nidhoggr's cage."
  
  scene.message "\\bLyra\\b: *whispering* I can feel it..."
  scene.message "\\bKael\\b: The corruption. It's overwhelming."
  scene.message "\\b\\PN\\b: Stay strong. We're almost there."
end

GameData::Cutscene.define :ch44_prison_reached do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_shake 30, 80
  
  scene.message "The chains were cracking."
  scene.message "Dark energy leaking through the gaps."
  scene.message "Nidhoggr was almost free."
  
  scene.message "\\bGiratina's Voice\\b: HURRY... I CANNOT HOLD IT..."
  
  scene.message "You raised the Crown of Unity."
  scene.message "Its light blazed against the darkness."
  
  scene.message "And from within the prison..."
  scene.message "Nidhoggr's eyes opened."
end

GameData::Cutscene.define :ch44_lost_direction do |scene|
  scene.play_bgm 'Pokemon Platinum - Distortion World'

  scene.message "The compass pointed in three directions at once. Then gravity separated you."
  scene.message "Lyra fell upward into a forest of inverted roots. Kael landed across a vertical lake. You remained on a rotating ruin."

  # TODO: Three-character Distortion World traversal
  # - Switch between protagonist, Lyra, and Kael at anchor stones.
  # - Actions in one orientation rotate platforms or reverse waterfalls for another.
  # - Each route uses its Guardian ability, but the final bridge requires ordinary partner Pokémon.

  scene.message "\\b\\PN\\b: Don't follow the compass! Follow each other's voices!"
  scene.message "The device had been built to find the prison. Your friends found the way home."
end

GameData::Cutscene.define :ch44_native_survivor do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "A wounded creature unfolded from beneath a floating stone—neither shadow nor void servant."
  scene.message "Its body changed shape whenever the nearby fracture widened."

  scene.message "\\bLyra\\b: This is what Giratina meant. Something actually lives here."
  scene.message "\\bKael\\b: And the prison's chains are cutting through its nesting ground."

  # TODO: Optional rescue and realm-restoration quest
  # - Close three minor tears without attacking the native creature.
  # - It later stabilizes one battlefield platform in Chapter 46.
  # - Skipping it remains possible, but Giratina must expend more visible strength.

  scene.message "You turned away from the shortest route and followed the creature toward the collapsing nest."
end

GameData::Cutscene.define :ch44_first_seal_record do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'

  scene.message "Near the prison, the Crown projected the memory embedded in its missing fourth socket."
  scene.message "The Original Chosen celebrated while chains rooted through Giratina and into every horizon of its realm."
  scene.message "One bearer shattered the Crown to stop the spread. The weakened prison endured, but Nidhoggr began its centuries-long escape."

  scene.message "\\bKael\\b: There was never a perfect first seal. Only a disaster people renamed a victory."
  scene.message "\\b\\PN\\b: Ours will be different because everyone carrying it can say no."
end

#===============================================================================
# Chapter 45: The Seal Breaks
#===============================================================================

GameData::Cutscene.define :ch45_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 45: The Seal Breaks"
  
  scene.message "\\bNidhoggr\\b: AT LAST..."
  scene.message "\\bNidhoggr\\b: THE CHOSEN ONES COME TO ME..."
  
  scene.camera_shake 40, 100
end

GameData::Cutscene.define :ch45_nidhoggr_speaks do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  
  scene.message "The prison shattered!"
  scene.message "Chains of light exploding outward."
  scene.message "Nidhoggr rising, terrible and vast."
  
  scene.message "\\bNidhoggr\\b: DID YOU THINK YOUR CROWN COULD STOP ME?!"
  scene.message "\\bNidhoggr\\b: I AM ETERNAL! I AM THE END!"
  scene.message "\\bNidhoggr\\b: AND YOU... ARE NOTHING!"
  
  scene.camera_flash 40
end

GameData::Cutscene.define :ch45_guardians_appear do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Zacian/Zamazenta'
  scene.camera_flash 30
  
  scene.message "But you weren't alone."
  scene.message "The Crown blazed with power."
  scene.message "And three forms materialized beside you."
  
  scene.message "\\bZacian\\b: WE STAND WITH OUR CHOSEN!"
  scene.message "\\bXerneas\\b: LIFE ETERNAL!"
  scene.message "\\bYveltal\\b: DEATH'S EMBRACE!"
  
  scene.message "The Guardians had come."
  scene.message "Manifested through the Crown's power."
  scene.message "Ready for the final battle."
end

GameData::Cutscene.define :ch45_battle_begins do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  scene.camera_shake 30, 80
  
  scene.message "\\bNidhoggr\\b: SO THE CHILDREN BROUGHT THEIR PARENTS."
  scene.message "\\bNidhoggr\\b: IT MATTERS NOT!"
  scene.message "\\bNidhoggr\\b: I DEVOURED GODS BEFORE!"
  
  scene.message "\\b\\PN\\b: Not these ones!"
  
  scene.message "The battle for existence began!"
end

GameData::Cutscene.define :ch45_first_battle do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  
  scene.trainer_battle :NIDHOGGR_PHASE1, "Nidhoggr", 1
  
  scene.message "Nidhoggr reeled from your assault!"
  scene.message "But it was far from defeated."
  
  scene.message "\\bNidhoggr\\b: IMPRESSIVE... BUT FUTILE!"
end

GameData::Cutscene.define :ch45_nidhoggr_transforms do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  scene.camera_shake 50, 120
  scene.camera_flash 60
  
  scene.message "Nidhoggr's form expanded!"
  scene.message "Growing. Consuming. Becoming."
  scene.message "Its true form—Eternamax Nidhoggr!"
  
  scene.message "\\bNidhoggr\\b: BEHOLD MY TRUE POWER!"
  scene.message "\\bNidhoggr\\b: I AM THE VOID ITSELF!"
  
  scene.message "The Distortion World trembled."
  scene.message "Reality itself was breaking."
end

GameData::Cutscene.define :ch45_desperate do |scene|
  scene.play_bgm 'Pokemon RSE - Danger'
  
  scene.message "\\bLyra\\b: It's too powerful!"
  scene.message "\\bKael\\b: The Crown... it's not enough!"
  
  scene.message "Your attacks barely scratched it."
  scene.message "Even the Guardians struggled."
  
  scene.message "\\bZacian\\b: WE NEED MORE POWER!"
  scene.message "\\bXerneas\\b: THE CROWN REQUIRES A FOURTH FORCE!"
  scene.message "\\bYveltal\\b: BALANCE... CANNOT EXIST WITH THREE ALONE!"
  
  scene.message "A fourth force?"
  scene.message "What could that mean?"
end

GameData::Cutscene.define :ch45_giratina_arrives do |scene|
  scene.play_bgm 'Pokemon Platinum - Giratina Theme'
  scene.camera_flash 40
  
  scene.message "The answer came from above."
  scene.message "Giratina descended, wounded but determined."
  
  scene.message "\\bGiratina\\b: THE FOURTH FORCE... IS ME."
  scene.message "\\bGiratina\\b: ANTIMATTER. THE SPACE BETWEEN."
  scene.message "\\bGiratina\\b: I WILL COMPLETE THE CROWN."
  
  scene.message "\\b\\PN\\b: But you're too weak!"
  
  scene.message "\\bGiratina\\b: THEN I GIVE WHAT STRENGTH REMAINS."
  scene.message "\\bGiratina\\b: TAKE IT, CHOSEN ONES."
  scene.message "\\bGiratina\\b: END THIS... FOREVER."
end

GameData::Cutscene.define :ch45_crown_complete do |scene|
  scene.play_bgm 'Pokemon SWSH - Victory Theme'
  scene.camera_flash 60
  scene.camera_shake 30, 80
  
  scene.message "Giratina's power flowed into the Crown!"
  scene.message "Gold. Green. Crimson. And now—Shadow."
  scene.message "Four forces. Perfect balance."
  
  scene.message "The Crown of Unity blazed brighter than ever!"
  
  scene.message "\\bNidhoggr\\b: NO! THAT POWER—!"
  scene.message "\\bNidhoggr\\b: YOU CANNOT WIELD IT!"
  
  scene.message "\\b\\PN\\b: WATCH US!"
end

GameData::Cutscene.define :ch45_false_victory_weaponized do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'

  scene.message "Nidhoggr opened fractures shaped like windows. Through each, you saw the year of peace you had already lived."
  scene.message "Your parents at breakfast. The Sanctuary thriving. Ragnar's Raichu asleep in sunlight."

  scene.message "\\bNidhoggr\\b: YOU HAD YOUR ENDING. YOU BELIEVED IT BECAUSE YOU NEEDED TO."
  scene.message "\\bNidhoggr\\b: SEAL ME AGAIN, AND SPEND EVERY QUIET YEAR WAITING FOR THE NEXT CRACK."

  scene.message "\\bLyra\\b: That year wasn't fake. Every life lived during it was real."
  scene.message "\\bKael\\b: A temporary victory still saved people."
  scene.message "\\b\\PN\\b: And this one will finish the work."
end

GameData::Cutscene.define :ch45_break_the_anchors do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  scene.camera_shake 22, 60

  scene.message "Four black roots anchored Nidhoggr across incompatible directions. Attacking its body only fed the fractures."

  # TODO: Four-anchor boss objective
  # - Boundary anchor: defend Zacian while cutting regenerating paths.
  # - Life anchor: purify corrupted Pokémon instead of defeating them.
  # - Death anchor: allow marked platforms to end and reform elsewhere.
  # - Distortion anchor: rotate the arena with Giratina and the rescued native.
  # - Each completed temple side objective removes one complication here.

  scene.message "\\bGiratina\\b: DO NOT FIGHT ITS SIZE. REMOVE ITS CLAIMS UPON OUR WORLDS."
  scene.message "For the first time, this was not the battle beneath Asgaheim repeated."
  scene.message "You were not trying to overpower hunger. You were taking away everything it could hold."
end

#===============================================================================
# Chapter 46: The Ultimate Battle
#===============================================================================

GameData::Cutscene.define :ch46_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 46: The Ultimate Battle"
  
  scene.message "The Crown blazed with four-fold power."
  scene.message "Light and Shadow. Life and Death."
  scene.message "Perfect balance against perfect chaos."
end

GameData::Cutscene.define :ch46_final_clash do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  scene.camera_shake 40, 100
  
  scene.message "\\b\\PN\\b: Everyone—NOW!"
  
  scene.message "You raised the Crown!"
  scene.message "Lyra and Kael channeled their marks!"
  scene.message "The Guardians poured their essence forward!"
  
  scene.message "A beam of pure creation struck Nidhoggr!"
  
  scene.camera_flash 80
end

GameData::Cutscene.define :ch46_nidhoggr_battle do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  
  scene.trainer_battle :NIDHOGGR_FINAL, "Nidhoggr", 1
  
  scene.message "Nidhoggr SCREAMED!"
  scene.message "The sound shook the Distortion World itself!"
end

GameData::Cutscene.define :ch46_nidhoggr_weakening do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  scene.camera_shake 30, 80
  
  scene.message "\\bNidhoggr\\b: IMPOSSIBLE...!"
  scene.message "\\bNidhoggr\\b: I AM THE END OF ALL THINGS...!"
  scene.message "\\bNidhoggr\\b: I CANNOT BE DESTROYED...!"
  
  scene.message "\\bZacian\\b: NOT DESTROYED—SEALED!"
  scene.message "\\bXerneas\\b: BOUND FOR ETERNITY!"
  scene.message "\\bYveltal\\b: NEVER TO RETURN!"
  scene.message "\\bGiratina\\b: IN MY REALM... FOREVER!"
end

GameData::Cutscene.define :ch46_eternal_seal do |scene|
  scene.play_bgm 'Pokemon SWSH - Victory Theme'
  scene.camera_flash 100
  scene.camera_shake 50, 120
  
  scene.message "The Crown's power reached its peak!"
  scene.message "Four colors of light spiraling together!"
  scene.message "Wrapping around Nidhoggr like chains of creation!"
  
  scene.message "\\bNidhoggr\\b: NOOOOOOO!"
  scene.message "\\bNidhoggr\\b: THIS CANNOT BE...!"
  scene.message "\\bNidhoggr\\b: I AM ETERNAL...!"
  
  scene.message "\\b\\PN\\b: SO IS THIS SEAL!"
end

GameData::Cutscene.define :ch46_seal_complete do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_flash 60
  
  scene.message "Nidhoggr's form compressed."
  scene.message "Smaller. Smaller. Contained."
  scene.message "Until only a sphere of darkness remained."
  
  scene.message "Bound by chains of four powers."
  scene.message "Locked in the heart of the Distortion World."
  scene.message "Forever."
  
  scene.message "\\bGiratina\\b: IT IS DONE..."
  scene.message "\\bGiratina\\b: THE SEAL... IS ETERNAL..."
end

GameData::Cutscene.define :ch46_giratina_sacrifice do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "Giratina's form flickered."
  scene.message "Weak. Fading. But at peace."
  
  scene.message "\\bGiratina\\b: MY POWER... IS BOUND TO THE SEAL..."
  scene.message "\\bGiratina\\b: I WILL WATCH OVER IT... FOREVER..."
  
  scene.message "\\bLyra\\b: Will you be okay?"
  
  scene.message "\\bGiratina\\b: I WILL BE... HOME."
  scene.message "\\bGiratina\\b: THIS IS MY PURPOSE."
  scene.message "\\bGiratina\\b: THANK YOU... CHOSEN ONES..."
end

GameData::Cutscene.define :ch46_victory do |scene|
  scene.play_bgm 'Pokemon SWSH - Victory Theme'
  
  scene.message "It was over."
  scene.message "Truly over."
  scene.message "Nidhoggr was sealed forever."
  
  scene.message "\\bZacian\\b: You have done what we could not."
  scene.message "\\bXerneas\\b: Saved existence itself."
  scene.message "\\bYveltal\\b: The balance is restored. Permanently."
  
  scene.message "You stood in the Distortion World."
  scene.message "Exhausted. Victorious. Alive."
end

GameData::Cutscene.define :ch46_consent_of_four do |scene|
  scene.play_bgm 'Pokemon SWSH - Victory Theme'

  scene.message "The completed Crown did not close immediately. Four lights waited around its rim."

  scene.message "\\bZacian\\b: I GIVE THE BOUNDARY FREELY."
  scene.message "\\bXerneas\\b: I GIVE RENEWAL FREELY."
  scene.message "\\bYveltal\\b: I GIVE THE ENDING FREELY."
  scene.message "\\bGiratina\\b: I GIVE A HOME TO THE SEAL—FREELY, AND NOT FOREVER WITHOUT MY VOICE."

  scene.message "The Crown accepted what the first seal had stolen."
  scene.message "Its chains spread through empty dimensional anchors, never through Hoopa, Giratina, or a mortal soul."
end

GameData::Cutscene.define :ch46_realm_breathes do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "With Nidhoggr contained, distance returned to the Distortion World."
  scene.message "Far platforms unfolded into horizons. Color seeped back into the native creature's skin."
  scene.message "For the first time in millennia, a wind crossed Giratina's realm and continued somewhere else."

  scene.message "\\bGiratina\\b: I REMAIN THE WARDEN. I AM NO LONGER THE WALL."
  scene.message "\\bLyra\\b: And your world?"
  scene.message "\\bGiratina\\b: WOUNDED. ALIVE. MINE TO HEAL."

  # TODO: Calm post-boss walk through the restored route before Arceus appears.
  # Native creatures replace Void Walkers; rescued ones recognize the party.
end

#===============================================================================
# Chapter 47: Arceus Descends
#===============================================================================

GameData::Cutscene.define :ch47_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon HGSS - Arceus Theme'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 47: Arceus Descends"
  
  scene.message "As you prepared to leave..."
  scene.message "The Distortion World blazed with light."
  scene.message "Something was coming."
end

GameData::Cutscene.define :ch47_arceus_appears do |scene|
  scene.play_bgm 'Pokemon HGSS - Arceus Theme'
  scene.camera_flash 80
  scene.camera_shake 30, 80
  
  scene.message "Reality itself bowed."
  scene.message "And Arceus descended."
  scene.message "The Original One. Creator of all."
  
  scene.message "\\bArceus\\b: CHOSEN ONES..."
  scene.message "\\bArceus\\b: I HAVE WATCHED YOUR JOURNEY."
  scene.message "\\bArceus\\b: FROM THE BEGINNING TO THIS MOMENT."
end

GameData::Cutscene.define :ch47_arceus_speaks do |scene|
  scene.play_bgm 'Pokemon HGSS - Arceus Theme'
  
  scene.message "You fell to your knees."
  scene.message "The presence was overwhelming."
  scene.message "Pure creation. Pure divinity."
  
  scene.message "\\bArceus\\b: NIDHOGGR WAS A MISTAKE."
  scene.message "\\bArceus\\b: BORN FROM THE CHAOS BEFORE CREATION."
  scene.message "\\bArceus\\b: IT COULD NOT BE DESTROYED. ONLY CONTAINED."
  
  scene.message "\\bArceus\\b: YOU HAVE DONE WHAT I COULD NOT."
  scene.message "\\bArceus\\b: SEALED IT WITH MORTAL WILL AND IMMORTAL POWER."
end

GameData::Cutscene.define :ch47_blessing do |scene|
  scene.play_bgm 'Pokemon HGSS - Arceus Theme'
  scene.camera_flash 40
  
  scene.message "\\bArceus\\b: FOR THIS... I OFFER A GIFT."
  scene.message "\\bArceus\\b: THE GUARDIANS SHALL REMAIN BOUND TO YOU."
  scene.message "\\bArceus\\b: NOT AS BURDENS... BUT AS FRIENDS."
  
  scene.message "\\b\\PN\\b: We... we didn't do this for rewards."
  
  scene.message "\\bArceus\\b: I KNOW."
  scene.message "\\bArceus\\b: THAT IS WHY YOU DESERVE THEM."
end

GameData::Cutscene.define :ch47_hoopa_restored do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_flash 50

  scene.message "A small ring of gold flickered inside Arceus's light."
  scene.message "Then another. And another."
  scene.message "A battered Hoopa fell from the light into Lyra's arms."

  scene.message "\\bLyra\\b: Hoopa! You're alive!"
  scene.message "\\bHoopa\\b: Alive... and free? Truly free?"

  scene.message "\\bArceus\\b: YOU WERE MADE A LOCK WITHOUT YOUR CONSENT."
  scene.message "\\bArceus\\b: NO LIVING SOUL SHALL BE THE NEW SEAL'S PRISONER."

  scene.message "\\bHoopa\\b: *looking at Lyra* Hoopa is sorry."
  scene.message "\\bHoopa\\b: The dreams showed you your sister. Hoopa could not stop them."
  scene.message "\\bLyra\\b: That wasn't your fault. None of this was."

  scene.message "For the first time since the ancient seal was forged,"
  scene.message "its key belonged only to itself."
end

GameData::Cutscene.define :ch47_guardians_freed do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_flash 60
  
  scene.message "Arceus's light touched the Guardians."
  scene.message "Zacian. Xerneas. Yveltal."
  scene.message "Their forms solidified. Strengthened."
  
  scene.message "\\bZacian\\b: We are... free to walk the mortal realm."
  scene.message "\\bXerneas\\b: To stay with our Chosen."
  scene.message "\\bYveltal\\b: If you would have us."
  
  scene.message "\\bLyra\\b: *tears streaming* Of course!"
  scene.message "\\bKael\\b: *voice rough* Always."
  scene.message "\\b\\PN\\b: Family. Forever."
end

GameData::Cutscene.define :ch47_question_for_arceus do |scene|
  scene.play_bgm 'Pokemon HGSS - Arceus Theme'

  scene.message "Before the light could carry Arceus away, Kael stood."
  scene.message "\\bKael\\b: You watched. Aldric, Ragnar, Elena—Hoopa in chains. Why only appear now?"

  scene.message "The Original One did not rebuke him."
  scene.message "\\bArceus\\b: CREATION WITHOUT FREEDOM IS ONLY A LARGER PRISON. I COULD HOLD NIDHOGGR, BUT NOT CREATE THE CONSENT THAT MAKES THIS SEAL JUST."
  scene.message "\\bArceus\\b: I COME NOW ONLY TO REPAIR WHAT DIVINE POWER VIOLATED—HOOPA'S BODY AND THE GUARDIANS' BONDS."
  scene.message "\\bKael\\b: That doesn't make the dead acceptable."
  scene.message "\\bArceus\\b: NO. NOTHING SHOULD."

  scene.message "Arceus did not ask for forgiveness or praise."
end


GameData::Cutscene.define :ch47_arceus_farewell do |scene|
  scene.play_bgm 'Pokemon HGSS - Arceus Theme'
  
  scene.message "\\bArceus\\b: THE WORLD IS SAFE."
  scene.message "\\bArceus\\b: BECAUSE OF YOU."
  scene.message "\\bArceus\\b: LIVE WELL, CHOSEN ONES."
  scene.message "\\bArceus\\b: YOU HAVE EARNED YOUR PEACE."
  
  scene.message "Arceus ascended."
  scene.message "Light fading into the void."
  scene.message "But warmth remained."

  scene.message "The journey was truly over."
end

#===============================================================================
# Chapter 48: Return Home
#===============================================================================

GameData::Cutscene.define :ch48_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Route Theme'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 48: Return Home"
  
  scene.message "Giratina's final gift—a portal home."
  scene.message "You stepped through together."
  scene.message "Back to the world you'd saved."
end

GameData::Cutscene.define :ch48_astoria_farewell do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Elder Vera waited at the temple."
  scene.message "Tears in her ancient eyes."
  
  scene.message "\\bElder Vera\\b: You did it..."
  scene.message "\\bElder Vera\\b: After all these centuries... it's over."
  
  scene.message "\\b\\PN\\b: The seal is eternal now."
  scene.message "\\b\\PN\\b: Nidhoggr will never return."
  
  scene.message "\\bElder Vera\\b: *bowing* The world owes you everything."
  scene.message "\\bElder Vera\\b: Go home, heroes. Live your lives."
end

GameData::Cutscene.define :ch48_astoria_opens do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Ruins'

  scene.message "At the dock, Astoria's villagers waited with packs, letters, seeds, and records sealed for generations."
  scene.message "Nia carried the old Keeper map with every erased sea route drawn back in."

  scene.message "\\bElder Vera\\b: I guarded Astoria by making it invisible. I will not make that choice for them again."
  scene.message "\\bNia\\b: Some of us will travel. Some will stay. All of us get to know the world exists."

  scene.message "Captain Maren froze when an elderly keeper stepped from the crowd."
  scene.message "\\bOld Keeper Sella\\b: Took you long enough to come back, Captain."
  scene.message "Maren laughed once, then buried her face in her oldest friend's shoulder."

  # TODO: Astoria becomes a revisitable postgame hub after this scene.
  # New ferry routes, restoration quests, and regional Pokémon research unlock.
end

GameData::Cutscene.define :ch48_ship_home do |scene|
  scene.play_bgm 'Pokemon ORAS - Sailing'
  
  scene.message "Captain Maren was still waiting."
  scene.message "True to her word."
  
  scene.message "\\bCaptain Maren\\b: *grinning* Knew you'd make it."
  scene.message "\\bKael\\b: How?"
  scene.message "\\bCaptain Maren\\b: You had that look. The kind that doesn't quit."
  
  scene.message "The Stormbreaker set sail for Asgheim."
  scene.message "Home at last."
end

GameData::Cutscene.define :ch48_voyage_home do |scene|
  scene.play_bgm 'Pokemon ORAS - Sailing'
  
  scene.message "The journey home was peaceful."
  scene.message "No storms. No creatures. Just calm seas."
  scene.message "As if the world itself was grateful."
  
  scene.message "\\bLyra\\b: *at the bow* I can't believe it's really over."
  scene.message "\\bKael\\b: *beside her* Neither can I."
  
  scene.message "\\b\\PN\\b: *joining them* What now?"
  scene.message "\\bLyra\\b: Now? We live."
end

GameData::Cutscene.define :ch48_scarred_coast do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "Asgheim's coast appeared beneath a web of pale scars where fractures had closed."
  scene.message "One lighthouse was gone. Temporary roofs covered half of Port Horizon. Rescue flags still marked unstable streets."

  scene.message "\\bLyra\\b: We stopped it. Why did I expect everything to look untouched?"
  scene.message "\\bCaptain Maren\\b: Because people tell stories about saved worlds, not repair crews."
  scene.message "\\bKael\\b: Then we help with both."

  scene.message "The port bell rang—not for a flawless victory, but because a ship had finally returned."
end

GameData::Cutscene.define :ch48_verdania_sighted do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "On the third day, Asgheim appeared."
  scene.message "Green hills. Familiar shores."
  scene.message "Home."
  
  scene.message "\\bCaptain Maren\\b: There she is. Safe and sound."
  scene.message "\\bCaptain Maren\\b: Thanks to you three."
  
  scene.message "Your heart swelled."
  scene.message "You'd saved this. All of it."
  scene.message "It had been worth everything."
end

GameData::Cutscene.define :ch48_port_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "Port Horizon was working again."
  scene.message "The fractures had closed, though their damage remained."
  scene.message "People rebuilding. Living. Hoping."
  
  scene.message "And waiting at the dock..."
  scene.message "Familiar faces."
  
  scene.message "\\bMarcus\\b: \\PN!"
  scene.message "\\bAurora\\b: *sobbing* MY BABY!"
end

GameData::Cutscene.define :ch48_hoopas_first_step do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "Hoopa stopped at the end of the gangplank. Hundreds of faces waited beyond it."
  scene.message "For most of its existence, entering a new place had meant being carried as a key."

  scene.message "\\bHoopa\\b: Does Hoopa have to go with Chosen Ones now?"
  scene.message "\\b\\PN\\b: You don't have to go anywhere."
  scene.message "\\bLyra\\b: You can stay aboard, visit Astoria, come with us, or choose somewhere we haven't imagined."

  scene.message "Hoopa looked at every open road. Then it took one step onto the dock."
  scene.message "\\bHoopa\\b: Hoopa chooses breakfast first. Choices after breakfast."
  scene.message "For once, laughter around Hoopa demanded nothing from it."
end

GameData::Cutscene.define :ch48_sanctuary_result do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "The Sanctuary evacuation teams met you outside the harbor."
  scene.message "The shelter chosen before departure had held, though not without cost."

  # TODO: Branch from Chapter 36 shelter choice
  # - Farm shelter: more injured caretakers, all large Pokémon safe.
  # - Cave shelter: supplies lost, rare eggs protected.
  # - League shelter: no structural losses, frightened Pokémon need longer recovery.

  scene.message "Raichu ran ahead, checking every familiar Pokémon before returning to your side."
  scene.message "The plan had mattered. Saving the world had begun before the ship ever sailed."
end

GameData::Cutscene.define :ch48_family_reunion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "Your parents crashed into you."
  scene.message "Mom crying. Dad trying not to."
  scene.message "Failing."
  
  scene.message "\\bMarcus\\b: *voice cracking* You did it."
  scene.message "\\bAurora\\b: You're home. You're safe."
  
  scene.message "\\b\\PN\\b: I told you I'd come back."
  
  scene.message "Lyra's parents were there too."
  scene.message "And for Kael..."
  scene.message "Lyra's family embraced him as their own."
end

#===============================================================================
# Chapter 49: Heroes Welcome
#===============================================================================

GameData::Cutscene.define :ch49_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Victory Road'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 49: Heroes Welcome"
  
  scene.message "Word spread quickly."
  scene.message "The Chosen Ones had returned."
  scene.message "And Nidhoggr was sealed forever."
end

GameData::Cutscene.define :ch49_celebration do |scene|
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  scene.message "The celebration was unlike anything before."
  scene.message "Every town. Every city. Every village."
  scene.message "The world rejoiced."
  
  scene.message "\\bLyra\\b: *overwhelmed* This is too much..."
  scene.message "\\bKael\\b: I still hate crowds."
  scene.message "\\b\\PN\\b: *grinning* Deal with it. We earned this."
end

GameData::Cutscene.define :ch49_ceremony do |scene|
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  scene.message "A ceremony was held in the capital."
  scene.message "The Champion. The Elite Four. World leaders."
  scene.message "All gathered to honor you."
  
  scene.message "\\bChampion\\b: These three trainers saved existence itself."
  scene.message "\\bChampion\\b: Their names will echo through eternity."
  scene.message "\\bChampion\\b: The Eternal Champions."
  
  scene.message "The crowd roared."
  scene.message "Your Pokémon basked in the glory."
  scene.message "Even Shadow seemed to enjoy it."
end

GameData::Cutscene.define :ch49_medals do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "You were given medals."
  scene.message "Honors beyond measure."
  scene.message "But they felt hollow compared to what you'd gained."
  
  scene.message "\\b\\PN\\b: *looking at Lyra and Kael* The real reward..."
  scene.message "\\b\\PN\\b: Is standing right here."
  
  scene.message "\\bLyra\\b: *tearing up* Stop. You'll make me cry."
  scene.message "\\bKael\\b: *quiet smile* Too late for that."
end

GameData::Cutscene.define :ch49_guardians_reveal do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  scene.camera_flash 30
  
  scene.message "And then—the Guardians revealed themselves."
  scene.message "Zacian. Xerneas. Yveltal."
  scene.message "Manifesting before the crowd."
  
  scene.message "Gasps. Screams. Awe."
  
  scene.message "\\bZacian\\b: We are the Guardians of Balance."
  scene.message "\\bXerneas\\b: Bound to these Chosen Ones."
  scene.message "\\bYveltal\\b: Protectors of your world. Forever."
  
  scene.message "The crowd fell to their knees."
  scene.message "But you stood tall."
  scene.message "Partners. Not servants."
end

GameData::Cutscene.define :ch49_empty_chairs do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "The cheering faded when four empty chairs were carried forward."
  scene.message "Aldric. Elena. Ragnar. Giratina."
  scene.message "Not trophies. Names. Lives that could not attend their own victory."

  scene.message "\\b\\PN\\b: Please stand. Not for us—for everyone who made this possible."
  scene.message "The capital rose in silence."
  scene.message "Raichu placed one paw against Ragnar's chair."
  scene.message "Lyra took Kael's hand. Neither pretended not to cry."
end

GameData::Cutscene.define :ch49_civilians_speak do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "After the ceremony, the barriers came down."
  scene.message "A Verdantia shopkeeper showed you the steel-blue ribbon from her broken window."
  scene.message "A Stormwatch mother introduced the Furfrou that found her child beneath the rubble."
  scene.message "Former Hand recruits waited at the edge of the square, uncertain they were welcome."

  scene.message "\\bTelmer\\b: Heroes win battles. Survivors decide what the victory becomes."
  scene.message "\\b\\PN\\b: Then help us build something better than what we inherited."
  scene.message "For the first time, the celebration felt less like an ending than a promise."
end

GameData::Cutscene.define :ch49_public_accounting do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "The next morning, Marcus and Aurora entered the public hearing together."
  scene.message "They did not wear medals. They did not ask the Chosen to defend them."

  scene.message "\\bAurora\\b: We saved Asgheim once by making Hoopa a prisoner."
  scene.message "\\bAurora\\b: Fear explains that choice. It does not excuse it."
  scene.message "\\bMarcus\\b: Let the whole record be opened. Including our part in it."

  scene.message "The truth did not undo the harm."
  scene.message "But for once, Asgheim chose not to bury it."
end

#===============================================================================
# Chapter 50: New Beginnings
#===============================================================================

GameData::Cutscene.define :ch50_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Lumiose City'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 50: New Beginnings"
  
  scene.message "The celebrations faded."
  scene.message "Life returned to normal."
  scene.message "But 'normal' had a new meaning now."
end

GameData::Cutscene.define :ch50_sanctuary_restored do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "Lyra and Kael returned to their Sanctuary."
  scene.message "Bigger now. More Pokémon than ever."
  scene.message "A haven for all who needed it."
  
  scene.message "\\bLyra\\b: Look at them all..."
  scene.message "\\bKael\\b: We built something good here."
  
  scene.message "Xerneas and Yveltal watched over the grounds."
  scene.message "Ancient gods protecting innocent lives."
  scene.message "It felt right."
end

GameData::Cutscene.define :ch50_aldric_archive do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "Aldric's recovered archive filled an entire room beneath the Sanctuary."
  scene.message "It contained cures, maps, Guardian histories—and instructions capable of building another living seal."

  scene.message "\\bLeague Archivist\\b: Destroy the dangerous pages. No one should possess this."
  scene.message "\\bKael\\b: Destruction is how every generation convinces the next one to repeat its mistakes."
  scene.message "\\bLyra\\b: But publishing a prison manual as ordinary research is not accountability."

  # TODO: Archive policy quest
  # - Consult former Hand recruits, researchers, Hoopa, and families of victims.
  # - Separate public historical records from restricted operational material.
  # - Hoopa holds veto rights over any research involving its rings or body.

  scene.message "\\b\\PN\\b: Preserve the truth. Restrict the weapon. Record who made that decision and let it be challenged."
  scene.message "For the first time, Aldric's silence became a lesson instead of an inheritance."
end

GameData::Cutscene.define :ch50_fracture_clinic do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "Lyra converted the eastern greenhouse into a clinic for fracture-touched Pokémon and people."
  scene.message "Some wounds glowed. Others were nightmares, missing memories, or fear of open skies."

  scene.message "\\bYoung Patient\\b: Can Xerneas fix me?"
  scene.message "Lyra knelt so their eyes were level."
  scene.message "\\bLyra\\b: Xerneas can help your body. You, me, and a lot of patient people will help with the rest."

  scene.message "She no longer promised to heal everyone. She promised no one would recover alone."

  # TODO: Repeatable postgame recovery requests emphasizing care, not combat.
end

GameData::Cutscene.define :ch50_kaels_night_group do |scene|
  scene.play_bgm 'Pokemon XY - Night'

  scene.message "After sunset, Kael met children who had lost family during the fractures."
  scene.message "He never called it therapy. They trained Pokémon, repaired fences, and spoke when silence became heavier than words."

  scene.message "\\bOrphaned Trainer\\b: Does it stop hurting?"
  scene.message "\\bKael\\b: No. But eventually it stops making every decision for you."
  scene.message "Shadow placed its head beneath the child's hand."
  scene.message "\\bKael\\b: Until then, borrow someone else's courage. Return it whenever you're ready."
end

GameData::Cutscene.define :ch50_hoopa_chooses_work do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "Hoopa spent weeks trying every road it had been denied."
  scene.message "Then it returned to the Sanctuary carrying medicine from Astoria and letters from families divided by the sea."

  scene.message "\\bHoopa\\b: Rings were lock. Then weapon. Hoopa wants rings to be bridge now."
  scene.message "\\bLyra\\b: Only when you want to."
  scene.message "\\bHoopa\\b: Hoopa knows. That is why Hoopa wants to."

  # TODO: Unlock voluntary Hoopa transport network and Astoria delivery quests.
  # Hoopa refuses destinations involving containment research without penalty.
end

GameData::Cutscene.define :ch50_rebuilding_route do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'

  scene.message "Your first journey after becoming Eternal Champion lasted six miles."
  scene.message "You cleared fracture-glass from a school route, rebuilt a footbridge, and delivered medicine to a town absent from every ceremony."

  scene.message "\\bZacian\\b: No prophecy led us here."
  scene.message "\\b\\PN\\b: Good. People shouldn't need a prophecy before someone helps."
  scene.message "Zacian lowered its crowned head, and together you lifted the final beam into place."
end

GameData::Cutscene.define :ch50_player_choice do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "You visited often."
  scene.message "But you had your own path."
  
  scene.message "\\bMarcus\\b: So, Champion... what now?"
  scene.message "\\bAurora\\b: You could do anything. Be anything."
  
  scene.message "\\b\\PN\\b: I think... I want to keep helping."
  scene.message "\\b\\PN\\b: There are always people who need it."
  
  scene.message "Zacian's form shimmered beside you."
  scene.message "\\bZacian\\b: Then we travel together. Always."
end

GameData::Cutscene.define :ch50_ragnar_visit do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "Before moving on, you visited the hilltop."
  scene.message "Ragnar's grave. Unchanged."
  
  scene.message "\\b\\PN\\b: Hey, idiot."
  scene.message "\\b\\PN\\b: Saved the world again."
  scene.message "\\b\\PN\\b: For real this time."
  
  scene.message "Raichu sat beside the stone."
  scene.message "Still loyal. Still loving."
  
  scene.message "\\b\\PN\\b: Miss you every day."
  scene.message "\\b\\PN\\b: But I think you'd be proud."
  
  scene.message "The wind rustled. Like a laugh."
end

GameData::Cutscene.define :ch50_moving_forward do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Lyra and Kael joined you."
  scene.message "Together at the grave. One last time."
  
  scene.message "\\bLyra\\b: *placing flowers* For Elena too."
  scene.message "\\bKael\\b: *quiet* And Mira. And everyone."
  
  scene.message "\\b\\PN\\b: They're at peace now."
  scene.message "\\b\\PN\\b: Because of what we did."
  
  scene.message "\\bLyra\\b: *smiling through tears* Yeah."
  scene.message "\\bKael\\b: *nodding* Yeah."
end

GameData::Cutscene.define :ch50_sunset do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "The three of you sat on the hilltop."
  scene.message "Watching the sunset."
  scene.message "Just like old times."
  
  scene.message "\\bLyra\\b: We did it, didn't we?"
  scene.message "\\bKael\\b: Saved the world. Sealed a god."
  scene.message "\\b\\PN\\b: Not bad for a bunch of kids from Asgheim."
  
  scene.message "\\bLyra\\b: *laughing* We're not kids anymore."
  scene.message "\\bKael\\b: No. We're not."
  
  scene.message "The sun dipped below the horizon."
  scene.message "Tomorrow would bring new adventures."
  scene.message "But tonight... tonight was for peace."
end
#===============================================================================
# Chapter 51: The Future Together
#===============================================================================

GameData::Cutscene.define :ch51_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Lumiose City'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 51: The Future Together"
  scene.message "\\ts[]Two Years Later..."
  
  scene.message "Time had passed."
  scene.message "The world had healed."
  scene.message "And life... life was good."
end

GameData::Cutscene.define :ch51_sanctuary_thriving do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "The Sanctuary had become legendary."
  scene.message "Pokémon from across the world found refuge there."
  scene.message "Lyra and Kael had built something beautiful."
  
  scene.message "\\bLyra\\b: *laughing at a playful Eevee* Stop that!"
  scene.message "\\bKael\\b: *smiling softly* She likes you."
  
  scene.message "Xerneas grazed peacefully in the meadow."
  scene.message "Yveltal perched on the ancient oak."
  scene.message "Guardians watching over their domain."
end

GameData::Cutscene.define :ch51_player_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "You arrived at the Sanctuary gates."
  scene.message "Zacian beside you. Your team behind you."
  
  scene.message "\\bLyra\\b: \\PN!"
  scene.message "She ran to embrace you."
  
  scene.message "\\bLyra\\b: You made it!"
  scene.message "\\b\\PN\\b: Wouldn't miss it for the world."
  
  scene.message "\\bKael\\b: *approaching* Good to see you."
  scene.message "\\bKael\\b: *small smile* Still traveling?"
  scene.message "\\b\\PN\\b: Always. But I always come back."
end

GameData::Cutscene.define :ch51_special_occasion do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\b\\PN\\b: So... today's the day?"
  
  scene.message "Lyra blushed. Kael looked away."
  scene.message "But both were smiling."
  
  scene.message "\\bLyra\\b: Today's the day."
  scene.message "\\bKael\\b: *quiet* If you'll still have us."
  
  scene.message "\\b\\PN\\b: *grinning* Like I'd miss my best friends' wedding."
end

GameData::Cutscene.define :ch51_preparations do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "The Sanctuary was decorated beautifully."
  scene.message "Flowers everywhere. Pokémon helping set up."
  scene.message "It was perfect."
  
  scene.message "\\bLyra's Mother\\b: My little girl..."
  scene.message "\\bLyra's Father\\b: She's not little anymore."
  
  scene.message "Even Kael's eyes were misty."
  scene.message "For once, he didn't hide it."
end

GameData::Cutscene.define :ch51_how_they_chose do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "The night before the wedding, you found Kael repairing a fence alone."
  scene.message "It was straight. He had already repaired it twice."

  scene.message "\\b\\PN\\b: Nervous?"
  scene.message "\\bKael\\b: Terrified. Battles are easier. You know when they begin."
  scene.message "\\bKael\\b: Loving someone means choosing them again without knowing the next turn."

  scene.message "Lyra appeared with three cups of tea."
  scene.message "\\bLyra\\b: Then tomorrow isn't forever all at once. It's just our next choice."
  scene.message "\\bKael\\b: *taking her hand* I can do next."
end

GameData::Cutscene.define :ch51_places_for_the_absent do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "Four lanterns waited beside the aisle."
  scene.message "Elena's ring hung from the first. Mira's red scarf from the second."
  scene.message "Ragnar's cracked League pin marked the third. Aldric's spectacles marked the fourth."

  scene.message "\\bLyra\\b: I used to think remembering meant refusing to move on."
  scene.message "\\bKael\\b: And I thought moving on meant betrayal."
  scene.message "\\b\\PN\\b: Maybe it means carrying them somewhere new."

  scene.message "Together, you lit every lantern."
end

GameData::Cutscene.define :ch51_willow_and_shadow do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "Willow inspected every flower twice. Shadow replaced three ribbons with illusions."
  scene.message "Hoopa added a fourth ribbon to everything and denied involvement."

  scene.message "\\bLyra\\b: Our Pokémon are handling this better than we are."
  scene.message "\\bKael\\b: Shadow believes panic is a form of decoration."
  scene.message "\\bHoopa\\b: Hoopa believes weddings need more rings!"

  scene.message "The laughter loosened something in all of you."
  scene.message "Tomorrow did not need to be perfect. It only needed to be theirs."
end

#===============================================================================
# Chapter 52: The Wedding
#===============================================================================

GameData::Cutscene.define :ch52_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 52: The Wedding"
  
  scene.message "The sun was setting."
  scene.message "Golden light bathed the Sanctuary."
  scene.message "The perfect moment for new beginnings."
end

GameData::Cutscene.define :ch52_ceremony do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Friends and family gathered."
  scene.message "Your parents. Lyra's parents. Everyone who mattered."
  scene.message "Even the Guardians attended."
  
  scene.message "Zacian stood beside you as best man."
  scene.message "Xerneas blessed the union."
  scene.message "Yveltal watched over all."
end

GameData::Cutscene.define :ch52_vows do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Lyra walked down the aisle."
  scene.message "Willow at her side. Radiant."
  scene.message "Kael waited, Shadow beside him."
  
  scene.message "\\bKael\\b: *voice rough* You're beautiful."
  scene.message "\\bLyra\\b: *tearful* So are you."
  
  scene.message "They exchanged vows."
  scene.message "Promises of love. Of protection. Of forever."
  scene.message "Not just to each other—to the world they'd saved."
end

GameData::Cutscene.define :ch52_rings do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: I never thought I'd have this."
  scene.message "\\bKael\\b: A home. A family. A future."
  scene.message "\\bKael\\b: You gave me all of it."
  
  scene.message "\\bLyra\\b: And you gave me courage."
  scene.message "\\bLyra\\b: Strength. Someone who sees me."
  scene.message "\\bLyra\\b: I love you, Kael."
  
  scene.message "\\bKael\\b: I love you too, Lyra."
  
  scene.message "They exchanged rings."
  scene.message "Simple bands. Eternal promises."
end

GameData::Cutscene.define :ch52_kiss do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.camera_flash 20
  
  scene.message "\\bOfficiator\\b: I now pronounce you partners for life."
  scene.message "\\bOfficiator\\b: You may kiss."
  
  scene.message "They kissed."
  scene.message "Gentle. Perfect. Right."
  
  scene.message "The crowd cheered."
  scene.message "Pokémon cried out in joy."
  scene.message "Even the Guardians seemed to smile."
end

GameData::Cutscene.define :ch52_celebration do |scene|
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  scene.message "The celebration lasted all night."
  scene.message "Dancing. Laughter. Joy."
  scene.message "Everything they'd fought for, realized."
  
  scene.message "\\b\\PN\\b: *to the newlyweds* I'm so happy for you."
  scene.message "\\bLyra\\b: *hugging you* Thank you. For everything."
  scene.message "\\bKael\\b: *nodding* We wouldn't be here without you."
  
  scene.message "\\b\\PN\\b: We wouldn't be anywhere without each other."
end

#===============================================================================
# Chapter 53: Final Farewells
#===============================================================================

GameData::Cutscene.define :ch53_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 53: Final Farewells"
  
  scene.message "The next morning came too quickly."
  scene.message "It was time to say goodbye."
  scene.message "At least for now."
end

GameData::Cutscene.define :ch53_morning do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "You found them on the hilltop."
  scene.message "Their spot. Overlooking the Sanctuary."
  
  scene.message "\\bLyra\\b: Sneaking off already?"
  scene.message "\\b\\PN\\b: You know me. Can't stay in one place."
  
  scene.message "\\bKael\\b: Where to next?"
  scene.message "\\b\\PN\\b: Wherever I'm needed."
  scene.message "\\b\\PN\\b: That's what heroes do, right?"
end

GameData::Cutscene.define :ch53_promises do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: Promise you'll visit."
  scene.message "\\b\\PN\\b: Always."
  
  scene.message "\\bKael\\b: And if you ever need us..."
  scene.message "\\bKael\\b: *tapping his ring* We're one call away."
  
  scene.message "\\b\\PN\\b: Same goes for you."
  scene.message "\\b\\PN\\b: The three of us... we're family."
  scene.message "\\b\\PN\\b: Nothing changes that."
end

GameData::Cutscene.define :ch53_group_hug do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "The three of you embraced."
  scene.message "No words needed."
  scene.message "Everything said in that moment."
  
  scene.message "Your Pokémon gathered around."
  scene.message "Starters. Partners. Family."
  scene.message "All of them. Together."
  
  scene.message "Even the Guardians watched."
  scene.message "Ancient beings moved by mortal love."
end

GameData::Cutscene.define :ch53_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'
  
  scene.message "You walked to the Sanctuary gates."
  scene.message "Zacian beside you. Team ready."
  
  scene.message "\\bLyra\\b: *waving* Don't forget us!"
  scene.message "\\bKael\\b: *arm around her* Be safe out there."
  
  scene.message "\\b\\PN\\b: *smiling back* Never. And always."
  
  scene.message "You stepped through the gates."
  scene.message "The road stretched before you."
  scene.message "Endless possibilities."
end

GameData::Cutscene.define :ch53_first_stop do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'

  scene.message "Your first destination was not a ruin or a throne."
  scene.message "It was a riverside town whose bridge had washed away."
  scene.message "No prophecy waited there. No ancient enemy. Just people who needed help."

  scene.message "\\bZacian\\b: A modest battlefield."
  scene.message "\\b\\PN\\b: The important kind."
  scene.message "Together, trainers and Pokémon rebuilt the crossing before sunset."
end

GameData::Cutscene.define :ch53_letter_home do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "That night, you wrote to the Sanctuary."
  scene.message "Not a report from the Champion. A letter from a friend."

  scene.message "\\b\\PN\\b: 'Bridge fixed. Nobody tried to end existence. Good first day.'"
  scene.message "Hoopa's ring opened above the page and dropped a reply into your lap."
  scene.message "\\bLyra's Note\\b: 'Proud of you. Come home before Kael pretends he doesn't miss you.'"
  scene.message "\\bKael's Note\\b: 'I can see what she wrote. Travel safely.'"

  scene.message "Distance was no longer the same thing as being alone."
end

#===============================================================================
# Chapter 54: The Road Ahead
#===============================================================================

GameData::Cutscene.define :ch54_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Route Theme'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 54: The Road Ahead"
  
  scene.message "Years passed."
  scene.message "Adventures continued."
  scene.message "But some things never changed."
end

GameData::Cutscene.define :ch54_montage do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'
  
  scene.message "\\i[MONTAGE]"
  
  scene.message "You traveling the world with Zacian."
  scene.message "Helping trainers. Protecting Pokémon."
  scene.message "The Guardian's Champion."
  
  scene.message "Lyra and Kael's Sanctuary growing."
  scene.message "Hundreds of Pokémon finding homes."
  scene.message "Love manifest in every corner."
  
  scene.message "Your parents, proud and content."
  scene.message "Marcus still training. Aurora still researching."
  scene.message "Their child... a legend."
end

GameData::Cutscene.define :ch54_reunion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "Every year, you reunited."
  scene.message "Same hilltop. Same sunset."
  scene.message "Same unbreakable bond."
  
  scene.message "\\bLyra\\b: *older now, wiser* Remember when we were scared kids?"
  scene.message "\\bKael\\b: *silver in his hair* Barely."
  scene.message "\\b\\PN\\b: We grew up, didn't we?"
  
  scene.message "\\bLyra\\b: Together. Always together."
end

GameData::Cutscene.define :ch54_legacy do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "New trainers looked up to you."
  scene.message "Young heroes inspired by your journey."
  scene.message "The next generation."
  
  scene.message "\\b\\PN\\b: Think they'll be okay?"
  scene.message "\\bKael\\b: They have good role models."
  scene.message "\\bLyra\\b: They have each other."
  
  scene.message "The world was safe."
  scene.message "Because you made it so."
  scene.message "Because you never gave up."
end

GameData::Cutscene.define :ch54_next_generation do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "One spring, three young trainers arrived at the Sanctuary."
  scene.message "They had copied the old crown-marks onto their wrists in blue ink."

  scene.message "\\bYoung Trainer\\b: We want to be Chosen too."
  scene.message "\\bLyra\\b: Being chosen never made us heroes."
  scene.message "\\bKael\\b: The decisions after it did. Most of those were small."
  scene.message "\\b\\PN\\b: Start by helping with the morning feeding. Then choose again tomorrow."

  scene.message "The children groaned at the buckets. They carried them anyway."
end

GameData::Cutscene.define :ch54_what_the_world_remembered do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "History books called it the War of the Three Crowns."
  scene.message "The name was wrong, but memorable. History often preferred memorable."

  scene.message "So every year you added names to the public archive:"
  scene.message "Telmer and the defectors. Eagle's Watch. The healers of Frostfall."
  scene.message "The shopkeepers who reopened. The strangers who carried one another home."

  scene.message "\\bAurora\\b: A true record is never finished."
  scene.message "\\b\\PN\\b: Good. Then no one gets erased again."
end

GameData::Cutscene.define :ch54_guardians_and_time do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "The Guardians did not age. You did."
  scene.message "For years, none of you spoke about what that meant."

  scene.message "\\bZacian\\b: I will outlive you."
  scene.message "\\b\\PN\\b: I know."
  scene.message "\\bZacian\\b: I have outlived many. Knowing has never made it easy."

  scene.message "You rested a hand against the old warrior's mane."
  scene.message "\\b\\PN\\b: Then don't spend today mourning tomorrow."
  scene.message "\\bZacian\\b: *quietly* Steady."
end

#===============================================================================
# Chapter 55: True Ending - The Final Chapter
#===============================================================================

GameData::Cutscene.define :ch55_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_in
  
  scene.message "\\ts[]Chapter 55: The Final Chapter"
  scene.message "\\ts[]Many Years Later..."
  
  scene.message "You sat on the familiar hilltop."
  scene.message "Older now. But still you."
  scene.message "Still chosen."
end

GameData::Cutscene.define :ch55_reflection do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Zacian lay beside you."
  scene.message "Ancient friends. Eternal partners."
  
  scene.message "\\bZacian\\b: *gentle* Any regrets?"
  scene.message "\\b\\PN\\b: *smiling* Not one."
  
  scene.message "Below, the Sanctuary bustled."
  scene.message "Lyra and Kael's grandchildren playing."
  scene.message "Life continuing. Thriving."
end

GameData::Cutscene.define :ch55_peace do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "Lyra and Kael joined you."
  scene.message "Grey-haired but still bright-eyed."
  scene.message "Still the same friends from all those years ago."
  
  scene.message "\\bLyra\\b: *sitting beside you* Beautiful sunset."
  scene.message "\\bKael\\b: *quiet* Like always."
  
  scene.message "\\b\\PN\\b: Remember when this all started?"
  scene.message "\\bLyra\\b: Scared kids with strange marks."
  scene.message "\\bKael\\b: No idea what was coming."
  scene.message "\\b\\PN\\b: Look at us now."
end

GameData::Cutscene.define :ch55_guardians_speak do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  scene.message "The Guardians gathered around you."
  scene.message "Xerneas. Yveltal. Zacian."
  scene.message "Eternal companions."
  
  scene.message "\\bXerneas\\b: You lived well."
  scene.message "\\bYveltal\\b: Loved fiercely."
  scene.message "\\bZacian\\b: And saved everything."
  
  scene.message "\\b\\PN\\b: We couldn't have done it without you."
  scene.message "\\bZacian\\b: Nor we without you."
end

GameData::Cutscene.define :ch55_final_sunset do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "The sun set over Asgheim."
  scene.message "Golden light on green hills."
  scene.message "The world you'd saved, beautiful and whole."
  
  scene.message "\\bLyra\\b: *taking Kael's hand* I love you both."
  scene.message "\\bKael\\b: *voice rough* As do I."
  scene.message "\\b\\PN\\b: Always."
  
  scene.message "Your pendant pulsed one last time."
  scene.message "Not a warning. Not a call."
  scene.message "Just... warmth. Gratitude. Love."
end

GameData::Cutscene.define :ch55_ending do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Credits'
  scene.fade_in
  
  scene.message "The world was saved."
  scene.message "Not just once, but twice."
  scene.message "And it stayed saved."
  
  scene.message "Professor Aldric. Elena. Ragnar. So many others."
  scene.message "Their sacrifices honored in every peaceful day."
  scene.message "Their memory eternal."
  
  scene.message "And three young trainers..."
  scene.message "Marked by guardians, bonded by friendship..."
  scene.message "Had changed the course of existence itself."
  
  scene.message "They lived full lives."
  scene.message "Loved deeply."
  scene.message "And never, ever forgot."
  
  scene.choice ["We did good, didn't we?", "I wouldn't change a thing"] do |choice|
    if choice == 0
      pbMessage("\\bLyra\\b: *smiling* The best.")
      pbMessage("\\bKael\\b: *nodding* No regrets.")
      pbMessage("\\bZacian\\b: Heroes. All of you.")
    else
      pbMessage("\\bLyra\\b: *tearful* Neither would I.")
      pbMessage("\\bKael\\b: *quiet* It was worth everything.")
      pbMessage("\\bZacian\\b: Every moment. Every sacrifice. Worth it.")
    end
  end
  
  scene.message "The three friends looked out at the horizon."
  scene.message "Their Pokémon beside them."
  scene.message "Partners. Family. Forever."
  
  scene.fade_out
  scene.message "\\ts[]THE END"
  scene.message "\\ts[]Thank you for playing Pokémon Shattered Crowns!"
end

GameData::Cutscene.define :ch55_credits_montage do |scene|
  scene.play_bgm 'Pokemon XY - Credits'
  
  scene.message "\\i[CREDITS MONTAGE]"
  
  scene.message "Your parents, watching proudly from above."
  scene.message "Marcus's training legacy living on."
  scene.message "Aurora's research saving countless lives."
  
  scene.message "Lyra and Kael's Sanctuary, a beacon of hope."
  scene.message "Generations of Pokémon and people finding refuge."
  scene.message "Love that outlasted even the gods."
  
  scene.message "You, the Champion. The Chosen."
  scene.message "Who traveled until the end."
  scene.message "Who never stopped helping."
  
  scene.message "And sometimes, on quiet nights..."
  scene.message "Your mark still glowed."
  scene.message "A reminder of what you achieved."
  scene.message "A promise that you were never alone."
end

GameData::Cutscene.define :ch55_true_ending do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_in
  
  scene.message "..."
  scene.message "Somewhere, in the heart of the Distortion World..."
  scene.message "Giratina rested."
  
  scene.message "The seal held strong."
  scene.message "Nidhoggr slumbered, bound forever."
  scene.message "And the world was at peace."
  
  scene.message "\\bGiratina\\b: *content* Well done, Chosen Ones..."
  scene.message "\\bGiratina\\b: Well done..."
  
  scene.fade_out
  scene.message "\\ts[]And so the story ends."
  scene.message "\\ts[]Not with darkness..."
  scene.message "\\ts[]But with light."
  scene.message "\\ts[]With hope."
  scene.message "\\ts[]With love."
  
  scene.camera_flash 20
  
  scene.message "\\ts[]THE TRUE END"
  scene.message "\\ts[]Thank you for experiencing this journey."
  scene.message "\\ts[]Pokémon Shattered Crowns"
end
