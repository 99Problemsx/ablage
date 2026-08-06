#=============================================================================
# Basculegion - WATER Type
#=============================================================================

GameData::Species.define :"BASCULEGION" do |pkmn|
  pkmn.name "Basculegion"
  pkmn.form_name "Male"
  pkmn.types :"WATER", :"GHOST"
  pkmn.base_stats hp: 120, attack: 112, defense: 65,
                  sp_atk: 78, sp_def: 80, speed: 75
  pkmn.abilities :"SWIFTSWIM", :"ADAPTABILITY"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.flags :"DefaultForm_2", :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Finned"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10455
  pkmn.height 3.0
  pkmn.weight 110.0
  pkmn.category "Big Fish"
  pkmn.pokedex_entry "Clads itself in the souls of comrades that perished before fulfilling their goals of journeying upstream. No other species throughout other aquatic environments is Basculegion’s equal."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"PHANTOMFORCE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"WATERGUN"
    m.at 1, :"SHADOWBALL"
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
  pkmn.tutor_moves :"AGILITY", :"BLIZZARD", :"CHILLINGWATER", :"CONFUSERAY", :"CRUNCH", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLIPTURN", :"GIGAIMPACT", :"HEX", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICYWIND", :"LIQUIDATION", :"MUDDYWATER", :"MUDSHOT", :"NIGHTSHADE", :"OUTRAGE", :"PAINSPLIT", :"PHANTOMFORCE", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"SCALESHOT", :"SCARYFACE", :"SHADOWBALL", :"SLEEPTALK", :"SNOWSCAPE", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BASCULEGION" do |m|
  m.back_sprite 0, 38
  m.front_sprite 5, 14
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Female
GameData::Species.define :"BASCULEGION_1" do |pkmn|
  pkmn.species :"BASCULEGION"
  pkmn.form 1
  pkmn.name "Basculegion"
  pkmn.form_name "Female"
  pkmn.types :"WATER", :"GHOST"
  pkmn.base_stats hp: 120, attack: 92, defense: 65,
                  sp_atk: 78, sp_def: 100, speed: 75
  pkmn.abilities :"SWIFTSWIM", :"ADAPTABILITY"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.flags :"DefaultForm_2", :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Finned"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10455
  pkmn.height 3.0
  pkmn.weight 110.0
  pkmn.category "Big Fish"
  pkmn.pokedex_entry "Clads itself in the souls of comrades that perished before fulfilling their goals of journeying upstream. No other species throughout other aquatic environments is Basculegion’s equal."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"PHANTOMFORCE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"WATERGUN"
    m.at 1, :"SHADOWBALL"
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
  pkmn.tutor_moves :"AGILITY", :"BLIZZARD", :"CHILLINGWATER", :"CONFUSERAY", :"CRUNCH", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLIPTURN", :"GIGAIMPACT", :"HEX", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICYWIND", :"LIQUIDATION", :"MUDDYWATER", :"MUDSHOT", :"NIGHTSHADE", :"OUTRAGE", :"PAINSPLIT", :"PHANTOMFORCE", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"SCALESHOT", :"SCARYFACE", :"SHADOWBALL", :"SLEEPTALK", :"SNOWSCAPE", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BASCULEGION_1" do |m|
  m.back_sprite 0, 38
  m.front_sprite 5, 14
  m.shadow_sprite 0, 0, 2
end