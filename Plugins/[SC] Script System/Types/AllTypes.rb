#=============================================================================
# All Types
#=============================================================================

GameData::Type.define :"NORMAL" do |t|
  t.name "Normal"
  t.icon_position 0
  t.weaknesses :"FIGHTING"
  t.immunities :"GHOST"
end

GameData::Type.define :"FIGHTING" do |t|
  t.name "Fighting"
  t.icon_position 1
  t.weaknesses :"FLYING", :"PSYCHIC", :"FAIRY"
  t.resistances :"ROCK", :"BUG", :"DARK"
end

GameData::Type.define :"FLYING" do |t|
  t.name "Flying"
  t.icon_position 2
  t.weaknesses :"ROCK", :"ELECTRIC", :"ICE"
  t.resistances :"FIGHTING", :"BUG", :"GRASS"
  t.immunities :"GROUND"
end

GameData::Type.define :"POISON" do |t|
  t.name "Poison"
  t.icon_position 3
  t.weaknesses :"GROUND", :"PSYCHIC"
  t.resistances :"FIGHTING", :"POISON", :"BUG", :"GRASS", :"FAIRY"
end

GameData::Type.define :"GROUND" do |t|
  t.name "Ground"
  t.icon_position 4
  t.weaknesses :"WATER", :"GRASS", :"ICE"
  t.resistances :"POISON", :"ROCK"
  t.immunities :"ELECTRIC"
end

GameData::Type.define :"ROCK" do |t|
  t.name "Rock"
  t.icon_position 5
  t.weaknesses :"FIGHTING", :"GROUND", :"STEEL", :"WATER", :"GRASS"
  t.resistances :"NORMAL", :"FLYING", :"POISON", :"FIRE"
end

GameData::Type.define :"BUG" do |t|
  t.name "Bug"
  t.icon_position 6
  t.weaknesses :"FLYING", :"ROCK", :"FIRE"
  t.resistances :"FIGHTING", :"GROUND", :"GRASS"
end

GameData::Type.define :"GHOST" do |t|
  t.name "Ghost"
  t.icon_position 7
  t.weaknesses :"GHOST", :"DARK"
  t.resistances :"POISON", :"BUG"
  t.immunities :"NORMAL", :"FIGHTING"
end

GameData::Type.define :"STEEL" do |t|
  t.name "Steel"
  t.icon_position 8
  t.weaknesses :"FIGHTING", :"GROUND", :"FIRE"
  t.resistances :"NORMAL", :"FLYING", :"ROCK", :"BUG", :"STEEL", :"GRASS", :"PSYCHIC", :"ICE", :"DRAGON", :"FAIRY"
  t.immunities :"POISON"
end

GameData::Type.define :"QMARKS" do |t|
  t.name "???"
  t.icon_position 9
  t.pseudo_type
end

GameData::Type.define :"FIRE" do |t|
  t.name "Fire"
  t.icon_position 10
  t.special_type
  t.weaknesses :"GROUND", :"ROCK", :"WATER"
  t.resistances :"BUG", :"STEEL", :"FIRE", :"GRASS", :"ICE", :"FAIRY"
end

GameData::Type.define :"WATER" do |t|
  t.name "Water"
  t.icon_position 11
  t.special_type
  t.weaknesses :"GRASS", :"ELECTRIC"
  t.resistances :"STEEL", :"FIRE", :"WATER", :"ICE"
end

GameData::Type.define :"GRASS" do |t|
  t.name "Grass"
  t.icon_position 12
  t.special_type
  t.weaknesses :"FLYING", :"POISON", :"BUG", :"FIRE", :"ICE"
  t.resistances :"GROUND", :"WATER", :"GRASS", :"ELECTRIC"
end

GameData::Type.define :"ELECTRIC" do |t|
  t.name "Electric"
  t.icon_position 13
  t.special_type
  t.weaknesses :"GROUND"
  t.resistances :"FLYING", :"STEEL", :"ELECTRIC"
end

GameData::Type.define :"PSYCHIC" do |t|
  t.name "Psychic"
  t.icon_position 14
  t.special_type
  t.weaknesses :"BUG", :"GHOST", :"DARK"
  t.resistances :"FIGHTING", :"PSYCHIC"
end

GameData::Type.define :"ICE" do |t|
  t.name "Ice"
  t.icon_position 15
  t.special_type
  t.weaknesses :"FIGHTING", :"ROCK", :"STEEL", :"FIRE"
  t.resistances :"ICE"
end

GameData::Type.define :"DRAGON" do |t|
  t.name "Dragon"
  t.icon_position 16
  t.special_type
  t.weaknesses :"ICE", :"DRAGON", :"FAIRY"
  t.resistances :"FIRE", :"WATER", :"GRASS", :"ELECTRIC"
end

GameData::Type.define :"DARK" do |t|
  t.name "Dark"
  t.icon_position 17
  t.special_type
  t.weaknesses :"FIGHTING", :"BUG", :"FAIRY"
  t.resistances :"GHOST", :"DARK"
  t.immunities :"PSYCHIC"
end

GameData::Type.define :"FAIRY" do |t|
  t.name "Fairy"
  t.icon_position 18
  t.special_type
  t.weaknesses :"POISON", :"STEEL"
  t.resistances :"FIGHTING", :"BUG", :"DARK"
  t.immunities :"DRAGON"
end
