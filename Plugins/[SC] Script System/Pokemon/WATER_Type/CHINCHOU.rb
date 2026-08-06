#=============================================================================
# Chinchou - WATER Type
#=============================================================================

GameData::Species.define :"CHINCHOU" do |pkmn|
  pkmn.name "Chinchou"
  pkmn.types :"WATER", :"ELECTRIC"
  pkmn.base_stats hp: 75, attack: 38, defense: 38,
                  sp_atk: 67, sp_def: 56, speed: 56
  pkmn.abilities :"VOLTABSORB", :"ILLUMINATE"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 66
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 12.0
  pkmn.category "Angler"
  pkmn.pokedex_entry "When it senses danger, it discharges positive and negative electricity from its two antennae. It lives in depths beyond sunlight's reach."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SUPERSONIC"
    m.at 1, :"BUBBLE"
    m.at 6, :"THUNDERWAVE"
    m.at 9, :"FLAIL"
    m.at 12, :"CONFUSERAY"
    m.at 17, :"WATERGUN"
    m.at 20, :"SPARK"
    m.at 23, :"TAKEDOWN"
    m.at 28, :"ELECTROBALL"
    m.at 31, :"BUBBLEBEAM"
    m.at 34, :"SIGNALBEAM"
    m.at 39, :"DISCHARGE"
    m.at 42, :"AQUARING"
    m.at 45, :"HYDROPUMP"
    m.at 50, :"CHARGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"CHARGEBEAM", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HAIL", :"HEALBELL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WILDCHARGE"
  pkmn.egg_moves :"AGILITY", :"AMNESIA", :"BRINE", :"FLAIL", :"MIST", :"PSYBEAM", :"SCREECH", :"SHOCKWAVE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"CHINCHOU" do |m|
  m.back_sprite 5, 0
  m.front_sprite 3, 9
  m.shadow_sprite 0, 0, 2
end