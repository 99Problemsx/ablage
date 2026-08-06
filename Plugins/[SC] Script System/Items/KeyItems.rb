#=============================================================================
# KeyItems
#=============================================================================

GameData::Item.define :"ESCAPEROPE" do |i|
  i.name "Escape Rope"
  i.name_plural "Escape Ropes"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A long, durable rope. Use it to escape instantly from a cave or a dungeon."
end

GameData::Item.define :"BICYCLE" do |i|
  i.name "Bicycle"
  i.name_plural "Bicycles"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A folding Bicycle that enables much faster movement than the Running Shoes."
end

GameData::Item.define :"OLDROD" do |i|
  i.name "Old Rod"
  i.name_plural "Old Rods"
  i.pocket 8
  i.field_use :"Direct"
  i.description "An old and beat-up fishing rod. Use it by any body of water to fish for wild aquatic Pokémon."
end

GameData::Item.define :"GOODROD" do |i|
  i.name "Good Rod"
  i.name_plural "Good Rods"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A new, good-quality fishing rod. Use it by any body of water to fish for wild aquatic Pokémon."
end

GameData::Item.define :"SUPERROD" do |i|
  i.name "Super Rod"
  i.name_plural "Super Rods"
  i.pocket 8
  i.field_use :"Direct"
  i.description "An awesome, high-tech fishing rod. Use it by any body of water to fish for wild aquatic Pokémon."
end

GameData::Item.define :"ITEMFINDER" do |i|
  i.name "Itemfinder"
  i.name_plural "Itemfinders"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A device used for finding items. If there is a hidden item nearby when it is used, it emits a signal."
end

GameData::Item.define :"DOWSINGMACHINE" do |i|
  i.name "Dowsing Machine"
  i.name_plural "Dowsing Machines"
  i.pocket 8
  i.field_use :"Direct"
  i.description "It checks for unseen items in the area and makes noise and lights when it finds something."
end

GameData::Item.define :"DOWSINGROD" do |i|
  i.name "Dowsing Rod"
  i.name_plural "Dowsing Rods"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A rune-carved divining rod. The runes hum when something buried lies in range — and they point the way."
end

GameData::Item.define :"POKERADAR" do |i|
  i.name "Poké Radar"
  i.name_plural "Poké Radars"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A tool that can search out Pokémon that are hiding in grass. Its battery is recharged as you walk."
end

GameData::Item.define :"TOWNMAP" do |i|
  i.name "Town Map"
  i.name_plural "Town Maps"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A very convenient map that can be viewed anytime. It even shows your present location."
end

GameData::Item.define :"POKEFLUTE" do |i|
  i.name "Poké Flute"
  i.name_plural "Poké Flutes"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.battle_use :"Direct"
  i.description "A flute that is said to instantly awaken any Pokémon. It has a lovely tone."
end

GameData::Item.define :"COINCASE" do |i|
  i.name "Coin Case"
  i.name_plural "Coin Cases"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A case for holding coins obtained at the Game Corner. It holds up to 99,999 coins."
end

GameData::Item.define :"SOOTSACK" do |i|
  i.name "Soot Sack"
  i.name_plural "Soot Sacks"
  i.pocket 8
  i.description "A sack used to gather and hold volcanic ash."
end

GameData::Item.define :"SILPHSCOPE" do |i|
  i.name "Silph Scope"
  i.name_plural "Silph Scopes"
  i.pocket 8
  i.description "A scope that makes unseeable Pokémon visible. It is made by Silph Co."
end

GameData::Item.define :"DEVONSCOPE" do |i|
  i.name "Devon Scope"
  i.name_plural "Devon Scopes"
  i.pocket 8
  i.description "A device by Devon that signals any unseeable Pokémon."
end

GameData::Item.define :"SQUIRTBOTTLE" do |i|
  i.name "Squirt Bottle"
  i.name_plural "Squirt Bottles"
  i.pocket 8
  i.description "A watering can shaped like a Squirtle. It helps promote healthy growth of Berries planted in soft soil."
end

GameData::Item.define :"SPRAYDUCK" do |i|
  i.name "Sprayduck"
  i.name_plural "Sprayducks"
  i.pocket 8
  i.description "A watering can shaped like a Psyduck. It helps promote healthy growth of Berries planted in soft soil."
end

