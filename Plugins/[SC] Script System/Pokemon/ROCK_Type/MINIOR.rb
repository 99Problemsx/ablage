#=============================================================================
# Minior - ROCK Type
#=============================================================================

GameData::Species.define :"MINIOR" do |pkmn|
  pkmn.name "Minior"
  pkmn.form_name "Meteor Form"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 60, sp_def: 60, speed: 100
  pkmn.abilities :"SHIELDSDOWN"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 40.0
  pkmn.category "Meteor"
  pkmn.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"DEFENSECURL"
    m.at 8, :"ROLLOUT"
    m.at 10, :"CONFUSERAY"
    m.at 15, :"SWIFT"
    m.at 17, :"ANCIENTPOWER"
    m.at 22, :"SELFDESTRUCT"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"TAKEDOWN"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"COSMICPOWER"
    m.at 38, :"POWERGEM"
    m.at 43, :"DOUBLEEDGE"
    m.at 45, :"SHELLSMASH"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MINIOR" do |m|
  m.back_sprite -3, 44
  m.front_sprite 0, 11
end

# Form 7 - Meteor Form
GameData::Species.define :"MINIOR_7" do |pkmn|
  pkmn.species :"MINIOR"
  pkmn.form 7
  pkmn.name "Minior"
  pkmn.form_name "Meteor Form"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 60, sp_def: 60, speed: 100
  pkmn.abilities :"SHIELDSDOWN"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 40.0
  pkmn.category "Meteor"
  pkmn.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"DEFENSECURL"
    m.at 8, :"ROLLOUT"
    m.at 10, :"CONFUSERAY"
    m.at 15, :"SWIFT"
    m.at 17, :"ANCIENTPOWER"
    m.at 22, :"SELFDESTRUCT"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"TAKEDOWN"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"COSMICPOWER"
    m.at 38, :"POWERGEM"
    m.at 43, :"DOUBLEEDGE"
    m.at 45, :"SHELLSMASH"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MINIOR_7" do |m|
  m.back_sprite -3, 44
  m.front_sprite 0, 11
end

# Form 8 - Meteor Form
GameData::Species.define :"MINIOR_8" do |pkmn|
  pkmn.species :"MINIOR"
  pkmn.form 8
  pkmn.name "Minior"
  pkmn.form_name "Meteor Form"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 60, sp_def: 60, speed: 100
  pkmn.abilities :"SHIELDSDOWN"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 40.0
  pkmn.category "Meteor"
  pkmn.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"DEFENSECURL"
    m.at 8, :"ROLLOUT"
    m.at 10, :"CONFUSERAY"
    m.at 15, :"SWIFT"
    m.at 17, :"ANCIENTPOWER"
    m.at 22, :"SELFDESTRUCT"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"TAKEDOWN"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"COSMICPOWER"
    m.at 38, :"POWERGEM"
    m.at 43, :"DOUBLEEDGE"
    m.at 45, :"SHELLSMASH"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MINIOR_8" do |m|
  m.back_sprite -3, 44
  m.front_sprite 0, 11
end

# Form 9 - Meteor Form
GameData::Species.define :"MINIOR_9" do |pkmn|
  pkmn.species :"MINIOR"
  pkmn.form 9
  pkmn.name "Minior"
  pkmn.form_name "Meteor Form"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 60, sp_def: 60, speed: 100
  pkmn.abilities :"SHIELDSDOWN"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 40.0
  pkmn.category "Meteor"
  pkmn.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"DEFENSECURL"
    m.at 8, :"ROLLOUT"
    m.at 10, :"CONFUSERAY"
    m.at 15, :"SWIFT"
    m.at 17, :"ANCIENTPOWER"
    m.at 22, :"SELFDESTRUCT"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"TAKEDOWN"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"COSMICPOWER"
    m.at 38, :"POWERGEM"
    m.at 43, :"DOUBLEEDGE"
    m.at 45, :"SHELLSMASH"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MINIOR_9" do |m|
  m.back_sprite -3, 44
  m.front_sprite 0, 11
