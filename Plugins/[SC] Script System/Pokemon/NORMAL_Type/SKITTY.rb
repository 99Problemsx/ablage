#=============================================================================
# Skitty - NORMAL Type
#=============================================================================

GameData::Species.define :"SKITTY" do |pkmn|
  pkmn.name "Skitty"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 50, attack: 45, defense: 45,
                  sp_atk: 50, sp_def: 35, speed: 35
  pkmn.abilities :"CUTECHARM", :"NORMALIZE"
  pkmn.hidden_abilities :"WONDERSKIN"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 52
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.6
  pkmn.weight 11.0
  pkmn.category "Kitten"
  pkmn.pokedex_entry "A Skitty's adorably cute behavior makes it highly popular. In battle, it makes its tail puff out. It threatens foes with a sharp growl."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"FAKEOUT"
    m.at 1, :"GROWL"
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 4, :"FORESIGHT"
    m.at 8, :"ATTRACT"
    m.at 11, :"SING"
    m.at 15, :"DOUBLESLAP"
    m.at 18, :"COPYCAT"
    m.at 22, :"ASSIST"
    m.at 25, :"CHARM"
    m.at 29, :"FEINTATTACK"
    m.at 32, :"WAKEUPSLAP"
    m.at 36, :"COVET"
    m.at 39, :"HEALBELL"
    m.at 42, :"DOUBLEEDGE"
    m.at 46, :"CAPTIVATE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"BATONPASS", :"CAPTIVATE", :"FAKEOUT", :"FAKETEARS", :"HELPINGHAND", :"LASTRESORT", :"MUDBOMB", :"SIMPLEBEAM", :"SUCKERPUNCH", :"TICKLE", :"UPROAR", :"WISH", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SKITTY" do |m|
  m.back_sprite -10, 0
  m.front_sprite 4, 20
  m.shadow_sprite 0, 0, 1
end