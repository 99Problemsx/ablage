#=============================================================================
# Medicine
#=============================================================================

GameData::Item.define :"POTION" do |i|
  i.name "Potion"
  i.name_plural "Potions"
  i.pocket 2
  i.price 200
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine for treating wounds. It can be used to restore 20 HP to a single Pokémon."
end

GameData::Item.define :"SUPERPOTION" do |i|
  i.name "Super Potion"
  i.name_plural "Super Potions"
  i.pocket 2
  i.price 700
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine for treating wounds. It can be used to restore 60 HP to a single Pokémon."
end

GameData::Item.define :"HYPERPOTION" do |i|
  i.name "Hyper Potion"
  i.name_plural "Hyper Potions"
  i.pocket 2
  i.price 1500
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine for treating wounds. It can be used to restore 120 HP to a single Pokémon."
end

GameData::Item.define :"MAXPOTION" do |i|
  i.name "Max Potion"
  i.name_plural "Max Potions"
  i.pocket 2
  i.price 2500
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine for treating wounds. It can completely restore the max HP of a single Pokémon."
end

GameData::Item.define :"FULLRESTORE" do |i|
  i.name "Full Restore"
  i.name_plural "Full Restores"
  i.pocket 2
  i.price 3000
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A medicine that fully restores the HP and heals any status problems of a single Pokémon."
end

GameData::Item.define :"SACREDASH" do |i|
  i.name "Sacred Ash"
  i.name_plural "Sacred Ashes"
  i.pocket 2
  i.price 50000
  i.field_use :"Direct"
  i.description "It revives all fainted Pokémon. In doing so, it also fully restores their HP."
end

GameData::Item.define :"AWAKENING" do |i|
  i.name "Awakening"
  i.name_plural "Awakenings"
  i.pocket 2
  i.price 200
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine. It awakens a Pokémon from the clutches of sleep."
end

GameData::Item.define :"ANTIDOTE" do |i|
  i.name "Antidote"
  i.name_plural "Antidotes"
  i.pocket 2
  i.price 200
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine. It lifts the effect of poison from one Pokémon."
end

GameData::Item.define :"BURNHEAL" do |i|
  i.name "Burn Heal"
  i.name_plural "Burn Heals"
  i.pocket 2
  i.price 200
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine. It heals a single Pokémon that is suffering from a burn."
end

GameData::Item.define :"PARALYZEHEAL" do |i|
  i.name "Paralyze Heal"
  i.name_plural "Paralyze Heals"
  i.pocket 2
  i.price 200
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine. It eliminates paralysis from a single Pokémon."
end

GameData::Item.define :"ICEHEAL" do |i|
  i.name "Ice Heal"
  i.name_plural "Ice Heals"
  i.pocket 2
  i.price 200
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine. It defrosts a Pokémon that has been frozen solid."
end

GameData::Item.define :"FULLHEAL" do |i|
  i.name "Full Heal"
  i.name_plural "Full Heals"
  i.pocket 2
  i.price 400
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A spray-type medicine. It heals all the status problems of a single Pokémon."
end

GameData::Item.define :"LAVACOOKIE" do |i|
  i.name "Lava Cookie"
  i.name_plural "Lava Cookies"
  i.pocket 2
  i.price 350
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Lavaridge Town's local specialty. It heals all the status problems of one Pokémon."
end

GameData::Item.define :"OLDGATEAU" do |i|
  i.name "Old Gateau"
  i.name_plural "Old Gateaux"
  i.pocket 2
  i.price 350
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Old Chateau's hidden specialty. It heals all the status problems of a single Pokémon."
end

GameData::Item.define :"CASTELIACONE" do |i|
  i.name "Casteliacone"
  i.name_plural "Casteliacones"
  i.pocket 2
  i.price 350
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Castelia City's specialty, soft-serve ice cream. It heals all the status problems of a single Pokémon."
end

GameData::Item.define :"REVIVE" do |i|
  i.name "Revive"
  i.name_plural "Revives"
  i.pocket 2
  i.price 2000
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A medicine that revives a fainted Pokémon. It restores half the Pokémon's maximum HP."
end

GameData::Item.define :"MAXREVIVE" do |i|
  i.name "Max Revive"
  i.name_plural "Max Revives"
  i.pocket 2
  i.price 4000
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A medicine that revives a fainted Pokémon. It fully restores the Pokémon's HP."
end

GameData::Item.define :"BERRYJUICE" do |i|
  i.name "Berry Juice"
  i.name_plural "Berry Juices"
  i.pocket 2
  i.price 100
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A 100% pure juice made of Berries. It restores the HP of one Pokémon by just 20 points."
end

