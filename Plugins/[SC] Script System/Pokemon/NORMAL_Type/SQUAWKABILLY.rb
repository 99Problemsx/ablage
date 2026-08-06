#=============================================================================
# Squawkabilly - NORMAL Type
#=============================================================================

GameData::Species.define :"SQUAWKABILLY" do |pkmn|
  pkmn.name "Squawkabilly"
  pkmn.form_name "Green Plumage"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 82, attack: 96, defense: 51,
                  sp_atk: 92, sp_def: 45, speed: 51
  pkmn.abilities :"INTIMIDATE", :"HUSTLE"
  pkmn.hidden_abilities :"GUTS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Green"
  pkmn.shape :"Winged"
  pkmn.base_exp 146
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.6
  pkmn.weight 2.4
  pkmn.category "Parrot"
  pkmn.pokedex_entry "These Pokémon prefer to live in cities. They form flocks based on the color of their feathers, and they fight over territory."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"PECK"
    m.at 1, :"MIMIC"
    m.at 6, :"QUICKATTACK"
    m.at 10, :"TORMENT"
    m.at 13, :"AERIALACE"
    m.at 17, :"FURYATTACK"
    m.at 20, :"TAUNT"
    m.at 24, :"UPROAR"
    m.at 27, :"COPYCAT"
    m.at 30, :"FLY"
    m.at 34, :"FACADE"
    m.at 38, :"SWAGGER"
    m.at 42, :"BRAVEBIRD"
    m.at 47, :"ROOST"
    m.at 52, :"REVERSAL"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"DOUBLEEDGE", :"DUALWINGBEAT", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FEATHERDANCE", :"FLY", :"FOULPLAY", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"LASHOUT", :"POUNCE", :"PROTECT", :"REST", :"REVERSAL", :"SCARYFACE", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THIEF", :"UPROAR", :"UTURN"
  pkmn.egg_moves :"DOUBLEEDGE", :"FINALGAMBIT", :"FLATTER", :"PARTINGSHOT"
end

GameData::SpeciesMetrics.define :"SQUAWKABILLY" do |m|
  m.back_sprite 0, 50
  m.front_sprite 2, 25
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Blue Plumage
GameData::Species.define :"SQUAWKABILLY_1" do |pkmn|
  pkmn.species :"SQUAWKABILLY"
  pkmn.form 1
  pkmn.name "Squawkabilly"
  pkmn.form_name "Blue Plumage"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 82, attack: 96, defense: 51,
                  sp_atk: 92, sp_def: 45, speed: 51
  pkmn.abilities :"INTIMIDATE", :"HUSTLE"
  pkmn.hidden_abilities :"GUTS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 146
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.6
  pkmn.weight 2.4
  pkmn.category "Parrot"
  pkmn.pokedex_entry "Blue-feathered Squawkabilly view their green- feathered counterparts as rivals, since the latter make up the largest, most powerful groups."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"PECK"
    m.at 1, :"MIMIC"
    m.at 6, :"QUICKATTACK"
    m.at 10, :"TORMENT"
    m.at 13, :"AERIALACE"
    m.at 17, :"FURYATTACK"
    m.at 20, :"TAUNT"
    m.at 24, :"UPROAR"
    m.at 27, :"COPYCAT"
    m.at 30, :"FLY"
    m.at 34, :"FACADE"
    m.at 38, :"SWAGGER"
    m.at 42, :"BRAVEBIRD"
    m.at 47, :"ROOST"
    m.at 52, :"REVERSAL"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"DOUBLEEDGE", :"DUALWINGBEAT", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FEATHERDANCE", :"FLY", :"FOULPLAY", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"LASHOUT", :"POUNCE", :"PROTECT", :"REST", :"REVERSAL", :"SCARYFACE", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THIEF", :"UPROAR", :"UTURN"
  pkmn.egg_moves :"DOUBLEEDGE", :"FINALGAMBIT", :"FLATTER", :"PARTINGSHOT"
end

