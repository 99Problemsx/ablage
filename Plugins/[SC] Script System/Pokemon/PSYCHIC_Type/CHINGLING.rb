#=============================================================================
# Chingling - PSYCHIC Type
#=============================================================================

GameData::Species.define :"CHINGLING" do |pkmn|
  pkmn.name "Chingling"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 45, attack: 30, defense: 50,
                  sp_atk: 45, sp_def: 65, speed: 50
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 57
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.2
  pkmn.weight 0.6
  pkmn.category "Bell"
  pkmn.pokedex_entry "It emits cries by agitating an orb at the back of its throat. It moves with flouncing hops."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 6, :"GROWL"
    m.at 9, :"ASTONISH"
    m.at 14, :"CONFUSION"
    m.at 17, :"UPROAR"
    m.at 22, :"LASTRESORT"
    m.at 25, :"ENTRAINMENT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"DISABLE", :"FUTURESIGHT", :"HYPNOSIS", :"RECOVER", :"SKILLSWAP", :"STOREDPOWER", :"WISH"
end

GameData::SpeciesMetrics.define :"CHINGLING" do |m|
  m.back_sprite 1, 0
  m.front_sprite 3, 5
  m.shadow_sprite 0, 0, 1
end