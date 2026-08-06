#=============================================================================
# Galvantula - BUG Type
#=============================================================================

GameData::Species.define :"GALVANTULA" do |pkmn|
  pkmn.name "Galvantula"
  pkmn.types :"BUG", :"ELECTRIC"
  pkmn.base_stats hp: 70, attack: 77, defense: 60,
                  sp_atk: 108, sp_def: 97, speed: 60
  pkmn.abilities :"COMPOUNDEYES", :"UNNERVE"
  pkmn.hidden_abilities :"SWARM"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 165
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 14.3
  pkmn.category "EleSpider"
  pkmn.pokedex_entry "They employ an electrically charged web to trap their prey. While it is immobilized by shock, they leisurely consume it."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"STRINGSHOT"
    m.at 1, :"LEECHLIFE"
    m.at 1, :"SPIDERWEB"
    m.at 1, :"THUNDERWAVE"
    m.at 4, :"THUNDERWAVE"
    m.at 7, :"SCREECH"
    m.at 12, :"FURYCUTTER"
    m.at 15, :"ELECTROWEB"
    m.at 18, :"BUGBITE"
    m.at 23, :"GASTROACID"
    m.at 26, :"SLASH"
    m.at 29, :"ELECTROBALL"
    m.at 34, :"SIGNALBEAM"
    m.at 40, :"AGILITY"
    m.at 46, :"SUCKERPUNCH"
    m.at 54, :"DISCHARGE"
    m.at 60, :"BUGBUZZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"BUGBITE", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"GALVANTULA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 32
  m.shadow_sprite 0, 0, 3
end