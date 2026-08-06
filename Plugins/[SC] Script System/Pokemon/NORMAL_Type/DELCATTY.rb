#=============================================================================
# Delcatty - NORMAL Type
#=============================================================================

GameData::Species.define :"DELCATTY" do |pkmn|
  pkmn.name "Delcatty"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 70, attack: 65, defense: 65,
                  sp_atk: 70, sp_def: 55, speed: 55
  pkmn.abilities :"CUTECHARM", :"NORMALIZE"
  pkmn.hidden_abilities :"WONDERSKIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 133
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.1
  pkmn.weight 32.6
  pkmn.category "Prim"
  pkmn.pokedex_entry "Rather than keeping a permanent lair, it habitually seeks comfortable spots and sleeps there. It is nocturnal and becomes active at dusk."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"FAKEOUT"
    m.at 1, :"ATTRACT"
    m.at 1, :"SING"
    m.at 1, :"DOUBLESLAP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DELCATTY" do |m|
  m.back_sprite 3, 0
  m.front_sprite 1, 13
  m.shadow_sprite 0, 0, 2
end