GameData::Item.define :"WAILMERPAIL" do |i|
  i.name "Wailmer Pail"
  i.name_plural "Wailmer Pails"
  i.pocket 8
  i.description "A nifty watering pail. Use it to promote strong growth in Berries planted in soft soil."
end

GameData::Item.define :"GRACIDEA" do |i|
  i.name "Gracidea"
  i.name_plural "Gracideas"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A flower sometimes bundled in bouquets to convey gratitude on special occasions like birthdays."
end

GameData::Item.define :"AURORATICKET" do |i|
  i.name "Aurora Ticket"
  i.name_plural "Aurora Tickets"
  i.pocket 8
  i.description "A ticket required to board the ship to Doxy Island. It glows beautifully."
end

GameData::Item.define :"OLDSEAMAP" do |i|
  i.name "Old Sea Map"
  i.name_plural "Old Sea Maps"
  i.pocket 8
  i.description "A faded sea chart that shows the way to a certain island."
end

GameData::Item.define :"DNASPLICERS" do |i|
  i.name "DNA Splicers"
  i.name_plural "DNA Splicers"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A splicer that fuses Kyurem and a certain Pokémon. They are said to have been one in the beginning."
end

GameData::Item.define :"DNASPLICERSUSED" do |i|
  i.name "DNA Splicers"
  i.name_plural "DNA Splicers"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A splicer that separates Kyurem and a certain Pokémon when they have been fused."
end

GameData::Item.define :"REVEALGLASS" do |i|
  i.name "Reveal Glass"
  i.name_plural "Reveal Glasses"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A glass that reveals the truth. It is a mysterious glass that returns a Pokémon back to its original shape."
end

GameData::Item.define :"OVALCHARM" do |i|
  i.name "Oval Charm"
  i.name_plural "Oval Charms"
  i.pocket 8
  i.description "An oval charm said to increase the chance of Eggs being found at the Day Care."
end

GameData::Item.define :"SHINYCHARM" do |i|
  i.name "Shiny Charm"
  i.name_plural "Shiny Charms"
  i.pocket 8
  i.description "A shiny charm said to increase the chance of finding a Shiny Pokémon."
end

GameData::Item.define :"SPRINKLOTAD" do |i|
  i.name "Sprinklotad"
  i.name_plural "Sprinklotads"
  i.pocket 8
  i.description "A watering can shaped like a Lotad. It helps promote the healthy growth of any Berries planted in soft soil."
end

GameData::Item.define :"PRISONBOTTLE" do |i|
  i.name "Prison Bottle"
  i.name_plural "Prison Bottles"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A bottle believed to have been used to seal away the power of a certain Pokémon long, long ago."
end

GameData::Item.define :"MEGARING" do |i|
  i.name "Mega Ring"
  i.name_plural "Mega Rings"
  i.pocket 8
  i.description "This ring contains an untold power that somehow enables Pokémon carrying Mega Stones to Mega Evolve."
end

GameData::Item.define :"ZYGARDECUBE" do |i|
  i.name "Zygarde Cube"
  i.name_plural "Zygarde Cubes"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "An item in which Zygarde Cores and Cells are gathered. You can also use it to change Zygarde's forms."
end

GameData::Item.define :"NSOLARIZER" do |i|
  i.name "N-Solarizer"
  i.name_plural "N-Solarizers"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A machine to fuse Necrozma, which needs light, and Solgaleo."
end

GameData::Item.define :"NSOLARIZERUSED" do |i|
  i.name "N-Solarizer"
  i.name_plural "N-Solarizers"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A machine to separate Necrozma, which needed light, from Solgaleo."
end

GameData::Item.define :"NLUNARIZER" do |i|
  i.name "N-Lunarizer"
  i.name_plural "N-Lunarizers"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A machine to fuse Necrozma, which needs light, and Lunala."
end

GameData::Item.define :"NLUNARIZERUSED" do |i|
  i.name "N-Lunarizer"
  i.name_plural "N-Lunarizers"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A machine to separate Necrozma, which needed light, from Lunala."
end

GameData::Item.define :"ROTOMCATALOG" do |i|
  i.name "Rotom Catalog"
  i.name_plural "Rotom Catalogs"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A catalog of devices that Rotom like. Use the catalog to have Rotom hop in and out of the devices listed within."
end

