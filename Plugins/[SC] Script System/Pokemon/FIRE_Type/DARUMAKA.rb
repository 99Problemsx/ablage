#=============================================================================
# Darumaka - FIRE Type
#=============================================================================

GameData::Species.define :"DARUMAKA" do |pkmn|
  pkmn.name "Darumaka"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 70, attack: 90, defense: 45,
                  sp_atk: 50, sp_def: 15, speed: 45
  pkmn.abilities :"HUSTLE"
  pkmn.hidden_abilities :"INNERFOCUS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 63
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 37.5
  pkmn.category "Zen Charm"
  pkmn.pokedex_entry "Darumaka's droppings are hot, so people used to put them in their clothes to keep themselves warm."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"ROLLOUT"
    m.at 6, :"INCINERATE"
    m.at 9, :"RAGE"
    m.at 11, :"FIREFANG"
    m.at 14, :"HEADBUTT"
    m.at 17, :"UPROAR"
    m.at 19, :"FACADE"
    m.at 22, :"FIREPUNCH"
    m.at 25, :"WORKUP"
    m.at 27, :"THRASH"
    m.at 30, :"BELLYDRUM"
    m.at 33, :"FLAREBLITZ"
    m.at 35, :"TAUNT"
    m.at 39, :"SUPERPOWER"
    m.at 42, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GYROBALL", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN", :"WILLOWISP", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"ENCORE", :"ENDURE", :"FLAMEWHEEL", :"FOCUSENERGY", :"FOCUSPUNCH", :"HAMMERARM", :"SLEEPTALK", :"TAKEDOWN", :"YAWN"
end

GameData::SpeciesMetrics.define :"DARUMAKA" do |m|
  m.back_sprite -2, 0
  m.front_sprite 3, 32
  m.shadow_sprite 0, 0, 2
end