GameData::Item.define :"RAGECANDYBAR" do |i|
  i.name "Rage Candy Bar"
  i.name_plural "Rage Candy Bars"
  i.pocket 2
  i.price 350
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Mahogany Town's famous candy. It can be used once to heal all the status conditions of a Pokémon."
end

GameData::Item.define :"SWEETHEART" do |i|
  i.name "Sweet Heart"
  i.name_plural "Sweet Hearts"
  i.pocket 2
  i.price 3000
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Very sweet chocolate. It restores the HP of one Pokémon by only 20 points."
end

GameData::Item.define :"FRESHWATER" do |i|
  i.name "Fresh Water"
  i.name_plural "Fresh Waters"
  i.pocket 2
  i.price 200
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Water with high mineral content. It can be used to restore 30 HP to a single Pokémon."
end

GameData::Item.define :"SODAPOP" do |i|
  i.name "Soda Pop"
  i.name_plural "Soda Pops"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A highly carbonated soda drink. It can be used to restore 50 HP to a single Pokémon."
end

GameData::Item.define :"LEMONADE" do |i|
  i.name "Lemonade"
  i.name_plural "Lemonades"
  i.pocket 2
  i.price 350
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A very sweet and refreshing drink. It can be used to restore 70 HP to a single Pokémon."
end

GameData::Item.define :"MOOMOOMILK" do |i|
  i.name "Moomoo Milk"
  i.name_plural "Moomoo Milks"
  i.pocket 2
  i.price 600
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Milk with a very high nutrition content. It restores the HP of one Pokémon by 100 points."
end

GameData::Item.define :"ENERGYPOWDER" do |i|
  i.name "Energy Powder"
  i.name_plural "Energy Powders"
  i.pocket 2
  i.price 500
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A very bitter medicinal powder. It can be used to restore 60 HP to a single Pokémon."
end

GameData::Item.define :"ENERGYROOT" do |i|
  i.name "Energy Root"
  i.name_plural "Energy Roots"
  i.pocket 2
  i.price 1200
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "An extremely bitter medicinal root. It can be used to restore 120 HP to a single Pokémon."
end

GameData::Item.define :"HEALPOWDER" do |i|
  i.name "Heal Powder"
  i.name_plural "Heal Powders"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A very bitter medicine powder. It heals all the status problems of a single Pokémon."
end

GameData::Item.define :"REVIVALHERB" do |i|
  i.name "Revival Herb"
  i.name_plural "Revival Herbs"
  i.pocket 2
  i.price 2800
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A very bitter medicinal herb. It revives a fainted Pokémon, fully restoring its HP."
end

GameData::Item.define :"ETHER" do |i|
  i.name "Ether"
  i.name_plural "Ethers"
  i.pocket 2
  i.price 1200
  i.field_use :"OnPokemon"
  i.battle_use :"OnMove"
  i.description "It restores the PP of a Pokémon's selected move by a maximum of 10 points."
end

GameData::Item.define :"MAXETHER" do |i|
  i.name "Max Ether"
  i.name_plural "Max Ethers"
  i.pocket 2
  i.price 2000
  i.field_use :"OnPokemon"
  i.battle_use :"OnMove"
  i.description "It fully restores the PP of a single selected move that has been learned by the target Pokémon."
end

GameData::Item.define :"ELIXIR" do |i|
  i.name "Elixir"
  i.name_plural "Elixirs"
  i.pocket 2
  i.price 3000
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "It restores the PP of all the moves learned by the targeted Pokémon by 10 points each."
end

GameData::Item.define :"MAXELIXIR" do |i|
  i.name "Max Elixir"
  i.name_plural "Max Elixirs"
  i.pocket 2
  i.price 4500
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "It fully restores the PP of all the moves learned by the targeted Pokémon."
end

GameData::Item.define :"PPUP" do |i|
  i.name "PP Up"
  i.name_plural "PP Ups"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "It slightly raises the maximum PP of a selected move that has been learned by the target Pokémon."
end

GameData::Item.define :"PPMAX" do |i|
  i.name "PP Max"
  i.name_plural "PP Maxes"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "It maximally raises the top PP of a selected move that has been learned by the target Pokémon."
end

GameData::Item.define :"HPUP" do |i|
  i.name "HP Up"
  i.name_plural "HP Ups"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A nutritious drink for Pokémon. It raises the base HP of a single Pokémon."
end

GameData::Item.define :"PROTEIN" do |i|
  i.name "Protein"
  i.name_plural "Proteins"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A nutritious drink for Pokémon. It raises the base Attack stat of a single Pokémon."
