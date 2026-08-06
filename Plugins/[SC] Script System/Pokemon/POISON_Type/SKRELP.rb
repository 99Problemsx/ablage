#=============================================================================
# Skrelp - POISON Type
#=============================================================================

GameData::Species.define :"SKRELP" do |pkmn|
  pkmn.name "Skrelp"
  pkmn.types :"POISON", :"WATER"
  pkmn.base_stats hp: 50, attack: 60, defense: 60,
                  sp_atk: 30, sp_def: 60, speed: 60
  pkmn.abilities :"POISONPOINT", :"POISONTOUCH"
  pkmn.hidden_abilities :"ADAPTABILITY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 64
  pkmn.catch_rate 225
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 7.3
  pkmn.category "Mock Kelp"
  pkmn.pokedex_entry "Camouflaged as rotten kelp, they spray liquid poison on prey that approaches unawares and then finish it off."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SMOKESCREEN"
    m.at 5, :"ACID"
    m.at 10, :"WATERGUN"
    m.at 15, :"TAILWHIP"
    m.at 20, :"DOUBLETEAM"
    m.at 25, :"POISONTAIL"
    m.at 30, :"WATERPULSE"
    m.at 35, :"TOXIC"
    m.at 40, :"DRAGONPULSE"
    m.at 45, :"AQUATAIL"
    m.at 50, :"SLUDGEBOMB"
    m.at 55, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLIPTURN", :"FRUSTRATION", :"GUNKSHOT", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCALESHOT", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THUNDERBOLT", :"TOXIC", :"TOXICSPIKES", :"VENOMDRENCH", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"TERABLAST"
  pkmn.egg_moves :"ACIDARMOR", :"DRAGONTAIL", :"HAZE", :"TWISTER"
end

GameData::SpeciesMetrics.define :"SKRELP" do |m|
  m.back_sprite 1, 52
  m.front_sprite -2, -8
end