#=============================================================================
# PokeBalls
#=============================================================================

GameData::Item.define :"MASTERBALL" do |i|
  i.name "Master Ball"
  i.name_plural "Master Balls"
  i.pocket 3
  i.battle_use :"OnFoe"
  i.description "The best Ball with the ultimate level of performance. It will catch any wild Pokémon without fail."
end

GameData::Item.define :"ULTRABALL" do |i|
  i.name "Ultra Ball"
  i.name_plural "Ultra Balls"
  i.pocket 3
  i.price 800
  i.battle_use :"OnFoe"
  i.description "An ultra-performance Ball that provides a higher Pokémon catch rate than a Great Ball."
end

GameData::Item.define :"GREATBALL" do |i|
  i.name "Great Ball"
  i.name_plural "Great Balls"
  i.pocket 3
  i.price 600
  i.battle_use :"OnFoe"
  i.description "A good, high-performance Ball that provides a higher Pokémon catch rate than a standard Poké Ball."
end

GameData::Item.define :"POKEBALL" do |i|
  i.name "Poké Ball"
  i.name_plural "Poké Balls"
  i.pocket 3
  i.price 200
  i.battle_use :"OnFoe"
  i.description "A device for catching wild Pokémon. It is thrown like a ball at the target. It is designed as a capsule system."
end

GameData::Item.define :"SAFARIBALL" do |i|
  i.name "Safari Ball"
  i.name_plural "Safari Balls"
  i.pocket 3
  i.battle_use :"OnFoe"
  i.description "A special Poké Ball that is used only in the Safari Zone. It is decorated in a camouflage pattern."
end

GameData::Item.define :"SPORTBALL" do |i|
  i.name "Sport Ball"
  i.name_plural "Sport Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A special Poké Ball for the Bug-Catching Contest."
end

GameData::Item.define :"NETBALL" do |i|
  i.name "Net Ball"
  i.name_plural "Net Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "A somewhat different Poké Ball that works especially well on Water- and Bug-type Pokémon."
end

GameData::Item.define :"DIVEBALL" do |i|
  i.name "Dive Ball"
  i.name_plural "Dive Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "A somewhat different Poké Ball that works especially well on Pokémon that live underwater."
end

GameData::Item.define :"NESTBALL" do |i|
  i.name "Nest Ball"
  i.name_plural "Nest Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "A somewhat different Poké Ball that works especially well on weaker Pokémon in the wild."
end

GameData::Item.define :"REPEATBALL" do |i|
  i.name "Repeat Ball"
  i.name_plural "Repeat Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "A somewhat different Poké Ball that works especially well on Pokémon species that were previously caught."
end

GameData::Item.define :"TIMERBALL" do |i|
  i.name "Timer Ball"
  i.name_plural "Timer Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "A somewhat different Ball that becomes progressively better the more turns there are in a battle."
end

GameData::Item.define :"LUXURYBALL" do |i|
  i.name "Luxury Ball"
  i.name_plural "Luxury Balls"
  i.pocket 3
  i.price 3000
  i.battle_use :"OnFoe"
  i.description "A comfortable Poké Ball that makes a caught wild Pokémon quickly grow friendly."
end

GameData::Item.define :"PREMIERBALL" do |i|
  i.name "Premier Ball"
  i.name_plural "Premier Balls"
  i.pocket 3
  i.price 200
  i.battle_use :"OnFoe"
  i.description "A somewhat rare Poké Ball that has been specially made to commemorate an event of some sort."
end

GameData::Item.define :"DUSKBALL" do |i|
  i.name "Dusk Ball"
  i.name_plural "Dusk Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "A somewhat different Poké Ball that makes it easier to catch wild Pokémon at night or in dark places like caves."
end

GameData::Item.define :"HEALBALL" do |i|
  i.name "Heal Ball"
  i.name_plural "Heal Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A remedial Poké Ball that restores the caught Pokémon's HP and eliminates any status problem."
end

GameData::Item.define :"QUICKBALL" do |i|
  i.name "Quick Ball"
  i.name_plural "Quick Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "A somewhat different Poké Ball that provides a better catch rate if used at the start of a wild encounter."
end

GameData::Item.define :"CHERISHBALL" do |i|
  i.name "Cherish Ball"
  i.name_plural "Cherish Balls"
  i.pocket 3
  i.battle_use :"OnFoe"
  i.description "A quite rare Poké Ball that has been specially crafted to commemorate an occasion of some sort."
end

GameData::Item.define :"FASTBALL" do |i|
  i.name "Fast Ball"
  i.name_plural "Fast Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A Poké Ball that makes it easier to catch fast Pokémon."
end

GameData::Item.define :"LEVELBALL" do |i|
  i.name "Level Ball"
  i.name_plural "Level Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A Poké Ball for catching Pokémon that are a lower level than your own."
end

