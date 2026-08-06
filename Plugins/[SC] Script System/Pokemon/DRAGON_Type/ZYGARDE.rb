#=============================================================================
# Zygarde - DRAGON Type
#=============================================================================

GameData::Species.define :"ZYGARDE" do |pkmn|
  pkmn.name "Zygarde"
  pkmn.form_name "50% Forme"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 108, attack: 100, defense: 121,
                  sp_atk: 95, sp_def: 81, speed: 95
  pkmn.abilities :"AURABREAK", :"POWERCONSTRUCT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 5.0
  pkmn.weight 305.0
  pkmn.category "Order"
  pkmn.pokedex_entry "It's thought to be monitoring the ecosystem. There are rumors that even greater power lies hidden within it."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THOUSANDARROWS"
    m.at 1, :"THOUSANDWAVES"
    m.at 1, :"COREENFORCER"
    m.at 1, :"BIND"
    m.at 1, :"BULLDOZE"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"BITE"
    m.at 8, :"HAZE"
    m.at 16, :"DIG"
    m.at 24, :"SAFEGUARD"
    m.at 32, :"CRUNCH"
    m.at 40, :"DRAGONPULSE"
    m.at 48, :"LANDSWRATH"
    m.at 56, :"GLARE"
    m.at 64, :"SANDSTORM"
    m.at 72, :"COIL"
    m.at 80, :"EARTHQUAKE"
    m.at 88, :"OUTRAGE"
  end
  pkmn.tutor_moves :"BIND", :"BLOCK", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZYGARDE" do |m|
  m.back_sprite 0, 41
  m.front_sprite 3, 7
end

# Form 4 - Mega Zygarde
GameData::Species.define :"ZYGARDE_4" do |pkmn|
  pkmn.species :"ZYGARDE"
  pkmn.form 4
  pkmn.name "Zygarde"
  pkmn.form_name "Mega Zygarde"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 216, attack: 70, defense: 91,
                  sp_atk: 216, sp_def: 85, speed: 100
  pkmn.abilities :"POWERCONSTRUCT"
  pkmn.hidden_abilities :"POWERCONSTRUCT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 7.7
  pkmn.weight 610.0
  pkmn.category "Order"
  pkmn.pokedex_entry "In response to people's emotions during an unprecedented crisis, Zygarde Mega Evolves and calms the situation with its unmatched power."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"BULLDOZE"
    m.at 1, :"BIND"
    m.at 1, :"BITE"
    m.at 8, :"HAZE"
    m.at 16, :"DIG"
    m.at 24, :"SAFEGUARD"
    m.at 32, :"CRUNCH"
    m.at 40, :"DRAGONPULSE"
    m.at 56, :"GLARE"
    m.at 64, :"SANDSTORM"
    m.at 72, :"COIL"
    m.at 80, :"EARTHQUAKE"
    m.at 88, :"OUTRAGE"
  end
  pkmn.tutor_moves :"BIND", :"BLOCK", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZYGARDE_4" do |m|
  m.back_sprite 0, 41
  m.front_sprite 3, 7
end

# Form 5 - Mega Zygarde
GameData::Species.define :"ZYGARDE_5" do |pkmn|
  pkmn.species :"ZYGARDE"
  pkmn.form 5
  pkmn.name "Zygarde"
  pkmn.form_name "Mega Zygarde"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 216, attack: 70, defense: 91,
                  sp_atk: 216, sp_def: 85, speed: 100
  pkmn.abilities :"POWERCONSTRUCT"
  pkmn.hidden_abilities :"POWERCONSTRUCT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 7.7
  pkmn.weight 610.0
  pkmn.category "Order"
  pkmn.pokedex_entry "It's thought to be monitoring the ecosystem. There are rumors that even greater power lies hidden within it."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"BULLDOZE"
    m.at 1, :"BIND"
    m.at 1, :"BITE"
    m.at 8, :"HAZE"
    m.at 16, :"DIG"
    m.at 24, :"SAFEGUARD"
    m.at 32, :"CRUNCH"
    m.at 40, :"DRAGONPULSE"
    m.at 56, :"GLARE"
    m.at 64, :"SANDSTORM"
    m.at 72, :"COIL"
    m.at 80, :"EARTHQUAKE"
    m.at 88, :"OUTRAGE"
  end
  pkmn.tutor_moves :"BIND", :"BLOCK", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZYGARDE_5" do |m|
  m.back_sprite 0, 41
  m.front_sprite 3, 7
end

