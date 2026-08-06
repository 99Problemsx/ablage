#=============================================================================
# Thundurus - ELECTRIC Type
#=============================================================================

GameData::Species.define :"THUNDURUS" do |pkmn|
  pkmn.name "Thundurus"
  pkmn.form_name "Incarnate Forme"
  pkmn.types :"ELECTRIC", :"FLYING"
  pkmn.base_stats hp: 79, attack: 115, defense: 70,
                  sp_atk: 111, sp_def: 125, speed: 80
  pkmn.abilities :"PRANKSTER"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 61.0
  pkmn.category "Bolt Strike"
  pkmn.pokedex_entry "The spikes on its tail discharge immense bolts of lightning. It flies around the Unova region firing off lightning bolts."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"UPROAR"
    m.at 1, :"ASTONISH"
    m.at 1, :"THUNDERSHOCK"
    m.at 7, :"SWAGGER"
    m.at 13, :"BITE"
    m.at 19, :"REVENGE"
    m.at 25, :"SHOCKWAVE"
    m.at 31, :"HEALBLOCK"
    m.at 37, :"AGILITY"
    m.at 43, :"DISCHARGE"
    m.at 49, :"CRUNCH"
    m.at 55, :"CHARGE"
    m.at 61, :"NASTYPLOT"
    m.at 67, :"THUNDER"
    m.at 73, :"DARKPULSE"
    m.at 79, :"HAMMERARM"
    m.at 85, :"THRASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SKYDROP", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"THUNDURUS" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Incarnate Forme
GameData::Species.define :"THUNDURUS_1" do |pkmn|
  pkmn.species :"THUNDURUS"
  pkmn.form 1
  pkmn.name "Thundurus"
  pkmn.form_name "Incarnate Forme"
  pkmn.types :"ELECTRIC", :"FLYING"
  pkmn.base_stats hp: 79, attack: 115, defense: 70,
                  sp_atk: 111, sp_def: 125, speed: 80
  pkmn.abilities :"PRANKSTER"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 61.0
  pkmn.category "Bolt Strike"
  pkmn.pokedex_entry "The spikes on its tail discharge immense bolts of lightning. It flies around the Unova region firing off lightning bolts."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"UPROAR"
    m.at 1, :"ASTONISH"
    m.at 1, :"THUNDERSHOCK"
    m.at 7, :"SWAGGER"
    m.at 13, :"BITE"
    m.at 19, :"REVENGE"
    m.at 25, :"SHOCKWAVE"
    m.at 31, :"HEALBLOCK"
    m.at 37, :"AGILITY"
    m.at 43, :"DISCHARGE"
    m.at 49, :"CRUNCH"
    m.at 55, :"CHARGE"
    m.at 61, :"NASTYPLOT"
    m.at 67, :"THUNDER"
    m.at 73, :"DARKPULSE"
    m.at 79, :"HAMMERARM"
    m.at 85, :"THRASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SKYDROP", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"THUNDURUS_1" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 5
  m.shadow_sprite 0, 0, 3
end