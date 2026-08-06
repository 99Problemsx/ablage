#=============================================================================
# Nihilego - ROCK Type
#=============================================================================

GameData::Species.define :"NIHILEGO" do |pkmn|
  pkmn.name "Nihilego"
  pkmn.types :"ROCK", :"POISON"
  pkmn.base_stats hp: 109, attack: 53, defense: 47,
                  sp_atk: 103, sp_def: 127, speed: 131
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Multiped"
  pkmn.base_exp 285
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.2
  pkmn.weight 55.5
  pkmn.category "Parasite"
  pkmn.pokedex_entry "One of several mysterious Ultra Beasts. People on the street report observing those infested by it suddenly becoming violent."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"POUND"
    m.at 5, :"ACID"
    m.at 10, :"TICKLE"
    m.at 15, :"ACIDSPRAY"
    m.at 20, :"CLEARSMOG"
    m.at 25, :"POWERSPLIT"
    m.at 25, :"GUARDSPLIT"
    m.at 30, :"VENOSHOCK"
    m.at 35, :"HEADBUTT"
    m.at 40, :"TOXICSPIKES"
    m.at 45, :"VENOMDRENCH"
    m.at 50, :"POWERGEM"
    m.at 55, :"STEALTHROCK"
    m.at 60, :"MIRRORCOAT"
    m.at 65, :"WONDERROOM"
    m.at 70, :"HEADSMASH"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"BIND", :"BODYSLAM", :"BRUTALSWING", :"CHARGEBEAM", :"CONFIDE", :"CORROSIVEGAS", :"CROSSPOISON", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HEX", :"HIDDENPOWER", :"IRONHEAD", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"POISONJAB", :"POWERGEM", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STEALTHROCK", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TOXICSPIKES", :"TRICKROOM", :"VENOMDRENCH", :"VENOSHOCK", :"WONDERROOM", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"NIHILEGO" do |m|
  m.back_sprite 4, 50
  m.front_sprite -4, 5
end