GameData::Item.define :"REINSOFUNITY" do |i|
  i.name "Reins of Unity"
  i.name_plural "Reins of Unity"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "Reins that people presented to the king. They unite Calyrex with its beloved steed."
end

GameData::Item.define :"REINSOFUNITYUSED" do |i|
  i.name "Reins of Unity"
  i.name_plural "Reins of Unity"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "Reins that people presented to the king. They separate Calyrex and its beloved steed."
end

GameData::Item.define :"CATCHINGCHARM" do |i|
  i.name "Catching Charm"
  i.name_plural "Catching Charms"
  i.pocket 8
  i.description "A charm said to increase the chance of getting a critical catch. The charm doesn't shake much."
end

GameData::Item.define :"EXPCHARM" do |i|
  i.name "Exp. Charm"
  i.name_plural "Exp. Charms"
  i.pocket 8
  i.description "A charm that increases the Exp. Points that Pokémon can get. A machine-like object is inside it."
end

GameData::Item.define :"POKEMONBOXLINK" do |i|
  i.name "Pokémon Box Link"
  i.name_plural "Pokémon Box Links"
  i.pocket 8
  i.description "A device that allows you to access the Pokémon storage system. There are some places where it won't work."
end

GameData::Item.define :"CONQUESTSHARD" do |i|
  i.name "Conquest Shard"
  i.name_plural "Conquest Shards"
  i.pocket 8
  i.description "A fragment of the Shattered Crown, imbued with Zacian's essence. It radiates an aura of courageous determination."
end

GameData::Item.define :"GROWTHSHARD" do |i|
  i.name "Growth Shard"
  i.name_plural "Growth Shards"
  i.pocket 8
  i.description "A fragment of the Shattered Crown, imbued with Xerneas's essence. It pulses with the rhythm of life itself."
end

GameData::Item.define :"CYCLESHARD" do |i|
  i.name "Cycle Shard"
  i.name_plural "Cycle Shards"
  i.pocket 8
  i.description "A fragment of the Shattered Crown, imbued with Yveltal's essence. It hums with the inevitability of endings and new beginnings."
end

GameData::Item.define :"SHADOWFEATHER" do |i|
  i.name "Shadow Feather"
  i.name_plural "Shadow Feathers"
  i.pocket 8
  i.description "A dark feather left behind by a mysterious presence. It feels cold to the touch and seems to absorb light."
end

GameData::Item.define :"CRESCENTSHARD" do |i|
  i.name "Crescent Shard"
  i.name_plural "Crescent Shards"
  i.pocket 8
  i.description "A crescent-shaped fragment that shimmers with moonlight. Its origin is unknown, but it resonates with the Crown shards."
end

GameData::Item.define :"ALDRICSLETTER" do |i|
  i.name "Aldric's Letter"
  i.name_plural "Aldric's Letters"
  i.pocket 8
  i.description "A letter from Professor Aldric with instructions for your journey. It bears his official seal."
end

GameData::Item.define :"FESTIVALPASS" do |i|
  i.name "Festival Pass"
  i.name_plural "Festival Passes"
  i.pocket 8
  i.description "A special pass allowing entry to the Dawnhaven Village Festival. It's decorated with colorful patterns."
end

GameData::Item.define :"ANCIENTRUNETEXT" do |i|
  i.name "Ancient Rune Text"
  i.name_plural "Ancient Rune Texts"
  i.pocket 8
  i.description "An old scroll containing mysterious runes. Professor Aldric might be able to help translate it."
end

GameData::Item.define :"ANCIENTCROWNFRAGMENT" do |i|
  i.name "Crown Fragment"
  i.name_plural "Crown Fragments"
  i.pocket 8
  i.description "An ancient fragment pulsing with guardian energy. Collect all three to forge the Crown Pendant."
end

GameData::Item.define :"SHADOWOATHBADGE" do |i|
  i.name "Shadow Oath Badge"
  i.name_plural "Shadow Oath Badges"
  i.pocket 8
  i.description "A badge forged from Kael's confrontation with his past. Boosts the power of Dark-type moves when held."
end

GameData::Item.define :"RESONANCECRYSTAL" do |i|
  i.name "Resonance Crystal"
  i.name_plural "Resonance Crystals"
  i.pocket 8
  i.description "A crystal attuned to Crown magic through Lyra's bloodline. Boosts Psychic and Fairy-type moves."
end

