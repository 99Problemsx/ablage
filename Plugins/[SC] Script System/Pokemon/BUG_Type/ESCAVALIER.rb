#=============================================================================
# Escavalier - BUG Type
#=============================================================================

GameData::Species.define :"ESCAVALIER" do |pkmn|
  pkmn.name "Escavalier"
  pkmn.types :"BUG", :"STEEL"
  pkmn.base_stats hp: 70, attack: 135, defense: 105,
                  sp_atk: 20, sp_def: 60, speed: 105
  pkmn.abilities :"SWARM", :"SHELLARMOR"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 173
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 33.0
  pkmn.category "Cavalry"
  pkmn.pokedex_entry "These Pokémon evolve by wearing the shell covering of a Shelmet. The steel armor protects their whole body."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"LEER"
    m.at 1, :"QUICKGUARD"
    m.at 1, :"TWINEEDLE"
    m.at 4, :"LEER"
    m.at 8, :"QUICKGUARD"
    m.at 13, :"TWINEEDLE"
    m.at 16, :"FURYATTACK"
    m.at 20, :"HEADBUTT"
    m.at 25, :"FALSESWIPE"
    m.at 28, :"BUGBUZZ"
    m.at 32, :"SLASH"
    m.at 37, :"IRONHEAD"
    m.at 40, :"IRONDEFENSE"
    m.at 44, :"XSCISSOR"
    m.at 49, :"REVERSAL"
    m.at 52, :"SWORDSDANCE"
    m.at 56, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"ESCAVALIER" do |m|
  m.back_sprite 3, 0
  m.front_sprite 2, 10
  m.shadow_sprite 0, 0, 3
end