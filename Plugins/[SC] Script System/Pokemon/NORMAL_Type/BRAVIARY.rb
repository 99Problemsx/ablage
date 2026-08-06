#=============================================================================
# Braviary - NORMAL Type
#=============================================================================

GameData::Species.define :"BRAVIARY" do |pkmn|
  pkmn.name "Braviary"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 100, attack: 123, defense: 75,
                  sp_atk: 80, sp_def: 57, speed: 75
  pkmn.abilities :"KEENEYE", :"SHEERFORCE"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 179
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 41.0
  pkmn.category "Valiant"
  pkmn.pokedex_entry "The more scars they have, the more respect these brave soldiers of the sky get from their peers."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"LEER"
    m.at 1, :"FURYATTACK"
    m.at 1, :"WINGATTACK"
    m.at 5, :"FURYATTACK"
    m.at 10, :"WINGATTACK"
    m.at 14, :"HONECLAWS"
    m.at 19, :"SCARYFACE"
    m.at 23, :"AERIALACE"
    m.at 28, :"SLASH"
    m.at 32, :"DEFOG"
    m.at 37, :"TAILWIND"
    m.at 41, :"AIRSLASH"
    m.at 46, :"CRUSHCLAW"
    m.at 50, :"SKYDROP"
    m.at 51, :"SUPERPOWER"
    m.at 57, :"WHIRLWIND"
    m.at 63, :"BRAVEBIRD"
    m.at 70, :"THRASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BULKUP", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAILWIND", :"TOXIC", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"BRAVIARY" do |m|
  m.back_sprite -2, 0
  m.front_sprite 5, 3
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Hisuian
GameData::Species.define :"BRAVIARY_1" do |pkmn|
  pkmn.species :"BRAVIARY"
  pkmn.form 1
  pkmn.name "Braviary"
  pkmn.form_name "Hisuian"
  pkmn.types :"PSYCHIC", :"FLYING"
  pkmn.base_stats hp: 110, attack: 83, defense: 70,
                  sp_atk: 65, sp_def: 112, speed: 70
  pkmn.abilities :"KEENEYE", :"SHEERFORCE"
  pkmn.hidden_abilities :"TINTEDLENS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 179
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 43.4
  pkmn.category "Battle Cry"
  pkmn.pokedex_entry "Screaming a bloodcurdling battle cry, this huge and ferocious bird Pokémon goes out on the hunt. It blasts lakes with shock waves, then scoops up any prey that float to the water's surface."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 0, :"ESPERWING"
    m.at 1, :"SUPERPOWER"
    m.at 1, :"LEER"
    m.at 1, :"WINGATTACK"
    m.at 1, :"HONECLAWS"
    m.at 1, :"SKYATTACK"
    m.at 1, :"PECK"
    m.at 18, :"TAILWIND"
    m.at 24, :"SCARYFACE"
    m.at 30, :"AERIALACE"
    m.at 36, :"SLASH"
    m.at 42, :"WHIRLWIND"
    m.at 48, :"CRUSHCLAW"
    m.at 57, :"AIRSLASH"
    m.at 64, :"DEFOG"
    m.at 72, :"THRASH"
    m.at 80, :"HURRICANE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRCUTTER", :"AIRSLASH", :"BODYSLAM", :"BRAVEBIRD", :"BULKUP", :"CALMMIND", :"CLOSECOMBAT", :"CONFUSERAY", :"DAZZLINGGLEAM", :"DOUBLEEDGE", :"DUALWINGBEAT", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FEATHERDANCE", :"FLY", :"FUTURESIGHT", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"METALCLAW", :"NIGHTSHADE", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICNOISE", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"SCARYFACE", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAILWIND", :"TAKEDOWN", :"UTURN", :"VACUUMWAVE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BRAVIARY_1" do |m|
  m.back_sprite -5, 38
  m.front_sprite 0, 1
  m.shadow_sprite 0, 0, 2
end