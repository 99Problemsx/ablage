#=============================================================================
# Lanturn - WATER Type
#=============================================================================

GameData::Species.define :"LANTURN" do |pkmn|
  pkmn.name "Lanturn"
  pkmn.types :"WATER", :"ELECTRIC"
  pkmn.base_stats hp: 125, attack: 58, defense: 58,
                  sp_atk: 67, sp_def: 76, speed: 76
  pkmn.abilities :"VOLTABSORB", :"ILLUMINATE"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 161
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 22.5
  pkmn.category "Light"
  pkmn.pokedex_entry "The light-emitting orbs on its back are very bright. They are formed from a part of its dorsal fin. This Pokémon illuminates the inky darkness of deep seas."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"THUNDERWAVE"
    m.at 6, :"THUNDERWAVE"
    m.at 9, :"FLAIL"
    m.at 12, :"WATERGUN"
    m.at 17, :"CONFUSERAY"
    m.at 20, :"SPARK"
    m.at 23, :"TAKEDOWN"
    m.at 27, :"STOCKPILE"
    m.at 27, :"SWALLOW"
    m.at 27, :"SPITUP"
    m.at 30, :"ELECTROBALL"
    m.at 35, :"BUBBLEBEAM"
    m.at 40, :"SIGNALBEAM"
    m.at 47, :"DISCHARGE"
    m.at 52, :"AQUARING"
    m.at 57, :"HYDROPUMP"
    m.at 64, :"CHARGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"CHARGEBEAM", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEALBELL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"LANTURN" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, -4
  m.shadow_sprite 0, 0, 2
end