# Form 1 - 50% Forme
GameData::Species.define :"ZYGARDE_1" do |pkmn|
  pkmn.species :"ZYGARDE"
  pkmn.form 1
  pkmn.name "Zygarde"
  pkmn.form_name "50% Forme"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 108, attack: 100, defense: 121,
                  sp_atk: 95, sp_def: 81, speed: 95
  pkmn.abilities :"AURABREAK", :"POWERCONSTRUCT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 5.0
  pkmn.weight 305.0
  pkmn.category "Order"
  pkmn.pokedex_entry "It's thought to be monitoring the ecosystem. There are rumors that even greater power lies hidden within it."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THOUSANDARROWS"
    m.at 1, :"THOUSANDWAVES"
    m.at 1, :"COREENFORCER"
    m.at 1, :"BIND"
    m.at 1, :"BULLDOZE"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"BITE"
    m.at 8, :"HAZE"
    m.at 16, :"DIG"
    m.at 24, :"SAFEGUARD"
    m.at 32, :"CRUNCH"
    m.at 40, :"DRAGONPULSE"
    m.at 48, :"LANDSWRATH"
    m.at 56, :"GLARE"
    m.at 64, :"SANDSTORM"
    m.at 72, :"COIL"
    m.at 80, :"EARTHQUAKE"
    m.at 88, :"OUTRAGE"
  end
  pkmn.tutor_moves :"BIND", :"BLOCK", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZYGARDE_1" do |m|
  m.back_sprite 0, 41
  m.front_sprite 3, 7
end

# Form 2 - 50% Forme
GameData::Species.define :"ZYGARDE_2" do |pkmn|
  pkmn.species :"ZYGARDE"
  pkmn.form 2
  pkmn.name "Zygarde"
  pkmn.form_name "50% Forme"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 108, attack: 100, defense: 121,
                  sp_atk: 95, sp_def: 81, speed: 95
  pkmn.abilities :"AURABREAK", :"POWERCONSTRUCT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 5.0
  pkmn.weight 305.0
  pkmn.category "Order"
  pkmn.pokedex_entry "It's thought to be monitoring the ecosystem. There are rumors that even greater power lies hidden within it."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THOUSANDARROWS"
    m.at 1, :"THOUSANDWAVES"
    m.at 1, :"COREENFORCER"
    m.at 1, :"BIND"
    m.at 1, :"BULLDOZE"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"BITE"
    m.at 8, :"HAZE"
    m.at 16, :"DIG"
    m.at 24, :"SAFEGUARD"
    m.at 32, :"CRUNCH"
    m.at 40, :"DRAGONPULSE"
    m.at 48, :"LANDSWRATH"
    m.at 56, :"GLARE"
    m.at 64, :"SANDSTORM"
    m.at 72, :"COIL"
    m.at 80, :"EARTHQUAKE"
    m.at 88, :"OUTRAGE"
  end
  pkmn.tutor_moves :"BIND", :"BLOCK", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZYGARDE_2" do |m|
  m.back_sprite 0, 41
  m.front_sprite 3, 7
end

# Form 3 - 50% Forme
GameData::Species.define :"ZYGARDE_3" do |pkmn|
  pkmn.species :"ZYGARDE"
  pkmn.form 3
  pkmn.name "Zygarde"
  pkmn.form_name "50% Forme"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 108, attack: 100, defense: 121,
                  sp_atk: 95, sp_def: 81, speed: 95
  pkmn.abilities :"AURABREAK", :"POWERCONSTRUCT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 5.0
  pkmn.weight 305.0
  pkmn.category "Order"
  pkmn.pokedex_entry "It's thought to be monitoring the ecosystem. There are rumors that even greater power lies hidden within it."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THOUSANDARROWS"
    m.at 1, :"THOUSANDWAVES"
    m.at 1, :"COREENFORCER"
    m.at 1, :"BIND"
    m.at 1, :"BULLDOZE"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"BITE"
    m.at 8, :"HAZE"
    m.at 16, :"DIG"
    m.at 24, :"SAFEGUARD"
    m.at 32, :"CRUNCH"
    m.at 40, :"DRAGONPULSE"
    m.at 48, :"LANDSWRATH"
    m.at 56, :"GLARE"
    m.at 64, :"SANDSTORM"
    m.at 72, :"COIL"
    m.at 80, :"EARTHQUAKE"
    m.at 88, :"OUTRAGE"
  end
  pkmn.tutor_moves :"BIND", :"BLOCK", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZYGARDE_3" do |m|
  m.back_sprite 0, 41
  m.front_sprite 3, 7
end