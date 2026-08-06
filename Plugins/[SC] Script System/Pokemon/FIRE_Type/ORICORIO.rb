#=============================================================================
# Oricorio - FIRE Type
#=============================================================================

GameData::Species.define :"ORICORIO" do |pkmn|
  pkmn.name "Oricorio"
  pkmn.form_name "Baile Style"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 75, attack: 70, defense: 70,
                  sp_atk: 93, sp_def: 98, speed: 70
  pkmn.abilities :"DANCER"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 167
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 3.4
  pkmn.category "Dancing"
  pkmn.pokedex_entry "It beats its wings together to create fire. As it moves in the steps of its beautiful dance, it bathes opponents in intense flames."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 4, :"GROWL"
    m.at 6, :"PECK"
    m.at 10, :"HELPINGHAND"
    m.at 13, :"AIRCUTTER"
    m.at 16, :"BATONPASS"
    m.at 20, :"FEATHERDANCE"
    m.at 23, :"DOUBLESLAP"
    m.at 26, :"TEETERDANCE"
    m.at 30, :"ROOST"
    m.at 33, :"CAPTIVATE"
    m.at 36, :"AIRSLASH"
    m.at 40, :"REVELATIONDANCE"
    m.at 43, :"MIRRORMOVE"
    m.at 46, :"AGILITY"
    m.at 50, :"HURRICANE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DEFOG", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"QUASH", :"REST", :"RETURN", :"ROLEPLAY", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"TOXIC", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"CAPTIVATE", :"PLUCK", :"SAFEGUARD", :"TAILWIND"
end

GameData::SpeciesMetrics.define :"ORICORIO" do |m|
  m.back_sprite 2, 42
  m.front_sprite -2, 9
end

# Form 1 - Baile Style
GameData::Species.define :"ORICORIO_1" do |pkmn|
  pkmn.species :"ORICORIO"
  pkmn.form 1
  pkmn.name "Oricorio"
  pkmn.form_name "Baile Style"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 75, attack: 70, defense: 70,
                  sp_atk: 93, sp_def: 98, speed: 70
  pkmn.abilities :"DANCER"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 167
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 3.4
  pkmn.category "Dancing"
  pkmn.pokedex_entry "It beats its wings together to create fire. As it moves in the steps of its beautiful dance, it bathes opponents in intense flames."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 4, :"GROWL"
    m.at 6, :"PECK"
    m.at 10, :"HELPINGHAND"
    m.at 13, :"AIRCUTTER"
    m.at 16, :"BATONPASS"
    m.at 20, :"FEATHERDANCE"
    m.at 23, :"DOUBLESLAP"
    m.at 26, :"TEETERDANCE"
    m.at 30, :"ROOST"
    m.at 33, :"CAPTIVATE"
    m.at 36, :"AIRSLASH"
    m.at 40, :"REVELATIONDANCE"
    m.at 43, :"MIRRORMOVE"
    m.at 46, :"AGILITY"
    m.at 50, :"HURRICANE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DEFOG", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"QUASH", :"REST", :"RETURN", :"ROLEPLAY", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"TOXIC", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"CAPTIVATE", :"PLUCK", :"SAFEGUARD", :"TAILWIND"
end

GameData::SpeciesMetrics.define :"ORICORIO_1" do |m|
  m.back_sprite 2, 42
  m.front_sprite -2, 9
end

# Form 3 - Baile Style
GameData::Species.define :"ORICORIO_3" do |pkmn|
  pkmn.species :"ORICORIO"
  pkmn.form 3
  pkmn.name "Oricorio"
  pkmn.form_name "Baile Style"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 75, attack: 70, defense: 70,
                  sp_atk: 93, sp_def: 98, speed: 70
  pkmn.abilities :"DANCER"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 167
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 3.4
  pkmn.category "Dancing"
  pkmn.pokedex_entry "It beats its wings together to create fire. As it moves in the steps of its beautiful dance, it bathes opponents in intense flames."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 4, :"GROWL"
    m.at 6, :"PECK"
    m.at 10, :"HELPINGHAND"
    m.at 13, :"AIRCUTTER"
    m.at 16, :"BATONPASS"
    m.at 20, :"FEATHERDANCE"
    m.at 23, :"DOUBLESLAP"
    m.at 26, :"TEETERDANCE"
    m.at 30, :"ROOST"
    m.at 33, :"CAPTIVATE"
    m.at 36, :"AIRSLASH"
    m.at 40, :"REVELATIONDANCE"
    m.at 43, :"MIRRORMOVE"
    m.at 46, :"AGILITY"
    m.at 50, :"HURRICANE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DEFOG", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"QUASH", :"REST", :"RETURN", :"ROLEPLAY", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"TOXIC", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"CAPTIVATE", :"PLUCK", :"SAFEGUARD", :"TAILWIND"
end

GameData::SpeciesMetrics.define :"ORICORIO_3" do |m|
  m.back_sprite 2, 42
  m.front_sprite -2, 9
end