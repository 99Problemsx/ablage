#=============================================================================
# Skarmory - STEEL Type
#=============================================================================

GameData::Species.define :"SKARMORY" do |pkmn|
  pkmn.name "Skarmory"
  pkmn.types :"STEEL", :"FLYING"
  pkmn.base_stats hp: 65, attack: 80, defense: 140,
                  sp_atk: 70, sp_def: 40, speed: 70
  pkmn.abilities :"KEENEYE", :"STURDY"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Winged"
  pkmn.base_exp 163
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.7
  pkmn.weight 50.5
  pkmn.category "Armor Bird"
  pkmn.pokedex_entry "A Pokémon that has a body and wings of steel. People in the past used feathers fallen from Skarmory to make swords and knives."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"PECK"
    m.at 6, :"SANDATTACK"
    m.at 9, :"SWIFT"
    m.at 12, :"AGILITY"
    m.at 17, :"FURYATTACK"
    m.at 20, :"FEINT"
    m.at 23, :"AIRCUTTER"
    m.at 28, :"SPIKES"
    m.at 31, :"METALSOUND"
    m.at 34, :"STEELWING"
    m.at 39, :"AUTOTOMIZE"
    m.at 42, :"AIRSLASH"
    m.at 45, :"SLASH"
    m.at 50, :"NIGHTSLASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"HIDDENPOWER", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PLUCK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TWISTER", :"XSCISSOR"
  pkmn.egg_moves :"ASSURANCE", :"BRAVEBIRD", :"CURSE", :"DRILLPECK", :"ENDURE", :"GUARDSWAP", :"PURSUIT", :"SKYATTACK", :"STEALTHROCK", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"SKARMORY" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Skarmory
GameData::Species.define :"SKARMORY_1" do |pkmn|
  pkmn.species :"SKARMORY"
  pkmn.form 1
  pkmn.name "Skarmory"
  pkmn.form_name "Mega Skarmory"
  pkmn.types :"STEEL", :"FLYING"
  pkmn.base_stats hp: 65, attack: 140, defense: 110,
                  sp_atk: 40, sp_def: 100, speed: 110
  pkmn.abilities :"KEENEYE", :"STURDY"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Winged"
  pkmn.base_exp 163
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.7
  pkmn.weight 40.4
  pkmn.category "Armor Bird"
  pkmn.pokedex_entry "It flies faster than the speed of sound. After whipping up shock waves to send enemies flying, it finishes them off with its talons."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"PECK"
    m.at 6, :"SANDATTACK"
    m.at 9, :"SWIFT"
    m.at 12, :"AGILITY"
    m.at 17, :"FURYATTACK"
    m.at 20, :"FEINT"
    m.at 23, :"AIRCUTTER"
    m.at 28, :"SPIKES"
    m.at 31, :"METALSOUND"
    m.at 34, :"STEELWING"
    m.at 39, :"AUTOTOMIZE"
    m.at 42, :"AIRSLASH"
    m.at 45, :"SLASH"
    m.at 50, :"NIGHTSLASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"HIDDENPOWER", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PLUCK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TWISTER", :"XSCISSOR"
  pkmn.egg_moves :"ASSURANCE", :"BRAVEBIRD", :"CURSE", :"DRILLPECK", :"ENDURE", :"GUARDSWAP", :"PURSUIT", :"SKYATTACK", :"STEALTHROCK", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"SKARMORY_1" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 3
end