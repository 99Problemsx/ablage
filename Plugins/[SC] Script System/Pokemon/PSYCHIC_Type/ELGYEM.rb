#=============================================================================
# Elgyem - PSYCHIC Type
#=============================================================================

GameData::Species.define :"ELGYEM" do |pkmn|
  pkmn.name "Elgyem"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 55, attack: 55, defense: 55,
                  sp_atk: 30, sp_def: 85, speed: 55
  pkmn.abilities :"TELEPATHY", :"SYNCHRONIZE"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 67
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 9.0
  pkmn.category "Cerebral"
  pkmn.pokedex_entry "This Pokémon had never been seen until it appeared from far in the desert 50 years ago."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 4, :"GROWL"
    m.at 8, :"HEALBLOCK"
    m.at 11, :"MIRACLEEYE"
    m.at 15, :"PSYBEAM"
    m.at 18, :"HEADBUTT"
    m.at 22, :"HIDDENPOWER"
    m.at 25, :"IMPRISON"
    m.at 29, :"SIMPLEBEAM"
    m.at 32, :"ZENHEADBUTT"
    m.at 36, :"PSYCHUP"
    m.at 39, :"PSYCHIC"
    m.at 43, :"CALMMIND"
    m.at 46, :"RECOVER"
    m.at 50, :"GUARDSPLIT"
    m.at 50, :"POWERSPLIT"
    m.at 53, :"SYNCHRONOISE"
    m.at 56, :"WONDERROOM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRAVITY", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"ASTONISH", :"BARRIER", :"DISABLE", :"GUARDSWAP", :"NASTYPLOT", :"POWERSWAP", :"SKILLSWAP", :"TELEPORT"
end

GameData::SpeciesMetrics.define :"ELGYEM" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 27
  m.shadow_sprite 0, 0, 2
end