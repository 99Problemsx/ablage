#=============================================================================
# Clauncher - WATER Type
#=============================================================================

GameData::Species.define :"CLAUNCHER" do |pkmn|
  pkmn.name "Clauncher"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 53, defense: 62,
                  sp_atk: 44, sp_def: 58, speed: 63
  pkmn.abilities :"MEGALAUNCHER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 66
  pkmn.catch_rate 225
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.5
  pkmn.weight 8.3
  pkmn.category "Water Gun"
  pkmn.pokedex_entry "Through controlled expulsions of internal gas, it can expel water like a pistol shot. At close distances, it can shatter rock."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"WATERGUN"
    m.at 5, :"VISEGRIP"
    m.at 10, :"FLAIL"
    m.at 15, :"AQUAJET"
    m.at 20, :"SMACKDOWN"
    m.at 25, :"HONECLAWS"
    m.at 30, :"WATERPULSE"
    m.at 35, :"SWORDSDANCE"
    m.at 40, :"AURASPHERE"
    m.at 45, :"BOUNCE"
    m.at 50, :"MUDDYWATER"
    m.at 55, :"CRABHAMMER"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AURASPHERE", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIVE", :"DOUBLETEAM", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLIPTURN", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"MUDDYWATER", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TERRAINPULSE", :"TOXIC", :"UTURN", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"TERABLAST"
  pkmn.egg_moves :"AQUATAIL", :"BUBBLEBEAM", :"ENTRAINMENT"
end

GameData::SpeciesMetrics.define :"CLAUNCHER" do |m|
  m.back_sprite 8, 50
  m.front_sprite 0, 35
end