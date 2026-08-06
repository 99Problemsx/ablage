#=============================================================================
# Mime Jr. - PSYCHIC Type
#=============================================================================

GameData::Species.define :"MIMEJR" do |pkmn|
  pkmn.name "Mime Jr."
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 20, attack: 25, defense: 45,
                  sp_atk: 60, sp_def: 70, speed: 90
  pkmn.abilities :"SOUNDPROOF", :"FILTER"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 62
  pkmn.catch_rate 145
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.6
  pkmn.weight 13.0
  pkmn.category "Mime"
  pkmn.pokedex_entry "It habitually mimics foes. Once mimicked, the foe cannot take its eyes off this Pokémon."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TICKLE"
    m.at 1, :"BARRIER"
    m.at 1, :"CONFUSION"
    m.at 4, :"COPYCAT"
    m.at 8, :"MEDITATE"
    m.at 11, :"DOUBLESLAP"
    m.at 15, :"MIMIC"
    m.at 18, :"ENCORE"
    m.at 22, :"LIGHTSCREEN"
    m.at 22, :"REFLECT"
    m.at 25, :"PSYBEAM"
    m.at 29, :"SUBSTITUTE"
    m.at 32, :"RECYCLE"
    m.at 36, :"TRICK"
    m.at 39, :"PSYCHIC"
    m.at 43, :"ROLEPLAY"
    m.at 46, :"BATONPASS"
    m.at 50, :"SAFEGUARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WONDERROOM"
  pkmn.egg_moves :"CHARM", :"CONFUSERAY", :"FAKEOUT", :"FUTURESIGHT", :"HEALINGWISH", :"HYPNOSIS", :"ICYWIND", :"MAGICROOM", :"MIMIC", :"NASTYPLOT", :"POWERSPLIT", :"TEETERDANCE", :"TRICK", :"WAKEUPSLAP"
end

GameData::SpeciesMetrics.define :"MIMEJR" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 13
  m.shadow_sprite 0, 0, 1
end