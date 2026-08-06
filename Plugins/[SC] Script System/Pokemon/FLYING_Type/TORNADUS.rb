#=============================================================================
# Tornadus - FLYING Type
#=============================================================================

GameData::Species.define :"TORNADUS" do |pkmn|
  pkmn.name "Tornadus"
  pkmn.form_name "Incarnate Forme"
  pkmn.types :"FLYING"
  pkmn.base_stats hp: 79, attack: 115, defense: 70,
                  sp_atk: 111, sp_def: 125, speed: 80
  pkmn.abilities :"PRANKSTER"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 63.0
  pkmn.category "Cyclone"
  pkmn.pokedex_entry "Tornadus expels massive energy from its tail, causing severe storms. Its power is great enough to blow houses away."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"UPROAR"
    m.at 1, :"ASTONISH"
    m.at 1, :"GUST"
    m.at 7, :"SWAGGER"
    m.at 13, :"BITE"
    m.at 19, :"REVENGE"
    m.at 25, :"AIRCUTTER"
    m.at 31, :"EXTRASENSORY"
    m.at 37, :"AGILITY"
    m.at 43, :"AIRSLASH"
    m.at 49, :"CRUNCH"
    m.at 55, :"TAILWIND"
    m.at 61, :"RAINDANCE"
    m.at 67, :"HURRICANE"
    m.at 73, :"DARKPULSE"
    m.at 79, :"HAMMERARM"
    m.at 85, :"THRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FLY", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SKYDROP", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN"
end

GameData::SpeciesMetrics.define :"TORNADUS" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Incarnate Forme
GameData::Species.define :"TORNADUS_1" do |pkmn|
  pkmn.species :"TORNADUS"
  pkmn.form 1
  pkmn.name "Tornadus"
  pkmn.form_name "Incarnate Forme"
  pkmn.types :"FLYING"
  pkmn.base_stats hp: 79, attack: 115, defense: 70,
                  sp_atk: 111, sp_def: 125, speed: 80
  pkmn.abilities :"PRANKSTER"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 63.0
  pkmn.category "Cyclone"
  pkmn.pokedex_entry "Tornadus expels massive energy from its tail, causing severe storms. Its power is great enough to blow houses away."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"UPROAR"
    m.at 1, :"ASTONISH"
    m.at 1, :"GUST"
    m.at 7, :"SWAGGER"
    m.at 13, :"BITE"
    m.at 19, :"REVENGE"
    m.at 25, :"AIRCUTTER"
    m.at 31, :"EXTRASENSORY"
    m.at 37, :"AGILITY"
    m.at 43, :"AIRSLASH"
    m.at 49, :"CRUNCH"
    m.at 55, :"TAILWIND"
    m.at 61, :"RAINDANCE"
    m.at 67, :"HURRICANE"
    m.at 73, :"DARKPULSE"
    m.at 79, :"HAMMERARM"
    m.at 85, :"THRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FLY", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SKYDROP", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN"
end

GameData::SpeciesMetrics.define :"TORNADUS_1" do |m|
  m.back_sprite -2, 0
  m.front_sprite 8, 11
  m.shadow_sprite 0, 0, 3
end