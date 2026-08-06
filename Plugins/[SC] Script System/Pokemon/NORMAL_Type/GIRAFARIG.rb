#=============================================================================
# Girafarig - NORMAL Type
#=============================================================================

GameData::Species.define :"GIRAFARIG" do |pkmn|
  pkmn.name "Girafarig"
  pkmn.types :"NORMAL", :"PSYCHIC"
  pkmn.base_stats hp: 70, attack: 80, defense: 65,
                  sp_atk: 85, sp_def: 90, speed: 65
  pkmn.abilities :"INNERFOCUS", :"EARLYBIRD"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 159
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 41.5
  pkmn.category "Long Neck"
  pkmn.pokedex_entry "A Girafarig is an herbivore--it eats grass and tree shoots. While it is eating, its tail makes chewing and swallowing motions as if it were also eating."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"POWERSWAP"
    m.at 1, :"GUARDSWAP"
    m.at 1, :"ASTONISH"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"CONFUSION"
    m.at 5, :"ODORSLEUTH"
    m.at 10, :"STOMP"
    m.at 14, :"AGILITY"
    m.at 19, :"PSYBEAM"
    m.at 23, :"BATONPASS"
    m.at 28, :"ASSURANCE"
    m.at 32, :"DOUBLEHIT"
    m.at 37, :"PSYCHIC"
    m.at 41, :"ZENHEADBUTT"
    m.at 46, :"CRUNCH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERVOICE", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AMNESIA", :"BEATUP", :"DOUBLEKICK", :"FORESIGHT", :"FUTURESIGHT", :"MAGICCOAT", :"MEANLOOK", :"MIRRORCOAT", :"RAZORWIND", :"SECRETPOWER", :"SKILLSWAP", :"TAKEDOWN", :"WISH"
end

GameData::SpeciesMetrics.define :"GIRAFARIG" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 2
end