#=============================================================================
# Dewpider - WATER Type
#=============================================================================

GameData::Species.define :"DEWPIDER" do |pkmn|
  pkmn.name "Dewpider"
  pkmn.types :"WATER", :"BUG"
  pkmn.base_stats hp: 38, attack: 40, defense: 52,
                  sp_atk: 27, sp_def: 40, speed: 72
  pkmn.abilities :"WATERBUBBLE"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 54
  pkmn.catch_rate 200
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 4.0
  pkmn.category "Water Bubble"
  pkmn.pokedex_entry "When two Dewpider meet, they display their water bubbles to each other. Then the one with the smaller bubble gets out of the other's way."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Water1", :"Bug"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"INFESTATION"
    m.at 4, :"BUGBITE"
    m.at 8, :"BITE"
    m.at 12, :"BUBBLEBEAM"
    m.at 16, :"AQUARING"
    m.at 20, :"HEADBUTT"
    m.at 24, :"CRUNCH"
    m.at 28, :"SOAK"
    m.at 32, :"ENTRAINMENT"
    m.at 36, :"LUNGE"
    m.at 40, :"LIQUIDATION"
    m.at 44, :"LEECHLIFE"
    m.at 48, :"MIRRORCOAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BUGBITE", :"BUGBUZZ", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"GIGADRAIN", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INFESTATION", :"IRONDEFENSE", :"LEECHLIFE", :"LIQUIDATION", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WONDERROOM", :"XSCISSOR", :"TERABLAST"
  pkmn.egg_moves :"POWERSPLIT", :"SPITUP", :"STICKYWEB", :"STOCKPILE"
end

GameData::SpeciesMetrics.define :"DEWPIDER" do |m|
  m.back_sprite 1, 14
  m.front_sprite -1, 1
end