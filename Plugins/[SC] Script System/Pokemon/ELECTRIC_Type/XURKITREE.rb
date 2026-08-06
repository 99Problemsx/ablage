#=============================================================================
# Xurkitree - ELECTRIC Type
#=============================================================================

GameData::Species.define :"XURKITREE" do |pkmn|
  pkmn.name "Xurkitree"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 83, attack: 89, defense: 71,
                  sp_atk: 83, sp_def: 173, speed: 71
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 285
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 3.8
  pkmn.weight 100.0
  pkmn.category "Glowing"
  pkmn.pokedex_entry "One of the mysterious life-forms known as Ultra Beasts. Astonishing electric shocks emanate from its entire body, according to witnesses."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"THUNDERSHOCK"
    m.at 5, :"CHARGE"
    m.at 10, :"THUNDERWAVE"
    m.at 15, :"INGRAIN"
    m.at 20, :"SPARK"
    m.at 25, :"SHOCKWAVE"
    m.at 30, :"HYPNOSIS"
    m.at 35, :"EERIEIMPULSE"
    m.at 40, :"THUNDERPUNCH"
    m.at 45, :"DISCHARGE"
    m.at 50, :"MAGNETRISE"
    m.at 55, :"THUNDERBOLT"
    m.at 60, :"ELECTRICTERRAIN"
    m.at 65, :"POWERWHIP"
    m.at 70, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"BIND", :"BRUTALSWING", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"POWERWHIP", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"XURKITREE" do |m|
  m.back_sprite 10, 54
  m.front_sprite -2, 7
end