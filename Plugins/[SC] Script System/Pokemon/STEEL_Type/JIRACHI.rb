#=============================================================================
# Jirachi - STEEL Type
#=============================================================================

GameData::Species.define :"JIRACHI" do |pkmn|
  pkmn.name "Jirachi"
  pkmn.types :"STEEL", :"PSYCHIC"
  pkmn.base_stats hp: 100, attack: 100, defense: 100,
                  sp_atk: 100, sp_def: 100, speed: 100
  pkmn.abilities :"SERENEGRACE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 0.3
  pkmn.weight 1.1
  pkmn.category "Wish"
  pkmn.pokedex_entry "Jirachi is said to make wishes come true. While it sleeps, a tough crystalline shell envelops the body to protect it from enemies."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WISH"
    m.at 1, :"CONFUSION"
    m.at 5, :"REST"
    m.at 10, :"SWIFT"
    m.at 15, :"HELPINGHAND"
    m.at 20, :"PSYCHIC"
    m.at 25, :"REFRESH"
    m.at 30, :"REST"
    m.at 35, :"ZENHEADBUTT"
    m.at 40, :"DOUBLEEDGE"
    m.at 45, :"GRAVITY"
    m.at 50, :"HEALINGWISH"
    m.at 55, :"FUTURESIGHT"
    m.at 60, :"COSMICPOWER"
    m.at 65, :"LASTRESORT"
    m.at 70, :"DOOMDESIRE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"BODYSLAM", :"CALMMIND", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLASHCANNON", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"WATERPULSE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"JIRACHI" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 3
  m.shadow_sprite 0, 0, 1
end