#=============================================================================
# Gastly - GHOST Type
#=============================================================================

GameData::Species.define :"GASTLY" do |pkmn|
  pkmn.name "Gastly"
  pkmn.types :"GHOST", :"POISON"
  pkmn.base_stats hp: 30, attack: 35, defense: 30,
                  sp_atk: 80, sp_def: 100, speed: 35
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 62
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 0.1
  pkmn.category "Gas"
  pkmn.pokedex_entry "When exposed to a strong wind, a Gastly's gaseous body quickly dwindles away. They cluster under the eaves of houses to escape the ravages of wind."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"HYPNOSIS"
    m.at 1, :"LICK"
    m.at 5, :"SPITE"
    m.at 8, :"MEANLOOK"
    m.at 12, :"CURSE"
    m.at 15, :"NIGHTSHADE"
    m.at 19, :"CONFUSERAY"
    m.at 22, :"SUCKERPUNCH"
    m.at 26, :"PAYBACK"
    m.at 29, :"SHADOWBALL"
    m.at 33, :"DREAMEATER"
    m.at 36, :"DARKPULSE"
    m.at 40, :"DESTINYBOND"
    m.at 43, :"HEX"
    m.at 47, :"NIGHTMARE"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"HIDDENPOWER", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"VENOSHOCK", :"WILLOWISP", :"WONDERROOM"
  pkmn.egg_moves :"ASTONISH", :"CLEARSMOG", :"DISABLE", :"FIREPUNCH", :"GRUDGE", :"HAZE", :"ICEPUNCH", :"PERISHSONG", :"PSYWAVE", :"SCARYFACE", :"SMOG", :"THUNDERPUNCH"
end

GameData::SpeciesMetrics.define :"GASTLY" do |m|
  m.back_sprite -1, 0
  m.front_sprite 6, -2
  m.shadow_sprite 0, 0, 2
end