GameData::Item.define :"CROWNHEIRRING" do |i|
  i.name "Crown Heir Ring"
  i.name_plural "Crown Heir Rings"
  i.pocket 8
  i.description "Princess Elena's heirloom ring. Grants +10% to all stats in decisive battles."
end

GameData::Item.define :"TOPPERCENTBADGE" do |i|
  i.name "Top Percent Badge"
  i.name_plural "Top Percent Badges"
  i.pocket 8
  i.description "A badge certifying you witnessed Joey's Rattata - truly in the top percentage."
end

GameData::Item.define :"ANCIENTCODEX" do |i|
  i.name "Ancient Codex"
  i.name_plural "Ancient Codexes"
  i.pocket 8
  i.description "A book predating civilization, containing the secrets of the Crown's creation."
end

GameData::Item.define :"ROTOMPHONE" do |i|
  i.name "Rotom Phone"
  i.name_plural "Rotom Phones"
  i.pocket 8
  i.description "The latest model of smartphone. A Rotom lives within it, and it can be used to run all sorts of handy apps."
end

GameData::Item.define :"SCARLETBOOK" do |i|
  i.name "Scarlet Book"
  i.name_plural "Scarlet Books"
  i.pocket 8
  i.description "A record of the Heath's expedition on the Great Crater of Paldea. It has the name \"Sada\" written on it."
end

GameData::Item.define :"VIOLETBOOK" do |i|
  i.name "Violet Book"
  i.name_plural "Violet Books"
  i.pocket 8
  i.description "A record of the Heath's expedition on the Great Crater of Paldea. It has the name \"Turo\" written on it."
end

GameData::Item.define :"TEALMASK" do |i|
  i.name "Teal Mask"
  i.name_plural "Teal Masks"
  i.pocket 8
  i.description "A teal mask patterned after the face of an ogre. Dropped by Ogerpon after visiting the Festival of Masks."
end

GameData::Item.define :"INDIGODISK" do |i|
  i.name "Indigo Disk"
  i.name_plural "Indigo Disks"
  i.pocket 8
  i.description "A mysterious disk with an indigo shine to it, given by the Top Champion. It seems to be tied to Area Zero."
end

GameData::Item.define :"MYTHICALPECHABERRY" do |i|
  i.name "Mythical Pecha Berry"
  i.name_plural "Mythical Pecha Berries"
  i.pocket 8
  i.description "A Pecha Berry of the highest quality. It's one of every a few years berry that carefully tended by an expert."
end

GameData::Item.define :"SYNCHROMACHINE" do |i|
  i.name "Synchro Machine"
  i.name_plural "Synchro Machines"
  i.pocket 8
  i.description "A device that synchronizes your mind and feelings with your Pokémon's as one. It's still a prototype—hence."
end

GameData::Item.define :"METEORITE" do |i|
  i.name "Meteorite"
  i.name_plural "Meteorites"
  i.pocket 8
  i.field_use :"OnPokemon"
  i.description "A rock that fell to earth from space. It allows a certain species of Pokémon to change forms."
end

GameData::Item.define :"BRIARSBOOK" do |i|
  i.name "Briar's Book"
  i.name_plural "Briar's Books"
  i.pocket 8
  i.description "A proof copy of the exploration notes, along with Briar's thoughts covering the Area Zero Underdepths."
end

GameData::Item.define :"REDCANARIPLUSHLV1" do |i|
  i.name "Red Canari Plush"
  i.name_plural "Red Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a red charm. It slightly boosts the Exp. Points that Pokémon can get."
end

GameData::Item.define :"REDCANARIPLUSHLV2" do |i|
  i.name "Red Canari Plush"
  i.name_plural "Red Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a red charm. It boosts the Exp. Points that Pokémon can get."
end

GameData::Item.define :"REDCANARIPLUSHLV3" do |i|
  i.name "Red Canari Plush"
  i.name_plural "Red Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a red charm. It greatly boosts the Exp. Points that Pokémon can get."
end

GameData::Item.define :"GOLDCANARIPLUSHLV1" do |i|
  i.name "Gold Canari Plush"
  i.name_plural "Gold Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a gold charm. It slightly increases the battle's prize money you get."
end

GameData::Item.define :"GOLDCANARIPLUSHLV2" do |i|
  i.name "Gold Canari Plush"
  i.name_plural "Gold Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a gold charm. It increases the battle's prize money you get."
