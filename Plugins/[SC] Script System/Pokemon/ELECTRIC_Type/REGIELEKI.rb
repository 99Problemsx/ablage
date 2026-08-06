#=============================================================================
# Regieleki - ELECTRIC Type
#=============================================================================

GameData::Species.define :"REGIELEKI" do |pkmn|
  pkmn.name "Regieleki"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 80, attack: 100, defense: 50,
                  sp_atk: 200, sp_def: 100, speed: 50
  pkmn.abilities :"TRANSISTOR"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 290
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 30720
  pkmn.height 1.2
  pkmn.weight 145.0
  pkmn.category "Electron"
  pkmn.pokedex_entry "This Pokémon is a cluster of electrical energy. It's said that removing the rings on Regieleki's body will unleash the Pokémon's latent power."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"RAPIDSPIN"
    m.at 6, :"ELECTROWEB"
    m.at 12, :"ANCIENTPOWER"
    m.at 18, :"SHOCKWAVE"
    m.at 24, :"THUNDERWAVE"
    m.at 30, :"EXTREMESPEED"
    m.at 36, :"THUNDERCAGE"
    m.at 42, :"THUNDERBOLT"
    m.at 48, :"MAGNETRISE"
    m.at 54, :"THRASH"
    m.at 60, :"LOCKON"
    m.at 66, :"ZAPCANNON"
    m.at 72, :"HYPERBEAM"
    m.at 78, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"ASSURANCE", :"BODYSLAM", :"BOUNCE", :"CONFIDE", :"DOUBLETEAM", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"REGIELEKI" do |m|
  m.back_sprite 8, 72
  m.front_sprite -2, 26
  m.shadow_sprite 0, 0, -1
end