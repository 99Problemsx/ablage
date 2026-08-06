#=============================================================================
# Illumise - BUG Type
#=============================================================================

GameData::Species.define :"ILLUMISE" do |pkmn|
  pkmn.name "Illumise"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 65, attack: 47, defense: 55,
                  sp_atk: 85, sp_def: 73, speed: 75
  pkmn.abilities :"OBLIVIOUS", :"TINTEDLENS"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 140
  pkmn.catch_rate 150
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.6
  pkmn.weight 17.7
  pkmn.category "Firefly"
  pkmn.pokedex_entry "A nocturnal Pokémon that becomes active upon nightfall. It leads a Volbeat swarm to draw patterns in the night sky. Over 200 different patterns have been seen."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Bug", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 5, :"SWEETSCENT"
    m.at 9, :"CHARM"
    m.at 13, :"MOONLIGHT"
    m.at 17, :"QUICKATTACK"
    m.at 21, :"WISH"
    m.at 25, :"ENCORE"
    m.at 29, :"FLATTER"
    m.at 33, :"HELPINGHAND"
    m.at 37, :"ZENHEADBUTT"
    m.at 41, :"BUGBUZZ"
    m.at 45, :"COVET"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"LIGHTSCREEN", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"WATERPULSE", :"ZENHEADBUTT"
  pkmn.egg_moves :"BATONPASS", :"BUGBUZZ", :"CAPTIVATE", :"CONFUSERAY", :"ENCORE", :"FAKETEARS", :"GROWTH", :"SILVERWIND"
end

GameData::SpeciesMetrics.define :"ILLUMISE" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 2
  m.shadow_sprite 0, 0, 1
end