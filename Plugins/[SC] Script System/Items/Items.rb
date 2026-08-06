#=============================================================================
# Items
#=============================================================================

GameData::Item.define :"REPEL" do |i|
  i.name "Repel"
  i.name_plural "Repels"
  i.pocket 1
  i.price 400
  i.field_use :"Direct"
  i.description "An item that prevents weak wild Pokémon from appearing for 100 steps after its use."
end

GameData::Item.define :"SUPERREPEL" do |i|
  i.name "Super Repel"
  i.name_plural "Super Repels"
  i.pocket 1
  i.price 700
  i.field_use :"Direct"
  i.description "An item that prevents weak wild Pokémon from appearing for 200 steps after its use."
end

GameData::Item.define :"MAXREPEL" do |i|
  i.name "Max Repel"
  i.name_plural "Max Repels"
  i.pocket 1
  i.price 900
  i.field_use :"Direct"
  i.description "An item that prevents weak wild Pokémon from appearing for 250 steps after its use."
end

GameData::Item.define :"BLACKFLUTE" do |i|
  i.name "Black Flute"
  i.name_plural "Black Flutes"
  i.pocket 1
  i.price 20
  i.field_use :"Direct"
  i.not_consumable
  i.description "A black flute made from blown glass. Its melody makes wild Pokémon less likely to appear."
end

GameData::Item.define :"WHITEFLUTE" do |i|
  i.name "White Flute"
  i.name_plural "White Flutes"
  i.pocket 1
  i.price 20
  i.field_use :"Direct"
  i.not_consumable
  i.description "A white flute made from blown glass. Its melody makes wild Pokémon more likely to appear."
end

GameData::Item.define :"HONEY" do |i|
  i.name "Honey"
  i.name_plural "Honey"
  i.pocket 1
  i.price 900
  i.field_use :"Direct"
  i.description "A sweet honey with a lush aroma that attracts wild Pokémon when used in tall grass, in caves, or elsewhere."
end

GameData::Item.define :"REDSHARD" do |i|
  i.name "Red Shard"
  i.name_plural "Red Shards"
  i.pocket 1
  i.price 1000
  i.description "A small red shard. It appears to be from some sort of implement made long ago."
end

GameData::Item.define :"YELLOWSHARD" do |i|
  i.name "Yellow Shard"
  i.name_plural "Yellow Shards"
  i.pocket 1
  i.price 1000
  i.description "A small yellow shard. It appears to be from some sort of implement made long ago."
end

GameData::Item.define :"BLUESHARD" do |i|
  i.name "Blue Shard"
  i.name_plural "Blue Shards"
  i.pocket 1
  i.price 1000
  i.description "A small blue shard. It appears to be from some sort of implement made long ago."
end

GameData::Item.define :"GREENSHARD" do |i|
  i.name "Green Shard"
  i.name_plural "Green Shards"
  i.pocket 1
  i.price 1000
  i.description "A small green shard. It appears to be from some sort of implement made long ago."
end

GameData::Item.define :"FIRESTONE" do |i|
  i.name "Fire Stone"
  i.name_plural "Fire Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It is colored orange."
end

GameData::Item.define :"THUNDERSTONE" do |i|
  i.name "Thunder Stone"
  i.name_plural "Thunder Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It has a thunderbolt pattern."
end

GameData::Item.define :"WATERSTONE" do |i|
  i.name "Water Stone"
  i.name_plural "Water Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It is a clear, light blue."
end

GameData::Item.define :"LEAFSTONE" do |i|
  i.name "Leaf Stone"
  i.name_plural "Leaf Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It has a leaf pattern."
end

GameData::Item.define :"MOONSTONE" do |i|
  i.name "Moon Stone"
  i.name_plural "Moon Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It is as black as the night sky."
end

GameData::Item.define :"SUNSTONE" do |i|
  i.name "Sun Stone"
  i.name_plural "Sun Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It is as red as the sun."
end

GameData::Item.define :"DUSKSTONE" do |i|
  i.name "Dusk Stone"
  i.name_plural "Dusk Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It is as dark as dark can be."
end

GameData::Item.define :"DAWNSTONE" do |i|
  i.name "Dawn Stone"
  i.name_plural "Dawn Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It sparkles like eyes."
end

GameData::Item.define :"SHINYSTONE" do |i|
  i.name "Shiny Stone"
  i.name_plural "Shiny Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It shines with a dazzling light."
end

GameData::Item.define :"REDAPRICORN" do |i|
  i.name "Red Apricorn"
  i.name_plural "Red Apricorns"
  i.pocket 1
  i.price 200
  i.description "A red Apricorn. It assails your nostrils."
end

GameData::Item.define :"YLWAPRICORN" do |i|
  i.name "Ylw Apricorn"
  i.name_plural "Ylw Apricorns"
  i.pocket 1
  i.price 200
  i.description "A yellow Apricorn. It has an invigorating scent."
end

GameData::Item.define :"BLUAPRICORN" do |i|
  i.name "Blu Apricorn"
  i.name_plural "Blu Apricorns"
  i.pocket 1
  i.price 200
  i.description "A blue Apricorn. It smells a bit like grass."
end

GameData::Item.define :"GRNAPRICORN" do |i|
  i.name "Grn Apricorn"
  i.name_plural "Grn Apricorns"
  i.pocket 1
  i.price 200
  i.description "A green Apricorn. It has a mysterious, aromatic scent."
end

GameData::Item.define :"PNKAPRICORN" do |i|
  i.name "Pnk Apricorn"
  i.name_plural "Pnk Apricorns"
  i.pocket 1
  i.price 200
  i.description "A pink Apricorn. It has a nice, sweet scent."
end

GameData::Item.define :"WHTAPRICORN" do |i|
  i.name "Wht Apricorn"
  i.name_plural "Wht Apricorns"
  i.pocket 1
  i.price 200
  i.description "A white Apricorn. It doesn't smell like anything."
end

GameData::Item.define :"BLKAPRICORN" do |i|
  i.name "Blk Apricorn"
  i.name_plural "Blk Apricorns"
  i.pocket 1
  i.price 200
  i.description "A black Apricorn. It has an indescribable scent."
end

GameData::Item.define :"HELIXFOSSIL" do |i|
  i.name "Helix Fossil"
  i.name_plural "Helix Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil of an ancient Pokémon that lived in the sea. It appears to be part of a seashell."
end

GameData::Item.define :"DOMEFOSSIL" do |i|
  i.name "Dome Fossil"
  i.name_plural "Dome Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil of an ancient Pokémon that lived in the sea. It appears to be part of a shell."
end

GameData::Item.define :"OLDAMBER" do |i|
  i.name "Old Amber"
  i.name_plural "Old Ambers"
  i.pocket 1
  i.price 1000
  i.description "A piece of amber that contains the genes of an ancient Pokémon. It is clear with a reddish tint."
end

GameData::Item.define :"ROOTFOSSIL" do |i|
  i.name "Root Fossil"
  i.name_plural "Root Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil of an ancient Pokémon that lived in the sea. It appears to be part of a plant root."
end

GameData::Item.define :"CLAWFOSSIL" do |i|
  i.name "Claw Fossil"
  i.name_plural "Claw Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil of an ancient Pokémon that lived in the sea. It appears to be part of a claw."
end

GameData::Item.define :"SKULLFOSSIL" do |i|
  i.name "Skull Fossil"
  i.name_plural "Skull Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil from a prehistoric Pokémon that lived on the land. It appears to be part of a head."
end

GameData::Item.define :"ARMORFOSSIL" do |i|
  i.name "Armor Fossil"
  i.name_plural "Armor Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil from a prehistoric Pokémon that lived on the land. It appears to be part of a collar."
end

GameData::Item.define :"COVERFOSSIL" do |i|
  i.name "Cover Fossil"
  i.name_plural "Cover Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil of an ancient Pokémon that lived in the sea in ancient times. It appears to be part of its back."
end

GameData::Item.define :"PLUMEFOSSIL" do |i|
  i.name "Plume Fossil"
  i.name_plural "Plume Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil of an ancient Pokémon that flew in the sky in ancient times. It appears to be part of its wing."
end

GameData::Item.define :"PRETTYWING" do |i|
  i.name "Pretty Wing"
  i.name_plural "Pretty Wings"
  i.pocket 1
  i.price 1000
  i.description "Though this feather is beautiful, it's just a regular feather and has no effect on Pokémon."
end

GameData::Item.define :"TINYMUSHROOM" do |i|
  i.name "Tiny Mushroom"
  i.name_plural "Tiny Mushrooms"
  i.pocket 1
  i.price 500
  i.description "A small and rare mushroom. It is sought after by collectors."
end

GameData::Item.define :"BIGMUSHROOM" do |i|
  i.name "Big Mushroom"
  i.name_plural "Big Mushrooms"
  i.pocket 1
  i.price 5000
  i.description "A large and rare mushroom. It is sought after by collectors."
end

GameData::Item.define :"BALMMUSHROOM" do |i|
  i.name "Balm Mushroom"
  i.name_plural "Balm Mushrooms"
  i.pocket 1
  i.price 15000
  i.description "A rare mushroom which gives off a nice fragrance. A maniac will buy it for a high price."
end

GameData::Item.define :"PEARL" do |i|
  i.name "Pearl"
  i.name_plural "Pearls"
  i.pocket 1
  i.price 2000
  i.description "A somewhat-small pearl that sparkles in a pretty silver color. It can be sold cheaply to shops."
end

GameData::Item.define :"BIGPEARL" do |i|
  i.name "Big Pearl"
  i.name_plural "Big Pearls"
  i.pocket 1
  i.price 8000
  i.description "A quite-large pearl that sparkles in a pretty silver color. It can be sold at a high price to shops."
end

GameData::Item.define :"PEARLSTRING" do |i|
  i.name "Pearl String"
  i.name_plural "Pearl Strings"
  i.pocket 1
  i.price 20000
  i.description "Very large pearls that sparkle in a pretty silver color. A maniac will buy them for a high price."
end

GameData::Item.define :"STARDUST" do |i|
  i.name "Stardust"
  i.name_plural "Stardusts"
  i.pocket 1
  i.price 3000
  i.description "Lovely, red-colored sand with a loose, silky feel. It can be sold at a high price to shops."
end

GameData::Item.define :"STARPIECE" do |i|
  i.name "Star Piece"
  i.name_plural "Star Pieces"
  i.pocket 1
  i.price 12000
  i.description "A shard of a pretty gem that sparkles in a red color. It can be sold at a high price to shops."
end

GameData::Item.define :"COMETSHARD" do |i|
  i.name "Comet Shard"
  i.name_plural "Comet Shards"
  i.pocket 1
  i.price 25000
  i.description "A shard which fell to the ground when a comet approached. A maniac will buy it for a high price."
end

GameData::Item.define :"NUGGET" do |i|
  i.name "Nugget"
  i.name_plural "Nuggets"
  i.pocket 1
  i.price 10000
  i.description "A nugget of pure gold that gives off a lustrous gleam. It can be sold at a high price to shops."
end

