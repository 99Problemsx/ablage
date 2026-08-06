#=============================================================================
# Nickit - DARK Type
#=============================================================================

GameData::Species.define :"NICKIT" do |pkmn|
  pkmn.name "Nickit"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 40, attack: 28, defense: 28,
                  sp_atk: 50, sp_def: 47, speed: 52
  pkmn.abilities :"RUNAWAY", :"UNBURDEN"
  pkmn.hidden_abilities :"STAKEOUT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 49
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.6
  pkmn.weight 8.9
  pkmn.category "Fox"
  pkmn.pokedex_entry "Aided by the soft pads on its feet, it silently raids the food stores of other Pokémon. It survives off its ill-gotten gains."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"TAILWHIP"
    m.at 4, :"BEATUP"
    m.at 8, :"HONECLAWS"
    m.at 12, :"SNARL"
    m.at 16, :"ASSURANCE"
    m.at 20, :"NASTYPLOT"
    m.at 24, :"SUCKERPUNCH"
    m.at 28, :"NIGHTSLASH"
    m.at 32, :"TAILSLAP"
    m.at 36, :"FOULPLAY"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BEATUP", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FAKETEARS", :"FOULPLAY", :"FRUSTRATION", :"HIDDENPOWER", :"LASHOUT", :"MIMIC", :"MUDSHOT", :"NASTYPLOT", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAILSLAP", :"TAUNT", :"THIEF", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"HOWL", :"KNOCKOFF", :"QUICKGUARD", :"TORMENT"
end

GameData::SpeciesMetrics.define :"NICKIT" do |m|
  m.back_sprite 0, 17
  m.front_sprite 8, 25
end