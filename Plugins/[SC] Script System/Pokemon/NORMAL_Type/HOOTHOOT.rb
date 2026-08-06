#=============================================================================
# Hoothoot - NORMAL Type
#=============================================================================

GameData::Species.define :"HOOTHOOT" do |pkmn|
  pkmn.name "Hoothoot"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 60, attack: 30, defense: 30,
                  sp_atk: 50, sp_def: 36, speed: 56
  pkmn.abilities :"INSOMNIA", :"KEENEYE"
  pkmn.hidden_abilities :"TINTEDLENS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 52
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.7
  pkmn.weight 21.2
  pkmn.category "Owl"
  pkmn.pokedex_entry "It has an internal organ that senses the earth's rotation. Using this special organ, a Hoothoot begins hooting at precisely the same time every day."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"FORESIGHT"
    m.at 5, :"HYPNOSIS"
    m.at 9, :"PECK"
    m.at 13, :"UPROAR"
    m.at 17, :"REFLECT"
    m.at 21, :"CONFUSION"
    m.at 25, :"ECHOEDVOICE"
    m.at 29, :"TAKEDOWN"
    m.at 33, :"AIRSLASH"
    m.at 37, :"ZENHEADBUTT"
    m.at 41, :"SYNCHRONOISE"
    m.at 45, :"EXTRASENSORY"
    m.at 49, :"PSYCHOSHIFT"
    m.at 53, :"ROOST"
    m.at 57, :"DREAMEATER"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"HYPERVOICE", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SILVERWIND", :"SKYATTACK", :"SLEEPTALK", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AGILITY", :"DEFOG", :"FEATHERDANCE", :"FEINTATTACK", :"MIRRORMOVE", :"NIGHTSHADE", :"SKYATTACK", :"SUPERSONIC", :"WHIRLWIND", :"WINGATTACK"
end

GameData::SpeciesMetrics.define :"HOOTHOOT" do |m|
  m.back_sprite 5, 0
  m.front_sprite 0, 19
  m.shadow_sprite 0, 0, 2
end