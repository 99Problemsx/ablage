#=============================================================================
# Dudunsparce - NORMAL Type
#=============================================================================

GameData::Species.define :"DUDUNSPARCE" do |pkmn|
  pkmn.name "Dudunsparce"
  pkmn.form_name "Two-Segment Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 125, attack: 100, defense: 80,
                  sp_atk: 55, sp_def: 85, speed: 75
  pkmn.abilities :"SERENEGRACE", :"RUNAWAY"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 182
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 3.6
  pkmn.weight 39.2
  pkmn.category "Land Snake"
  pkmn.pokedex_entry "This Pokémon uses its hard tail to make its nest by boring holes into bedrock deep underground. The nest can reach lengths of over six miles."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"FLAIL"
    m.at 1, :"DEFENSECURL"
    m.at 4, :"MUDSLAP"
    m.at 8, :"ROLLOUT"
    m.at 12, :"GLARE"
    m.at 16, :"SCREECH"
    m.at 20, :"ANCIENTPOWER"
    m.at 24, :"DRILLRUN"
    m.at 28, :"YAWN"
    m.at 32, :"HYPERDRILL"
    m.at 36, :"ROOST"
    m.at 40, :"DRAGONRUSH"
    m.at 44, :"COIL"
    m.at 48, :"DOUBLEEDGE"
    m.at 52, :"ENDEAVOR"
    m.at 56, :"HURRICANE"
    m.at 62, :"BOOMBURST"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"AMNESIA", :"BATONPASS", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BULLDOZE", :"CALMMIND", :"CHILLINGWATER", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRAGONTAIL", :"DRILLRUN", :"DUALWINGBEAT", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"GIGAIMPACT", :"GYROBALL", :"HEAVYSLAM", :"HELPINGHAND", :"HEX", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICESPINNER", :"LUNGE", :"MUDSHOT", :"MUDSLAP", :"OUTRAGE", :"PAINSPLIT", :"POISONJAB", :"POISONTAIL", :"POUNCE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCALESHOT", :"SCARYFACE", :"SHADOWBALL", :"SKITTERSMACK", :"SLEEPTALK", :"SMARTSTRIKE", :"SOLARBEAM", :"SPITE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"THIEF", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"UPROAR", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DUDUNSPARCE" do |m|
  m.back_sprite 0, 57
  m.front_sprite 0, 33
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Three-Segment Form
GameData::Species.define :"DUDUNSPARCE_1" do |pkmn|
  pkmn.species :"DUDUNSPARCE"
  pkmn.form 1
  pkmn.name "Dudunsparce"
  pkmn.form_name "Three-Segment Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 125, attack: 100, defense: 80,
                  sp_atk: 55, sp_def: 85, speed: 75
  pkmn.abilities :"SERENEGRACE", :"RUNAWAY"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 182
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 4.5
  pkmn.weight 47.4
  pkmn.category "Land Snake"
  pkmn.pokedex_entry "This Pokémon uses its hard tail to make its nest by boring holes into bedrock deep underground. The nest can reach lengths of over six miles."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"FLAIL"
    m.at 1, :"DEFENSECURL"
    m.at 4, :"MUDSLAP"
    m.at 8, :"ROLLOUT"
    m.at 12, :"GLARE"
    m.at 16, :"SCREECH"
    m.at 20, :"ANCIENTPOWER"
    m.at 24, :"DRILLRUN"
    m.at 28, :"YAWN"
    m.at 32, :"HYPERDRILL"
    m.at 36, :"ROOST"
    m.at 40, :"DRAGONRUSH"
    m.at 44, :"COIL"
    m.at 48, :"DOUBLEEDGE"
    m.at 52, :"ENDEAVOR"
    m.at 56, :"HURRICANE"
    m.at 62, :"BOOMBURST"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"AMNESIA", :"BATONPASS", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BULLDOZE", :"CALMMIND", :"CHILLINGWATER", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRAGONTAIL", :"DRILLRUN", :"DUALWINGBEAT", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"GIGAIMPACT", :"GYROBALL", :"HEAVYSLAM", :"HELPINGHAND", :"HEX", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICESPINNER", :"LUNGE", :"MUDSHOT", :"MUDSLAP", :"OUTRAGE", :"PAINSPLIT", :"POISONJAB", :"POISONTAIL", :"POUNCE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCALESHOT", :"SCARYFACE", :"SHADOWBALL", :"SKITTERSMACK", :"SLEEPTALK", :"SMARTSTRIKE", :"SOLARBEAM", :"SPITE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"THIEF", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"UPROAR", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DUDUNSPARCE_1" do |m|
  m.back_sprite -4, 58
  m.front_sprite -4, 29
  m.shadow_sprite 0, 0, 3
end