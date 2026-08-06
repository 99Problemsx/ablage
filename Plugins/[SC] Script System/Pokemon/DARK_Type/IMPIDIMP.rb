#=============================================================================
# Impidimp - DARK Type
#=============================================================================

GameData::Species.define :"IMPIDIMP" do |pkmn|
  pkmn.name "Impidimp"
  pkmn.types :"DARK", :"FAIRY"
  pkmn.base_stats hp: 45, attack: 45, defense: 30,
                  sp_atk: 50, sp_def: 55, speed: 40
  pkmn.abilities :"PRANKSTER", :"FRISK"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 53
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 5.5
  pkmn.category "Wily"
  pkmn.pokedex_entry "Through its nose, it sucks in the emanations produced by people and Pokémon when they feel annoyed. It thrives off this negative energy."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Fairy", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"FAKEOUT"
    m.at 1, :"CONFIDE"
    m.at 4, :"BITE"
    m.at 8, :"FLATTER"
    m.at 12, :"FAKETEARS"
    m.at 16, :"ASSURANCE"
    m.at 20, :"SWAGGER"
    m.at 24, :"SUCKERPUNCH"
    m.at 28, :"TORMENT"
    m.at 33, :"DARKPULSE"
    m.at 36, :"NASTYPLOT"
    m.at 40, :"PLAYROUGH"
    m.at 44, :"FOULPLAY"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BURNINGJEALOUSY", :"CAPTIVATE", :"CONFIDE", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FAKETEARS", :"FOULPLAY", :"FRUSTRATION", :"HIDDENPOWER", :"LASHOUT", :"LEECHLIFE", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"TERABLAST"
  pkmn.egg_moves :"PARTINGSHOT"
end

GameData::SpeciesMetrics.define :"IMPIDIMP" do |m|
  m.back_sprite 0, 16
  m.front_sprite 1, 5
end