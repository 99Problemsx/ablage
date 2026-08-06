#=============================================================================
# Oinkologne - NORMAL Type
#=============================================================================

GameData::Species.define :"OINKOLOGNE" do |pkmn|
  pkmn.name "Oinkologne"
  pkmn.form_name "Male"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 110, attack: 100, defense: 75,
                  sp_atk: 65, sp_def: 59, speed: 80
  pkmn.abilities :"LINGERINGAROMA", :"GLUTTONY"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 171
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.0
  pkmn.weight 120.0
  pkmn.category "Hog"
  pkmn.pokedex_entry "It entrances female Pokémon with the sweet, alluring scent that wafts from all over its body."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 5, :"DISARMINGVOICE"
    m.at 8, :"ECHOEDVOICE"
    m.at 12, :"MUDSHOT"
    m.at 15, :"COVET"
    m.at 17, :"DIG"
    m.at 23, :"HEADBUTT"
    m.at 26, :"TAKEDOWN"
    m.at 27, :"YAWN"
    m.at 34, :"WORKUP"
    m.at 38, :"UPROAR"
    m.at 42, :"DOUBLEEDGE"
    m.at 48, :"EARTHPOWER"
    m.at 54, :"BELCH"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CHILLINGWATER", :"CURSE", :"DIG", :"DISARMINGVOICE", :"DOUBLEEDGE", :"EARTHPOWER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGAIMPACT", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONHEAD", :"LASHOUT", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"TAKEDOWN", :"THIEF", :"TRAILBLAZE", :"UPROAR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OINKOLOGNE" do |m|
  m.back_sprite -2, 58
  m.front_sprite -2, 26
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Female
GameData::Species.define :"OINKOLOGNE_1" do |pkmn|
  pkmn.species :"OINKOLOGNE"
  pkmn.form 1
  pkmn.name "Oinkologne"
  pkmn.form_name "Female"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 115, attack: 90, defense: 70,
                  sp_atk: 65, sp_def: 59, speed: 90
  pkmn.abilities :"AROMAVEIL", :"GLUTTONY"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 171
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.0
  pkmn.weight 120.0
  pkmn.category "Hog"
  pkmn.pokedex_entry "This is a meticulous Pokémon that likes to keep things tidy. It shrouds itself in a floral aroma that soothes the Pokémon around it."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 3, :"DISARMINGVOICE"
    m.at 6, :"ECHOEDVOICE"
    m.at 9, :"MUDSHOT"
    m.at 12, :"COVET"
    m.at 15, :"DIG"
    m.at 17, :"HEADBUTT"
    m.at 23, :"YAWN"
    m.at 28, :"TAKEDOWN"
    m.at 30, :"WORKUP"
    m.at 34, :"UPROAR"
    m.at 39, :"DOUBLEEDGE"
    m.at 45, :"EARTHPOWER"
    m.at 51, :"BELCH"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CHILLINGWATER", :"CURSE", :"DIG", :"DISARMINGVOICE", :"DOUBLEEDGE", :"EARTHPOWER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGAIMPACT", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONHEAD", :"LASHOUT", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"TAKEDOWN", :"THIEF", :"TRAILBLAZE", :"UPROAR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OINKOLOGNE_1" do |m|
  m.back_sprite 6, 58
  m.front_sprite -8, 24
  m.shadow_sprite 0, 0, 2
end