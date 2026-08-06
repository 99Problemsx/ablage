#=============================================================================
# Spoink - PSYCHIC Type
#=============================================================================

GameData::Species.define :"SPOINK" do |pkmn|
  pkmn.name "Spoink"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 25, defense: 35,
                  sp_atk: 60, sp_def: 70, speed: 80
  pkmn.abilities :"THICKFAT", :"OWNTEMPO"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 66
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 30.6
  pkmn.category "Bounce"
  pkmn.pokedex_entry "A Pokémon that manipulates psychic power at will. It doesn't stop bouncing even when it is asleep. It loves eating mushrooms that grow underground."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 7, :"PSYWAVE"
    m.at 10, :"ODORSLEUTH"
    m.at 14, :"PSYBEAM"
    m.at 15, :"PSYCHUP"
    m.at 18, :"CONFUSERAY"
    m.at 21, :"MAGICCOAT"
    m.at 26, :"ZENHEADBUTT"
    m.at 29, :"REST"
    m.at 29, :"SNORE"
    m.at 33, :"POWERGEM"
    m.at 38, :"PSYSHOCK"
    m.at 40, :"PAYBACK"
    m.at 44, :"PSYCHIC"
    m.at 50, :"BOUNCE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"ICYWIND", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"AMNESIA", :"ENDURE", :"EXTRASENSORY", :"FUTURESIGHT", :"LUCKYCHANT", :"MIRRORCOAT", :"SKILLSWAP", :"TRICK", :"WHIRLWIND", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SPOINK" do |m|
  m.back_sprite 1, 0
  m.front_sprite 3, 7
  m.shadow_sprite 0, 0, 1
end