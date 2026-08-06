#=============================================================================
# Azelf - PSYCHIC Type
#=============================================================================

GameData::Species.define :"AZELF" do |pkmn|
  pkmn.name "Azelf"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 75, attack: 125, defense: 70,
                  sp_atk: 115, sp_def: 125, speed: 70
  pkmn.abilities :"LEVITATE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 140
  pkmn.hatch_steps 20560
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Willpower"
  pkmn.pokedex_entry "Known as \"The Being of Willpower.\" It sleeps at the bottom of a lake to keep the world in balance."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"REST"
    m.at 1, :"CONFUSION"
    m.at 6, :"IMPRISON"
    m.at 16, :"DETECT"
    m.at 21, :"SWIFT"
    m.at 31, :"UPROAR"
    m.at 36, :"FUTURESIGHT"
    m.at 46, :"NASTYPLOT"
    m.at 51, :"EXTRASENSORY"
    m.at 61, :"LASTRESORT"
    m.at 66, :"NATURALGIFT"
    m.at 76, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"CALMMIND", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"WATERPULSE", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"AZELF" do |m|
  m.back_sprite 0, 0
  m.front_sprite 9, 5
  m.shadow_sprite 0, 0, 1
end