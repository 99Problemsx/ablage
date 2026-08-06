#=============================================================================
# Chimecho - PSYCHIC Type
#=============================================================================

GameData::Species.define :"CHIMECHO" do |pkmn|
  pkmn.name "Chimecho"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 65, attack: 50, defense: 70,
                  sp_atk: 65, sp_def: 95, speed: 80
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Blue"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 149
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.6
  pkmn.weight 1.0
  pkmn.category "Wind Chime"
  pkmn.pokedex_entry "They fly about very actively when the hot season arrives. They communicate among themselves using seven different and distinguishing cries."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 6, :"GROWL"
    m.at 9, :"ASTONISH"
    m.at 14, :"CONFUSION"
    m.at 17, :"UPROAR"
    m.at 22, :"TAKEDOWN"
    m.at 25, :"YAWN"
    m.at 30, :"PSYWAVE"
    m.at 33, :"DOUBLEEDGE"
    m.at 38, :"HEALBELL"
    m.at 41, :"SAFEGUARD"
    m.at 46, :"EXTRASENSORY"
    m.at 49, :"HEALPULSE"
    m.at 54, :"SYNCHRONOISE"
    m.at 57, :"HEALINGWISH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"DISABLE", :"FUTURESIGHT", :"HYPNOSIS", :"SKILLSWAP", :"STOREDPOWER", :"WISH"
end

GameData::SpeciesMetrics.define :"CHIMECHO" do |m|
  m.back_sprite 9, 0
  m.front_sprite 1, 6
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Mega Chimecho
GameData::Species.define :"CHIMECHO_1" do |pkmn|
  pkmn.species :"CHIMECHO"
  pkmn.form 1
  pkmn.name "Chimecho"
  pkmn.form_name "Mega Chimecho"
  pkmn.types :"PSYCHIC", :"STEEL"
  pkmn.base_stats hp: 75, attack: 50, defense: 110,
                  sp_atk: 65, sp_def: 135, speed: 120
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Blue"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 149
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.2
  pkmn.weight 8.0
  pkmn.category "Wind Chime"
  pkmn.pokedex_entry "It vibrates its entire body to attack in all directions using sound waves. Any who hear the vibrations get so confused, they forget who they are."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 6, :"GROWL"
    m.at 9, :"ASTONISH"
    m.at 14, :"CONFUSION"
    m.at 17, :"UPROAR"
    m.at 22, :"TAKEDOWN"
    m.at 25, :"YAWN"
    m.at 30, :"PSYWAVE"
    m.at 33, :"DOUBLEEDGE"
    m.at 38, :"HEALBELL"
    m.at 41, :"SAFEGUARD"
    m.at 46, :"EXTRASENSORY"
    m.at 49, :"HEALPULSE"
    m.at 54, :"SYNCHRONOISE"
    m.at 57, :"HEALINGWISH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"DISABLE", :"FUTURESIGHT", :"HYPNOSIS", :"SKILLSWAP", :"STOREDPOWER", :"WISH"
end

GameData::SpeciesMetrics.define :"CHIMECHO_1" do |m|
  m.back_sprite 9, 0
  m.front_sprite 1, 6
  m.shadow_sprite 0, 0, 1
end