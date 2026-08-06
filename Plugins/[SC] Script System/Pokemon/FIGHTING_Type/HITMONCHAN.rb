#=============================================================================
# Hitmonchan - FIGHTING Type
#=============================================================================

GameData::Species.define :"HITMONCHAN" do |pkmn|
  pkmn.name "Hitmonchan"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 50, attack: 105, defense: 79,
                  sp_atk: 76, sp_def: 35, speed: 110
  pkmn.abilities :"KEENEYE", :"IRONFIST"
  pkmn.hidden_abilities :"INNERFOCUS"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 159
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.4
  pkmn.weight 50.2
  pkmn.category "Punching"
  pkmn.pokedex_entry "A Hitmonchan is said to possess the spirit of a boxer who aimed to become the world champion. Having an indomitable spirit means that it will never give up."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"REVENGE"
    m.at 1, :"COMETPUNCH"
    m.at 6, :"AGILITY"
    m.at 11, :"PURSUIT"
    m.at 16, :"MACHPUNCH"
    m.at 16, :"BULLETPUNCH"
    m.at 21, :"FEINT"
    m.at 26, :"VACUUMWAVE"
    m.at 31, :"QUICKGUARD"
    m.at 36, :"THUNDERPUNCH"
    m.at 36, :"ICEPUNCH"
    m.at 36, :"FIREPUNCH"
    m.at 41, :"SKYUPPERCUT"
    m.at 46, :"MEGAPUNCH"
    m.at 51, :"DETECT"
    m.at 56, :"FOCUSPUNCH"
    m.at 61, :"COUNTER"
    m.at 66, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"HITMONCHAN" do |m|
  m.back_sprite 4, 0
  m.front_sprite -1, 11
  m.shadow_sprite 0, 0, 2
end