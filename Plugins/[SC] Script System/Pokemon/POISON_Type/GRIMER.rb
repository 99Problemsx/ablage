#=============================================================================
# Grimer - POISON Type
#=============================================================================

GameData::Species.define :"GRIMER" do |pkmn|
  pkmn.name "Grimer"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 80, attack: 80, defense: 50,
                  sp_atk: 25, sp_def: 40, speed: 50
  pkmn.abilities :"STENCH", :"STICKYHOLD"
  pkmn.hidden_abilities :"POISONTOUCH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 65
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 30.0
  pkmn.category "Sludge"
  pkmn.pokedex_entry "Born from polluted sludge in the sea, Grimer's favorite food is anything filthy. They feed on wastewater pumped out from factories."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POISONGAS"
    m.at 1, :"POUND"
    m.at 4, :"HARDEN"
    m.at 7, :"MUDSLAP"
    m.at 12, :"DISABLE"
    m.at 15, :"SLUDGE"
    m.at 18, :"MINIMIZE"
    m.at 21, :"MUDBOMB"
    m.at 26, :"SLUDGEBOMB"
    m.at 29, :"FLING"
    m.at 32, :"SCREECH"
    m.at 37, :"SLUDGEWAVE"
    m.at 40, :"ACIDARMOR"
    m.at 43, :"GUNKSHOT"
    m.at 48, :"MEMENTO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GUNKSHOT", :"HIDDENPOWER", :"ICEPUNCH", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"ACIDSPRAY", :"CURSE", :"HAZE", :"IMPRISON", :"LICK", :"MEANLOOK", :"SCARYFACE", :"SHADOWPUNCH", :"SHADOWSNEAK", :"SPITUP", :"STOCKPILE", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"GRIMER" do |m|
  m.back_sprite 3, 0
  m.front_sprite -6, 24
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"GRIMER_1" do |pkmn|
  pkmn.species :"GRIMER"
  pkmn.form 1
  pkmn.name "Grimer"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 80, attack: 80, defense: 50,
                  sp_atk: 25, sp_def: 40, speed: 50
  pkmn.abilities :"STENCH", :"STICKYHOLD"
  pkmn.hidden_abilities :"POISONTOUCH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 65
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 30.0
  pkmn.category "Sludge"
  pkmn.pokedex_entry "Born from polluted sludge in the sea, Grimer's favorite food is anything filthy. They feed on wastewater pumped out from factories."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POISONGAS"
    m.at 1, :"POUND"
    m.at 4, :"HARDEN"
    m.at 7, :"MUDSLAP"
    m.at 12, :"DISABLE"
    m.at 15, :"SLUDGE"
    m.at 18, :"MINIMIZE"
    m.at 21, :"MUDBOMB"
    m.at 26, :"SLUDGEBOMB"
    m.at 29, :"FLING"
    m.at 32, :"SCREECH"
    m.at 37, :"SLUDGEWAVE"
    m.at 40, :"ACIDARMOR"
    m.at 43, :"GUNKSHOT"
    m.at 48, :"MEMENTO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GUNKSHOT", :"HIDDENPOWER", :"ICEPUNCH", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"ACIDSPRAY", :"CURSE", :"HAZE", :"IMPRISON", :"LICK", :"MEANLOOK", :"SCARYFACE", :"SHADOWPUNCH", :"SHADOWSNEAK", :"SPITUP", :"STOCKPILE", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"GRIMER_1" do |m|
  m.back_sprite 3, 0
  m.front_sprite -6, 24
  m.shadow_sprite 0, 0, 3
end