GameData::Item.define :"BIGNUGGET" do |i|
  i.name "Big Nugget"
  i.name_plural "Big Nuggets"
  i.pocket 1
  i.price 40000
  i.description "A big nugget of pure gold that gives off a lustrous gleam. A maniac will buy it for a high price."
end

GameData::Item.define :"HEARTSCALE" do |i|
  i.name "Heart Scale"
  i.name_plural "Heart Scales"
  i.pocket 1
  i.price 100
  i.description "A pretty, heart-shaped scale that is extremely rare. It glows faintly in the colors of the rainbow."
end

GameData::Item.define :"SLOWPOKETAIL" do |i|
  i.name "Slowpoke Tail"
  i.name_plural "Slowpoke Tails"
  i.pocket 1
  i.price 10000
  i.description "A very tasty tail of something. It can be sold at a high price to shops."
end

GameData::Item.define :"RAREBONE" do |i|
  i.name "Rare Bone"
  i.name_plural "Rare Bones"
  i.pocket 1
  i.price 5000
  i.description "A bone that is extremely valuable for Pokémon archaeology. It can be sold for a high price to shops."
end

GameData::Item.define :"RELICCOPPER" do |i|
  i.name "Relic Copper"
  i.name_plural "Relic Coppers"
  i.pocket 1
  i.description "A copper coin used in a civilization about 3,000 years ago. A maniac will buy it for a high price."
end

GameData::Item.define :"RELICSILVER" do |i|
  i.name "Relic Silver"
  i.name_plural "Relic Silvers"
  i.pocket 1
  i.description "A silver coin used in a civilization about 3,000 years ago. A maniac will buy it for a high price."
end

GameData::Item.define :"RELICGOLD" do |i|
  i.name "Relic Gold"
  i.name_plural "Relic Golds"
  i.pocket 1
  i.price 60000
  i.description "A gold coin used in a civilization about 3,000 years ago. A maniac will buy it for a high price."
end

GameData::Item.define :"RELICVASE" do |i|
  i.name "Relic Vase"
  i.name_plural "Relic Vases"
  i.pocket 1
  i.description "A vase made in a civilization about 3,000 years ago. A maniac will buy it for a high price."
end

GameData::Item.define :"RELICBAND" do |i|
  i.name "Relic Band"
  i.name_plural "Relic Bands"
  i.pocket 1
  i.description "A bracelet made in a civilization about 3,000 years ago. A maniac will buy it for a high price."
end

GameData::Item.define :"RELICSTATUE" do |i|
  i.name "Relic Statue"
  i.name_plural "Relic Statues"
  i.pocket 1
  i.description "A stone figure made in a civilization about 3,000 years ago. A maniac will buy it for a high price."
end

GameData::Item.define :"RELICCROWN" do |i|
  i.name "Relic Crown"
  i.name_plural "Relic Crowns"
  i.pocket 1
  i.description "A crown made in a civilization about 3,000 years ago. A maniac will buy it for a high price."
end

GameData::Item.define :"GROWTHMULCH" do |i|
  i.name "Growth Mulch"
  i.name_plural "Growth Mulch"
  i.pocket 1
  i.price 200
  i.description "A fertilizer to be spread on soft soil in regions where Berries are grown. A maniac will buy it for a high price."
end

GameData::Item.define :"DAMPMULCH" do |i|
  i.name "Damp Mulch"
  i.name_plural "Damp Mulch"
  i.pocket 1
  i.price 200
  i.description "A fertilizer to be spread on soft soil in regions where Berries are grown. A maniac will buy it for a high price."
end

GameData::Item.define :"STABLEMULCH" do |i|
  i.name "Stable Mulch"
  i.name_plural "Stable Mulch"
  i.pocket 1
  i.price 200
  i.description "A fertilizer to be spread on soft soil in regions where Berries are grown. A maniac will buy it for a high price."
end

GameData::Item.define :"GOOEYMULCH" do |i|
  i.name "Gooey Mulch"
  i.name_plural "Gooey Mulch"
  i.pocket 1
  i.price 200
  i.description "A fertilizer to be spread on soft soil in regions where Berries are grown. A maniac will buy it for a high price."
end

GameData::Item.define :"SHOALSALT" do |i|
  i.name "Shoal Salt"
  i.name_plural "Shoal Salts"
  i.pocket 1
  i.price 20
  i.description "Pure salt that can be discovered deep inside the Shoal Cave. A maniac will buy it for a high price."
end

GameData::Item.define :"SHOALSHELL" do |i|
  i.name "Shoal Shell"
  i.name_plural "Shoal Shells"
  i.pocket 1
  i.price 20
  i.description "A pretty seashell that can be found deep inside the Shoal Cave. A maniac will buy it for a high price."
end

GameData::Item.define :"ODDKEYSTONE" do |i|
  i.name "Odd Keystone"
  i.name_plural "Odd Keystones"
  i.pocket 1
  i.price 2100
  i.description "A vital item that is needed to keep a stone tower from collapsing. Voices can be heard from it occasionally."
end

GameData::Item.define :"AIRBALLOON" do |i|
  i.name "Air Balloon"
  i.name_plural "Air Balloons"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. The holder will float in the air until hit. Once hit, this item will burst."
end

GameData::Item.define :"BRIGHTPOWDER" do |i|
  i.name "Bright Powder"
  i.name_plural "Bright Powders"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It casts a tricky glare that lowers the opponent's accuracy."
end

GameData::Item.define :"EVIOLITE" do |i|
  i.name "Eviolite"
  i.name_plural "Eviolites"
  i.pocket 1
  i.price 3000
  i.description "A mysterious evolutionary lump. When held, it raises the Defense and Sp. Def if the holder can still evolve."
end

GameData::Item.define :"FLOATSTONE" do |i|
  i.name "Float Stone"
  i.name_plural "Float Stones"
  i.pocket 1
  i.price 3000
  i.description "A very light stone. It reduces the weight of a Pokémon when held."
end

GameData::Item.define :"DESTINYKNOT" do |i|
  i.name "Destiny Knot"
  i.name_plural "Destiny Knots"
  i.pocket 1
  i.price 3000
  i.description "A long, thin, bright-red string to be held by a Pokémon. If the holder becomes infatuated, so does the foe."
end

GameData::Item.define :"ROCKYHELMET" do |i|
  i.name "Rocky Helmet"
  i.name_plural "Rocky Helmets"
  i.pocket 1
  i.price 3000
  i.description "If the holder of this item takes damage, the attacker will also be damaged upon contact."
end

GameData::Item.define :"EJECTBUTTON" do |i|
  i.name "Eject Button"
  i.name_plural "Eject Buttons"
  i.pocket 1
  i.price 3000
  i.description "If the holder is hit by an attack, it will switch with another Pokémon in your party."
end

GameData::Item.define :"REDCARD" do |i|
  i.name "Red Card"
  i.name_plural "Red Cards"
  i.pocket 1
  i.price 3000
  i.description "A card with a mysterious power. When the holder is struck by a foe, the attacker is removed from battle."
end

GameData::Item.define :"SHEDSHELL" do |i|
  i.name "Shed Shell"
  i.name_plural "Shed Shells"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. This discarded carapace lets the holder switch out of battle without fail."
end

GameData::Item.define :"SMOKEBALL" do |i|
  i.name "Smoke Ball"
  i.name_plural "Smoke Balls"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It enables the holder to flee from any wild Pokémon without fail."
end

GameData::Item.define :"LUCKYEGG" do |i|
  i.name "Lucky Egg"
  i.name_plural "Lucky Eggs"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is an egg filled with happiness that earns extra Exp. Points in battle."
end

GameData::Item.define :"EXPSHARE" do |i|
  i.name "Exp. Share"
  i.name_plural "Exp. Shares"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. The holder gets a share of a battle's Exp. Points without battling."
end

GameData::Item.define :"AMULETCOIN" do |i|
  i.name "Amulet Coin"
  i.name_plural "Amulet Coins"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It doubles a battle's prize money if the holding Pokémon joins in."
end

GameData::Item.define :"SOOTHEBELL" do |i|
  i.name "Soothe Bell"
  i.name_plural "Soothe Bells"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. The comforting chime of this bell calms the holder, making it friendly."
end

GameData::Item.define :"CLEANSETAG" do |i|
  i.name "Cleanse Tag"
  i.name_plural "Cleanse Tags"
  i.pocket 1
  i.price 5000
  i.description "An item to be held by a Pokémon. It helps keep wild Pokémon away if the holder is the first one in the party."
end

GameData::Item.define :"CHOICEBAND" do |i|
  i.name "Choice Band"
  i.name_plural "Choice Bands"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. This headband ups Attack, but allows the use of only one move."
end

GameData::Item.define :"CHOICESPECS" do |i|
  i.name "Choice Specs"
  i.name_plural "Choice Specs"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. These curious glasses boost Sp. Atk but allows the use of only one move."
end

GameData::Item.define :"CHOICESCARF" do |i|
  i.name "Choice Scarf"
  i.name_plural "Choice Scarves"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. This scarf boosts Speed but allows the use of only one move."
end

GameData::Item.define :"HEATROCK" do |i|
  i.name "Heat Rock"
  i.name_plural "Heat Rocks"
  i.pocket 1
  i.price 4000
  i.description "A Pokémon held item that extends the duration of the move Sunny Day used by the holder."
end

GameData::Item.define :"DAMPROCK" do |i|
  i.name "Damp Rock"
  i.name_plural "Damp Rocks"
  i.pocket 1
  i.price 4000
  i.description "A Pokémon held item that extends the duration of the move Rain Dance used by the holder."
end

GameData::Item.define :"SMOOTHROCK" do |i|
  i.name "Smooth Rock"
  i.name_plural "Smooth Rocks"
  i.pocket 1
  i.price 4000
  i.description "A Pokémon held item that extends the duration of the move Sandstorm used by the holder."
end

GameData::Item.define :"ICYROCK" do |i|
  i.name "Icy Rock"
  i.name_plural "Icy Rocks"
  i.pocket 1
  i.price 4000
  i.description "A Pokémon held item that extends the duration of the move Hail used by the holder."
end

GameData::Item.define :"LIGHTCLAY" do |i|
  i.name "Light Clay"
  i.name_plural "Light Clays"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. Protective moves like Light Screen and Reflect will be effective longer."
end

GameData::Item.define :"GRIPCLAW" do |i|
  i.name "Grip Claw"
  i.name_plural "Grip Claws"
  i.pocket 1
  i.price 4000
  i.description "A Pokémon held item that extends the duration of multiturn attacks like Bind and Wrap."
end

GameData::Item.define :"BINDINGBAND" do |i|
  i.name "Binding Band"
  i.name_plural "Binding Bands"
  i.pocket 1
  i.price 3000
  i.description "A band that increases the power of binding moves when held."
end

GameData::Item.define :"BIGROOT" do |i|
  i.name "Big Root"
  i.name_plural "Big Roots"
  i.pocket 1
  i.price 4000
  i.description "A Pokémon held item that boosts the power of HP-stealing moves to let the holder recover more HP."
