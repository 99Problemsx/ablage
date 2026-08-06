#=============================================================================
# Basculin - WATER Type
#=============================================================================

GameData::Species.define :"BASCULIN" do |pkmn|
  pkmn.name "Basculin"
  pkmn.form_name "Red-Striped"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 70, attack: 92, defense: 65,
                  sp_atk: 98, sp_def: 80, speed: 55
  pkmn.abilities :"RECKLESS", :"ADAPTABILITY"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Finned"
  pkmn.base_exp 161
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.0
  pkmn.weight 18.0
  pkmn.category "Hostile"
  pkmn.pokedex_entry "Red and blue Basculin usually do not get along, but sometimes members of one school mingle with the other's schooL."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"WATERGUN"
    m.at 4, :"UPROAR"
    m.at 7, :"HEADBUTT"
    m.at 10, :"BITE"
    m.at 13, :"AQUAJET"
    m.at 16, :"CHIPAWAY"
    m.at 20, :"TAKEDOWN"
    m.at 24, :"CRUNCH"
    m.at 28, :"AQUATAIL"
    m.at 32, :"SOAK"
    m.at 36, :"DOUBLEEDGE"
    m.at 41, :"SCARYFACE"
    m.at 46, :"FLAIL"
    m.at 51, :"FINALGAMBIT"
    m.at 56, :"THRASH"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CUT", :"DIVE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAUNT", :"TOXIC", :"UPROAR", :"WATERFALL", :"ZENHEADBUTT"
  pkmn.egg_moves :"AGILITY", :"BRINE", :"BUBBLEBEAM", :"MUDDYWATER", :"MUDSHOT", :"RAGE", :"REVENGE", :"SWIFT", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"BASCULIN" do |m|
  m.back_sprite -7, 0
  m.front_sprite 0, 24
  m.shadow_sprite 0, 0, 2
end

# Form 2 - White-Striped
GameData::Species.define :"BASCULIN_2" do |pkmn|
  pkmn.species :"BASCULIN"
  pkmn.form 2
  pkmn.name "Basculin"
  pkmn.form_name "White-Striped"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 70, attack: 92, defense: 65,
                  sp_atk: 98, sp_def: 80, speed: 55
  pkmn.abilities :"RATTLED", :"ADAPTABILITY"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Finned"
  pkmn.base_exp 161
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.0
  pkmn.weight 18.0
  pkmn.category "Mellow"
  pkmn.pokedex_entry "Though it differs from other Basculin in several respects, including demeanor—this one is gentle—people have categorized it as a regional form given the vast array of shared qualities."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"TAILWHIP"
    m.at 4, :"TACKLE"
    m.at 8, :"FLAIL"
    m.at 12, :"AQUAJET"
    m.at 16, :"BITE"
    m.at 20, :"SCARYFACE"
    m.at 24, :"HEADBUTT"
    m.at 28, :"SOAK"
    m.at 32, :"CRUNCH"
    m.at 36, :"TAKEDOWN"
    m.at 40, :"UPROAR"
    m.at 44, :"WAVECRASH"
    m.at 48, :"THRASH"
    m.at 52, :"DOUBLEEDGE"
    m.at 56, :"HEADSMASH"
  end
  pkmn.tutor_moves :"AGILITY", :"BLIZZARD", :"CHILLINGWATER", :"CRUNCH", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLIPTURN", :"HYDROPUMP", :"ICEBEAM", :"ICEFANG", :"ICYWIND", :"LIQUIDATION", :"MUDDYWATER", :"MUDSHOT", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"SCALESHOT", :"SCARYFACE", :"SLEEPTALK", :"SNOWSCAPE", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
  pkmn.egg_moves :"ENDEAVOR", :"LASTRESPECTS"
end

GameData::SpeciesMetrics.define :"BASCULIN_2" do |m|
  m.back_sprite 8, 12
  m.front_sprite 0, -5
  m.shadow_sprite 0, 0, 2
end