#=============================================================================
# Zangoose - NORMAL Type
#=============================================================================

GameData::Species.define :"ZANGOOSE" do |pkmn|
  pkmn.name "Zangoose"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 73, attack: 115, defense: 60,
                  sp_atk: 90, sp_def: 60, speed: 60
  pkmn.abilities :"IMMUNITY"
  pkmn.hidden_abilities :"TOXICBOOST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 160
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 40.3
  pkmn.category "Cat Ferret"
  pkmn.pokedex_entry "When it battles, it stands on its hind legs and attacks with its sharply clawed forelegs. Its fur bristles if it encounters any Seviper."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 5, :"QUICKATTACK"
    m.at 8, :"FURYCUTTER"
    m.at 12, :"PURSUIT"
    m.at 15, :"SLASH"
    m.at 19, :"EMBARGO"
    m.at 22, :"CRUSHCLAW"
    m.at 26, :"REVENGE"
    m.at 29, :"FALSESWIPE"
    m.at 33, :"DETECT"
    m.at 36, :"XSCISSOR"
    m.at 40, :"TAUNT"
    m.at 43, :"SWORDSDANCE"
    m.at 47, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"WATERPULSE", :"WORKUP", :"XSCISSOR"
  pkmn.egg_moves :"COUNTER", :"CURSE", :"DISABLE", :"DOUBLEHIT", :"DOUBLEKICK", :"FEINT", :"FINALGAMBIT", :"FLAIL", :"FURYSWIPES", :"IRONTAIL", :"METALCLAW", :"NIGHTSLASH", :"RAZORWIND"
end

GameData::SpeciesMetrics.define :"ZANGOOSE" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, 10
  m.shadow_sprite 0, 0, 2
end