end

GameData::Item.define :"BLACKSLUDGE" do |i|
  i.name "Black Sludge"
  i.name_plural "Black Sludges"
  i.pocket 1
  i.price 3000
  i.description "A held item that gradually restores the HP of Poison-type Pokémon. It inflicts damage on all other types."
end

GameData::Item.define :"LEFTOVERS" do |i|
  i.name "Leftovers"
  i.name_plural "Leftovers"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. The holder's HP is gradually restored during battle."
end

GameData::Item.define :"SHELLBELL" do |i|
  i.name "Shell Bell"
  i.name_plural "Shell Bells"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. The holder's HP is restored a little every time it inflicts damage."
end

GameData::Item.define :"MENTALHERB" do |i|
  i.name "Mental Herb"
  i.name_plural "Mental Herbs"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It snaps the holder out of infatuation. It can be used only once."
end

GameData::Item.define :"WHITEHERB" do |i|
  i.name "White Herb"
  i.name_plural "White Herbs"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It restores any lowered stat in battle. It can be used only once."
end

GameData::Item.define :"POWERHERB" do |i|
  i.name "Power Herb"
  i.name_plural "Power Herbs"
  i.pocket 1
  i.price 4000
  i.description "A single-use item to be held by a Pokémon. It allows the immediate use of a move that charges up first."
end

GameData::Item.define :"ABSORBBULB" do |i|
  i.name "Absorb Bulb"
  i.name_plural "Absorb Bulbs"
  i.pocket 1
  i.price 4000
  i.description "A consumable bulb. If the holder is hit by a Water-type move, its Sp. Atk will rise."
end

GameData::Item.define :"CELLBATTERY" do |i|
  i.name "Cell Battery"
  i.name_plural "Cell Batteries"
  i.pocket 1
  i.price 4000
  i.description "A consumable battery. If the holder is hit by an Electric-type move, its Attack will rise."
end

GameData::Item.define :"LIFEORB" do |i|
  i.name "Life Orb"
  i.name_plural "Life Orbs"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It boosts the power of moves, but at the cost of some HP on each hit."
end

GameData::Item.define :"EXPERTBELT" do |i|
  i.name "Expert Belt"
  i.name_plural "Expert Belts"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It is a well-worn belt that slightly boosts the power of supereffective moves."
end

GameData::Item.define :"METRONOME" do |i|
  i.name "Metronome"
  i.name_plural "Metronomes"
  i.pocket 1
  i.price 3000
  i.description "A Pokémon held item that boosts a move used consecutively. Its effect is reset if another move is used."
end

GameData::Item.define :"MUSCLEBAND" do |i|
  i.name "Muscle Band"
  i.name_plural "Muscle Bands"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It is a headband that slightly boosts the power of physical moves."
end

GameData::Item.define :"WISEGLASSES" do |i|
  i.name "Wise Glasses"
  i.name_plural "Wise Glasses"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It is a thick pair of glasses that slightly boosts the power of special moves."
end

GameData::Item.define :"RAZORCLAW" do |i|
  i.name "Razor Claw"
  i.name_plural "Razor Claws"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a sharply hooked claw that ups the holder's critical-hit ratio."
end

GameData::Item.define :"SCOPELENS" do |i|
  i.name "Scope Lens"
  i.name_plural "Scope Lenses"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It is a lens that boosts the holder's critical-hit ratio."
end

GameData::Item.define :"WIDELENS" do |i|
  i.name "Wide Lens"
  i.name_plural "Wide Lenses"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It is a magnifying lens that slightly boosts the accuracy of moves."
end

GameData::Item.define :"ZOOMLENS" do |i|
  i.name "Zoom Lens"
  i.name_plural "Zoom Lenses"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. If the holder moves after its target, its accuracy will be boosted."
end

GameData::Item.define :"KINGSROCK" do |i|
  i.name "King's Rock"
  i.name_plural "King's Rocks"
  i.pocket 1
  i.price 5000
  i.description "An item to be held by a Pokémon. When the holder inflicts damage, the target may flinch."
end

GameData::Item.define :"RAZORFANG" do |i|
  i.name "Razor Fang"
  i.name_plural "Razor Fangs"
  i.pocket 1
  i.price 5000
  i.description "An item to be held by a Pokémon. It may make foes and allies flinch when the holder inflicts damage."
end

GameData::Item.define :"LAGGINGTAIL" do |i|
  i.name "Lagging Tail"
  i.name_plural "Lagging Tails"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It is tremendously heavy and makes the holder move slower than usual."
end

GameData::Item.define :"QUICKCLAW" do |i|
  i.name "Quick Claw"
  i.name_plural "Quick Claws"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. A light, sharp claw that lets the bearer move first occasionally."
end

GameData::Item.define :"FOCUSBAND" do |i|
  i.name "Focus Band"
  i.name_plural "Focus Bands"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. The holder may endure a potential KO attack, leaving it with just 1 HP."
end

GameData::Item.define :"FOCUSSASH" do |i|
  i.name "Focus Sash"
  i.name_plural "Focus Sashes"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. If it has full HP, the holder will endure one potential KO attack, leaving 1 HP."
end

GameData::Item.define :"FLAMEORB" do |i|
  i.name "Flame Orb"
  i.name_plural "Flame Orbs"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It is a bizarre orb that inflicts a burn on the holder in battle."
end

GameData::Item.define :"TOXICORB" do |i|
  i.name "Toxic Orb"
  i.name_plural "Toxic Orbs"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It is a bizarre orb that badly poisons the holder in battle."
end

GameData::Item.define :"STICKYBARB" do |i|
  i.name "Sticky Barb"
  i.name_plural "Sticky Barbs"
  i.pocket 1
  i.price 4000
  i.description "A held item that damages the holder on every turn. It may latch on to Pokémon that touch the holder."
end

GameData::Item.define :"IRONBALL" do |i|
  i.name "Iron Ball"
  i.name_plural "Iron Balls"
  i.pocket 1
  i.price 4000
  i.description "A Pokémon held item that cuts Speed. It makes Flying-type and levitating holders susceptible to Ground moves."
end

GameData::Item.define :"RINGTARGET" do |i|
  i.name "Ring Target"
  i.name_plural "Ring Targets"
  i.pocket 1
  i.price 3000
  i.description "Moves that would otherwise have no effect will land on the Pokémon that holds it."
end

GameData::Item.define :"MACHOBRACE" do |i|
  i.name "Macho Brace"
  i.name_plural "Macho Braces"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a stiff, heavy brace that promotes strong growth but lowers Speed."
end

GameData::Item.define :"POWERWEIGHT" do |i|
  i.name "Power Weight"
  i.name_plural "Power Weights"
  i.pocket 1
  i.price 3000
  i.description "A Pokémon held item that promotes HP gain on leveling, but reduces the Speed stat."
end

GameData::Item.define :"POWERBRACER" do |i|
  i.name "Power Bracer"
  i.name_plural "Power Bracers"
  i.pocket 1
  i.price 3000
  i.description "A Pokémon held item that promotes Attack gain on leveling, but reduces the Speed stat."
end

GameData::Item.define :"POWERBELT" do |i|
  i.name "Power Belt"
  i.name_plural "Power Belts"
  i.pocket 1
  i.price 3000
  i.description "A Pokémon held item that promotes Defense gain on leveling, but reduces the Speed stat."
end

GameData::Item.define :"POWERLENS" do |i|
  i.name "Power Lens"
  i.name_plural "Power Lenses"
  i.pocket 1
  i.price 3000
  i.description "A Pokémon held item that promotes Sp. Atk gain on leveling, but reduces the Speed stat."
end

GameData::Item.define :"POWERBAND" do |i|
  i.name "Power Band"
  i.name_plural "Power Bands"
  i.pocket 1
  i.price 3000
  i.description "A Pokémon held item that promotes Sp. Def gain on leveling, but reduces the Speed stat."
end

GameData::Item.define :"POWERANKLET" do |i|
  i.name "Power Anklet"
  i.name_plural "Power Anklets"
  i.pocket 1
  i.price 3000
  i.description "A Pokémon held item that promotes Speed gain on leveling, but reduces the Speed stat."
end

GameData::Item.define :"LAXINCENSE" do |i|
  i.name "Lax Incense"
  i.name_plural "Lax Incenses"
  i.pocket 1
  i.price 5000
  i.description "An item to be held by a Pokémon. The tricky aroma of this incense may make attacks miss the holder."
end

GameData::Item.define :"FULLINCENSE" do |i|
  i.name "Full Incense"
  i.name_plural "Full Incenses"
  i.pocket 1
  i.price 5000
  i.description "An item to be held by a Pokémon. This exotic-smelling incense makes the holder bloated and slow moving."
end

GameData::Item.define :"LUCKINCENSE" do |i|
  i.name "Luck Incense"
  i.name_plural "Luck Incenses"
  i.pocket 1
  i.price 11000
  i.description "An item to be held by a Pokémon. It doubles a battle's prize money if the holding Pokémon joins in."
end

GameData::Item.define :"PUREINCENSE" do |i|
  i.name "Pure Incense"
  i.name_plural "Pure Incenses"
  i.pocket 1
  i.price 6000
  i.description "An item to be held by a Pokémon. It helps keep wild Pokémon away if the holder is the first one in the party."
end

GameData::Item.define :"SEAINCENSE" do |i|
  i.name "Sea Incense"
  i.name_plural "Sea Incenses"
  i.pocket 1
  i.price 2000
  i.description "An item to be held by a Pokémon. It has a curious aroma that boosts the power of Water-type moves."
end

GameData::Item.define :"WAVEINCENSE" do |i|
  i.name "Wave Incense"
  i.name_plural "Wave Incenses"
  i.pocket 1
  i.price 2000
  i.description "An item to be held by a Pokémon. It has a curious aroma that boosts the power of Water-type moves."
end

GameData::Item.define :"ROSEINCENSE" do |i|
  i.name "Rose Incense"
  i.name_plural "Rose Incenses"
  i.pocket 1
  i.price 2000
  i.description "An item to be held by a Pokémon. This exotic-smelling incense boosts the power of Grass-type moves."
end

GameData::Item.define :"ODDINCENSE" do |i|
  i.name "Odd Incense"
  i.name_plural "Odd Incenses"
  i.pocket 1
  i.price 2000
  i.description "An item to be held by a Pokémon. This exotic-smelling incense boosts the power of Psychic-type moves."
end

GameData::Item.define :"ROCKINCENSE" do |i|
  i.name "Rock Incense"
  i.name_plural "Rock Incenses"
  i.pocket 1
  i.price 2000
  i.description "An item to be held by a Pokémon. This exotic-smelling incense boosts the power of Rock-type moves."
end

GameData::Item.define :"CHARCOAL" do |i|
  i.name "Charcoal"
  i.name_plural "Charcoals"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a combustible fuel that boosts the power of Fire-type moves."
end

GameData::Item.define :"MYSTICWATER" do |i|
  i.name "Mystic Water"
  i.name_plural "Mystic Waters"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a teardrop-shaped gem that ups the power of Water-type moves."
