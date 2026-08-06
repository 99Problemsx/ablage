#=============================================================================
# Quagsire - WATER Type
#=============================================================================

GameData::Species.define :"QUAGSIRE" do |pkmn|
  pkmn.name "Quagsire"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 95, attack: 85, defense: 85,
                  sp_atk: 35, sp_def: 65, speed: 65
  pkmn.abilities :"DAMP", :"WATERABSORB"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 151
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 75.0
  pkmn.category "Water Fish"
  pkmn.pokedex_entry "A Quagsire hunts by leaving its mouth wide open in water and waiting for its prey to blunder in. Because it doesn't move, it does not get very hungry."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"TAILWHIP"
    m.at 1, :"MUDSPORT"
    m.at 5, :"MUDSPORT"
    m.at 9, :"MUDSHOT"
    m.at 15, :"SLAM"
    m.at 19, :"MUDBOMB"
    m.at 24, :"AMNESIA"
    m.at 31, :"YAWN"
    m.at 36, :"EARTHQUAKE"
    m.at 41, :"RAINDANCE"
    m.at 48, :"MIST"
    m.at 48, :"HAZE"
    m.at 53, :"MUDDYWATER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"QUAGSIRE" do |m|
  m.back_sprite 6, 0
  m.front_sprite 2, 16
  m.shadow_sprite 0, 0, 2
end