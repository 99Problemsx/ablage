#=============================================================================
# Buneary - NORMAL Type
#=============================================================================

GameData::Species.define :"BUNEARY" do |pkmn|
  pkmn.name "Buneary"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 55, attack: 66, defense: 44,
                  sp_atk: 85, sp_def: 44, speed: 56
  pkmn.abilities :"RUNAWAY", :"KLUTZ"
  pkmn.hidden_abilities :"LIMBER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 70
  pkmn.catch_rate 190
  pkmn.happiness 0
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 5.5
  pkmn.category "Rabbit"
  pkmn.pokedex_entry "It slams foes by sharply uncoiling its rolled ears. It stings enough to make a grown-up cry in pain."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"POUND"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"FORESIGHT"
    m.at 6, :"ENDURE"
    m.at 13, :"FRUSTRATION"
    m.at 16, :"QUICKATTACK"
    m.at 23, :"JUMPKICK"
    m.at 26, :"BATONPASS"
    m.at 33, :"AGILITY"
    m.at 36, :"DIZZYPUNCH"
    m.at 43, :"AFTERYOU"
    m.at 46, :"CHARM"
    m.at 53, :"ENTRAINMENT"
    m.at 56, :"BOUNCE"
    m.at 63, :"HEALINGWISH"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"IRONTAIL", :"LASTRESORT", :"LOWKICK", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"CIRCLETHROW", :"COPYCAT", :"DOUBLEHIT", :"ENCORE", :"FAKEOUT", :"FAKETEARS", :"FIREPUNCH", :"FLAIL", :"FOCUSPUNCH", :"ICEPUNCH", :"LOWKICK", :"SKYUPPERCUT", :"SWEETKISS", :"SWITCHEROO", :"THUNDERPUNCH"
end

GameData::SpeciesMetrics.define :"BUNEARY" do |m|
  m.back_sprite 8, 0
  m.front_sprite -2, 7
  m.shadow_sprite 0, 0, 1
end