end

GameData::Item.define :"MAGNET" do |i|
  i.name "Magnet"
  i.name_plural "Magnets"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a powerful magnet that boosts the power of Electric-type moves."
end

GameData::Item.define :"MIRACLESEED" do |i|
  i.name "Miracle Seed"
  i.name_plural "Miracle Seeds"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a seed imbued with life that ups the power of Grass-type moves."
end

GameData::Item.define :"NEVERMELTICE" do |i|
  i.name "Never-Melt Ice"
  i.name_plural "Never-Melt Ices"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a piece of ice that repels heat and boosts Ice-type moves."
end

GameData::Item.define :"BLACKBELT" do |i|
  i.name "Black Belt"
  i.name_plural "Black Belts"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a belt that boosts determination and Fighting-type moves."
end

GameData::Item.define :"POISONBARB" do |i|
  i.name "Poison Barb"
  i.name_plural "Poison Barbs"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a small, poisonous barb that ups the power of Poison-type moves."
end

GameData::Item.define :"SOFTSAND" do |i|
  i.name "Soft Sand"
  i.name_plural "Soft Sand"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a loose, silky sand that boosts the power of Ground-type moves."
end

GameData::Item.define :"SHARPBEAK" do |i|
  i.name "Sharp Beak"
  i.name_plural "Sharp Beaks"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a long, sharp beak that boosts the power of Flying-type moves."
end

GameData::Item.define :"TWISTEDSPOON" do |i|
  i.name "Twisted Spoon"
  i.name_plural "Twisted Spoons"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a spoon imbued with telekinetic power that boosts Psychic-type moves."
end

GameData::Item.define :"SILVERPOWDER" do |i|
  i.name "Silver Powder"
  i.name_plural "Silver Powders"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a shiny, silver powder that ups the power of Bug-type moves."
end

GameData::Item.define :"HARDSTONE" do |i|
  i.name "Hard Stone"
  i.name_plural "Hard Stones"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is an unbreakable stone that ups the power of Rock-type moves."
end

GameData::Item.define :"SPELLTAG" do |i|
  i.name "Spell Tag"
  i.name_plural "Spell Tags"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a sinister, eerie tag that boosts the power of Ghost-type moves."
end

GameData::Item.define :"DRAGONFANG" do |i|
  i.name "Dragon Fang"
  i.name_plural "Dragon Fangs"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a hard and sharp fang that ups the power of Dragon-type moves."
end

GameData::Item.define :"BLACKGLASSES" do |i|
  i.name "Black Glasses"
  i.name_plural "Black Glasses"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a shady-looking pair of glasses that boosts Dark-type moves."
end

GameData::Item.define :"METALCOAT" do |i|
  i.name "Metal Coat"
  i.name_plural "Metal Coats"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a special metallic film that ups the power of Steel-type moves."
end

GameData::Item.define :"SILKSCARF" do |i|
  i.name "Silk Scarf"
  i.name_plural "Silk Scarves"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It is a sumptuous scarf that boosts the power of Normal-type moves."
end

GameData::Item.define :"FLAMEPLATE" do |i|
  i.name "Flame Plate"
  i.name_plural "Flame Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Fire-type moves."
end

GameData::Item.define :"SPLASHPLATE" do |i|
  i.name "Splash Plate"
  i.name_plural "Splash Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Water-type moves."
end

GameData::Item.define :"ZAPPLATE" do |i|
  i.name "Zap Plate"
  i.name_plural "Zap Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Electric-type moves."
end

GameData::Item.define :"MEADOWPLATE" do |i|
  i.name "Meadow Plate"
  i.name_plural "Meadow Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Grass-type moves."
end

GameData::Item.define :"ICICLEPLATE" do |i|
  i.name "Icicle Plate"
  i.name_plural "Icicle Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Ice-type moves."
end

GameData::Item.define :"FISTPLATE" do |i|
  i.name "Fist Plate"
  i.name_plural "Fist Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Fighting-type moves."
end

GameData::Item.define :"TOXICPLATE" do |i|
  i.name "Toxic Plate"
  i.name_plural "Toxic Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Poison-type moves."
end

GameData::Item.define :"EARTHPLATE" do |i|
  i.name "Earth Plate"
  i.name_plural "Earth Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Ground-type moves."
end

GameData::Item.define :"SKYPLATE" do |i|
  i.name "Sky Plate"
  i.name_plural "Sky Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Flying-type moves."
end

GameData::Item.define :"MINDPLATE" do |i|
  i.name "Mind Plate"
  i.name_plural "Mind Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Psychic-type moves."
end

GameData::Item.define :"INSECTPLATE" do |i|
  i.name "Insect Plate"
  i.name_plural "Insect Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Bug-type moves."
end

GameData::Item.define :"STONEPLATE" do |i|
  i.name "Stone Plate"
  i.name_plural "Stone Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Rock-type moves."
end

GameData::Item.define :"SPOOKYPLATE" do |i|
  i.name "Spooky Plate"
  i.name_plural "Spooky Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Ghost-type moves."
end

GameData::Item.define :"DRACOPLATE" do |i|
  i.name "Draco Plate"
  i.name_plural "Draco Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Dragon-type moves."
end

GameData::Item.define :"DREADPLATE" do |i|
  i.name "Dread Plate"
  i.name_plural "Dread Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Dark-type moves."
end

GameData::Item.define :"IRONPLATE" do |i|
  i.name "Iron Plate"
  i.name_plural "Iron Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Steel-type moves."
end

GameData::Item.define :"FIREGEM" do |i|
  i.name "Fire Gem"
  i.name_plural "Fire Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of fire. When held, it strengthens the power of a Fire-type move only once."
end

GameData::Item.define :"WATERGEM" do |i|
  i.name "Water Gem"
  i.name_plural "Water Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of water. When held, it strengthens the power of a Water-type move only once."
end

GameData::Item.define :"ELECTRICGEM" do |i|
  i.name "Electric Gem"
  i.name_plural "Electric Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of electricity. When held, it strengthens the power of an Electric-type move only once."
end

GameData::Item.define :"GRASSGEM" do |i|
  i.name "Grass Gem"
  i.name_plural "Grass Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of nature. When held, it strengthens the power of a Grass-type move only once."
end

GameData::Item.define :"ICEGEM" do |i|
  i.name "Ice Gem"
  i.name_plural "Ice Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of ice. When held, it strengthens the power of an Ice-type move only once."
end

GameData::Item.define :"FIGHTINGGEM" do |i|
  i.name "Fighting Gem"
  i.name_plural "Fighting Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of combat. When held, it strengthens the power of a Fighting-type move only once."
end

GameData::Item.define :"POISONGEM" do |i|
  i.name "Poison Gem"
  i.name_plural "Poison Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of poison. When held, it strengthens the power of a Poison-type move only once."
end

GameData::Item.define :"GROUNDGEM" do |i|
  i.name "Ground Gem"
  i.name_plural "Ground Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of land. When held, it strengthens the power of a Ground-type move only once."
end

GameData::Item.define :"FLYINGGEM" do |i|
  i.name "Flying Gem"
  i.name_plural "Flying Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of air. When held, it strengthens the power of a Flying-type move only once."
end

GameData::Item.define :"PSYCHICGEM" do |i|
  i.name "Psychic Gem"
  i.name_plural "Psychic Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of the mind. When held, it strengthens the power of a Psychic-type move only once."
end

GameData::Item.define :"BUGGEM" do |i|
  i.name "Bug Gem"
  i.name_plural "Bug Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an insect-like essence. When held, it strengthens the power of a Bug-type move only once."
end

GameData::Item.define :"ROCKGEM" do |i|
  i.name "Rock Gem"
  i.name_plural "Rock Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of rock. When held, it strengthens the power of a Rock-type move only once."
end

GameData::Item.define :"GHOSTGEM" do |i|
  i.name "Ghost Gem"
  i.name_plural "Ghost Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with a spectral essence. When held, it strengthens the power of a Ghost-type move only once."
end

GameData::Item.define :"DRAGONGEM" do |i|
  i.name "Dragon Gem"
  i.name_plural "Dragon Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with a draconic essence. When held, it strengthens the power of a Dragon-type move only once."
end

GameData::Item.define :"DARKGEM" do |i|
  i.name "Dark Gem"
  i.name_plural "Dark Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of darkness. When held, it strengthens the power of a Dark-type move only once."
end

GameData::Item.define :"STEELGEM" do |i|
  i.name "Steel Gem"
  i.name_plural "Steel Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of steel. When held, it strengthens the power of a Steel-type move only once."
end

GameData::Item.define :"NORMALGEM" do |i|
  i.name "Normal Gem"
  i.name_plural "Normal Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an ordinary essence. When held, it strengthens the power of a Normal-type move only once."
end

GameData::Item.define :"LIGHTBALL" do |i|
  i.name "Light Ball"
  i.name_plural "Light Balls"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by Pikachu. It is a puzzling orb that raises the Attack and Sp. Atk stat."
end

GameData::Item.define :"LUCKYPUNCH" do |i|
  i.name "Lucky Punch"
  i.name_plural "Lucky Punches"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by Chansey. It is a pair of gloves that boosts Chansey's critical-hit ratio."
end

GameData::Item.define :"METALPOWDER" do |i|
  i.name "Metal Powder"
  i.name_plural "Metal Powders"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by Ditto. Extremely fine yet hard, this odd powder boosts the Defense stat."
end

GameData::Item.define :"QUICKPOWDER" do |i|
  i.name "Quick Powder"
  i.name_plural "Quick Powders"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by Ditto. Extremely fine yet hard, this odd powder boosts the Speed stat."
end

GameData::Item.define :"THICKCLUB" do |i|
  i.name "Thick Club"
  i.name_plural "Thick Clubs"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by Cubone or Marowak. It is a hard bone of some sort that boosts the Attack stat."
end

GameData::Item.define :"STICK" do |i|
  i.name "Stick"
  i.name_plural "Sticks"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by Farfetch'd. It is a very long and stiff stalk of leek that boosts the critical-hit ratio."
end

GameData::Item.define :"SOULDEW" do |i|
  i.name "Soul Dew"
  i.name_plural "Soul Dews"
  i.pocket 1
  i.description "A wondrous orb to be held by either Latios or Latias. It raises the power of Psychic- and Dragon-type moves."
end

GameData::Item.define :"DEEPSEATOOTH" do |i|
  i.name "Deep Sea Tooth"
  i.name_plural "Deep Sea Teeth"
  i.pocket 1
  i.price 2000
  i.description "An item to be held by Clamperl. A fang that gleams a sharp silver, it raises the Sp. Atk stat."
end

GameData::Item.define :"DEEPSEASCALE" do |i|
  i.name "Deep Sea Scale"
  i.name_plural "Deep Sea Scales"
  i.pocket 1
  i.price 2000
  i.description "An item to be held by Clamperl. A scale that shines a faint pink, it raises the Sp. Def stat."
end

GameData::Item.define :"ADAMANTORB" do |i|
  i.name "Adamant Orb"
  i.name_plural "Adamant Orbs"
  i.pocket 1
  i.price 10000
  i.description "A brightly gleaming orb to be held by Dialga. It boosts the power of Dragon- and Steel-type moves."