end

GameData::Item.define :"GOLDCANARIPLUSHLV3" do |i|
  i.name "Gold Canari Plush"
  i.name_plural "Gold Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a gold charm. It greatly increases the battle's prize money you get."
end

GameData::Item.define :"PINKCANARIPLUSHLV1" do |i|
  i.name "Pink Canari Plush"
  i.name_plural "Pink Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a pink charm. It slightly increases the number of Mega Shards you get."
end

GameData::Item.define :"PINKCANARIPLUSHLV2" do |i|
  i.name "Pink Canari Plush"
  i.name_plural "Pink Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a pink charm. It increases the number of Mega Shards you get."
end

GameData::Item.define :"PINKCANARIPLUSHLV3" do |i|
  i.name "Pink Canari Plush"
  i.name_plural "Pink Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a pink charm. It greatly increases the number of Mega Shards you get."
end

GameData::Item.define :"GREENCANARIPLUSHLV1" do |i|
  i.name "Green Canari Plush"
  i.name_plural "Green Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a green charm. It makes you a little less likely to black out from taking damage."
end

GameData::Item.define :"GREENCANARIPLUSHLV2" do |i|
  i.name "Green Canari Plush"
  i.name_plural "Green Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a green charm. It makes you a less likely to black out from taking damage."
end

GameData::Item.define :"GREENCANARIPLUSHLV3" do |i|
  i.name "Green Canari Plush"
  i.name_plural "Green Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a green charm. It makes you a lot less likely to black out from taking damage."
end

GameData::Item.define :"BLUECANARIPLUSHLV1" do |i|
  i.name "Blue Canari Plush"
  i.name_plural "Blue Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a blue charm. It slightly boosts your chance of catching Pokémon."
end

GameData::Item.define :"BLUECANARIPLUSHLV2" do |i|
  i.name "Blue Canari Plush"
  i.name_plural "Blue Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a blue charm. It boosts your chance of catching Pokémon."
end

GameData::Item.define :"BLUECANARIPLUSHLV3" do |i|
  i.name "Blue Canari Plush"
  i.name_plural "Blue Canari Plushies"
  i.pocket 8
  i.description "A Canari plush holding a blue charm. It greatly boosts your chance of catching Pokémon."
end

GameData::Item.define :"LUMIOSIANBUTTER" do |i|
  i.name "Lumiosian Butter"
  i.name_plural "Lumiosian Butters"
  i.pocket 8
  i.description "Some of the best butter produced in the Kalos region. Highly sought after by the cooks of Lumiose."
end

GameData::Item.define :"NICEBUTTER" do |i|
  i.name "Nice Butter"
  i.name_plural "Nice Butters"
  i.pocket 8
  i.description "A nice pack of butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :"GREATBUTTER" do |i|
  i.name "Great Butter"
  i.name_plural "Great Butters"
  i.pocket 8
  i.description "A great pack of butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :"AMAZINGBUTTER" do |i|
  i.name "Amazing Butter"
  i.name_plural "Amazing Butters"
  i.pocket 8
  i.description "An amazing pack of butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :"SUPREMEBUTTER" do |i|
  i.name "Supreme Butter"
  i.name_plural "Supreme Butters"
  i.pocket 8
  i.description "A supreme pack of butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :"HYPERSPACEBUTTER" do |i|
  i.name "Hyperspace Butter"
  i.name_plural "Hyperspace Butters"
  i.pocket 8
  i.description "The absolute ultimate butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :"HOENNIANSALT" do |i|
  i.name "Hoennian Salt"
  i.name_plural "Hoennian Salts"
  i.pocket 8
  i.description "A coarse salt harvested in the Hoenn region. A tiny pinch will impart a wondrous depth of flavor."
end

GameData::Item.define :"EPICENOIRE" do |i|
  i.name "Épice Noire"
  i.name_plural "Épice Noires"
  i.pocket 8
  i.description "A mysterious, highly prized spice of the Rust Syndicate that elevates any dish to dreamlike perfection."
end

GameData::Item.define :"ARBOLIVAOIL" do |i|
  i.name "Arboliva Oil"
  i.name_plural "Arboliva Oils"
  i.pocket 8
  i.description "Oil from Paldea's Arboliva, said to taste heavenly. How Corbeau obtained it remains a mystery."
end