end

GameData::Item.define :"IRON" do |i|
  i.name "Iron"
  i.name_plural "Irons"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A nutritious drink for Pokémon. It raises the base Defense stat of a single Pokémon."
end

GameData::Item.define :"CALCIUM" do |i|
  i.name "Calcium"
  i.name_plural "Calciums"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A nutritious drink for Pokémon. It raises the base Sp. Atk (Special Attack) stat of a single Pokémon."
end

GameData::Item.define :"ZINC" do |i|
  i.name "Zinc"
  i.name_plural "Zincs"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A nutritious drink for Pokémon. It raises the base Sp. Def (Special Defense) stat of a single Pokémon."
end

GameData::Item.define :"CARBOS" do |i|
  i.name "Carbos"
  i.name_plural "Carbos"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A nutritious drink for Pokémon. It raises the base Speed stat of a single Pokémon."
end

GameData::Item.define :"HEALTHWING" do |i|
  i.name "Health Wing"
  i.name_plural "Health Wings"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base HP of a single Pokémon."
end

GameData::Item.define :"MUSCLEWING" do |i|
  i.name "Muscle Wing"
  i.name_plural "Muscle Wings"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Attack stat of a single Pokémon."
end

GameData::Item.define :"RESISTWING" do |i|
  i.name "Resist Wing"
  i.name_plural "Resist Wings"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Defense stat of a single Pokémon."
end

GameData::Item.define :"GENIUSWING" do |i|
  i.name "Genius Wing"
  i.name_plural "Genius Wings"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Sp. Atk stat of a single Pokémon."
end

GameData::Item.define :"CLEVERWING" do |i|
  i.name "Clever Wing"
  i.name_plural "Clever Wings"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Sp. Def stat of a single Pokémon."
end

GameData::Item.define :"SWIFTWING" do |i|
  i.name "Swift Wing"
  i.name_plural "Swift Wings"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Speed stat of a single Pokémon."
end

GameData::Item.define :"RARECANDY" do |i|
  i.name "Rare Candy"
  i.name_plural "Rare Candies"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A candy that is packed with energy. It raises the level of a single Pokémon by one."
end

GameData::Item.define :"LUMIOSEGALETTE" do |i|
  i.name "Lumiose Galette"
  i.name_plural "Lumiose Galettes"
  i.pocket 2
  i.price 350
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A popular treat in Lumiose City. It can be used once to heal all the status conditions of a Pokémon."
end

GameData::Item.define :"SHALOURSABLE" do |i|
  i.name "Shalour Sable"
  i.name_plural "Shalour Sables"
  i.pocket 2
  i.price 350
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Shalour City's famous shortbread. It can be used once to heal all the status conditions of a Pokémon."
end

GameData::Item.define :"ABILITYCAPSULE" do |i|
  i.name "Ability Capsule"
  i.name_plural "Ability Capsule"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A capsule that allows a Pokémon with two Abilities to switch between these Abilities when it is used."
end

GameData::Item.define :"BIGMALASADA" do |i|
  i.name "Big Malasada"
  i.name_plural "Big Malasadas"
  i.pocket 2
  i.price 350
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "The Alola region's specialty--fried bread. It can be used once to heal all the status conditions of a Pokémon."
end

GameData::Item.define :"PEWTERCRUNCHIES" do |i|
  i.name "Pewter Crunchies"
  i.name_plural "Pewter Crunchies"
  i.pocket 2
  i.price 250
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Pewter City's famous crunchy snack. They can be used to heal all status conditions of a single Pokémon."
end

GameData::Item.define :"MAXHONEY" do |i|
  i.name "Max Honey"
  i.name_plural "Max Honeys"
  i.pocket 2
  i.price 8000
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "Honey that Dynamax Vespiquen produces. It has the same effect as a Max Revive."
end

GameData::Item.define :"HEALTHFEATHER" do |i|
  i.name "Health Feather"
  i.name_plural "Health Feathers"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base HP of a single Pokémon."
end

GameData::Item.define :"MUSCLEFEATHER" do |i|
  i.name "Muscle Feather"
  i.name_plural "Muscle Feathers"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Attack stat of a single Pokémon."
end

GameData::Item.define :"RESISTFEATHER" do |i|
  i.name "Resist Feather"
  i.name_plural "Resist Feathers"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Defense stat of a single Pokémon."
end

GameData::Item.define :"GENIUSFEATHER" do |i|
  i.name "Genius Feather"
  i.name_plural "Genius Feathers"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Sp. Atk stat of a single Pokémon."
