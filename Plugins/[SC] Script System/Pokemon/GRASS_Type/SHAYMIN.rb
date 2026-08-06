#=============================================================================
# Shaymin - GRASS Type
#=============================================================================

GameData::Species.define :"SHAYMIN" do |pkmn|
  pkmn.name "Shaymin"
  pkmn.form_name "Land Forme"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 100, attack: 100, defense: 100,
                  sp_atk: 100, sp_def: 100, speed: 100
  pkmn.abilities :"NATURALCURE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 0.2
  pkmn.weight 2.1
  pkmn.category "Gratitude"
  pkmn.pokedex_entry "It lives in flower patches and avoids detection by curling up to look like a flowering plant."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GROWTH"
    m.at 10, :"MAGICALLEAF"
    m.at 19, :"LEECHSEED"
    m.at 28, :"SYNTHESIS"
    m.at 37, :"SWEETSCENT"
    m.at 46, :"NATURALGIFT"
    m.at 55, :"WORRYSEED"
    m.at 64, :"AROMATHERAPY"
    m.at 73, :"ENERGYBALL"
    m.at 82, :"SWEETKISS"
    m.at 91, :"HEALINGWISH"
    m.at 100, :"SEEDFLARE"
  end
  pkmn.tutor_moves :"BULLETSEED", :"COVET", :"DOUBLETEAM", :"EARTHPOWER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SHAYMIN" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 26
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Land Forme
GameData::Species.define :"SHAYMIN_1" do |pkmn|
  pkmn.species :"SHAYMIN"
  pkmn.form 1
  pkmn.name "Shaymin"
  pkmn.form_name "Land Forme"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 100, attack: 100, defense: 100,
                  sp_atk: 100, sp_def: 100, speed: 100
  pkmn.abilities :"NATURALCURE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 0.2
  pkmn.weight 2.1
  pkmn.category "Gratitude"
  pkmn.pokedex_entry "It lives in flower patches and avoids detection by curling up to look like a flowering plant."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GROWTH"
    m.at 10, :"MAGICALLEAF"
    m.at 19, :"LEECHSEED"
    m.at 28, :"SYNTHESIS"
    m.at 37, :"SWEETSCENT"
    m.at 46, :"NATURALGIFT"
    m.at 55, :"WORRYSEED"
    m.at 64, :"AROMATHERAPY"
    m.at 73, :"ENERGYBALL"
    m.at 82, :"SWEETKISS"
    m.at 91, :"HEALINGWISH"
    m.at 100, :"SEEDFLARE"
  end
  pkmn.tutor_moves :"BULLETSEED", :"COVET", :"DOUBLETEAM", :"EARTHPOWER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SHAYMIN_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 16
  m.shadow_sprite 0, 0, 2
end