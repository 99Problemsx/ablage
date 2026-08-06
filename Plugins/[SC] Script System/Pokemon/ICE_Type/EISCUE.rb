#=============================================================================
# Eiscue - ICE Type
#=============================================================================

GameData::Species.define :"EISCUE" do |pkmn|
  pkmn.name "Eiscue"
  pkmn.form_name "Ice Face"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 75, attack: 80, defense: 110,
                  sp_atk: 50, sp_def: 65, speed: 90
  pkmn.abilities :"ICEFACE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 165
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.4
  pkmn.weight 89.0
  pkmn.category "Penguin"
  pkmn.pokedex_entry "It drifted in on the flow of ocean waters from a frigid place. It keeps its head iced constantly to make sure it stays nice and cold."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"TACKLE"
    m.at 6, :"MIST"
    m.at 12, :"WEATHERBALL"
    m.at 18, :"ICYWIND"
    m.at 24, :"HEADBUTT"
    m.at 30, :"AMNESIA"
    m.at 36, :"FREEZEDRY"
    m.at 42, :"HAIL"
    m.at 48, :"AURORAVEIL"
    m.at 54, :"SURF"
    m.at 60, :"BLIZZARD"
  end
  pkmn.tutor_moves :"AGILITY", :"AMNESIA", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"ICEBEAM", :"ICEPUNCH", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"LIQUIDATION", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WEATHERBALL", :"WHIRLPOOL", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"AQUARING", :"BELLYDRUM", :"DOUBLEEDGE", :"HEADSMASH", :"ICICLECRASH", :"SOAK"
end

GameData::SpeciesMetrics.define :"EISCUE" do |m|
  m.back_sprite -1, 36
  m.front_sprite 1, 3
end

# Form 1 - Ice Face
GameData::Species.define :"EISCUE_1" do |pkmn|
  pkmn.species :"EISCUE"
  pkmn.form 1
  pkmn.name "Eiscue"
  pkmn.form_name "Ice Face"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 75, attack: 80, defense: 110,
                  sp_atk: 50, sp_def: 65, speed: 90
  pkmn.abilities :"ICEFACE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 165
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.4
  pkmn.weight 89.0
  pkmn.category "Penguin"
  pkmn.pokedex_entry "It drifted in on the flow of ocean waters from a frigid place. It keeps its head iced constantly to make sure it stays nice and cold."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"TACKLE"
    m.at 6, :"MIST"
    m.at 12, :"WEATHERBALL"
    m.at 18, :"ICYWIND"
    m.at 24, :"HEADBUTT"
    m.at 30, :"AMNESIA"
    m.at 36, :"FREEZEDRY"
    m.at 42, :"HAIL"
    m.at 48, :"AURORAVEIL"
    m.at 54, :"SURF"
    m.at 60, :"BLIZZARD"
  end
  pkmn.tutor_moves :"AGILITY", :"AMNESIA", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"ICEBEAM", :"ICEPUNCH", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"LIQUIDATION", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WEATHERBALL", :"WHIRLPOOL", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"AQUARING", :"BELLYDRUM", :"DOUBLEEDGE", :"HEADSMASH", :"ICICLECRASH", :"SOAK"
end

GameData::SpeciesMetrics.define :"EISCUE_1" do |m|
  m.back_sprite -1, 36
  m.front_sprite 1, 3
end