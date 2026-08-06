#=============================================================================
# Beheeyem - PSYCHIC Type
#=============================================================================

GameData::Species.define :"BEHEEYEM" do |pkmn|
  pkmn.name "Beheeyem"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 75, attack: 75, defense: 75,
                  sp_atk: 40, sp_def: 125, speed: 95
  pkmn.abilities :"TELEPATHY", :"SYNCHRONIZE"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 170
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 34.5
  pkmn.category "Cerebral"
  pkmn.pokedex_entry "It uses psychic power to control an opponent's brain and tamper with its memories."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 1, :"GROWL"
    m.at 1, :"HEALBLOCK"
    m.at 1, :"MIRACLEEYE"
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
    m.at 45, :"CALMMIND"
    m.at 50, :"RECOVER"
    m.at 56, :"GUARDSPLIT"
    m.at 58, :"POWERSPLIT"
    m.at 63, :"SYNCHRONOISE"
    m.at 68, :"WONDERROOM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BEHEEYEM" do |m|
  m.back_sprite -2, 0
  m.front_sprite 0, 17
  m.shadow_sprite 0, 0, 1
end