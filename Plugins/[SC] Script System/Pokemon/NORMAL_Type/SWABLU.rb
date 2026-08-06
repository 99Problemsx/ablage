#=============================================================================
# Swablu - NORMAL Type
#=============================================================================

GameData::Species.define :"SWABLU" do |pkmn|
  pkmn.name "Swablu"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 45, attack: 40, defense: 60,
                  sp_atk: 50, sp_def: 40, speed: 75
  pkmn.abilities :"NATURALCURE"
  pkmn.hidden_abilities :"CLOUDNINE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 62
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 1.2
  pkmn.category "Cotton Bird"
  pkmn.pokedex_entry "A Pokémon that has wings like cottony clouds. After enduring winter, in which little food is available, Swablu flocks move closer to towns in the spring."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Flying", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 4, :"ASTONISH"
    m.at 8, :"SING"
    m.at 10, :"FURYATTACK"
    m.at 13, :"SAFEGUARD"
    m.at 15, :"MIST"
    m.at 18, :"ROUND"
    m.at 21, :"NATURALGIFT"
    m.at 25, :"TAKEDOWN"
    m.at 29, :"REFRESH"
    m.at 34, :"MIRRORMOVE"
    m.at 39, :"COTTONGUARD"
    m.at 42, :"DRAGONPULSE"
    m.at 48, :"PERISHSONG"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEALBELL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PLUCK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR"
  pkmn.egg_moves :"AGILITY", :"DRAGONRUSH", :"FEATHERDANCE", :"HAZE", :"HYPERVOICE", :"POWERSWAP", :"PURSUIT", :"RAGE", :"ROOST", :"STEELWING"
end

GameData::SpeciesMetrics.define :"SWABLU" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 4
  m.shadow_sprite 0, 0, 1
end