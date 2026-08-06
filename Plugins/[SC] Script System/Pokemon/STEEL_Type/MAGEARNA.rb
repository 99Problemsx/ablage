#=============================================================================
# Magearna - STEEL Type
#=============================================================================

GameData::Species.define :"MAGEARNA" do |pkmn|
  pkmn.name "Magearna"
  pkmn.types :"STEEL", :"FAIRY"
  pkmn.base_stats hp: 80, attack: 95, defense: 115,
                  sp_atk: 65, sp_def: 130, speed: 115
  pkmn.abilities :"SOULHEART"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.0
  pkmn.weight 80.5
  pkmn.category "Artificial"
  pkmn.pokedex_entry "This artificial Pokémon, constructed more than 500 years ago, can understand human speech but cannot itself speak."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GYROBALL"
    m.at 1, :"HELPINGHAND"
    m.at 6, :"DEFENSECURL"
    m.at 12, :"ROLLOUT"
    m.at 18, :"IRONDEFENSE"
    m.at 24, :"GEARUP"
    m.at 30, :"PSYBEAM"
    m.at 36, :"AURORABEAM"
    m.at 42, :"MINDREADER"
    m.at 48, :"SHIFTGEAR"
    m.at 54, :"CRAFTYSHIELD"
    m.at 60, :"IRONHEAD"
    m.at 66, :"AURASPHERE"
    m.at 72, :"FLASHCANNON"
    m.at 78, :"PAINSPLIT"
    m.at 84, :"ZAPCANNON"
    m.at 90, :"FLEURCANNON"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AGILITY", :"AURASPHERE", :"BATONPASS", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"EERIEIMPULSE", :"ELECTROBALL", :"ELECTROWEB", :"EMBARGO", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FALSESWIPE", :"FLASHCANNON", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUARDSWAP", :"GYROBALL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MISTYEXPLOSION", :"NATURALGIFT", :"PAINSPLIT", :"POWERSWAP", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SELFDESTRUCT", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SNORE", :"SOLARBEAM", :"SPEEDSWAP", :"STEELBEAM", :"STEELROLLER", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TRIATTACK", :"TRICK", :"TRICKROOM", :"VOLTSWITCH", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MAGEARNA" do |m|
  m.back_sprite 3, 23
  m.front_sprite 0, 4
end

# Form 2 - Mega Magearna (Original Color)
GameData::Species.define :"MAGEARNA_2" do |pkmn|
  pkmn.species :"MAGEARNA"
  pkmn.form 2
  pkmn.name "Magearna"
  pkmn.form_name "Mega Magearna (Original Color)"
  pkmn.types :"STEEL", :"FAIRY"
  pkmn.base_stats hp: 80, attack: 125, defense: 115,
                  sp_atk: 95, sp_def: 170, speed: 115
  pkmn.abilities :"SOULHEART"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.3
  pkmn.weight 248.1
  pkmn.category "Artificial"
  pkmn.pokedex_entry "This is Magearna once a previously hidden mode activates. The emotions Magearna had begun to feel now hide away as it fells foe after foe."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GYROBALL"
    m.at 1, :"HELPINGHAND"
    m.at 6, :"DEFENSECURL"
    m.at 12, :"ROLLOUT"
    m.at 18, :"IRONDEFENSE"
    m.at 24, :"GEARUP"
    m.at 30, :"PSYBEAM"
    m.at 36, :"AURORABEAM"
    m.at 42, :"MINDREADER"
    m.at 48, :"SHIFTGEAR"
    m.at 54, :"CRAFTYSHIELD"
    m.at 60, :"IRONHEAD"
    m.at 66, :"AURASPHERE"
    m.at 72, :"FLASHCANNON"
    m.at 78, :"PAINSPLIT"
    m.at 84, :"ZAPCANNON"
    m.at 90, :"FLEURCANNON"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AGILITY", :"AURASPHERE", :"BATONPASS", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"EERIEIMPULSE", :"ELECTROBALL", :"ELECTROWEB", :"EMBARGO", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FALSESWIPE", :"FLASHCANNON", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUARDSWAP", :"GYROBALL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MISTYEXPLOSION", :"NATURALGIFT", :"PAINSPLIT", :"POWERSWAP", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SELFDESTRUCT", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SNORE", :"SOLARBEAM", :"SPEEDSWAP", :"STEELBEAM", :"STEELROLLER", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TRIATTACK", :"TRICK", :"TRICKROOM", :"VOLTSWITCH", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MAGEARNA_2" do |m|
  m.back_sprite 3, 23
  m.front_sprite 0, 4
end

# Form 3 - Mega Magearna
GameData::Species.define :"MAGEARNA_3" do |pkmn|
  pkmn.species :"MAGEARNA"
  pkmn.form 3
  pkmn.name "Magearna"
  pkmn.form_name "Mega Magearna"
  pkmn.types :"STEEL", :"FAIRY"
  pkmn.base_stats hp: 80, attack: 125, defense: 115,
                  sp_atk: 95, sp_def: 170, speed: 115
  pkmn.abilities :"SOULHEART"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.3
  pkmn.weight 248.1
  pkmn.category "Artificial"
  pkmn.pokedex_entry "A mechanism to remove Magerna's limitations has lain secretly with Magerna for 500 years. This mechanism is triggered by a Mega Stone."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GYROBALL"
    m.at 1, :"HELPINGHAND"
    m.at 6, :"DEFENSECURL"
    m.at 12, :"ROLLOUT"
    m.at 18, :"IRONDEFENSE"
    m.at 24, :"GEARUP"
    m.at 30, :"PSYBEAM"
    m.at 36, :"AURORABEAM"
    m.at 42, :"MINDREADER"
    m.at 48, :"SHIFTGEAR"
    m.at 54, :"CRAFTYSHIELD"
    m.at 60, :"IRONHEAD"
    m.at 66, :"AURASPHERE"
    m.at 72, :"FLASHCANNON"
    m.at 78, :"PAINSPLIT"
    m.at 84, :"ZAPCANNON"
    m.at 90, :"FLEURCANNON"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AGILITY", :"AURASPHERE", :"BATONPASS", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"EERIEIMPULSE", :"ELECTROBALL", :"ELECTROWEB", :"EMBARGO", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FALSESWIPE", :"FLASHCANNON", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUARDSWAP", :"GYROBALL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MISTYEXPLOSION", :"NATURALGIFT", :"PAINSPLIT", :"POWERSWAP", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SELFDESTRUCT", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SNORE", :"SOLARBEAM", :"SPEEDSWAP", :"STEELBEAM", :"STEELROLLER", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TRIATTACK", :"TRICK", :"TRICKROOM", :"VOLTSWITCH", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MAGEARNA_3" do |m|
  m.back_sprite 3, 23
  m.front_sprite 0, 4
end