end

GameData::Item.define :"LUSTROUSORB" do |i|
  i.name "Lustrous Orb"
  i.name_plural "Lustrous Orbs"
  i.pocket 1
  i.price 10000
  i.description "A beautifully glowing orb to be held by Palkia. It boosts the power of Dragon- and Water-type moves."
end

GameData::Item.define :"GRISEOUSORB" do |i|
  i.name "Griseous Orb"
  i.name_plural "Griseous Orbs"
  i.pocket 1
  i.price 10000
  i.description "A glowing orb to be held by Giratina. It boosts the power of Dragon- and Ghost-type moves."
end

GameData::Item.define :"DOUSEDRIVE" do |i|
  i.name "Douse Drive"
  i.name_plural "Douse Drives"
  i.pocket 1
  i.description "A cassette to be held by Genesect. It changes Techno Blast to a Water-type move."
end

GameData::Item.define :"SHOCKDRIVE" do |i|
  i.name "Shock Drive"
  i.name_plural "Shock Drives"
  i.pocket 1
  i.description "A cassette to be held by Genesect. It changes Techno Blast to an Electric-type move."
end

GameData::Item.define :"BURNDRIVE" do |i|
  i.name "Burn Drive"
  i.name_plural "Burn Drives"
  i.pocket 1
  i.description "A cassette to be held by Genesect. It changes Techno Blast to a Fire-type move."
end

GameData::Item.define :"CHILLDRIVE" do |i|
  i.name "Chill Drive"
  i.name_plural "Chill Drives"
  i.pocket 1
  i.description "A cassette to be held by Genesect. It changes Techno Blast to an Ice-type move."
end

GameData::Item.define :"EVERSTONE" do |i|
  i.name "Everstone"
  i.name_plural "Everstones"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. The Pokémon holding this peculiar stone is prevented from evolving."
end

GameData::Item.define :"DRAGONSCALE" do |i|
  i.name "Dragon Scale"
  i.name_plural "Dragon Scales"
  i.pocket 1
  i.price 3000
  i.description "A thick and tough scale. Dragon-type Pokémon may be holding this item when caught."
end

GameData::Item.define :"UPGRADE" do |i|
  i.name "Upgrade"
  i.name_plural "Upgrades"
  i.pocket 1
  i.price 3000
  i.description "A transparent device filled with all sorts of data. It was produced by Silph Co."
end

GameData::Item.define :"DUBIOUSDISC" do |i|
  i.name "Dubious Disc"
  i.name_plural "Dubious Discs"
  i.pocket 1
  i.price 3000
  i.description "A transparent device overflowing with dubious data.  Its producer is unknown."
end

GameData::Item.define :"PROTECTOR" do |i|
  i.name "Protector"
  i.name_plural "Protectors"
  i.pocket 1
  i.price 3000
  i.description "A protective item of some sort. It is extremely stiff and heavy. It is loved by a certain Pokémon."
end

GameData::Item.define :"ELECTIRIZER" do |i|
  i.name "Electirizer"
  i.name_plural "Electirizers"
  i.pocket 1
  i.price 3000
  i.description "A box packed with a tremendous amount of electric energy. It is loved by a certain Pokémon."
end

GameData::Item.define :"MAGMARIZER" do |i|
  i.name "Magmarizer"
  i.name_plural "Magmarizers"
  i.pocket 1
  i.price 3000
  i.description "A box packed with a tremendous amount of magma energy. It is loved by a certain Pokémon."
end

GameData::Item.define :"REAPERCLOTH" do |i|
  i.name "Reaper Cloth"
  i.name_plural "Reaper Cloths"
  i.pocket 1
  i.price 3000
  i.description "A cloth imbued with horrifyingly strong spiritual energy. It is loved by a certain Pokémon."
end

GameData::Item.define :"PRISMSCALE" do |i|
  i.name "Prism Scale"
  i.name_plural "Prism Scales"
  i.pocket 1
  i.price 3000
  i.description "A mysterious scale that evolves certain Pokémon. It shines in rainbow colors."
end

GameData::Item.define :"OVALSTONE" do |i|
  i.name "Oval Stone"
  i.name_plural "Oval Stones"
  i.pocket 1
  i.price 3000
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It is shaped like an egg."
end

GameData::Item.define :"REDSCARF" do |i|
  i.name "Red Scarf"
  i.name_plural "Red Scarves"
  i.pocket 1
  i.price 100
  i.description "An item to be held by a Pokémon. It boosts the Cool aspect of the holder in a Contest."
end

GameData::Item.define :"BLUESCARF" do |i|
  i.name "Blue Scarf"
  i.name_plural "Blue Scarves"
  i.pocket 1
  i.price 100
  i.description "An item to be held by a Pokémon. It boosts the Beauty aspect of the holder in a Contest."
end

GameData::Item.define :"PINKSCARF" do |i|
  i.name "Pink Scarf"
  i.name_plural "Pink Scarves"
  i.pocket 1
  i.price 100
  i.description "An item to be held by a Pokémon. It boosts the Cute aspect of the holder in a Contest."
end

GameData::Item.define :"GREENSCARF" do |i|
  i.name "Green Scarf"
  i.name_plural "Green Scarves"
  i.pocket 1
  i.price 100
  i.description "An item to be held by a Pokémon. It boosts the Smart aspect of the holder in a Contest."
end

GameData::Item.define :"YELLOWSCARF" do |i|
  i.name "Yellow Scarf"
  i.name_plural "Yellow Scarves"
  i.pocket 1
  i.price 100
  i.description "An item to be held by a Pokémon. It boosts the Tough aspect of the holder in a Contest."
end

GameData::Item.define :"YELLOWAPRICORN" do |i|
  i.name "Yellow Apricorn"
  i.name_plural "Yellow Apricorns"
  i.pocket 1
  i.price 200
  i.description "A yellow Apricorn. It has an invigorating scent."
end

GameData::Item.define :"BLUEAPRICORN" do |i|
  i.name "Blue Apricorn"
  i.name_plural "Blue Apricorns"
  i.pocket 1
  i.price 200
  i.description "A blue Apricorn. It smells a bit like grass."
end

GameData::Item.define :"GREENAPRICORN" do |i|
  i.name "Green Apricorn"
  i.name_plural "Green Apricorns"
  i.pocket 1
  i.price 200
  i.description "A green Apricorn. It has a mysterious, aromatic scent."
end

GameData::Item.define :"PINKAPRICORN" do |i|
  i.name "Pink Apricorn"
  i.name_plural "Pink Apricorns"
  i.pocket 1
  i.price 200
  i.description "A pink Apricorn. It has a nice, sweet scent."
end

GameData::Item.define :"WHITEAPRICORN" do |i|
  i.name "White Apricorn"
  i.name_plural "White Apricorns"
  i.pocket 1
  i.price 200
  i.description "A white Apricorn. It doesn't smell like anything."
end

GameData::Item.define :"BLACKAPRICORN" do |i|
  i.name "Black Apricorn"
  i.name_plural "Black Apricorns"
  i.pocket 1
  i.price 200
  i.description "A black Apricorn. It has an indescribable scent."
end

GameData::Item.define :"JAWFOSSIL" do |i|
  i.name "Jaw Fossil"
  i.name_plural "Jaw Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil from a prehistoric Pokémon that once lived on the land. It appears to be part of a large jaw."
end

GameData::Item.define :"SAILFOSSIL" do |i|
  i.name "Sail Fossil"
  i.name_plural "Sail Fossils"
  i.pocket 1
  i.price 7000
  i.description "A fossil from a prehistoric Pokémon that once lived on the land. It looks like the impression from a skin sail."
end

GameData::Item.define :"ASSAULTVEST" do |i|
  i.name "Assault Vest"
  i.name_plural "Assault Vests"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by a Pokémon. This offensive vest raises Sp. Def but prevents the use of status moves."
end

GameData::Item.define :"SAFETYGOGGLES" do |i|
  i.name "Safety Goggles"
  i.name_plural "Safety Goggles"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. They protect the holder from weather-related damage and powder."
end

GameData::Item.define :"LUMINOUSMOSS" do |i|
  i.name "Luminous Moss"
  i.name_plural "Luminous Moss"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It boosts Sp. Def if hit by a Water-type attack. It can only be used once."
end

GameData::Item.define :"SNOWBALL" do |i|
  i.name "Snowball"
  i.name_plural "Snowballs"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It boosts Attack if hit by an Ice-type attack. It can only be used once."
end

GameData::Item.define :"WEAKNESSPOLICY" do |i|
  i.name "Weakness Policy"
  i.name_plural "Weakness Policies"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by a Pokémon. The holder's Attack and Sp. Atk sharply increase if hit by a move it's weak to."
end

GameData::Item.define :"PIXIEPLATE" do |i|
  i.name "Pixie Plate"
  i.name_plural "Pixie Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Fairy-type moves."
end

GameData::Item.define :"FAIRYGEM" do |i|
  i.name "Fairy Gem"
  i.name_plural "Fairy Gems"
  i.pocket 1
  i.price 4000
  i.description "A gem with an essence of the fey. When held, it strengthens the power of a Fairy-type move only once."
end

GameData::Item.define :"WHIPPEDDREAM" do |i|
  i.name "Whipped Dream"
  i.name_plural "Whipped Dreams"
  i.pocket 1
  i.price 3000
  i.description "A soft and sweet treat made of fluffy, puffy and whirled cream. It's loved by a certain Pokémon."
end

GameData::Item.define :"SACHET" do |i|
  i.name "Sachet"
  i.name_plural "Sachets"
  i.pocket 1
  i.price 3000
  i.description "A sachet filled with slightly overwhelming fragrant perfumes. Yet it's loved by a certain Pokémon."
end

