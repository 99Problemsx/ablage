#=============================================================================
# Audino - NORMAL Type
#=============================================================================

GameData::Species.define :"AUDINO" do |pkmn|
  pkmn.name "Audino"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 103, attack: 60, defense: 86,
                  sp_atk: 50, sp_def: 60, speed: 86
  pkmn.abilities :"HEALER", :"REGENERATOR"
  pkmn.hidden_abilities :"KLUTZ"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 390
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 31.0
  pkmn.category "Hearing"
  pkmn.pokedex_entry "Its auditory sense is astounding. It has a radar-like ability to understand its surrounding through slight sounds."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"HELPINGHAND"
    m.at 5, :"REFRESH"
    m.at 10, :"DOUBLESLAP"
    m.at 15, :"ATTRACT"
    m.at 20, :"SECRETPOWER"
    m.at 25, :"ENTRAINMENT"
    m.at 30, :"TAKEDOWN"
    m.at 35, :"HEALPULSE"
    m.at 40, :"AFTERYOU"
    m.at 45, :"SIMPLEBEAM"
    m.at 50, :"DOUBLEEDGE"
    m.at 55, :"LASTRESORT"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"LOWKICK", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"UPROAR", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AMNESIA", :"BESTOW", :"ENCORE", :"HEALBELL", :"HEALINGWISH", :"LUCKYCHANT", :"SLEEPTALK", :"SWEETKISS", :"WISH", :"YAWN"
end

GameData::SpeciesMetrics.define :"AUDINO" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 23
  m.shadow_sprite 0, 0, 1
end