#=============================================================================
# Sigilyph - PSYCHIC Type
#=============================================================================

GameData::Species.define :"SIGILYPH" do |pkmn|
  pkmn.name "Sigilyph"
  pkmn.types :"PSYCHIC", :"FLYING"
  pkmn.base_stats hp: 72, attack: 58, defense: 80,
                  sp_atk: 97, sp_def: 103, speed: 80
  pkmn.abilities :"WONDERSKIN", :"MAGICGUARD"
  pkmn.hidden_abilities :"TINTEDLENS"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 14.0
  pkmn.category "Avianoid"
  pkmn.pokedex_entry "The guardians of an ancient city, they use their psychic power to attack enemies that invade their territory."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"MIRACLEEYE"
    m.at 4, :"HYPNOSIS"
    m.at 8, :"PSYWAVE"
    m.at 11, :"TAILWIND"
    m.at 14, :"WHIRLWIND"
    m.at 18, :"PSYBEAM"
    m.at 21, :"AIRCUTTER"
    m.at 24, :"LIGHTSCREEN"
    m.at 28, :"REFLECT"
    m.at 31, :"SYNCHRONOISE"
    m.at 34, :"MIRRORMOVE"
    m.at 38, :"GRAVITY"
    m.at 41, :"AIRSLASH"
    m.at 44, :"PSYCHIC"
    m.at 48, :"COSMICPOWER"
    m.at 51, :"SKYATTACK"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLASHCANNON", :"FLY", :"FRUSTRATION", :"GRAVITY", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SKYATTACK", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SWAGGER", :"TAILWIND", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"ANCIENTPOWER", :"PSYCHOSHIFT", :"ROOST", :"SKILLSWAP", :"STEELWING", :"STOREDPOWER"
end

GameData::SpeciesMetrics.define :"SIGILYPH" do |m|
  m.back_sprite 7, 0
  m.front_sprite -6, 3
  m.shadow_sprite 0, 0, 2
end