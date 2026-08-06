#=============================================================================
# Bibarel - NORMAL Type
#=============================================================================

GameData::Species.define :"BIBAREL" do |pkmn|
  pkmn.name "Bibarel"
  pkmn.types :"NORMAL", :"WATER"
  pkmn.base_stats hp: 79, attack: 85, defense: 60,
                  sp_atk: 71, sp_def: 55, speed: 60
  pkmn.abilities :"SIMPLE", :"UNAWARE"
  pkmn.hidden_abilities :"MOODY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 144
  pkmn.catch_rate 127
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 31.5
  pkmn.category "Beaver"
  pkmn.pokedex_entry "It makes its nest by damming streams with bark and mud. It is known as an industrious worker."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 5, :"GROWL"
    m.at 9, :"DEFENSECURL"
    m.at 13, :"ROLLOUT"
    m.at 15, :"WATERGUN"
    m.at 18, :"HEADBUTT"
    m.at 23, :"HYPERFANG"
    m.at 28, :"YAWN"
    m.at 33, :"AMNESIA"
    m.at 38, :"TAKEDOWN"
    m.at 43, :"SUPERFANG"
    m.at 48, :"SUPERPOWER"
    m.at 53, :"CURSE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BULLDOZE", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"BIBAREL" do |m|
  m.back_sprite -6, 0
  m.front_sprite 7, 15
  m.shadow_sprite 0, 0, 3
end