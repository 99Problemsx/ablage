#=============================================================================
# Morgrem - DARK Type
#=============================================================================

GameData::Species.define :"MORGREM" do |pkmn|
  pkmn.name "Morgrem"
  pkmn.types :"DARK", :"FAIRY"
  pkmn.base_stats hp: 65, attack: 60, defense: 45,
                  sp_atk: 70, sp_def: 75, speed: 55
  pkmn.abilities :"PRANKSTER", :"FRISK"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 130
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 12.5
  pkmn.category "Devious"
  pkmn.pokedex_entry "With sly cunning, it tries to lure people into the woods. Some believe it to have the power to make crops grow."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Fairy", :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"FALSESURRENDER"
    m.at 1, :"FAKEOUT"
    m.at 1, :"CONFIDE"
    m.at 1, :"BITE"
    m.at 1, :"FLATTER"
    m.at 12, :"FAKETEARS"
    m.at 16, :"ASSURANCE"
    m.at 20, :"SWAGGER"
    m.at 24, :"SUCKERPUNCH"
    m.at 28, :"TORMENT"
    m.at 35, :"DARKPULSE"
    m.at 40, :"NASTYPLOT"
    m.at 46, :"PLAYROUGH"
    m.at 52, :"FOULPLAY"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BURNINGJEALOUSY", :"CAPTIVATE", :"CONFIDE", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FAKETEARS", :"FOULPLAY", :"FRUSTRATION", :"HIDDENPOWER", :"LASHOUT", :"LEECHLIFE", :"LIGHTSCREEN", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MORGREM" do |m|
  m.back_sprite 5, 52
  m.front_sprite 1, 21
end