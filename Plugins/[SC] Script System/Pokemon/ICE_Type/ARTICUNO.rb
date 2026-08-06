#=============================================================================
# Articuno - ICE Type
#=============================================================================

GameData::Species.define :"ARTICUNO" do |pkmn|
  pkmn.name "Articuno"
  pkmn.types :"ICE", :"FLYING"
  pkmn.base_stats hp: 90, attack: 85, defense: 100,
                  sp_atk: 85, sp_def: 95, speed: 125
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"SNOWCLOAK"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.7
  pkmn.weight 55.4
  pkmn.category "Freeze"
  pkmn.pokedex_entry "Articuno is a legendary bird Pokémon that can control ice. The flapping of its wings chills the air. As a result, it is said that when this Pokémon flies, snow will fall."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"POWDERSNOW"
    m.at 8, :"MIST"
    m.at 15, :"ICESHARD"
    m.at 22, :"MINDREADER"
    m.at 29, :"ANCIENTPOWER"
    m.at 36, :"AGILITY"
    m.at 43, :"ICEBEAM"
    m.at 50, :"REFLECT"
    m.at 57, :"ROOST"
    m.at 64, :"TAILWIND"
    m.at 71, :"BLIZZARD"
    m.at 78, :"SHEERCOLD"
    m.at 85, :"HAIL"
    m.at 92, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"AVALANCHE", :"BLIZZARD", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"TWISTER", :"UTURN", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"ARTICUNO" do |m|
  m.back_sprite 8, 0
  m.front_sprite 6, 8
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"ARTICUNO_1" do |pkmn|
  pkmn.species :"ARTICUNO"
  pkmn.form 1
  pkmn.name "Articuno"
  pkmn.types :"ICE", :"FLYING"
  pkmn.base_stats hp: 90, attack: 85, defense: 100,
                  sp_atk: 85, sp_def: 95, speed: 125
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"SNOWCLOAK"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.7
  pkmn.weight 55.4
  pkmn.category "Freeze"
  pkmn.pokedex_entry "Articuno is a legendary bird Pokémon that can control ice. The flapping of its wings chills the air. As a result, it is said that when this Pokémon flies, snow will fall."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"POWDERSNOW"
    m.at 8, :"MIST"
    m.at 15, :"ICESHARD"
    m.at 22, :"MINDREADER"
    m.at 29, :"ANCIENTPOWER"
    m.at 36, :"AGILITY"
    m.at 43, :"ICEBEAM"
    m.at 50, :"REFLECT"
    m.at 57, :"ROOST"
    m.at 64, :"TAILWIND"
    m.at 71, :"BLIZZARD"
    m.at 78, :"SHEERCOLD"
    m.at 85, :"HAIL"
    m.at 92, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"AVALANCHE", :"BLIZZARD", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"TWISTER", :"UTURN", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"ARTICUNO_1" do |m|
  m.back_sprite 8, 0
  m.front_sprite 6, 8
  m.shadow_sprite 0, 0, 2
end