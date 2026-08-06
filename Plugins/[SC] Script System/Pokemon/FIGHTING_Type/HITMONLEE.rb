#=============================================================================
# Hitmonlee - FIGHTING Type
#=============================================================================

GameData::Species.define :"HITMONLEE" do |pkmn|
  pkmn.name "Hitmonlee"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 50, attack: 120, defense: 53,
                  sp_atk: 87, sp_def: 35, speed: 110
  pkmn.abilities :"LIMBER", :"RECKLESS"
  pkmn.hidden_abilities :"UNBURDEN"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 159
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.5
  pkmn.weight 49.8
  pkmn.category "Kicking"
  pkmn.pokedex_entry "Its legs freely stretch and contract. Using these springlike limbs, it bowls over foes with devastating kicks. After battle, it rubs down its tired legs."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"REVENGE"
    m.at 1, :"DOUBLEKICK"
    m.at 5, :"MEDITATE"
    m.at 9, :"ROLLINGKICK"
    m.at 13, :"JUMPKICK"
    m.at 17, :"BRICKBREAK"
    m.at 21, :"FOCUSENERGY"
    m.at 25, :"FEINT"
    m.at 29, :"HIGHJUMPKICK"
    m.at 33, :"MINDREADER"
    m.at 37, :"FORESIGHT"
    m.at 41, :"WIDEGUARD"
    m.at 45, :"BLAZEKICK"
    m.at 49, :"ENDURE"
    m.at 53, :"MEGAKICK"
    m.at 57, :"CLOSECOMBAT"
    m.at 61, :"REVERSAL"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"THIEF", :"TOXIC", :"VACUUMWAVE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"HITMONLEE" do |m|
  m.back_sprite 8, 0
  m.front_sprite 2, 14
  m.shadow_sprite 0, 0, 2
end