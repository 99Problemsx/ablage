#=============================================================================
# Staraptor - NORMAL Type
#=============================================================================

GameData::Species.define :"STARAPTOR" do |pkmn|
  pkmn.name "Staraptor"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 85, attack: 120, defense: 70,
                  sp_atk: 100, sp_def: 50, speed: 50
  pkmn.abilities :"INTIMIDATE"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 214
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 24.9
  pkmn.category "Predator"
  pkmn.pokedex_entry "It has a savage nature. It will courageously challenge foes that are much larger."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"WINGATTACK"
    m.at 5, :"QUICKATTACK"
    m.at 9, :"WINGATTACK"
    m.at 13, :"DOUBLETEAM"
    m.at 18, :"ENDEAVOR"
    m.at 23, :"WHIRLWIND"
    m.at 28, :"AERIALACE"
    m.at 33, :"TAKEDOWN"
    m.at 34, :"CLOSECOMBAT"
    m.at 41, :"AGILITY"
    m.at 49, :"BRAVEBIRD"
    m.at 57, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"STARAPTOR" do |m|
  m.back_sprite -5, 0
  m.front_sprite 1, 11
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Staraptor
GameData::Species.define :"STARAPTOR_1" do |pkmn|
  pkmn.species :"STARAPTOR"
  pkmn.form 1
  pkmn.name "Staraptor"
  pkmn.form_name "Mega Staraptor"
  pkmn.types :"FIGHTING", :"FLYING"
  pkmn.base_stats hp: 85, attack: 140, defense: 100,
                  sp_atk: 110, sp_def: 60, speed: 90
  pkmn.abilities :"INTIMIDATE"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 214
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.9
  pkmn.weight 50.0
  pkmn.category "Predator"
  pkmn.pokedex_entry "Mega Staraptor is a top-class flier. It can easily soar through the sky while gripping a Steelix that weighs more than 880 lbs."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"WINGATTACK"
    m.at 5, :"QUICKATTACK"
    m.at 9, :"WINGATTACK"
    m.at 13, :"DOUBLETEAM"
    m.at 18, :"ENDEAVOR"
    m.at 23, :"WHIRLWIND"
    m.at 28, :"AERIALACE"
    m.at 33, :"TAKEDOWN"
    m.at 34, :"CLOSECOMBAT"
    m.at 41, :"AGILITY"
    m.at 49, :"BRAVEBIRD"
    m.at 57, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"STARAPTOR_1" do |m|
  m.back_sprite -5, 0
  m.front_sprite 1, 11
  m.shadow_sprite 0, 0, 3
end