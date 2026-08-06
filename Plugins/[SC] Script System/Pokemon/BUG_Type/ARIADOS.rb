#=============================================================================
# Ariados - BUG Type
#=============================================================================

GameData::Species.define :"ARIADOS" do |pkmn|
  pkmn.name "Ariados"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 70, attack: 90, defense: 70,
                  sp_atk: 40, sp_def: 60, speed: 60
  pkmn.abilities :"SWARM", :"INSOMNIA"
  pkmn.hidden_abilities :"SNIPER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 137
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.1
  pkmn.weight 33.5
  pkmn.category "Long Leg"
  pkmn.pokedex_entry "Its feet are tipped with tiny hooked claws that enable it to scuttle on ceilings and vertical walls. It constricts its foe with thin and strong silk webbing."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"BUGBITE"
    m.at 1, :"POISONSTING"
    m.at 1, :"STRINGSHOT"
    m.at 1, :"SCARYFACE"
    m.at 1, :"CONSTRICT"
    m.at 5, :"SCARYFACE"
    m.at 8, :"CONSTRICT"
    m.at 12, :"LEECHLIFE"
    m.at 15, :"NIGHTSHADE"
    m.at 19, :"SHADOWSNEAK"
    m.at 23, :"FURYSWIPES"
    m.at 28, :"SUCKERPUNCH"
    m.at 32, :"SPIDERWEB"
    m.at 37, :"AGILITY"
    m.at 41, :"PINMISSILE"
    m.at 46, :"PSYCHIC"
    m.at 50, :"POISONJAB"
    m.at 55, :"CROSSPOISON"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BUGBITE", :"CAPTIVATE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"ARIADOS" do |m|
  m.back_sprite 5, 0
  m.front_sprite -2, 22
  m.shadow_sprite 0, 0, 3
end