end

# Form 10 - Meteor Form
GameData::Species.define :"MINIOR_10" do |pkmn|
  pkmn.species :"MINIOR"
  pkmn.form 10
  pkmn.name "Minior"
  pkmn.form_name "Meteor Form"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 60, sp_def: 60, speed: 100
  pkmn.abilities :"SHIELDSDOWN"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 40.0
  pkmn.category "Meteor"
  pkmn.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"DEFENSECURL"
    m.at 8, :"ROLLOUT"
    m.at 10, :"CONFUSERAY"
    m.at 15, :"SWIFT"
    m.at 17, :"ANCIENTPOWER"
    m.at 22, :"SELFDESTRUCT"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"TAKEDOWN"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"COSMICPOWER"
    m.at 38, :"POWERGEM"
    m.at 43, :"DOUBLEEDGE"
    m.at 45, :"SHELLSMASH"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MINIOR_10" do |m|
  m.back_sprite -3, 44
  m.front_sprite 0, 11
end

# Form 11 - Meteor Form
GameData::Species.define :"MINIOR_11" do |pkmn|
  pkmn.species :"MINIOR"
  pkmn.form 11
  pkmn.name "Minior"
  pkmn.form_name "Meteor Form"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 60, sp_def: 60, speed: 100
  pkmn.abilities :"SHIELDSDOWN"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 40.0
  pkmn.category "Meteor"
  pkmn.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"DEFENSECURL"
    m.at 8, :"ROLLOUT"
    m.at 10, :"CONFUSERAY"
    m.at 15, :"SWIFT"
    m.at 17, :"ANCIENTPOWER"
    m.at 22, :"SELFDESTRUCT"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"TAKEDOWN"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"COSMICPOWER"
    m.at 38, :"POWERGEM"
    m.at 43, :"DOUBLEEDGE"
    m.at 45, :"SHELLSMASH"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MINIOR_11" do |m|
  m.back_sprite -3, 44
  m.front_sprite 0, 11
end

# Form 12 - Meteor Form
GameData::Species.define :"MINIOR_12" do |pkmn|
  pkmn.species :"MINIOR"
  pkmn.form 12
  pkmn.name "Minior"
  pkmn.form_name "Meteor Form"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 60, sp_def: 60, speed: 100
  pkmn.abilities :"SHIELDSDOWN"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 40.0
  pkmn.category "Meteor"
  pkmn.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"DEFENSECURL"
    m.at 8, :"ROLLOUT"
    m.at 10, :"CONFUSERAY"
    m.at 15, :"SWIFT"
    m.at 17, :"ANCIENTPOWER"
    m.at 22, :"SELFDESTRUCT"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"TAKEDOWN"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"COSMICPOWER"
    m.at 38, :"POWERGEM"
    m.at 43, :"DOUBLEEDGE"
    m.at 45, :"SHELLSMASH"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MINIOR_12" do |m|
  m.back_sprite -3, 44
  m.front_sprite 0, 11
end

# Form 13 - Meteor Form
GameData::Species.define :"MINIOR_13" do |pkmn|
  pkmn.species :"MINIOR"
  pkmn.form 13
  pkmn.name "Minior"
  pkmn.form_name "Meteor Form"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 60, sp_def: 60, speed: 100
  pkmn.abilities :"SHIELDSDOWN"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 40.0
  pkmn.category "Meteor"
  pkmn.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"DEFENSECURL"
    m.at 8, :"ROLLOUT"
    m.at 10, :"CONFUSERAY"
    m.at 15, :"SWIFT"
    m.at 17, :"ANCIENTPOWER"
    m.at 22, :"SELFDESTRUCT"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"TAKEDOWN"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"COSMICPOWER"
    m.at 38, :"POWERGEM"
    m.at 43, :"DOUBLEEDGE"
    m.at 45, :"SHELLSMASH"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MINIOR_13" do |m|
  m.back_sprite -3, 44
  m.front_sprite 0, 11
end