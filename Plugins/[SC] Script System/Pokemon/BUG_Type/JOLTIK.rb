#=============================================================================
# Joltik - BUG Type
#=============================================================================

GameData::Species.define :"JOLTIK" do |pkmn|
  pkmn.name "Joltik"
  pkmn.types :"BUG", :"ELECTRIC"
  pkmn.base_stats hp: 50, attack: 47, defense: 50,
                  sp_atk: 65, sp_def: 57, speed: 50
  pkmn.abilities :"COMPOUNDEYES", :"UNNERVE"
  pkmn.hidden_abilities :"SWARM"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 64
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.1
  pkmn.weight 0.6
  pkmn.category "Attaching"
  pkmn.pokedex_entry "They attach themselves to large-bodied Pokémon and absorb static electricity, which they store in an electric pouch."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"STRINGSHOT"
    m.at 1, :"LEECHLIFE"
    m.at 1, :"SPIDERWEB"
    m.at 4, :"THUNDERWAVE"
    m.at 7, :"SCREECH"
    m.at 12, :"FURYCUTTER"
    m.at 15, :"ELECTROWEB"
    m.at 18, :"BUGBITE"
    m.at 23, :"GASTROACID"
    m.at 26, :"SLASH"
    m.at 29, :"ELECTROBALL"
    m.at 34, :"SIGNALBEAM"
    m.at 37, :"AGILITY"
    m.at 40, :"SUCKERPUNCH"
    m.at 45, :"DISCHARGE"
    m.at 48, :"BUGBUZZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"BUGBITE", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"THIEF", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"XSCISSOR"
  pkmn.egg_moves :"CROSSPOISON", :"DISABLE", :"FEINTATTACK", :"PINMISSILE", :"POISONSTING", :"PURSUIT", :"ROCKCLIMB"
end

GameData::SpeciesMetrics.define :"JOLTIK" do |m|
  m.back_sprite 0, 0
  m.front_sprite 5, 34
  m.shadow_sprite 0, 0, 2
end