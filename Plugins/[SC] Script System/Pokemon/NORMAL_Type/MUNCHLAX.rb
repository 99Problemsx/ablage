#=============================================================================
# Munchlax - NORMAL Type
#=============================================================================

GameData::Species.define :"MUNCHLAX" do |pkmn|
  pkmn.name "Munchlax"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 135, attack: 85, defense: 40,
                  sp_atk: 5, sp_def: 40, speed: 85
  pkmn.abilities :"PICKUP", :"THICKFAT"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 78
  pkmn.catch_rate 50
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 0.6
  pkmn.weight 105.0
  pkmn.category "Big Eater"
  pkmn.pokedex_entry "It wolfs down its weight in food once a day, swallowing food whole with almost no chewing."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"METRONOME"
    m.at 1, :"ODORSLEUTH"
    m.at 1, :"TACKLE"
    m.at 4, :"DEFENSECURL"
    m.at 9, :"AMNESIA"
    m.at 12, :"LICK"
    m.at 17, :"RECYCLE"
    m.at 20, :"SCREECH"
    m.at 25, :"CHIPAWAY"
    m.at 28, :"STOCKPILE"
    m.at 33, :"SWALLOW"
    m.at 36, :"BODYSLAM"
    m.at 41, :"FLING"
    m.at 44, :"ROLLOUT"
    m.at 49, :"NATURALGIFT"
    m.at 52, :"SNATCH"
    m.at 57, :"LASTRESORT"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COVET", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"RECYCLE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AFTERYOU", :"CHARM", :"COUNTER", :"CURSE", :"DOUBLEEDGE", :"LICK", :"NATURALGIFT", :"PURSUIT", :"SELFDESTRUCT", :"WHIRLWIND", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MUNCHLAX" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 2
end