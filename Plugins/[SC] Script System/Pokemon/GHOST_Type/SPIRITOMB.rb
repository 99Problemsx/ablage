#=============================================================================
# Spiritomb - GHOST Type
#=============================================================================

GameData::Species.define :"SPIRITOMB" do |pkmn|
  pkmn.name "Spiritomb"
  pkmn.types :"GHOST", :"DARK"
  pkmn.base_stats hp: 50, attack: 92, defense: 108,
                  sp_atk: 35, sp_def: 92, speed: 108
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 170
  pkmn.catch_rate 100
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.0
  pkmn.weight 108.0
  pkmn.category "Forbidden"
  pkmn.pokedex_entry "A Pokémon that was formed by 108 spirits. It is bound to a fissure in an odd keystone."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"CURSE"
    m.at 1, :"PURSUIT"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"SPITE"
    m.at 1, :"SHADOWSNEAK"
    m.at 7, :"FEINTATTACK"
    m.at 13, :"HYPNOSIS"
    m.at 19, :"DREAMEATER"
    m.at 25, :"OMINOUSWIND"
    m.at 31, :"SUCKERPUNCH"
    m.at 37, :"NASTYPLOT"
    m.at 43, :"MEMENTO"
    m.at 49, :"DARKPULSE"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"QUASH", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SILVERWIND", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"TORMENT", :"TOXIC", :"TRICK", :"UPROAR", :"WATERPULSE", :"WILLOWISP", :"WONDERROOM"
  pkmn.egg_moves :"CAPTIVATE", :"DESTINYBOND", :"GRUDGE", :"IMPRISON", :"NIGHTMARE", :"PAINSPLIT", :"SHADOWSNEAK", :"SMOKESCREEN"
end

GameData::SpeciesMetrics.define :"SPIRITOMB" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, -2
  m.shadow_sprite 0, 0, 2
end