end

GameData::Item.define :"CLEVERFEATHER" do |i|
  i.name "Clever Feather"
  i.name_plural "Clever Feathers"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Sp. Def stat of a single Pokémon."
end

GameData::Item.define :"SWIFTFEATHER" do |i|
  i.name "Swift Feather"
  i.name_plural "Swift Feathers"
  i.pocket 2
  i.price 300
  i.field_use :"OnPokemon"
  i.description "An item for use on a Pokémon. It slightly increases the base Speed stat of a single Pokémon."
end

GameData::Item.define :"LONELYMINT" do |i|
  i.name "Lonely Mint"
  i.name_plural "Lonely Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Attack will grow more easily, but its Defense will grow more slowly."
end

GameData::Item.define :"ADAMANTMINT" do |i|
  i.name "Adamant Mint"
  i.name_plural "Adamant Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Attack will grow more easily, but its Sp. Atk will grow more slowly."
end

GameData::Item.define :"NAUGHTYMINT" do |i|
  i.name "Naughty Mint"
  i.name_plural "Naughty Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Attack will grow more easily, but its Sp. Def will grow more slowly."
end

GameData::Item.define :"BRAVEMINT" do |i|
  i.name "Brave Mint"
  i.name_plural "Brave Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Attack will grow more easily, but its Speed will grow more slowly."
end

GameData::Item.define :"BOLDMINT" do |i|
  i.name "Bold Mint"
  i.name_plural "Bold Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Defense will grow more easily, but its Attack will grow more slowly."
end

GameData::Item.define :"IMPISHMINT" do |i|
  i.name "Impish Mint"
  i.name_plural "Impish Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Defense will grow more easily, but its Sp. Atk will grow more slowly."
end

GameData::Item.define :"LAXMINT" do |i|
  i.name "Lax Mint"
  i.name_plural "Lax Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Defense will grow more easily, but its Sp. Def will grow more slowly."
end

GameData::Item.define :"RELAXEDMINT" do |i|
  i.name "Relaxed Mint"
  i.name_plural "Relaxed Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Defense will grow more easily, but its Speed will grow more slowly."
end

GameData::Item.define :"MODESTMINT" do |i|
  i.name "Modest Mint"
  i.name_plural "Modest Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Sp. Atk will grow more easily, but its Attack will grow more slowly."
end

GameData::Item.define :"MILDMINT" do |i|
  i.name "Mild Mint"
  i.name_plural "Mild Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Sp. Atk will grow more easily, but its Defense will grow more slowly."
end

GameData::Item.define :"RASHMINT" do |i|
  i.name "Rash Mint"
  i.name_plural "Rash Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Sp. Atk will grow more easily, but its Sp. Def will grow more slowly."
end

GameData::Item.define :"QUIETMINT" do |i|
  i.name "Quiet Mint"
  i.name_plural "Quiet Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Sp. Atk will grow more easily, but its Speed will grow more slowly."
end

GameData::Item.define :"CALMMINT" do |i|
  i.name "Calm Mint"
  i.name_plural "Calm Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Sp. Def will grow more easily, but its Attack will grow more slowly."
end

GameData::Item.define :"GENTLEMINT" do |i|
  i.name "Gentle Mint"
  i.name_plural "Gentle Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Sp. Def will grow more easily, but its Defense will grow more slowly."
end

GameData::Item.define :"CAREFULMINT" do |i|
  i.name "Careful Mint"
  i.name_plural "Careful Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Sp. Def will grow more easily, but its Sp. Atk will grow more slowly."
end

GameData::Item.define :"SASSYMINT" do |i|
  i.name "Sassy Mint"
  i.name_plural "Sassy Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Sp. Def will grow more easily, but its Speed will grow more slowly."
end

GameData::Item.define :"TIMIDMINT" do |i|
  i.name "Timid Mint"
  i.name_plural "Timid Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Speed will grow more easily, but its Attack will grow more slowly."
end

GameData::Item.define :"HASTYMINT" do |i|
  i.name "Hasty Mint"
  i.name_plural "Hasty Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Speed will grow more easily, but its Defense will grow more slowly."
end

GameData::Item.define :"JOLLYMINT" do |i|
  i.name "Jolly Mint"
  i.name_plural "Jolly Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Speed will grow more easily, but its Sp. Atk will grow more slowly."
end

GameData::Item.define :"NAIVEMINT" do |i|
  i.name "Naive Mint"
  i.name_plural "Naive Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, its Speed will grow more easily, but its Sp. Def will grow more slowly."
end