GameData::Item.define :"VENUSAURITE" do |i|
  i.name "Venusaurite"
  i.name_plural "Venusaurites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Venusaur hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"CHARIZARDITEX" do |i|
  i.name "Charizardite X"
  i.name_plural "Charizardite Xs"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Charizard hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"CHARIZARDITEY" do |i|
  i.name "Charizardite Y"
  i.name_plural "Charizardite Ys"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Charizard hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"BLASTOISINITE" do |i|
  i.name "Blastoisinite"
  i.name_plural "Blastoisinites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Blastoise hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"BEEDRILLITE" do |i|
  i.name "Beedrillite"
  i.name_plural "Beedrillites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Beedrill hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"PIDGEOTITE" do |i|
  i.name "Pidgeotite"
  i.name_plural "Pidgeotites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Pidgeot hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"ALAKAZITE" do |i|
  i.name "Alakazite"
  i.name_plural "Alakazites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Alakazam hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SLOWBRONITE" do |i|
  i.name "Slowbronite"
  i.name_plural "Slowbronites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Slowbro hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GENGARITE" do |i|
  i.name "Gengarite"
  i.name_plural "Gengarites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Gengar hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"KANGASKHANITE" do |i|
  i.name "Kangaskhanite"
  i.name_plural "Kangaskhanites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Kangaskhan hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"PINSIRITE" do |i|
  i.name "Pinsirite"
  i.name_plural "Pinsirites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Pinsir hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GYARADOSITE" do |i|
  i.name "Gyaradosite"
  i.name_plural "Gyaradosites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Gyarados hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"AERODACTYLITE" do |i|
  i.name "Aerodactylite"
  i.name_plural "Aerodactylites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Aerodactyl hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MEWTWONITEX" do |i|
  i.name "Mewtwonite X"
  i.name_plural "Mewtwonite Xs"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Mewtwo hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MEWTWONITEY" do |i|
  i.name "Mewtwonite Y"
  i.name_plural "Mewtwonite Ys"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Mewtwo hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"AMPHAROSITE" do |i|
  i.name "Ampharosite"
  i.name_plural "Ampharosites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Ampharos hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"STEELIXITE" do |i|
  i.name "Steelixite"
  i.name_plural "Steelixites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Steelix hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SCIZORITE" do |i|
  i.name "Scizorite"
  i.name_plural "Scizorites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Scizor hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"HERACRONITE" do |i|
  i.name "Heracronite"
  i.name_plural "Heracronites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Heracross hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"HOUNDOOMINITE" do |i|
  i.name "Houndoominite"
  i.name_plural "Houndoominites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Houndoom hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"TYRANITARITE" do |i|
  i.name "Tyranitarite"
  i.name_plural "Tyranitarites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Tyranitar hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SCEPTILITE" do |i|
  i.name "Sceptilite"
  i.name_plural "Sceptilites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Sceptile hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"BLAZIKENITE" do |i|
  i.name "Blazikenite"
  i.name_plural "Blazikenites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Blaziken hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SWAMPERTITE" do |i|
  i.name "Swampertite"
  i.name_plural "Swampertites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Swampert hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GARDEVOIRITE" do |i|
  i.name "Gardevoirite"
  i.name_plural "Gardevoirites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Gardevoir hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SABLENITE" do |i|
  i.name "Sablenite"
  i.name_plural "Sablenites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Sableye hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MAWILITE" do |i|
  i.name "Mawilite"
  i.name_plural "Mawilites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Mawile hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"AGGRONITE" do |i|
  i.name "Aggronite"
  i.name_plural "Aggronites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Aggron hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MEDICHAMITE" do |i|
  i.name "Medichamite"
  i.name_plural "Medichamites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Medicham hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MANECTITE" do |i|
  i.name "Manectite"
  i.name_plural "Manectites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Manectric hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SHARPEDONITE" do |i|
  i.name "Sharpedonite"
  i.name_plural "Sharpedonites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Sharpedo hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"CAMERUPTITE" do |i|
  i.name "Cameruptite"
  i.name_plural "Cameruptites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Camerupt hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"ALTARIANITE" do |i|
  i.name "Altarianite"
  i.name_plural "Altarianites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Altaria hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"BANETTITE" do |i|
  i.name "Banettite"
  i.name_plural "Banettites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Banette hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"ABSOLITE" do |i|
  i.name "Absolite"
  i.name_plural "Absolites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Absol hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GLALITITE" do |i|
  i.name "Glalitite"
  i.name_plural "Glalitites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Glalie hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SALAMENCITE" do |i|
  i.name "Salamencite"
  i.name_plural "Salamencites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Salamence hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"METAGROSSITE" do |i|
  i.name "Metagrossite"
  i.name_plural "Metagrossites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Metagross hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"LATIASITE" do |i|
  i.name "Latiasite"
  i.name_plural "Latiasites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Latias hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"LATIOSITE" do |i|
  i.name "Latiosite"
  i.name_plural "Latiosites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Latios hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"LOPUNNITE" do |i|
  i.name "Lopunnite"
  i.name_plural "Lopunnites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Lopunny hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GARCHOMPITE" do |i|
  i.name "Garchompite"
  i.name_plural "Garchompites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Garchomp hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"LUCARIONITE" do |i|
  i.name "Lucarionite"
  i.name_plural "Lucarionites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Lucario hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"ABOMASITE" do |i|
  i.name "Abomasite"
  i.name_plural "Abomasites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Abomasnow hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GALLADITE" do |i|
  i.name "Galladite"
  i.name_plural "Galladites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Gallade hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"AUDINITE" do |i|
  i.name "Audinite"
  i.name_plural "Audinites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Audino hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"DIANCITE" do |i|
  i.name "Diancite"
  i.name_plural "Diancites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Diancie hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"REDORB" do |i|
  i.name "Red Orb"
  i.name_plural "Red Orbs"
  i.pocket 1
  i.price 10000
  i.description "A shiny red orb that is said to have a legend tied to it. It's known to be connected with the Hoenn region."
end

GameData::Item.define :"BLUEORB" do |i|
  i.name "Blue Orb"
  i.name_plural "Blue Orbs"
  i.pocket 1
  i.price 10000
  i.description "A shiny blue orb that is said to have a legend tied to it. It's known to be connected with the Hoenn region."
end

GameData::Item.define :"ICESTONE" do |i|
  i.name "Ice Stone"
  i.name_plural "Ice Stones"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar stone that makes certain species of Pokémon evolve. It has a snowflake pattern."
end

GameData::Item.define :"REDNECTAR" do |i|
  i.name "Red Nectar"
  i.name_plural "Red Nectars"
  i.pocket 1
  i.price 300
  i.field_use :"OnPokemon"
  i.description "A flower nectar obtained at Ula'ula Meadow. It changes the form of certain species of Pokémon."
end

GameData::Item.define :"YELLOWNECTAR" do |i|
  i.name "Yellow Nectar"
  i.name_plural "Yellow Nectars"
  i.pocket 1
  i.price 300
  i.field_use :"OnPokemon"
  i.description "A flower nectar obtained at Melemele Meadow. It changes the form of certain species of Pokémon."
end

GameData::Item.define :"PINKNECTAR" do |i|
  i.name "Pink Nectar"
  i.name_plural "Pink Nectars"
  i.pocket 1
  i.price 300
  i.field_use :"OnPokemon"
  i.description "A flower nectar obtained from shrubs on Royal Avenue. It changes the form of certain species of Pokémon."
end

GameData::Item.define :"PURPLENECTAR" do |i|
  i.name "Purple Nectar"
  i.name_plural "Purple Nectars"
  i.pocket 1
  i.price 300
  i.field_use :"OnPokemon"
  i.description "A flower nectar obtained at Poni Meadow. It changes the form of certain species of Pokémon."
end

GameData::Item.define :"PROTECTIVEPADS" do |i|
  i.name "Protective Pads"
  i.name_plural "Protective Pads"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. They protect the holder from effects caused by making contact."
end

GameData::Item.define :"TERRAINEXTENDER" do |i|
  i.name "Terrain Extender"
  i.name_plural "Terrain Extenders"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. It extends the duration of the terrain caused by the holder."
end

GameData::Item.define :"ADRENALINEORB" do |i|
  i.name "Adrenaline Orb"
  i.name_plural "Adrenaline Orbs"
  i.pocket 1
  i.price 300
  i.battle_use :"Direct"
  i.description "An item to be held by a Pokémon. It boosts Speed when intimidated. It can be used only once."
end

GameData::Item.define :"ELECTRICSEED" do |i|
  i.name "Electric Seed"
  i.name_plural "Electric Seeds"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It boosts Defense on Electric Terrain. It can only be used once."
end

GameData::Item.define :"GRASSYSEED" do |i|
  i.name "Grassy Seed"
  i.name_plural "Grassy Seeds"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It boosts Defense on Grassy Terrain. It can only be used once."
end

GameData::Item.define :"MISTYSEED" do |i|
  i.name "Misty Seed"
  i.name_plural "Misty Seeds"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It boosts Sp. Def on Misty Terrain. It can only be used once."
end

GameData::Item.define :"PSYCHICSEED" do |i|
  i.name "Psychic Seed"
  i.name_plural "Psychic Seeds"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It boosts Sp. Def on Psychic Terrain. It can only be used once."
end

GameData::Item.define :"FIREMEMORY" do |i|
  i.name "Fire Memory"
  i.name_plural "Fire Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Fire-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"WATERMEMORY" do |i|
  i.name "Water Memory"
  i.name_plural "Water Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Water-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"ELECTRICMEMORY" do |i|
  i.name "Electric Memory"
  i.name_plural "Electric Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Electric-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"GRASSMEMORY" do |i|
  i.name "Grass Memory"
  i.name_plural "Grass Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Grass-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"ICEMEMORY" do |i|
  i.name "Ice Memory"
  i.name_plural "Ice Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Ice-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"FIGHTINGMEMORY" do |i|
  i.name "Fighting Memory"
  i.name_plural "Fighting Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Fighting-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"POISONMEMORY" do |i|
  i.name "Poison Memory"
  i.name_plural "Poison Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Poison-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"GROUNDMEMORY" do |i|
  i.name "Ground Memory"
  i.name_plural "Ground Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Ground-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"FLYINGMEMORY" do |i|
  i.name "Flying Memory"
  i.name_plural "Flying Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Flying-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"PSYCHICMEMORY" do |i|
  i.name "Psychic Memory"
  i.name_plural "Psychic Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Psychic-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"BUGMEMORY" do |i|
  i.name "Bug Memory"
  i.name_plural "Bug Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Bug-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"ROCKMEMORY" do |i|
  i.name "Rock Memory"
  i.name_plural "Rock Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Rock-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"GHOSTMEMORY" do |i|
  i.name "Ghost Memory"
  i.name_plural "Ghost Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Ghost-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"DRAGONMEMORY" do |i|
  i.name "Dragon Memory"
  i.name_plural "Dragon Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Dragon-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"DARKMEMORY" do |i|
  i.name "Dark Memory"
  i.name_plural "Dark Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Dark-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"STEELMEMORY" do |i|
  i.name "Steel Memory"
  i.name_plural "Steel Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Steel-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"FAIRYMEMORY" do |i|
  i.name "Fairy Memory"
  i.name_plural "Fairy Memories"
  i.pocket 1
  i.price 1000
  i.description "A memory disc containing Fairy-type data. It changes the holder's type if held by a certain Pokémon."
end

GameData::Item.define :"SWEETAPPLE" do |i|
  i.name "Sweet Apple"
  i.name_plural "Sweet Apples"
  i.pocket 1
  i.price 2200
  i.field_use :"OnPokemon"
  i.description "A peculiar apple that can make a certain species of Pokémon evolve. It's exceptionally sweet."
end

GameData::Item.define :"TARTAPPLE" do |i|
  i.name "Tart Apple"
  i.name_plural "Tart Apples"
  i.pocket 1
  i.price 2200
  i.field_use :"OnPokemon"
  i.description "A peculiar apple that can make a certain species of Pokémon evolve. It's exceptionally tart."
end

GameData::Item.define :"CRACKEDPOT" do |i|
  i.name "Cracked Pot"
  i.name_plural "Cracked Pots"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar cracked teapot that can make a certain species of Pokémon evolve. It makes delicious tea."
