#=============================================================================
# Veluza - WATER Type
#=============================================================================

GameData::Species.define :"VELUZA" do |pkmn|
  pkmn.name "Veluza"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 90, attack: 102, defense: 73,
                  sp_atk: 70, sp_def: 78, speed: 65
  pkmn.abilities :"MOLDBREAKER"
  pkmn.hidden_abilities :"SHARPNESS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Gray"
  pkmn.shape :"Finned"
  pkmn.base_exp 167
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.5
  pkmn.weight 90.0
  pkmn.category "Jettison"
  pkmn.pokedex_entry "When Veluza discards unnecessary flesh, its mind becomes honed and its psychic power increases. The spare flesh has a mild but delicious flavor."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"AQUAJET"
    m.at 1, :"TACKLE"
    m.at 7, :"PLUCK"
    m.at 11, :"WATERPULSE"
    m.at 15, :"FOCUSENERGY"
    m.at 20, :"SLASH"
    m.at 25, :"AQUACUTTER"
    m.at 30, :"FILLETAWAY"
    m.at 35, :"NIGHTSLASH"
    m.at 40, :"PSYCHOCUT"
    m.at 45, :"LIQUIDATION"
    m.at 50, :"CRUNCH"
    m.at 55, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"AGILITY", :"BLIZZARD", :"BODYSLAM", :"CHILLINGWATER", :"CRUNCH", :"DOUBLEEDGE", :"DRILLRUN", :"ENDEAVOR", :"ENDURE", :"EXPANDINGFORCE", :"FLIPTURN", :"GIGAIMPACT", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICYWIND", :"LIQUIDATION", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHICFANGS", :"PSYCHICTERRAIN", :"RAINDANCE", :"REST", :"SCALESHOT", :"SLEEPTALK", :"SNOWSCAPE", :"STOREDPOWER", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"WATERFALL", :"WATERPULSE", :"ZENHEADBUTT"
  pkmn.egg_moves :"RECOVER", :"THRASH"
end

GameData::SpeciesMetrics.define :"VELUZA" do |m|
  m.back_sprite 0, 65
  m.front_sprite -2, 14
  m.shadow_sprite 0, 0, 1
end