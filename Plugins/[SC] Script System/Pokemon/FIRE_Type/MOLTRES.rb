#=============================================================================
# Moltres - FIRE Type
#=============================================================================

GameData::Species.define :"MOLTRES" do |pkmn|
  pkmn.name "Moltres"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 90, attack: 100, defense: 90,
                  sp_atk: 90, sp_def: 125, speed: 85
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 2.0
  pkmn.weight 60.0
  pkmn.category "Flame"
  pkmn.pokedex_entry "Moltres is a legendary bird Pokémon that can control fire. If injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WINGATTACK"
    m.at 1, :"EMBER"
    m.at 8, :"FIRESPIN"
    m.at 15, :"AGILITY"
    m.at 22, :"ENDURE"
    m.at 29, :"ANCIENTPOWER"
    m.at 36, :"FLAMETHROWER"
    m.at 43, :"SAFEGUARD"
    m.at 50, :"AIRSLASH"
    m.at 57, :"ROOST"
    m.at 64, :"HEATWAVE"
    m.at 71, :"SOLARBEAM"
    m.at 78, :"SKYATTACK"
    m.at 85, :"SUNNYDAY"
    m.at 92, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OVERHEAT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"TWISTER", :"UTURN", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"MOLTRES" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 5
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"MOLTRES_1" do |pkmn|
  pkmn.species :"MOLTRES"
  pkmn.form 1
  pkmn.name "Moltres"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 90, attack: 100, defense: 90,
                  sp_atk: 90, sp_def: 125, speed: 85
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 2.0
  pkmn.weight 60.0
  pkmn.category "Flame"
  pkmn.pokedex_entry "Moltres is a legendary bird Pokémon that can control fire. If injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WINGATTACK"
    m.at 1, :"EMBER"
    m.at 8, :"FIRESPIN"
    m.at 15, :"AGILITY"
    m.at 22, :"ENDURE"
    m.at 29, :"ANCIENTPOWER"
    m.at 36, :"FLAMETHROWER"
    m.at 43, :"SAFEGUARD"
    m.at 50, :"AIRSLASH"
    m.at 57, :"ROOST"
    m.at 64, :"HEATWAVE"
    m.at 71, :"SOLARBEAM"
    m.at 78, :"SKYATTACK"
    m.at 85, :"SUNNYDAY"
    m.at 92, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OVERHEAT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"TWISTER", :"UTURN", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"MOLTRES_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 5
  m.shadow_sprite 0, 0, 2
end