end

GameData::Item.define :"CHIPPEDPOT" do |i|
  i.name "Chipped Pot"
  i.name_plural "Chipped Pots"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar chipped teapot that can make a certain species of Pokémon evolve. It makes delicious tea."
end

GameData::Item.define :"GALARICACUFF" do |i|
  i.name "Galarica Cuff"
  i.name_plural "Galarica Cuffs"
  i.pocket 1
  i.price 6000
  i.field_use :"OnPokemon"
  i.description "A cuff made from woven-together Galarica Twigs. Giving it to a Galarian Slowpoke would make it very happy."
end

GameData::Item.define :"GALARICAWREATH" do |i|
  i.name "Galarica Wreath"
  i.name_plural "Galarica Wreaths"
  i.pocket 1
  i.price 6000
  i.field_use :"OnPokemon"
  i.description "A wreath made from woven-together Galarica Twigs. A Galarian Slowpoke wearing this would be very happy."
end

GameData::Item.define :"FOSSILIZEDBIRD" do |i|
  i.name "Fossilized Bird"
  i.name_plural "Fossilized Birds"
  i.pocket 1
  i.price 5000
  i.description "The fossil of an ancient Pokémon that once soared through the sky. What it looked like is a mystery."
end

GameData::Item.define :"FOSSILIZEDFISH" do |i|
  i.name "Fossilized Fish"
  i.name_plural "Fossilized Fish"
  i.pocket 1
  i.price 5000
  i.description "The fossil of an ancient Pokémon that once lived in the sea. What it looked like is a mystery."
end

GameData::Item.define :"FOSSILIZEDDRAKE" do |i|
  i.name "Fossilized Drake"
  i.name_plural "Fossilized Drakes"
  i.pocket 1
  i.price 5000
  i.description "The fossil of an ancient Pokémon that once roamed the land. What it looked like is a mystery."
end

GameData::Item.define :"FOSSILIZEDDINO" do |i|
  i.name "Fossilized Dino"
  i.name_plural "Fossilized Dinos"
  i.pocket 1
  i.price 5000
  i.description "The fossil of an ancient Pokémon that once lived in the sea. What it looked like is a mystery."
end

GameData::Item.define :"PRETTYFEATHER" do |i|
  i.name "Pretty Feather"
  i.name_plural "Pretty Feathers"
  i.pocket 1
  i.price 1000
  i.description "Though this feather is beautiful, it's just a regular feather and has no effect on Pokémon."
end

GameData::Item.define :"HEAVYDUTYBOOTS" do |i|
  i.name "Heavy-Duty Boots"
  i.name_plural "Heavy-Duty Boots"
  i.pocket 1
  i.price 3000
  i.description "These boots prevent the effects of traps set on the battlefield."
end

GameData::Item.define :"UTILITYUMBRELLA" do |i|
  i.name "Utility Umbrella"
  i.name_plural "Utility Umbrellas"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. This sturdy umbrella protects the holder from the effects of rain and sun."
end

GameData::Item.define :"EJECTPACK" do |i|
  i.name "Eject Pack"
  i.name_plural "Eject Packs"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. When the holder's stats are lowered, it will be switched out of battle."
end

GameData::Item.define :"BLUNDERPOLICY" do |i|
  i.name "Blunder Policy"
  i.name_plural "Blunder Policies"
  i.pocket 1
  i.price 4000
  i.description "Raises Speed sharply when a Pokémon misses with a move because of accuracy."
end

GameData::Item.define :"THROATSPRAY" do |i|
  i.name "Throat Spray"
  i.name_plural "Throat Sprays"
  i.pocket 1
  i.price 4000
  i.description "Raises Sp. Atk when a Pokémon uses a sound-based move."
end

GameData::Item.define :"ROOMSERVICE" do |i|
  i.name "Room Service"
  i.name_plural "Room Services"
  i.pocket 1
  i.price 4000
  i.description "An item to be held by a Pokémon. Lowers Speed when Trick Room takes effect."
end

GameData::Item.define :"LEEK" do |i|
  i.name "Leek"
  i.name_plural "Leeks"
  i.pocket 1
  i.price 1000
  i.description "An item to be held by Farfetch'd. It is a very long and stiff stalk of leek that boosts the critical-hit ratio."
end

GameData::Item.define :"RUSTEDSWORD" do |i|
  i.name "Rusted Sword"
  i.name_plural "Rusted Swords"
  i.pocket 1
  i.description "It is said that a hero used this sword to halt a disaster in ancient times. But it's grown rusty and worn."
end

GameData::Item.define :"RUSTEDSHIELD" do |i|
  i.name "Rusted Shield"
  i.name_plural "Rusted Shields"
  i.pocket 1
  i.description "It is said that a hero used this shield to halt a disaster in ancient times. But it's grown rusty and worn."
end

GameData::Item.define :"STRAWBERRYSWEET" do |i|
  i.name "Strawberry Sweet"
  i.name_plural "Strawberry Sweets"
  i.pocket 1
  i.price 500
  i.description "A strawberry-shaped sweet. When a Milcery holds this, it will spin around happily."
end

GameData::Item.define :"LOVESWEET" do |i|
  i.name "Love Sweet"
  i.name_plural "Love Sweets"
  i.pocket 1
  i.price 500
  i.description "A heart-shaped sweet. When a Milcery holds this, it spins around happily."
end

GameData::Item.define :"BERRYSWEET" do |i|
  i.name "Berry Sweet"
  i.name_plural "Berry Sweets"
  i.pocket 1
  i.price 500
  i.description "A berry-shaped sweet. When a Milcery holds this, it spins around happily."
end

GameData::Item.define :"CLOVERSWEET" do |i|
  i.name "Clover Sweet"
  i.name_plural "Clover Sweets"
  i.pocket 1
  i.price 500
  i.description "A clover-shaped sweet. When a Milcery holds this, it spins around happily."
end

GameData::Item.define :"FLOWERSWEET" do |i|
  i.name "Flower Sweet"
  i.name_plural "Flower Sweets"
  i.pocket 1
  i.price 500
  i.description "A flower-shaped sweet. When a Milcery holds this, it spins around happily."
end

GameData::Item.define :"STARSWEET" do |i|
  i.name "Star Sweet"
  i.name_plural "Star Sweets"
  i.pocket 1
  i.price 500
  i.description "A star-shaped sweet. When a Milcery holds this, it spins around happily."
end

GameData::Item.define :"RIBBONSWEET" do |i|
  i.name "Ribbon Sweet"
  i.name_plural "Ribbon Sweets"
  i.pocket 1
  i.price 500
  i.description "A ribbon-shaped sweet. When a Milcery holds this, it spins around happily."
end

GameData::Item.define :"TOMATOBERRY" do |i|
  i.price 40
end

GameData::Item.define :"CROWNPENDANT" do |i|
  i.name "Crown Pendant"
  i.name_plural "Crown Pendants"
  i.pocket 1
  i.description "A pendant forged from three Crown Fragments. When HP is critical, boosts all stats of the holder."
end

GameData::Item.define :"BLACKAUGURITE" do |i|
  i.name "Black Augurite"
  i.name_plural "Black Augurites"
  i.pocket 1
  i.price 2100
  i.field_use :"OnPokemon"
  i.description "A glassy black stone that produces a sharp cutting edge when split. It’s loved by a certain Pokémon."
end

GameData::Item.define :"PEATBLOCK" do |i|
  i.name "Peat Block"
  i.name_plural "Peat Blocks"
  i.pocket 1
  i.price 2100
  i.field_use :"OnPokemon"
  i.description "A block of muddy material that is for fuel. It’s loved by a certain Pokémon."
end

GameData::Item.define :"LINKINGCORD" do |i|
  i.name "Linking Cord"
  i.name_plural "Linking Cords"
  i.pocket 1
  i.price 2100
  i.field_use :"OnPokemon"
  i.description "A string exuding a mysterious energy of connection. It’s loved by certain Pokémon."
end

GameData::Item.define :"ADAMANTCRYSTAL" do |i|
  i.name "Adamant Crystal"
  i.name_plural "Adamant Crystals"
  i.pocket 1
  i.price 20000
  i.description "When held by Dialga, this large, glowing gem wells with power and allows the Pokémon to change form."
end

GameData::Item.define :"LUSTROUSGLOBE" do |i|
  i.name "Lustrous Globe"
  i.name_plural "Lustrous Globes"
  i.pocket 1
  i.price 20000
  i.description "When held by Palkia, this large, glowing orb wells with power and allows the Pokémon to change form."
end

GameData::Item.define :"LEGENDPLATE" do |i|
  i.name "Legend Plate"
  i.name_plural "Legend Plates"
  i.pocket 1
  i.price 20000
  i.description "A stone tablet to be held by a certain Pokémon. It the holder the power of every type there is."
end

GameData::Item.define :"BLANKPLATE" do |i|
  i.name "Blank Plate"
  i.name_plural "Blank Plates"
  i.pocket 1
  i.price 10000
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Normal-type moves."
end

GameData::Item.define :"GRISEOUSCORE" do |i|
  i.name "Griseous Core"
  i.name_plural "Griseous Cores"
  i.pocket 1
  i.price 20000
  i.description "When held by Giratina, this large, glowing gem wells with power and allows the Pokémon to change form."
end

GameData::Item.define :"AUSPICIOUSARMOR" do |i|
  i.name "Auspicious Armor"
  i.name_plural "Auspicious Armors"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar set of armor that can make a certain Pokémon evolve. Auspicious wishes live within it."
end

GameData::Item.define :"MALICIOUSARMOR" do |i|
  i.name "Malicious Armor"
  i.name_plural "Malicious Armors"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar set of armor that can make a certain Pokémon evolve. Malicious will lurks within it."
end

GameData::Item.define :"SCROLLOFDARKNESS" do |i|
  i.name "Scroll of Darkness"
  i.name_plural "Scroll of Darkness"
  i.pocket 1
  i.field_use :"OnPokemon"
  i.description "A scroll that evolves certain Pokémon. Written on it are the true secrets of the path of darkness."
end

GameData::Item.define :"SCROLLOFWATERS" do |i|
  i.name "Scroll of Waters"
  i.name_plural "Scroll of Waters"
  i.pocket 1
  i.field_use :"OnPokemon"
  i.description "A scroll that evolves certain Pokémon. Written on it are the true secrets of the path of water."
end

GameData::Item.define :"LEADERSCREST" do |i|
  i.name "Leader's Crest"
  i.name_plural "Leader's Crests"
  i.pocket 1
  i.price 3000
  i.description "A shard of what appears to be an old blade of some sort. It is held only by a head of certain Pokémon group."
end

GameData::Item.define :"BOOSTERENERGY" do |i|
  i.name "Booster Energy"
  i.name_plural "Booster Energies"
  i.pocket 1
  i.description "An item to be held by Pokémon with certain Abilities. It boosts the strength of the Pokémon."
end

