#=============================================================================
# Cramorant - FLYING Type
#=============================================================================

GameData::Species.define :"CRAMORANT" do |pkmn|
  pkmn.name "Cramorant"
  pkmn.types :"FLYING", :"WATER"
  pkmn.base_stats hp: 70, attack: 85, defense: 55,
                  sp_atk: 85, sp_def: 85, speed: 95
  pkmn.abilities :"GULPMISSILE"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 166
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 18.0
  pkmn.category "Gulp"
  pkmn.pokedex_entry "It's so strong that it can knock out some opponents in a single hit, but it also may forget what it's battling midfight."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 1, :"BELCH"
    m.at 1, :"PECK"
    m.at 1, :"STOCKPILE"
    m.at 1, :"SWALLOW"
    m.at 1, :"SPITUP"
    m.at 7, :"WATERGUN"
    m.at 14, :"FURYATTACK"
    m.at 21, :"PLUCK"
    m.at 28, :"DIVE"
    m.at 35, :"DRILLPECK"
    m.at 42, :"AMNESIA"
    m.at 49, :"THRASH"
    m.at 56, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"AMNESIA", :"ASSURANCE", :"ATTRACT", :"BLIZZARD", :"BRAVEBIRD", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HURRICANE", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIQUIDATION", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THIEF", :"THROATCHOP", :"TOXIC", :"UPROAR", :"WEATHERBALL", :"WHIRLPOOL", :"TERABLAST"
  pkmn.egg_moves :"AERIALACE", :"AQUARING", :"DEFOG", :"FEATHERDANCE", :"ROOST"
end

GameData::SpeciesMetrics.define :"CRAMORANT" do |m|
  m.back_sprite 0, 40
  m.front_sprite -1, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"CRAMORANT_1" do |pkmn|
  pkmn.species :"CRAMORANT"
  pkmn.form 1
  pkmn.name "Cramorant"
  pkmn.types :"FLYING", :"WATER"
  pkmn.base_stats hp: 70, attack: 85, defense: 55,
                  sp_atk: 85, sp_def: 85, speed: 95
  pkmn.abilities :"GULPMISSILE"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 166
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 18.0
  pkmn.category "Gulp"
  pkmn.pokedex_entry "It's so strong that it can knock out some opponents in a single hit, but it also may forget what it's battling midfight."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 1, :"BELCH"
    m.at 1, :"PECK"
    m.at 1, :"STOCKPILE"
    m.at 1, :"SWALLOW"
    m.at 1, :"SPITUP"
    m.at 7, :"WATERGUN"
    m.at 14, :"FURYATTACK"
    m.at 21, :"PLUCK"
    m.at 28, :"DIVE"
    m.at 35, :"DRILLPECK"
    m.at 42, :"AMNESIA"
    m.at 49, :"THRASH"
    m.at 56, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"AMNESIA", :"ASSURANCE", :"ATTRACT", :"BLIZZARD", :"BRAVEBIRD", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HURRICANE", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIQUIDATION", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THIEF", :"THROATCHOP", :"TOXIC", :"UPROAR", :"WEATHERBALL", :"WHIRLPOOL", :"TERABLAST"
  pkmn.egg_moves :"AERIALACE", :"AQUARING", :"DEFOG", :"FEATHERDANCE", :"ROOST"
end

GameData::SpeciesMetrics.define :"CRAMORANT_1" do |m|
  m.back_sprite 0, 40
  m.front_sprite -1, 3
end

# Form 2 - Unknown Form
GameData::Species.define :"CRAMORANT_2" do |pkmn|
  pkmn.species :"CRAMORANT"
  pkmn.form 2
  pkmn.name "Cramorant"
  pkmn.types :"FLYING", :"WATER"
  pkmn.base_stats hp: 70, attack: 85, defense: 55,
                  sp_atk: 85, sp_def: 85, speed: 95
  pkmn.abilities :"GULPMISSILE"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 166
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 18.0
  pkmn.category "Gulp"
  pkmn.pokedex_entry "It's so strong that it can knock out some opponents in a single hit, but it also may forget what it's battling midfight."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 1, :"BELCH"
    m.at 1, :"PECK"
    m.at 1, :"STOCKPILE"
    m.at 1, :"SWALLOW"
    m.at 1, :"SPITUP"
    m.at 7, :"WATERGUN"
    m.at 14, :"FURYATTACK"
    m.at 21, :"PLUCK"
    m.at 28, :"DIVE"
    m.at 35, :"DRILLPECK"
    m.at 42, :"AMNESIA"
    m.at 49, :"THRASH"
    m.at 56, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"AMNESIA", :"ASSURANCE", :"ATTRACT", :"BLIZZARD", :"BRAVEBIRD", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HURRICANE", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIQUIDATION", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THIEF", :"THROATCHOP", :"TOXIC", :"UPROAR", :"WEATHERBALL", :"WHIRLPOOL", :"TERABLAST"
  pkmn.egg_moves :"AERIALACE", :"AQUARING", :"DEFOG", :"FEATHERDANCE", :"ROOST"
end

GameData::SpeciesMetrics.define :"CRAMORANT_2" do |m|
  m.back_sprite 0, 40
  m.front_sprite -1, 3
end