GameData::Item.define :"LUREBALL" do |i|
  i.name "Lure Ball"
  i.name_plural "Lure Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A Poké Ball for catching Pokémon hooked by a Rod when fishing."
end

GameData::Item.define :"HEAVYBALL" do |i|
  i.name "Heavy Ball"
  i.name_plural "Heavy Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A Poké Ball for catching very heavy Pokémon."
end

GameData::Item.define :"LOVEBALL" do |i|
  i.name "Love Ball"
  i.name_plural "Love Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A Poké Ball for catching Pokémon that are the opposite gender of your Pokémon."
end

GameData::Item.define :"FRIENDBALL" do |i|
  i.name "Friend Ball"
  i.name_plural "Friend Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A Poké Ball that makes caught Pokémon more friendly."
end

GameData::Item.define :"MOONBALL" do |i|
  i.name "Moon Ball"
  i.name_plural "Moon Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A Poké Ball for catching Pokémon that evolve using the Moon Stone."
end

GameData::Item.define :"DREAMBALL" do |i|
  i.name "Dream Ball"
  i.name_plural "Dream Balls"
  i.pocket 3
  i.price 300
  i.battle_use :"OnFoe"
  i.description "A somewhat different Poké Ball that makes it easier to catch wild Pokémon while they're asleep."
end

GameData::Item.define :"BEASTBALL" do |i|
  i.name "Beast Ball"
  i.name_plural "Beast Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "A special Poké Ball designed to catch Ultra Beasts. It has a low success rate for catching others."
end

GameData::Item.define :"HISUIANPOKEBALL" do |i|
  i.name "Poké Ball"
  i.name_plural "Poké Balls"
  i.pocket 3
  i.price 500
  i.battle_use :"OnFoe"
  i.description "A mysterious ball that can be thrown at wild Pokémon in order to catch them."
end

GameData::Item.define :"HISUIANGREATBALL" do |i|
  i.name "Great Ball"
  i.name_plural "Great Balls"
  i.pocket 3
  i.price 900
  i.battle_use :"OnFoe"
  i.description "A mysterious ball that provides a higher success catch rate than a standard Poké Ball."
end

GameData::Item.define :"HISUIANULTRABALL" do |i|
  i.name "Ultra Ball"
  i.name_plural "Ultra Balls"
  i.pocket 3
  i.price 1500
  i.battle_use :"OnFoe"
  i.description "A mysterious ball that provides an even higher success catch rate than a Great Ball does."
end

GameData::Item.define :"FEATHERBALL" do |i|
  i.name "Feather Ball"
  i.name_plural "Feather Balls"
  i.pocket 3
  i.price 700
  i.battle_use :"OnFoe"
  i.description "A ball that flies fast and true ideal for catching nimble Pokémon or Pokémon that fly high in the air."
end

GameData::Item.define :"WINGBALL" do |i|
  i.name "Wing Ball"
  i.name_plural "Wing Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "An improvement on the original Feather Ball design. It has a higher success rate than the Feather Ball."
end

GameData::Item.define :"JETBALL" do |i|
  i.name "Jet Ball"
  i.name_plural "Jet Balls"
  i.pocket 3
  i.price 1500
  i.battle_use :"OnFoe"
  i.description "The ultimate iteration of the Feather Ball. It has an even higher success rate than the Wing Ball does."
end

GameData::Item.define :"HISUIANHEAVYBALL" do |i|
  i.name "Heavy Ball"
  i.name_plural "Heavy Balls"
  i.pocket 3
  i.price 700
  i.battle_use :"OnFoe"
  i.description "A ball that is too heavy to throw, but it is highly effective to an unsuspecting Pokémon."
end

GameData::Item.define :"LEADENBALL" do |i|
  i.name "Leaden Ball"
  i.name_plural "Leaden Balls"
  i.pocket 3
  i.price 1000
  i.battle_use :"OnFoe"
  i.description "An improvement on the original Heavy Ball design. It has a higher success rate than the Heavy Ball."
end

GameData::Item.define :"GIGATONBALL" do |i|
  i.name "Gigaton Ball"
  i.name_plural "Gigaton Balls"
  i.pocket 3
  i.price 1500
  i.battle_use :"OnFoe"
  i.description "The ultimate iteration of the Heavy Ball. It has an even higher success rate than the Leaden Ball does."
end

GameData::Item.define :"ORIGINBALL" do |i|
  i.name "Origin Ball"
  i.name_plural "Origin Balls"
  i.pocket 3
  i.battle_use :"OnFoe"
  i.description "An irreplicable Poké Ball that was once used to catch the frenzied Pokémon at the Temple of Sinnoh."
end

GameData::Item.define :"STRANGEBALL" do |i|
  i.name "Strange Ball"
  i.name_plural "Strange Balls"
  i.pocket 3
  i.battle_use :"OnFoe"
  i.description "A strange looking Poke Ball that arrived from the past Sinnoh."
end
