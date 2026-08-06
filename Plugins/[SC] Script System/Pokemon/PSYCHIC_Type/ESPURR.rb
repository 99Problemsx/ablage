#=============================================================================
# Espurr - PSYCHIC Type
#=============================================================================

GameData::Species.define :"ESPURR" do |pkmn|
  pkmn.name "Espurr"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 62, attack: 48, defense: 54,
                  sp_atk: 68, sp_def: 63, speed: 60
  pkmn.abilities :"KEENEYE", :"INFILTRATOR"
  pkmn.hidden_abilities :"OWNTEMPO"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 71
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.5
  pkmn.category "Restraint"
  pkmn.pokedex_entry "The organ that emits its intense psychic power is sheltered by its ears to keep power from leaking out."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 3, :"FAKEOUT"
    m.at 6, :"DISARMINGVOICE"
    m.at 9, :"CONFUSION"
    m.at 18, :"COVET"
    m.at 21, :"PSYBEAM"
    m.at 30, :"LIGHTSCREEN"
    m.at 30, :"REFLECT"
    m.at 33, :"PSYSHOCK"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"COVET", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLASH", :"FRUSTRATION", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PAYDAY", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"TICKLE", :"YAWN"
end

GameData::SpeciesMetrics.define :"ESPURR" do |m|
  m.back_sprite 4, 41
  m.front_sprite 0, 28
end