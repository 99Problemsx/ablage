#=============================================================================
# Starmie - WATER Type
#=============================================================================

GameData::Species.define :"STARMIE" do |pkmn|
  pkmn.name "Starmie"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 75, defense: 85,
                  sp_atk: 115, sp_def: 100, speed: 85
  pkmn.abilities :"ILLUMINATE", :"NATURALCURE"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 182
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 80.0
  pkmn.category "Mysterious"
  pkmn.pokedex_entry "People in ancient times imagined that Starmie were transformed from the reflections of stars that twinkled on gentle waves at night."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"RECOVER"
    m.at 1, :"SWIFT"
    m.at 22, :"CONFUSERAY"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BLIZZARD", :"BRINE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"STARMIE" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, 0
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Mega Starmie
GameData::Species.define :"STARMIE_1" do |pkmn|
  pkmn.species :"STARMIE"
  pkmn.form 1
  pkmn.name "Starmie"
  pkmn.form_name "Mega Starmie"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 140, defense: 105,
                  sp_atk: 130, sp_def: 105, speed: 120
  pkmn.abilities :"ILLUMINATE", :"NATURALCURE"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 182
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.3
  pkmn.weight 80
  pkmn.category "Mysterious"
  pkmn.pokedex_entry "Its movements have become more humanlike. Whether it's simply trying to communicate or wants to supplant humanity is unclear."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"RECOVER"
    m.at 1, :"SWIFT"
    m.at 22, :"CONFUSERAY"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BLIZZARD", :"BRINE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"STARMIE_1" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, 0
  m.shadow_sprite 0, 0, 2
end