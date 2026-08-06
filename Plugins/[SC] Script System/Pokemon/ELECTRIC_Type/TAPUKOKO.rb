#=============================================================================
# Tapu Koko - ELECTRIC Type
#=============================================================================

GameData::Species.define :"TAPUKOKO" do |pkmn|
  pkmn.name "Tapu Koko"
  pkmn.types :"ELECTRIC", :"FAIRY"
  pkmn.base_stats hp: 70, attack: 115, defense: 85,
                  sp_atk: 130, sp_def: 95, speed: 75
  pkmn.abilities :"ELECTRICSURGE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 285
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.8
  pkmn.weight 20.5
  pkmn.category "Land Spirit"
  pkmn.pokedex_entry "Although it's called a guardian deity, if a person or Pokémon puts it in a bad mood, it will become a malevolent deity and attack."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"THUNDERSHOCK"
    m.at 5, :"WITHDRAW"
    m.at 10, :"FAIRYWIND"
    m.at 15, :"FALSESWIPE"
    m.at 20, :"SPARK"
    m.at 25, :"SHOCKWAVE"
    m.at 30, :"CHARGE"
    m.at 35, :"AGILITY"
    m.at 40, :"SCREECH"
    m.at 45, :"DISCHARGE"
    m.at 50, :"MEANLOOK"
    m.at 55, :"NATURESMADNESS"
    m.at 60, :"WILDCHARGE"
    m.at 65, :"BRAVEBIRD"
    m.at 70, :"POWERSWAP"
    m.at 75, :"ELECTRICTERRAIN"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"ASSURANCE", :"BRAVEBIRD", :"CALMMIND", :"CONFIDE", :"DAZZLINGGLEAM", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"POWERSWAP", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROOST", :"ROUND", :"SAFEGUARD", :"SCREECH", :"SECRETPOWER", :"SHOCKWAVE", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TAPUKOKO" do |m|
  m.back_sprite 9, 59
  m.front_sprite 3, 9
  m.shadow_sprite 0, 0, -1
end