GameData::Item.define :"ABILITYSHIELD" do |i|
  i.name "Ability Shield"
  i.name_plural "Ability Shields"
  i.pocket 1
  i.price 20000
  i.description "An item to be held by a Pokémon. This shield protects the holder from having its Ability changed by others."
end

GameData::Item.define :"CLEARAMULET" do |i|
  i.name "Clear Amulet"
  i.name_plural "Clear Amulets"
  i.pocket 1
  i.price 30000
  i.description "An item to be held by a Pokémon. It protects the holder from having its stats lowered."
end

GameData::Item.define :"MIRRORHERB" do |i|
  i.name "Mirror Herb"
  i.name_plural "Mirror Herbs"
  i.pocket 1
  i.price 30000
  i.description "An item to be held by a Pokémon. This herb will allow the holder to mirror an opponent's stat increases once."
end

GameData::Item.define :"PUNCHINGGLOVE" do |i|
  i.name "Punching Glove"
  i.name_plural "Punching Gloves"
  i.pocket 1
  i.price 15000
  i.description "An item to be held by a Pokémon. It boosts the holder's punching moves and prevents direct contact."
end

GameData::Item.define :"COVERTCLOAK" do |i|
  i.name "Covert Cloak"
  i.name_plural "Covert Cloaks"
  i.pocket 1
  i.price 20000
  i.description "An item to be held by a Pokémon. It conceals the holder, protecting it from move's additional effects."
end

GameData::Item.define :"LOADEDDICE" do |i|
  i.name "Loaded Dice"
  i.name_plural "Loaded Dices"
  i.pocket 1
  i.price 20000
  i.description "An item to be held by a Pokémon. It ensures the holder's multistrike moves hit more times."
end

GameData::Item.define :"GIMMIGHOULCOIN" do |i|
  i.name "Gimmighoul Coin"
  i.name_plural "Gimmighoul Coins"
  i.pocket 1
  i.description "An item that accidentally dropped by a Pokémon. It seems that Gimmighoul treasure and hoard these."
end

GameData::Item.define :"TINYBAMBOOSHOOT" do |i|
  i.name "Tiny Bamboo Shoot"
  i.name_plural "Tiny Bamboo Shoots"
  i.pocket 1
  i.price 1500
  i.description "A small and rare bamboo shoot. It's quite popular with a certain class of gourmands."
end

GameData::Item.define :"BIGBAMBOOSHOOT" do |i|
  i.name "Big Bamboo Shoot"
  i.name_plural "Big Bamboo Shoots"
  i.pocket 1
  i.price 6000
  i.description "A large and rare bamboo shoot. It's extremely popular with a certain class of gourmands."
end

GameData::Item.define :"FAIRYFEATHER" do |i|
  i.name "Fairy Feather"
  i.name_plural "Fairy Feathers"
  i.pocket 1
  i.price 3000
  i.description "An item to be held by a Pokémon. It boosts the power of the holder's Fairy-type moves."
end

GameData::Item.define :"SYRUPYAPPLE" do |i|
  i.name "Syrupy Apple"
  i.name_plural "Syrupy Apples"
  i.pocket 1
  i.price 2200
  i.field_use :"OnPokemon"
  i.description "A peculiar apple that can make a certain species of Pokémon evolve. It's exceptionally syrupy."
end

GameData::Item.define :"UNREMARKABLETEACUP" do |i|
  i.name "Unremarkable Teacup"
  i.name_plural "Unremarkable Teacups"
  i.pocket 1
  i.price 1500
  i.field_use :"OnPokemon"
  i.description "A peculiar cracked teacup that can make a certain species of Pokémon evolve. It makes delicious tea."
end

GameData::Item.define :"MASTERPIECETEACUP" do |i|
  i.name "Masterpiece Teacup"
  i.name_plural "Masterpiece Teacups"
  i.pocket 1
  i.price 1500
  i.field_use :"OnPokemon"
  i.description "A peculiar chipped teacup that can make a certain species of Pokémon evolve. It makes delicious tea."
end

GameData::Item.define :"WELLSPRINGMASK" do |i|
  i.name "Wellspring Mask"
  i.name_plural "Wellspring Masks"
  i.pocket 1
  i.description "A carved wooden mask to be held by Ogerpon. It allows Ogerpon to wield the Water type during battle."
end

GameData::Item.define :"HEARTHFLAMEMASK" do |i|
  i.name "Hearthflame Mask"
  i.name_plural "Hearthflame Masks"
  i.pocket 1
  i.description "A carved wooden mask to be held by Ogerpon. It allows Ogerpon to wield the Fire type during battle."
end

GameData::Item.define :"CORNERSTONEMASK" do |i|
  i.name "Cornerstone Mask"
  i.name_plural "Cornerstone Masks"
  i.pocket 1
  i.description "A carved wooden mask to be held by Ogerpon. It allows Ogerpon to wield the Rock type during battle."
end

GameData::Item.define :"METALALLOY" do |i|
  i.name "Metal Alloy"
  i.name_plural "Metal Alloys"
  i.pocket 1
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A peculiar metal that can make certain species of Pokémon evolve. It is composed of many layers."
end

GameData::Item.define :"CLEFABLITE" do |i|
  i.name "Clefablite"
  i.name_plural "Clefablites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Clefable hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"VICTREEBELITE" do |i|
  i.name "Victreebelite"
  i.name_plural "Victreebelites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Victreebel hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"STARMINITE" do |i|
  i.name "Starminite"
  i.name_plural "Starminites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Starmie hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"DRAGONINITE" do |i|
  i.name "Dragoninite"
  i.name_plural "Dragoninites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Dragonite hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MEGANIUMITE" do |i|
  i.name "Meganiumite"
  i.name_plural "Meganiumites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Meganium hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"FERALIGITE" do |i|
  i.name "Feraligite"
  i.name_plural "Feraligites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Feraligatr hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SKARMORITE" do |i|
  i.name "Skarmorite"
  i.name_plural "Skarmorites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Skarmory hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"FROSLASSITE" do |i|
  i.name "Froslassite"
  i.name_plural "Froslassites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Froslass hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"EMBOARITE" do |i|
  i.name "Emboarite"
  i.name_plural "Emboarites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Haven Emboar hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"EXCADRITE" do |i|
  i.name "Excadrite"
  i.name_plural "Excadrites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Haven Excadrill hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SCOLIPITE" do |i|
  i.name "Scolipite"
  i.name_plural "Scolipites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Scolipede hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SCRAFTINITE" do |i|
  i.name "Scraftinite"
  i.name_plural "Scraftinites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Scrafty hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"EELEKTROSSITE" do |i|
  i.name "Eelektrossite"
  i.name_plural "Eelektrossites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Eelektross hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"CHANDELURITE" do |i|
  i.name "Chandelurite"
  i.name_plural "Chandelurites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Chandelure hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"CHESNAUGHTITE" do |i|
  i.name "Chesnaughtite"
  i.name_plural "Chesnaughtites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Chesnaught hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"DELPHOXITE" do |i|
  i.name "Delphoxite"
  i.name_plural "Delphoxites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Delphox hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GRENINJITE" do |i|
  i.name "Greninjite"
  i.name_plural "Greninjites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Greninja hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"PYROARITE" do |i|
  i.name "Pyroarite"
  i.name_plural "Pyroarites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Pyroar hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"FLOETTITE" do |i|
  i.name "Floettite"
  i.name_plural "Floettites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have special Floette hold it to Mega Evolve."
end

GameData::Item.define :"MALAMARITE" do |i|
  i.name "Malamarite"
  i.name_plural "Malamarites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Malamar hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"BARBARACITE" do |i|
  i.name "Barbaracite"
  i.name_plural "Barbaracites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Barbaracle hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"DRAGALGITE" do |i|
  i.name "Dragalgite"
  i.name_plural "Dragalgites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Dragalge hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"HAWLUCHANITE" do |i|
  i.name "Hawluchanite"
  i.name_plural "Hawluchanites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Hawlucha hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"ZYGARDITE" do |i|
  i.name "Zygardite"
  i.name_plural "Zygardites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Complete Forme Zygarde hold it to Mega Evolve."
end

GameData::Item.define :"DRAMPANITE" do |i|
  i.name "Drampanite"
  i.name_plural "Drampanites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Drampa hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"FALINKSITE" do |i|
  i.name "Falinksite"
  i.name_plural "Falinksites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Falinks hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MEGASHARD" do |i|
  i.name "Mega Shard"
  i.name_plural "Mega Shards"
  i.pocket 1
  i.description "A mysterious shard found by smashing Mega Crystals. It seems that some people collect these shards."
end

GameData::Item.define :"HEATRANITE" do |i|
  i.name "Heatranite"
  i.name_plural "Heatranites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Heatran hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"DARKRANITE" do |i|
  i.name "Darkranite"
  i.name_plural "Darkranites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Darkrai hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"ZERAORITE" do |i|
  i.name "Zeraorite"
  i.name_plural "Zeraorites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Zeraora hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"RAICHUNITEX" do |i|
  i.name "Raichunite X"
  i.name_plural "Raichunite Xs"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Raichu hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"RAICHUNITEY" do |i|
  i.name "Raichunite Y"
  i.name_plural "Raichunite Ys"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Raichu hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"CHIMECHITE" do |i|
  i.name "Chimechite"
  i.name_plural "Chimechites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Chimecho hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"ABSOLITEZ" do |i|
  i.name "Absolite Z"
  i.name_plural "Absolite Zs"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Absol hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"STARAPTITE" do |i|
  i.name "Staraptite"
  i.name_plural "Staraptites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Staraptor hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GARCHOMPITEZ" do |i|
  i.name "Garchompite Z"
  i.name_plural "Garchompite Zs"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Garchomp hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"LUCARIONITEZ" do |i|
  i.name "Lucarionite Z"
  i.name_plural "Lucarionite Zs"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Lucario hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GOLURKITE" do |i|
  i.name "Golurkite"
  i.name_plural "Golurkites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Golurk hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MEOWSTICITE" do |i|
  i.name "Meowsticite"
  i.name_plural "Meowsticites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Meowstic hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"CRABOMINITE" do |i|
  i.name "Crabominite"
  i.name_plural "Crabominites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Crabominable hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GOLISOPITE" do |i|
  i.name "Golisopite"
  i.name_plural "Golisopites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Golisopod hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"MAGEARNITE" do |i|
  i.name "Magearnite"
  i.name_plural "Magearnites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Magearna hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"SCOVILLAINITE" do |i|
  i.name "Scovillainite"
  i.name_plural "Scovillainites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Scovillain hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"BAXCALIBRITE" do |i|
  i.name "Baxcalibrite"
  i.name_plural "Baxcalibrites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Baxcalibur hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"TATSUGIRINITE" do |i|
  i.name "Tatsugirinite"
  i.name_plural "Tatsugirinites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Tatsugiri hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :"GLIMMORANITE" do |i|
  i.name "Glimmoranite"
  i.name_plural "Glimmoranites"
  i.pocket 1
  i.description "One of a variety of mysterious Mega Stones. Have Glimmora hold it, and it will be able to Mega Evolve."
end
