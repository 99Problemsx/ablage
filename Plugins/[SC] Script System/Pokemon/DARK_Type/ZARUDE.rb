#=============================================================================
# Zarude - DARK Type
#=============================================================================

GameData::Species.define :"ZARUDE" do |pkmn|
  pkmn.name "Zarude"
  pkmn.types :"DARK", :"GRASS"
  pkmn.base_stats hp: 105, attack: 120, defense: 105,
                  sp_atk: 105, sp_def: 70, speed: 95
  pkmn.abilities :"LEAFGUARD"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.8
  pkmn.weight 70.0
  pkmn.category "Rogue Monkey"
  pkmn.pokedex_entry "Once the vines on Zarude's body tear off, they become nutrients in the soil. This helps the plants of the forest grow."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BIND"
    m.at 1, :"SCRATCH"
    m.at 6, :"LEER"
    m.at 12, :"VINEWHIP"
    m.at 18, :"GROWTH"
    m.at 24, :"FURYSWIPES"
    m.at 30, :"SCARYFACE"
    m.at 36, :"GRASSKNOT"
    m.at 42, :"BITE"
    m.at 48, :"UTURN"
    m.at 54, :"SWAGGER"
    m.at 60, :"ENERGYBALL"
    m.at 66, :"SYNTHESIS"
    m.at 72, :"HAMMERARM"
    m.at 78, :"THRASH"
    m.at 84, :"POWERWHIP"
    m.at 90, :"JUNGLEHEALING"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ASSURANCE", :"BODYSLAM", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLETSEED", :"CLOSECOMBAT", :"CONFIDE", :"CRUNCH", :"DARKESTLARIAT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"LASHOUT", :"LOWKICK", :"MAGICALLEAF", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSHOT", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"POWERWHIP", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THROATCHOP", :"TOXIC", :"UTURN", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZARUDE" do |m|
  m.back_sprite 0, 57
  m.front_sprite -2, 17
end