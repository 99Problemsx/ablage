#=============================================================================
# Volbeat - BUG Type
#=============================================================================

GameData::Species.define :"VOLBEAT" do |pkmn|
  pkmn.name "Volbeat"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 65, attack: 73, defense: 55,
                  sp_atk: 85, sp_def: 47, speed: 75
  pkmn.abilities :"ILLUMINATE", :"SWARM"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 140
  pkmn.catch_rate 150
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.7
  pkmn.weight 17.7
  pkmn.category "Firefly"
  pkmn.pokedex_entry "With their taillights lit, Volbeat fly in a swarm, drawing geometric designs in the night sky. They move their nests if their pond water becomes dirty."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Bug", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"FLASH"
    m.at 1, :"TACKLE"
    m.at 5, :"DOUBLETEAM"
    m.at 9, :"CONFUSERAY"
    m.at 13, :"MOONLIGHT"
    m.at 17, :"QUICKATTACK"
    m.at 21, :"TAILGLOW"
    m.at 25, :"SIGNALBEAM"
    m.at 29, :"PROTECT"
    m.at 33, :"HELPINGHAND"
    m.at 37, :"ZENHEADBUTT"
    m.at 41, :"BUGBUZZ"
    m.at 45, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"LIGHTSCREEN", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UTURN", :"WATERPULSE", :"ZENHEADBUTT"
  pkmn.egg_moves :"BATONPASS", :"BUGBUZZ", :"DIZZYPUNCH", :"ENCORE", :"SEISMICTOSS", :"SILVERWIND", :"TRICK"
end

GameData::SpeciesMetrics.define :"VOLBEAT" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 0
  m.shadow_sprite 0, 0, 2
end