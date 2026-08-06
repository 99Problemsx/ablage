#=============================================================================
# Zeraora - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ZERAORA" do |pkmn|
  pkmn.name "Zeraora"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 88, attack: 112, defense: 75,
                  sp_atk: 143, sp_def: 102, speed: 80
  pkmn.abilities :"VOLTABSORB"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.5
  pkmn.weight 44.5
  pkmn.category "Thunderclap"
  pkmn.pokedex_entry "It approaches its enemies at the speed of lightning, then tears them limb from limb with its sharp claws."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POWERUPPUNCH"
    m.at 1, :"FAKEOUT"
    m.at 1, :"SCRATCH"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"SNARL"
    m.at 1, :"SPARK"
    m.at 8, :"FURYSWIPES"
    m.at 16, :"QUICKGUARD"
    m.at 24, :"SLASH"
    m.at 32, :"VOLTSWITCH"
    m.at 40, :"CHARGE"
    m.at 48, :"THUNDERPUNCH"
    m.at 56, :"HONECLAWS"
    m.at 64, :"DISCHARGE"
    m.at 72, :"WILDCHARGE"
    m.at 80, :"AGILITY"
    m.at 88, :"PLASMAFISTS"
    m.at 96, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"ASSURANCE", :"AURASPHERE", :"BLAZEKICK", :"BOUNCE", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"CALMMIND", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"ECHOEDVOICE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LASERFOCUS", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYDAY", :"PLAYROUGH", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"REVERSAL", :"RISINGVOLTAGE", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUPERPOWER", :"SWIFT", :"TAUNT", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZERAORA" do |m|
  m.back_sprite -9, 54
  m.front_sprite 6, 19
end

# Form 1 - Mega Zeraora
GameData::Species.define :"ZERAORA_1" do |pkmn|
  pkmn.species :"ZERAORA"
  pkmn.form 1
  pkmn.name "Zeraora"
  pkmn.form_name "Mega Zeraora"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 88, attack: 157, defense: 75,
                  sp_atk: 153, sp_def: 147, speed: 80
  pkmn.abilities :"VOLTABSORB"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.5
  pkmn.weight 44.5
  pkmn.category "Thunderclap"
  pkmn.pokedex_entry "It stores up 10 lightning strikes' worth of electricity. When it stops limiting itself, it's in the strongest class of electric Pokémon."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POWERUPPUNCH"
    m.at 1, :"FAKEOUT"
    m.at 1, :"SCRATCH"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"SNARL"
    m.at 1, :"SPARK"
    m.at 8, :"FURYSWIPES"
    m.at 16, :"QUICKGUARD"
    m.at 24, :"SLASH"
    m.at 32, :"VOLTSWITCH"
    m.at 40, :"CHARGE"
    m.at 48, :"THUNDERPUNCH"
    m.at 56, :"HONECLAWS"
    m.at 64, :"DISCHARGE"
    m.at 72, :"WILDCHARGE"
    m.at 80, :"AGILITY"
    m.at 88, :"PLASMAFISTS"
    m.at 96, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"ASSURANCE", :"AURASPHERE", :"BLAZEKICK", :"BOUNCE", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"CALMMIND", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"ECHOEDVOICE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LASERFOCUS", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYDAY", :"PLAYROUGH", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"REVERSAL", :"RISINGVOLTAGE", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUPERPOWER", :"SWIFT", :"TAUNT", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZERAORA_1" do |m|
  m.back_sprite -9, 54
  m.front_sprite 6, 19
end