#=============================================================================
# Noctowl - NORMAL Type
#=============================================================================

GameData::Species.define :"NOCTOWL" do |pkmn|
  pkmn.name "Noctowl"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 100, attack: 50, defense: 50,
                  sp_atk: 70, sp_def: 76, speed: 96
  pkmn.abilities :"INSOMNIA", :"KEENEYE"
  pkmn.hidden_abilities :"TINTEDLENS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 155
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.6
  pkmn.weight 40.8
  pkmn.category "Owl"
  pkmn.pokedex_entry "It unfailingly catches prey in darkness. Noctowl owe their success to superior vision that allows them to see in minimal light, and to their supple and silent wings."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"SKYATTACK"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"FORESIGHT"
    m.at 1, :"HYPNOSIS"
    m.at 5, :"HYPNOSIS"
    m.at 9, :"PECK"
    m.at 13, :"UPROAR"
    m.at 17, :"REFLECT"
    m.at 22, :"CONFUSION"
    m.at 27, :"ECHOEDVOICE"
    m.at 32, :"TAKEDOWN"
    m.at 37, :"AIRSLASH"
    m.at 42, :"ZENHEADBUTT"
    m.at 47, :"SYNCHRONOISE"
    m.at 52, :"EXTRASENSORY"
    m.at 57, :"PSYCHOSHIFT"
    m.at 62, :"ROOST"
    m.at 67, :"DREAMEATER"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SILVERWIND", :"SKYATTACK", :"SLEEPTALK", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"NOCTOWL" do |m|
  m.back_sprite -2, 0
  m.front_sprite -1, 10
  m.shadow_sprite 0, 0, 2
end