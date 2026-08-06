#=============================================================================
# Rockruff - ROCK Type
#=============================================================================

GameData::Species.define :"ROCKRUFF" do |pkmn|
  pkmn.name "Rockruff"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 45, attack: 65, defense: 40,
                  sp_atk: 60, sp_def: 30, speed: 40
  pkmn.abilities :"KEENEYE", :"VITALSPIRIT"
  pkmn.hidden_abilities :"STEADFAST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 56
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.5
  pkmn.weight 9.2
  pkmn.category "Puppy"
  pkmn.pokedex_entry "This Pokémon has lived with people since times long ago. It can sense when its Trainer is in the dumps and will stick close by its Trainer's side."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 4, :"SANDATTACK"
    m.at 8, :"DOUBLETEAM"
    m.at 12, :"ROCKTHROW"
    m.at 16, :"HOWL"
    m.at 20, :"BITE"
    m.at 24, :"ROCKTOMB"
    m.at 28, :"ROAR"
    m.at 32, :"ROCKSLIDE"
    m.at 36, :"CRUNCH"
    m.at 40, :"SCARYFACE"
    m.at 44, :"STEALTHROCK"
    m.at 48, :"STONEEDGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CRUNCH", :"DOUBLETEAM", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"FRUSTRATION", :"HIDDENPOWER", :"HYPERVOICE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THUNDERFANG", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"ENDEAVOR", :"LASTRESORT", :"THRASH"
end

GameData::SpeciesMetrics.define :"ROCKRUFF" do |m|
  m.back_sprite 3, 42
  m.front_sprite 1, 26
end