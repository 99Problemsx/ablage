#=============================================================================
# Clawitzer - WATER Type
#=============================================================================

GameData::Species.define :"CLAWITZER" do |pkmn|
  pkmn.name "Clawitzer"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 71, attack: 73, defense: 88,
                  sp_atk: 59, sp_def: 120, speed: 89
  pkmn.abilities :"MEGALAUNCHER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 100
  pkmn.catch_rate 55
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.3
  pkmn.weight 35.3
  pkmn.category "Howitzer"
  pkmn.pokedex_entry "By expelling water from the nozzle in the back of its claw, it can move at a speed of 60 knots."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"DARKPULSE"
    m.at 1, :"DRAGONPULSE"
    m.at 1, :"HEALPULSE"
    m.at 1, :"SPLASH"
    m.at 1, :"WATERGUN"
    m.at 1, :"VISEGRIP"
    m.at 1, :"FLAIL"
    m.at 15, :"AQUAJET"
    m.at 20, :"SMACKDOWN"
    m.at 25, :"HONECLAWS"
    m.at 30, :"WATERPULSE"
    m.at 35, :"SWORDSDANCE"
    m.at 42, :"AURASPHERE"
    m.at 49, :"BOUNCE"
    m.at 56, :"MUDDYWATER"
    m.at 63, :"CRABHAMMER"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AURASPHERE", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIVE", :"DOUBLETEAM", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLIPTURN", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASERFOCUS", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TERRAINPULSE", :"TOXIC", :"UTURN", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CLAWITZER" do |m|
  m.back_sprite -8, 48
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, -2
end