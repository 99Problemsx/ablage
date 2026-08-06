#=============================================================================
# Zapdos - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ZAPDOS" do |pkmn|
  pkmn.name "Zapdos"
  pkmn.types :"ELECTRIC", :"FLYING"
  pkmn.base_stats hp: 90, attack: 90, defense: 85,
                  sp_atk: 100, sp_def: 125, speed: 90
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.6
  pkmn.weight 52.6
  pkmn.category "Electric"
  pkmn.pokedex_entry "Zapdos is a legendary bird Pokémon that has the ability to control electricity. It usually lives in thunderclouds. It gains power if it is stricken by lightning bolts."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"THUNDERSHOCK"
    m.at 8, :"THUNDERWAVE"
    m.at 15, :"DETECT"
    m.at 22, :"PLUCK"
    m.at 29, :"ANCIENTPOWER"
    m.at 36, :"CHARGE"
    m.at 43, :"AGILITY"
    m.at 50, :"DISCHARGE"
    m.at 57, :"ROOST"
    m.at 64, :"LIGHTSCREEN"
    m.at 71, :"DRILLPECK"
    m.at 78, :"THUNDER"
    m.at 85, :"RAINDANCE"
    m.at 92, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"CHARGEBEAM", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"ZAPDOS" do |m|
  m.back_sprite 5, 0
  m.front_sprite 0, -6
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"ZAPDOS_1" do |pkmn|
  pkmn.species :"ZAPDOS"
  pkmn.form 1
  pkmn.name "Zapdos"
  pkmn.types :"ELECTRIC", :"FLYING"
  pkmn.base_stats hp: 90, attack: 90, defense: 85,
                  sp_atk: 100, sp_def: 125, speed: 90
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.6
  pkmn.weight 52.6
  pkmn.category "Electric"
  pkmn.pokedex_entry "Zapdos is a legendary bird Pokémon that has the ability to control electricity. It usually lives in thunderclouds. It gains power if it is stricken by lightning bolts."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"THUNDERSHOCK"
    m.at 8, :"THUNDERWAVE"
    m.at 15, :"DETECT"
    m.at 22, :"PLUCK"
    m.at 29, :"ANCIENTPOWER"
    m.at 36, :"CHARGE"
    m.at 43, :"AGILITY"
    m.at 50, :"DISCHARGE"
    m.at 57, :"ROOST"
    m.at 64, :"LIGHTSCREEN"
    m.at 71, :"DRILLPECK"
    m.at 78, :"THUNDER"
    m.at 85, :"RAINDANCE"
    m.at 92, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"CHARGEBEAM", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"ZAPDOS_1" do |m|
  m.back_sprite 5, 0
  m.front_sprite 0, -6
  m.shadow_sprite 0, 0, 3
end