#=============================================================================
# Chi-Yu - DARK Type
#=============================================================================

GameData::Species.define :"CHIYU" do |pkmn|
  pkmn.name "Chi-Yu"
  pkmn.types :"DARK", :"FIRE"
  pkmn.base_stats hp: 55, attack: 80, defense: 80,
                  sp_atk: 100, sp_def: 135, speed: 120
  pkmn.abilities :"BEADSOFRUIN"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Finned"
  pkmn.base_exp 285
  pkmn.catch_rate 6
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 0.4
  pkmn.weight 4.9
  pkmn.category "Ruinous"
  pkmn.pokedex_entry "It controls flames burning at over 5,400 degrees Fahrenheit. It casually swims through the sea of lava it creates by melting rock and sand."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 1, :"SPITE"
    m.at 1, :"MEANLOOK"
    m.at 5, :"FLAMEWHEEL"
    m.at 10, :"PAYBACK"
    m.at 15, :"WILLOWISP"
    m.at 20, :"FLAMECHARGE"
    m.at 25, :"INCINERATE"
    m.at 30, :"CONFUSERAY"
    m.at 35, :"NASTYPLOT"
    m.at 40, :"DARKPULSE"
    m.at 45, :"LAVAPLUME"
    m.at 50, :"RUINATION"
    m.at 55, :"BOUNCE"
    m.at 60, :"SWAGGER"
    m.at 65, :"INFERNO"
    m.at 70, :"MEMENTO"
    m.at 75, :"OVERHEAT"
  end
  pkmn.tutor_moves :"BURNINGJEALOUSY", :"CONFUSERAY", :"CRUNCH", :"DARKPULSE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"GIGAIMPACT", :"HEATWAVE", :"HEX", :"HYPERBEAM", :"LASHOUT", :"LIGHTSCREEN", :"NASTYPLOT", :"OVERHEAT", :"PROTECT", :"PSYCHIC", :"REFLECT", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CHIYU" do |m|
  m.back_sprite 0, 30
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 1
end