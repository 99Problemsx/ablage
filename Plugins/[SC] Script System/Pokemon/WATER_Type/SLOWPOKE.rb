#=============================================================================
# Slowpoke - WATER Type
#=============================================================================

GameData::Species.define :"SLOWPOKE" do |pkmn|
  pkmn.name "Slowpoke"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 90, attack: 65, defense: 65,
                  sp_atk: 15, sp_def: 40, speed: 40
  pkmn.abilities :"OBLIVIOUS", :"OWNTEMPO"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 63
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 36.0
  pkmn.category "Dopey"
  pkmn.pokedex_entry "It catches prey by dipping its tail in water at the side of a river. But it often forgets what it is doing and spends whole days just loafing at the water's edge."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"CURSE"
    m.at 1, :"YAWN"
    m.at 1, :"TACKLE"
    m.at 5, :"GROWL"
    m.at 9, :"WATERGUN"
    m.at 14, :"CONFUSION"
    m.at 19, :"DISABLE"
    m.at 23, :"HEADBUTT"
    m.at 28, :"WATERPULSE"
    m.at 32, :"ZENHEADBUTT"
    m.at 36, :"SLACKOFF"
    m.at 41, :"AMNESIA"
    m.at 45, :"PSYCHIC"
    m.at 49, :"RAINDANCE"
    m.at 54, :"PSYCHUP"
    m.at 58, :"HEALPULSE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"BELLYDRUM", :"BLOCK", :"FUTURESIGHT", :"MEFIRST", :"MUDSPORT", :"SLEEPTALK", :"SNORE", :"STOMP", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SLOWPOKE" do |m|
  m.back_sprite -4, 0
  m.front_sprite 3, 29
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"SLOWPOKE_1" do |pkmn|
  pkmn.species :"SLOWPOKE"
  pkmn.form 1
  pkmn.name "Slowpoke"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 90, attack: 65, defense: 65,
                  sp_atk: 15, sp_def: 40, speed: 40
  pkmn.abilities :"OBLIVIOUS", :"OWNTEMPO"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 63
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 36.0
  pkmn.category "Dopey"
  pkmn.pokedex_entry "It catches prey by dipping its tail in water at the side of a river. But it often forgets what it is doing and spends whole days just loafing at the water's edge."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"CURSE"
    m.at 1, :"YAWN"
    m.at 1, :"TACKLE"
    m.at 5, :"GROWL"
    m.at 9, :"WATERGUN"
    m.at 14, :"CONFUSION"
    m.at 19, :"DISABLE"
    m.at 23, :"HEADBUTT"
    m.at 28, :"WATERPULSE"
    m.at 32, :"ZENHEADBUTT"
    m.at 36, :"SLACKOFF"
    m.at 41, :"AMNESIA"
    m.at 45, :"PSYCHIC"
    m.at 49, :"RAINDANCE"
    m.at 54, :"PSYCHUP"
    m.at 58, :"HEALPULSE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"BELLYDRUM", :"BLOCK", :"FUTURESIGHT", :"MEFIRST", :"MUDSPORT", :"SLEEPTALK", :"SNORE", :"STOMP", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SLOWPOKE_1" do |m|
  m.back_sprite -4, 0
  m.front_sprite 3, 29
  m.shadow_sprite 0, 0, 3
end