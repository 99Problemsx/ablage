#=============================================================================
# Muk - POISON Type
#=============================================================================

GameData::Species.define :"MUK" do |pkmn|
  pkmn.name "Muk"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 105, attack: 105, defense: 75,
                  sp_atk: 50, sp_def: 65, speed: 100
  pkmn.abilities :"STENCH", :"STICKYHOLD"
  pkmn.hidden_abilities :"POISONTOUCH"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 30.0
  pkmn.category "Sludge"
  pkmn.pokedex_entry "It prefers warm and humid habitats. In the summertime, the toxic substances in its body intensify, making Muk reek like putrid kitchen garbage."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POISONGAS"
    m.at 1, :"POUND"
    m.at 1, :"HARDEN"
    m.at 1, :"MUDSLAP"
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
    m.at 43, :"ACIDARMOR"
    m.at 49, :"GUNKSHOT"
    m.at 57, :"MEMENTO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GUNKSHOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"MUK" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 12
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"MUK_1" do |pkmn|
  pkmn.species :"MUK"
  pkmn.form 1
  pkmn.name "Muk"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 105, attack: 105, defense: 75,
                  sp_atk: 50, sp_def: 65, speed: 100
  pkmn.abilities :"STENCH", :"STICKYHOLD"
  pkmn.hidden_abilities :"POISONTOUCH"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 30.0
  pkmn.category "Sludge"
  pkmn.pokedex_entry "It prefers warm and humid habitats. In the summertime, the toxic substances in its body intensify, making Muk reek like putrid kitchen garbage."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POISONGAS"
    m.at 1, :"POUND"
    m.at 1, :"HARDEN"
    m.at 1, :"MUDSLAP"
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
    m.at 43, :"ACIDARMOR"
    m.at 49, :"GUNKSHOT"
    m.at 57, :"MEMENTO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GUNKSHOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"MUK_1" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 12
  m.shadow_sprite 0, 0, 3
end