GameData::Item.define :"SERIOUSMINT" do |i|
  i.name "Serious Mint"
  i.name_plural "Serious Mints"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "When a Pokémon smells this mint, all of its stats will grow at an equal rate."
end

GameData::Item.define :"ABILITYPATCH" do |i|
  i.name "Ability Patch"
  i.name_plural "Ability Patches"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A patch that allows a Pokémon with a regular Ability to have a rare Ability."
end

GameData::Item.define :"EXPCANDYXS" do |i|
  i.name "Exp. Candy XS"
  i.name_plural "Exp. Candy XSs"
  i.pocket 2
  i.price 20
  i.field_use :"OnPokemon"
  i.description "A candy packed with energy. When consumed, it will grant a Pokémon a very small amount of Exp. Points."
end

GameData::Item.define :"EXPCANDYS" do |i|
  i.name "Exp. Candy S"
  i.name_plural "Exp. Candy Ss"
  i.pocket 2
  i.price 240
  i.field_use :"OnPokemon"
  i.description "A candy packed with energy. When consumed, it will grant a Pokémon a small amount of Exp. Points."
end

GameData::Item.define :"EXPCANDYM" do |i|
  i.name "Exp. Candy M"
  i.name_plural "Exp. Candy Ms"
  i.pocket 2
  i.price 1000
  i.field_use :"OnPokemon"
  i.description "A candy packed with energy. When consumed, it will grant a Pokémon a moderate amount of Exp. Points."
end

GameData::Item.define :"EXPCANDYL" do |i|
  i.name "Exp. Candy L"
  i.name_plural "Exp. Candy Ls"
  i.pocket 2
  i.price 3000
  i.field_use :"OnPokemon"
  i.description "A candy packed with energy. When consumed, it will grant a Pokémon a large amount of Exp. Points."
end

GameData::Item.define :"EXPCANDYXL" do |i|
  i.name "Exp. Candy XL"
  i.name_plural "Exp. Candy XLs"
  i.pocket 2
  i.price 10000
  i.field_use :"OnPokemon"
  i.description "A candy packed with energy. When consumed, it will grant a Pokémon a very large amount of Exp. Points."
end

GameData::Item.define :"ALDRICSPROTOTYPE" do |i|
  i.name "Aldric's Prototype"
  i.name_plural "Aldric's Prototypes"
  i.pocket 2
  i.description "A prototype item from Project Chimera. Randomly boosts a stat each turn in battle."
end

GameData::Item.define :"HEALTHMOCHI" do |i|
  i.name "Health Mochi"
  i.name_plural "Health Mochi"
  i.pocket 2
  i.price 250
  i.field_use :"OnPokemon"
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's HP stat."
end

GameData::Item.define :"MUSCLEMOCHI" do |i|
  i.name "Muscle Mochi"
  i.name_plural "Muscle Mochi"
  i.pocket 2
  i.price 250
  i.field_use :"OnPokemon"
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Attack stat."
end

GameData::Item.define :"RESISTMOCHI" do |i|
  i.name "Resist Mochi"
  i.name_plural "Resist Mochi"
  i.pocket 2
  i.price 250
  i.field_use :"OnPokemon"
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Defense stat."
end

GameData::Item.define :"GENIUSMOCHI" do |i|
  i.name "Genius Mochi"
  i.name_plural "Genius Mochi"
  i.pocket 2
  i.price 250
  i.field_use :"OnPokemon"
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Sp. Atk stat."
end

GameData::Item.define :"CLEVERMOCHI" do |i|
  i.name "Clever Mochi"
  i.name_plural "Clever Mochi"
  i.pocket 2
  i.price 250
  i.field_use :"OnPokemon"
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Sp. Def stat."
end

GameData::Item.define :"SWIFTMOCHI" do |i|
  i.name "Swift Mochi"
  i.name_plural "Swift Mochi"
  i.pocket 2
  i.price 250
  i.field_use :"OnPokemon"
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Speed stat."
end

GameData::Item.define :"FRESHSTARTMOCHI" do |i|
  i.name "Fresh-Start Mochi"
  i.name_plural "Fresh-Start Mochi"
  i.pocket 2
  i.price 250
  i.field_use :"OnPokemon"
  i.description "A mochi cake with Berries kneaded into its dough. It causes a Pokémon to lose all its base points."
end

GameData::Item.define :"CANARIBREAD" do |i|
  i.name "Canari Bread"
  i.name_plural "Canari Breads"
  i.pocket 2
  i.field_use :"OnPokemon"
  i.battle_use :"OnPokemon"
  i.description "A bun made to look like Canari's face. It can be used to restore 100 HP to a Pokémon."
end
