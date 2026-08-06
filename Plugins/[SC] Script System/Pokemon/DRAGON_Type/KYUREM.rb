#=============================================================================
# Kyurem - DRAGON Type
#=============================================================================

GameData::Species.define :"KYUREM" do |pkmn|
  pkmn.name "Kyurem"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 125, attack: 130, defense: 90,
                  sp_atk: 95, sp_def: 130, speed: 90
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 297
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.0
  pkmn.weight 325.0
  pkmn.category "Boundary"
  pkmn.pokedex_entry "It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ICYWIND"
    m.at 1, :"DRAGONRAGE"
    m.at 8, :"IMPRISON"
    m.at 15, :"ANCIENTPOWER"
    m.at 22, :"ICEBEAM"
    m.at 29, :"DRAGONBREATH"
    m.at 36, :"SLASH"
    m.at 43, :"SCARYFACE"
    m.at 50, :"GLACIATE"
    m.at 57, :"DRAGONPULSE"
    m.at 64, :"IMPRISON"
    m.at 71, :"ENDEAVOR"
    m.at 78, :"BLIZZARD"
    m.at 85, :"OUTRAGE"
    m.at 92, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"BLIZZARD", :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KYUREM" do |m|
  m.back_sprite -3, 0
  m.front_sprite -1, 23
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"KYUREM_1" do |pkmn|
  pkmn.species :"KYUREM"
  pkmn.form 1
  pkmn.name "Kyurem"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 125, attack: 130, defense: 90,
                  sp_atk: 95, sp_def: 130, speed: 90
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 297
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.0
  pkmn.weight 325.0
  pkmn.category "Boundary"
  pkmn.pokedex_entry "It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ICYWIND"
    m.at 1, :"DRAGONRAGE"
    m.at 8, :"IMPRISON"
    m.at 15, :"ANCIENTPOWER"
    m.at 22, :"ICEBEAM"
    m.at 29, :"DRAGONBREATH"
    m.at 36, :"SLASH"
    m.at 43, :"SCARYFACE"
    m.at 50, :"GLACIATE"
    m.at 57, :"DRAGONPULSE"
    m.at 64, :"IMPRISON"
    m.at 71, :"ENDEAVOR"
    m.at 78, :"BLIZZARD"
    m.at 85, :"OUTRAGE"
    m.at 92, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"BLIZZARD", :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KYUREM_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 9, 7
  m.shadow_sprite 0, 0, 3
end

# Form 2 - Unknown Form
GameData::Species.define :"KYUREM_2" do |pkmn|
  pkmn.species :"KYUREM"
  pkmn.form 2
  pkmn.name "Kyurem"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 125, attack: 130, defense: 90,
                  sp_atk: 95, sp_def: 130, speed: 90
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 297
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.0
  pkmn.weight 325.0
  pkmn.category "Boundary"
  pkmn.pokedex_entry "It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ICYWIND"
    m.at 1, :"DRAGONRAGE"
    m.at 8, :"IMPRISON"
    m.at 15, :"ANCIENTPOWER"
    m.at 22, :"ICEBEAM"
    m.at 29, :"DRAGONBREATH"
    m.at 36, :"SLASH"
    m.at 43, :"SCARYFACE"
    m.at 50, :"GLACIATE"
    m.at 57, :"DRAGONPULSE"
    m.at 64, :"IMPRISON"
    m.at 71, :"ENDEAVOR"
    m.at 78, :"BLIZZARD"
    m.at 85, :"OUTRAGE"
    m.at 92, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"BLIZZARD", :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KYUREM_2" do |m|
  m.back_sprite -3, 0
  m.front_sprite 5, 4
  m.shadow_sprite 0, 0, 3
end

# Form 3 - Unknown Form
GameData::Species.define :"KYUREM_3" do |pkmn|
  pkmn.species :"KYUREM"
  pkmn.form 3
  pkmn.name "Kyurem"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 125, attack: 130, defense: 90,
                  sp_atk: 95, sp_def: 130, speed: 90
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 297
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.0
  pkmn.weight 325.0
  pkmn.category "Boundary"
  pkmn.pokedex_entry "It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ICYWIND"
    m.at 1, :"DRAGONRAGE"
    m.at 8, :"IMPRISON"
    m.at 15, :"ANCIENTPOWER"
    m.at 22, :"ICEBEAM"
    m.at 29, :"DRAGONBREATH"
    m.at 36, :"SLASH"
    m.at 43, :"SCARYFACE"
    m.at 50, :"GLACIATE"
    m.at 57, :"DRAGONPULSE"
    m.at 64, :"IMPRISON"
    m.at 71, :"ENDEAVOR"
    m.at 78, :"BLIZZARD"
    m.at 85, :"OUTRAGE"
    m.at 92, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"BLIZZARD", :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KYUREM_3" do |m|
  m.back_sprite 0, 0
  m.front_sprite 9, 7
  m.shadow_sprite 0, 0, 3
end

# Form 4 - Unknown Form
GameData::Species.define :"KYUREM_4" do |pkmn|
  pkmn.species :"KYUREM"
  pkmn.form 4
  pkmn.name "Kyurem"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 125, attack: 130, defense: 90,
                  sp_atk: 95, sp_def: 130, speed: 90
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 297
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.0
  pkmn.weight 325.0
  pkmn.category "Boundary"
  pkmn.pokedex_entry "It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ICYWIND"
    m.at 1, :"DRAGONRAGE"
    m.at 8, :"IMPRISON"
    m.at 15, :"ANCIENTPOWER"
    m.at 22, :"ICEBEAM"
    m.at 29, :"DRAGONBREATH"
    m.at 36, :"SLASH"
    m.at 43, :"SCARYFACE"
    m.at 50, :"GLACIATE"
    m.at 57, :"DRAGONPULSE"
    m.at 64, :"IMPRISON"
    m.at 71, :"ENDEAVOR"
    m.at 78, :"BLIZZARD"
    m.at 85, :"OUTRAGE"
    m.at 92, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"BLIZZARD", :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KYUREM_4" do |m|
  m.back_sprite -3, 0
  m.front_sprite 5, 4
  m.shadow_sprite 0, 0, 3
end