GameData::SpeciesMetrics.define :"SQUAWKABILLY_1" do |m|
  m.back_sprite 0, 50
  m.front_sprite 2, 25
  m.shadow_sprite 0, 0, 1
end

# Form 2 - Yellow Plumage
GameData::Species.define :"SQUAWKABILLY_2" do |pkmn|
  pkmn.species :"SQUAWKABILLY"
  pkmn.form 2
  pkmn.name "Squawkabilly"
  pkmn.form_name "Yellow Plumage"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 82, attack: 96, defense: 51,
                  sp_atk: 92, sp_def: 45, speed: 51
  pkmn.abilities :"INTIMIDATE", :"HUSTLE"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 146
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.6
  pkmn.weight 2.4
  pkmn.category "Parrot"
  pkmn.pokedex_entry "The yellow Squawkabilly are especially fierce. They've even been known to drive other bird Pokémon out of town."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"PECK"
    m.at 1, :"MIMIC"
    m.at 6, :"QUICKATTACK"
    m.at 10, :"TORMENT"
    m.at 13, :"AERIALACE"
    m.at 17, :"FURYATTACK"
    m.at 20, :"TAUNT"
    m.at 24, :"UPROAR"
    m.at 27, :"COPYCAT"
    m.at 30, :"FLY"
    m.at 34, :"FACADE"
    m.at 38, :"SWAGGER"
    m.at 42, :"BRAVEBIRD"
    m.at 47, :"ROOST"
    m.at 52, :"REVERSAL"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"DOUBLEEDGE", :"DUALWINGBEAT", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FEATHERDANCE", :"FLY", :"FOULPLAY", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"LASHOUT", :"POUNCE", :"PROTECT", :"REST", :"REVERSAL", :"SCARYFACE", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THIEF", :"UPROAR", :"UTURN"
  pkmn.egg_moves :"DOUBLEEDGE", :"FINALGAMBIT", :"FLATTER", :"PARTINGSHOT"
end

GameData::SpeciesMetrics.define :"SQUAWKABILLY_2" do |m|
  m.back_sprite 0, 50
  m.front_sprite 2, 25
  m.shadow_sprite 0, 0, 1
end

# Form 3 - White Plumage
GameData::Species.define :"SQUAWKABILLY_3" do |pkmn|
  pkmn.species :"SQUAWKABILLY"
  pkmn.form 3
  pkmn.name "Squawkabilly"
  pkmn.form_name "White Plumage"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 82, attack: 96, defense: 51,
                  sp_atk: 92, sp_def: 45, speed: 51
  pkmn.abilities :"INTIMIDATE", :"HUSTLE"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 146
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.6
  pkmn.weight 2.4
  pkmn.category "Parrot"
  pkmn.pokedex_entry "Though these Squawkabilly are the fewest in number, they have no trouble living in towns since they blend in with the white buildings."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"PECK"
    m.at 1, :"MIMIC"
    m.at 6, :"QUICKATTACK"
    m.at 10, :"TORMENT"
    m.at 13, :"AERIALACE"
    m.at 17, :"FURYATTACK"
    m.at 20, :"TAUNT"
    m.at 24, :"UPROAR"
    m.at 27, :"COPYCAT"
    m.at 30, :"FLY"
    m.at 34, :"FACADE"
    m.at 38, :"SWAGGER"
    m.at 42, :"BRAVEBIRD"
    m.at 47, :"ROOST"
    m.at 52, :"REVERSAL"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"DOUBLEEDGE", :"DUALWINGBEAT", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FEATHERDANCE", :"FLY", :"FOULPLAY", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"LASHOUT", :"POUNCE", :"PROTECT", :"REST", :"REVERSAL", :"SCARYFACE", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THIEF", :"UPROAR", :"UTURN"
  pkmn.egg_moves :"DOUBLEEDGE", :"FINALGAMBIT", :"FLATTER", :"PARTINGSHOT"
end

GameData::SpeciesMetrics.define :"SQUAWKABILLY_3" do |m|
  m.back_sprite 0, 50
  m.front_sprite 2, 25
  m.shadow_sprite 0, 0, 1
end