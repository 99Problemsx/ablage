#=============================================================================
# Araquanid - WATER Type
#=============================================================================

GameData::Species.define :"ARAQUANID" do |pkmn|
  pkmn.name "Araquanid"
  pkmn.types :"WATER", :"BUG"
  pkmn.base_stats hp: 68, attack: 70, defense: 92,
                  sp_atk: 42, sp_def: 50, speed: 132
  pkmn.abilities :"WATERBUBBLE"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 159
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.8
  pkmn.weight 82.0
  pkmn.category "Water Bubble"
  pkmn.pokedex_entry "It delivers headbutts with the water bubble on its head. Small Pokémon get sucked into the bubble, where they drown."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Bug"

  pkmn.moves do |m|
    m.at 1, :"WIDEGUARD"
    m.at 1, :"WATERGUN"
    m.at 1, :"INFESTATION"
    m.at 1, :"BUGBITE"
    m.at 1, :"BITE"
    m.at 12, :"BUBBLEBEAM"
    m.at 16, :"AQUARING"
    m.at 20, :"HEADBUTT"
    m.at 26, :"CRUNCH"
    m.at 32, :"SOAK"
    m.at 38, :"ENTRAINMENT"
    m.at 44, :"LUNGE"
    m.at 50, :"LIQUIDATION"
    m.at 56, :"LEECHLIFE"
    m.at 62, :"MIRRORCOAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BUGBITE", :"BUGBUZZ", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"GIGADRAIN", :"HIDDENPOWER", :"HYDROPUMP", :"ICEBEAM", :"ICYWIND", :"INFESTATION", :"IRONDEFENSE", :"LASERFOCUS", :"LEECHLIFE", :"LIQUIDATION", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WONDERROOM", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ARAQUANID" do |m|
  m.back_sprite 0, 40
  m.front_sprite -4, 19
end