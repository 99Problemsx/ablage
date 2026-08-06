#=============================================================================
# Perrserker - STEEL Type
#=============================================================================

GameData::Species.define :"PERRSERKER" do |pkmn|
  pkmn.name "Perrserker"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 70, attack: 110, defense: 100,
                  sp_atk: 50, sp_def: 50, speed: 60
  pkmn.abilities :"BATTLEARMOR", :"TOUGHCLAWS"
  pkmn.hidden_abilities :"STEELYSPIRIT"
  pkmn.flags :"DefaultForm_2", :"InheritFormWithEverStone"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 154
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 28.0
  pkmn.category "Viking"
  pkmn.pokedex_entry "What appears to be an iron helmet is actually hardened hair. This Pokémon lives for the thrill of battle."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"IRONHEAD"
    m.at 1, :"METALBURST"
    m.at 1, :"IRONDEFENSE"
    m.at 1, :"FAKEOUT"
    m.at 1, :"GROWL"
    m.at 1, :"HONECLAWS"
    m.at 1, :"SCRATCH"
    m.at 12, :"PAYDAY"
    m.at 16, :"METALCLAW"
    m.at 20, :"TAUNT"
    m.at 24, :"SWAGGER"
    m.at 31, :"FURYSWIPES"
    m.at 36, :"SCREECH"
    m.at 42, :"SLASH"
    m.at 48, :"METALSOUND"
    m.at 54, :"THRASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AMNESIA", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BODYSLAM", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"COVET", :"CRUNCH", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HEADBUTT", :"HEAVYSLAM", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LASHOUT", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PAYDAY", :"PLAYROUGH", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"UPROAR", :"UTURN", :"WATERPULSE", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"COVET", :"CURSE", :"DOUBLEEDGE", :"FLAIL", :"NIGHTSLASH", :"SPITE"
end

GameData::SpeciesMetrics.define :"PERRSERKER" do |m|
  m.back_sprite 0, 20
  m.front_sprite -2, 3
end