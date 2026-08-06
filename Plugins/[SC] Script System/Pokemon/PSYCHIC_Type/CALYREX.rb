#=============================================================================
# Calyrex - PSYCHIC Type
#=============================================================================

GameData::Species.define :"CALYREX" do |pkmn|
  pkmn.name "Calyrex"
  pkmn.types :"PSYCHIC", :"GRASS"
  pkmn.base_stats hp: 100, attack: 80, defense: 80,
                  sp_atk: 80, sp_def: 80, speed: 80
  pkmn.abilities :"UNNERVE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 250
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30720
  pkmn.height 1.1
  pkmn.weight 7.7
  pkmn.category "King"
  pkmn.pokedex_entry "Calyrex is a merciful Pokémon, capable of providing healing and blessings. It reigned over the Galar region in times of yore."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"CONFUSION"
    m.at 1, :"GROWTH"
    m.at 8, :"LIFEDEW"
    m.at 16, :"GIGADRAIN"
    m.at 24, :"PSYSHOCK"
    m.at 32, :"HELPINGHAND"
    m.at 40, :"AROMATHERAPY"
    m.at 48, :"ENERGYBALL"
    m.at 56, :"PSYCHIC"
    m.at 64, :"LEECHSEED"
    m.at 72, :"HEALPULSE"
    m.at 80, :"SOLARBEAM"
    m.at 88, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLYSWITCH", :"BATONPASS", :"BULLETSEED", :"CALMMIND", :"CONFIDE", :"DOUBLETEAM", :"DRAININGKISS", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"FUTURESIGHT", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"GUARDSWAP", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"LEAFSTORM", :"LIGHTSCREEN", :"MAGICALLEAF", :"MAGICROOM", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"PAYDAY", :"POLLENPUFF", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SPEEDSWAP", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"TRIATTACK", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CALYREX" do |m|
  m.back_sprite 0, 60
  m.front_sprite 3, 11
end

# Form 1 - Unknown Form
GameData::Species.define :"CALYREX_1" do |pkmn|
  pkmn.species :"CALYREX"
  pkmn.form 1
  pkmn.name "Calyrex"
  pkmn.types :"PSYCHIC", :"GRASS"
  pkmn.base_stats hp: 100, attack: 80, defense: 80,
                  sp_atk: 80, sp_def: 80, speed: 80
  pkmn.abilities :"UNNERVE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 250
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30720
  pkmn.height 1.1
  pkmn.weight 7.7
  pkmn.category "King"
  pkmn.pokedex_entry "Calyrex is a merciful Pokémon, capable of providing healing and blessings. It reigned over the Galar region in times of yore."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"CONFUSION"
    m.at 1, :"GROWTH"
    m.at 8, :"LIFEDEW"
    m.at 16, :"GIGADRAIN"
    m.at 24, :"PSYSHOCK"
    m.at 32, :"HELPINGHAND"
    m.at 40, :"AROMATHERAPY"
    m.at 48, :"ENERGYBALL"
    m.at 56, :"PSYCHIC"
    m.at 64, :"LEECHSEED"
    m.at 72, :"HEALPULSE"
    m.at 80, :"SOLARBEAM"
    m.at 88, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLYSWITCH", :"BATONPASS", :"BULLETSEED", :"CALMMIND", :"CONFIDE", :"DOUBLETEAM", :"DRAININGKISS", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"FUTURESIGHT", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"GUARDSWAP", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"LEAFSTORM", :"LIGHTSCREEN", :"MAGICALLEAF", :"MAGICROOM", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"PAYDAY", :"POLLENPUFF", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SPEEDSWAP", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"TRIATTACK", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CALYREX_1" do |m|
  m.back_sprite 0, 60
  m.front_sprite 3, 11
end

# Form 2 - Unknown Form
GameData::Species.define :"CALYREX_2" do |pkmn|
  pkmn.species :"CALYREX"
  pkmn.form 2
  pkmn.name "Calyrex"
  pkmn.types :"PSYCHIC", :"GRASS"
  pkmn.base_stats hp: 100, attack: 80, defense: 80,
                  sp_atk: 80, sp_def: 80, speed: 80
  pkmn.abilities :"UNNERVE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 250
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30720
  pkmn.height 1.1
  pkmn.weight 7.7
  pkmn.category "King"
  pkmn.pokedex_entry "Calyrex is a merciful Pokémon, capable of providing healing and blessings. It reigned over the Galar region in times of yore."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"CONFUSION"
    m.at 1, :"GROWTH"
    m.at 8, :"LIFEDEW"
    m.at 16, :"GIGADRAIN"
    m.at 24, :"PSYSHOCK"
    m.at 32, :"HELPINGHAND"
    m.at 40, :"AROMATHERAPY"
    m.at 48, :"ENERGYBALL"
    m.at 56, :"PSYCHIC"
    m.at 64, :"LEECHSEED"
    m.at 72, :"HEALPULSE"
    m.at 80, :"SOLARBEAM"
    m.at 88, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLYSWITCH", :"BATONPASS", :"BULLETSEED", :"CALMMIND", :"CONFIDE", :"DOUBLETEAM", :"DRAININGKISS", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"FUTURESIGHT", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"GUARDSWAP", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"LEAFSTORM", :"LIGHTSCREEN", :"MAGICALLEAF", :"MAGICROOM", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"PAYDAY", :"POLLENPUFF", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SPEEDSWAP", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"TRIATTACK", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CALYREX_2" do |m|
  m.back_sprite 0, 60
  m.front_sprite 3, 11
end