#=============================================================================
# Chatot - NORMAL Type
#=============================================================================

GameData::Species.define :"CHATOT" do |pkmn|
  pkmn.name "Chatot"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 76, attack: 65, defense: 45,
                  sp_atk: 91, sp_def: 92, speed: 42
  pkmn.abilities :"KEENEYE", :"TANGLEDFEET"
  pkmn.hidden_abilities :"BIGPECKS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 144
  pkmn.catch_rate 30
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 1.9
  pkmn.category "Music Note"
  pkmn.pokedex_entry "It can learn and speak human words. If they gather, they all learn the same saying."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 5, :"GROWL"
    m.at 9, :"MIRRORMOVE"
    m.at 13, :"SING"
    m.at 17, :"FURYATTACK"
    m.at 21, :"CHATTER"
    m.at 25, :"TAUNT"
    m.at 29, :"ROUND"
    m.at 33, :"MIMIC"
    m.at 37, :"ECHOEDVOICE"
    m.at 41, :"ROOST"
    m.at 45, :"UPROAR"
    m.at 49, :"SYNCHRONOISE"
    m.at 53, :"FEATHERDANCE"
    m.at 57, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"HYPERVOICE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLEPLAY", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"AGILITY", :"AIRCUTTER", :"DEFOG", :"ENCORE", :"NASTYPLOT", :"NIGHTSHADE", :"SLEEPTALK", :"STEELWING", :"SUPERSONIC"
end

GameData::SpeciesMetrics.define :"CHATOT" do |m|
  m.back_sprite -6, 0
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 1
end