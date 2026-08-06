#=============================================================================
# Haunter - GHOST Type
#=============================================================================

GameData::Species.define :"HAUNTER" do |pkmn|
  pkmn.name "Haunter"
  pkmn.types :"GHOST", :"POISON"
  pkmn.base_stats hp: 45, attack: 50, defense: 45,
                  sp_atk: 95, sp_def: 115, speed: 55
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 142
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 0.1
  pkmn.category "Gas"
  pkmn.pokedex_entry "If a Haunter beckons you while it is floating in darkness, don't approach it. This Pokémon will try to lick you with its tongue and steal your life away."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"HYPNOSIS"
    m.at 1, :"LICK"
    m.at 1, :"SPITE"
    m.at 5, :"SPITE"
    m.at 8, :"MEANLOOK"
    m.at 12, :"CURSE"
    m.at 15, :"NIGHTSHADE"
    m.at 19, :"CONFUSERAY"
    m.at 22, :"SUCKERPUNCH"
    m.at 25, :"SHADOWPUNCH"
    m.at 28, :"PAYBACK"
    m.at 33, :"SHADOWBALL"
    m.at 39, :"DREAMEATER"
    m.at 44, :"DARKPULSE"
    m.at 50, :"DESTINYBOND"
    m.at 55, :"HEX"
    m.at 61, :"NIGHTMARE"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"HIDDENPOWER", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"VENOSHOCK", :"WILLOWISP", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"HAUNTER" do |m|
  m.back_sprite -1, 0
  m.front_sprite -1, 0
  m.shadow_sprite 0, 0, 2
end