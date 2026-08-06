#=============================================================================
# Wishiwashi - WATER Type
#=============================================================================

GameData::Species.define :"WISHIWASHI" do |pkmn|
  pkmn.name "Wishiwashi"
  pkmn.form_name "Solo Form"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 45, attack: 20, defense: 20,
                  sp_atk: 40, sp_def: 25, speed: 25
  pkmn.abilities :"SCHOOLING"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 61
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.2
  pkmn.weight 0.3
  pkmn.category "Small Fry"
  pkmn.pokedex_entry "It's awfully weak and notably tasty, so everyone is always out to get it. As it happens, anyone trying to bully it receives a painful lesson."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"GROWL"
    m.at 4, :"HELPINGHAND"
    m.at 8, :"BEATUP"
    m.at 12, :"BRINE"
    m.at 16, :"TEARFULLOOK"
    m.at 20, :"DIVE"
    m.at 24, :"SOAK"
    m.at 28, :"UPROAR"
    m.at 32, :"AQUATAIL"
    m.at 36, :"AQUARING"
    m.at 40, :"ENDEAVOR"
    m.at 44, :"HYDROPUMP"
    m.at 48, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BEATUP", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DIVE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLIPTURN", :"FRUSTRATION", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HYDROPUMP", :"ICEBEAM", :"IRONTAIL", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCALESHOT", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"UPROAR", :"UTURN", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"TERABLAST"
  pkmn.egg_moves :"MIST", :"TAKEDOWN", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"WISHIWASHI" do |m|
  m.back_sprite -3, 46
  m.front_sprite -2, 20
end

# Form 1 - Solo Form
GameData::Species.define :"WISHIWASHI_1" do |pkmn|
  pkmn.species :"WISHIWASHI"
  pkmn.form 1
  pkmn.name "Wishiwashi"
  pkmn.form_name "Solo Form"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 45, attack: 20, defense: 20,
                  sp_atk: 40, sp_def: 25, speed: 25
  pkmn.abilities :"SCHOOLING"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 61
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.2
  pkmn.weight 0.3
  pkmn.category "Small Fry"
  pkmn.pokedex_entry "It's awfully weak and notably tasty, so everyone is always out to get it. As it happens, anyone trying to bully it receives a painful lesson."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"GROWL"
    m.at 4, :"HELPINGHAND"
    m.at 8, :"BEATUP"
    m.at 12, :"BRINE"
    m.at 16, :"TEARFULLOOK"
    m.at 20, :"DIVE"
    m.at 24, :"SOAK"
    m.at 28, :"UPROAR"
    m.at 32, :"AQUATAIL"
    m.at 36, :"AQUARING"
    m.at 40, :"ENDEAVOR"
    m.at 44, :"HYDROPUMP"
    m.at 48, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BEATUP", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DIVE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLIPTURN", :"FRUSTRATION", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HYDROPUMP", :"ICEBEAM", :"IRONTAIL", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCALESHOT", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"UPROAR", :"UTURN", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"TERABLAST"
  pkmn.egg_moves :"MIST", :"TAKEDOWN", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"WISHIWASHI_1" do |m|
  m.back_sprite -3, 46
  m.front_sprite -2, 20
end