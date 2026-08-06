#=============================================================================
# Mesprit - PSYCHIC Type
#=============================================================================

GameData::Species.define :"MESPRIT" do |pkmn|
  pkmn.name "Mesprit"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 80, attack: 105, defense: 105,
                  sp_atk: 80, sp_def: 105, speed: 105
  pkmn.abilities :"LEVITATE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 140
  pkmn.hatch_steps 20560
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Emotion"
  pkmn.pokedex_entry "Known as \"The Being of Emotion.\" It taught humans the nobility of sorrow, pain, and joy."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"REST"
    m.at 1, :"CONFUSION"
    m.at 6, :"IMPRISON"
    m.at 16, :"PROTECT"
    m.at 21, :"SWIFT"
    m.at 31, :"LUCKYCHANT"
    m.at 36, :"FUTURESIGHT"
    m.at 46, :"CHARM"
    m.at 51, :"EXTRASENSORY"
    m.at 61, :"COPYCAT"
    m.at 66, :"NATURALGIFT"
    m.at 76, :"HEALINGWISH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"BLIZZARD", :"CALMMIND", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UTURN", :"WATERPULSE", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MESPRIT" do |m|
  m.back_sprite 1, 0
  m.front_sprite -3, 3
  m.shadow_sprite 0, 0, 1
end