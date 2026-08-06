#=============================================================================
# Dragalge - POISON Type
#=============================================================================

GameData::Species.define :"DRAGALGE" do |pkmn|
  pkmn.name "Dragalge"
  pkmn.types :"POISON", :"DRAGON"
  pkmn.base_stats hp: 65, attack: 75, defense: 90,
                  sp_atk: 44, sp_def: 97, speed: 123
  pkmn.abilities :"POISONPOINT", :"POISONTOUCH"
  pkmn.hidden_abilities :"ADAPTABILITY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 173
  pkmn.catch_rate 55
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 81.5
  pkmn.category "Mock Kelp"
  pkmn.pokedex_entry "Their poison is strong enough to eat through the hull of a tanker, and they spit it indiscriminately at anything that enters their territory."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SMOKESCREEN"
    m.at 1, :"ACID"
    m.at 1, :"WATERGUN"
    m.at 15, :"TAILWHIP"
    m.at 20, :"DOUBLETEAM"
    m.at 25, :"POISONTAIL"
    m.at 30, :"WATERPULSE"
    m.at 35, :"TOXIC"
    m.at 40, :"DRAGONPULSE"
    m.at 45, :"AQUATAIL"
    m.at 52, :"SLUDGEBOMB"
    m.at 59, :"HYDROPUMP"
    m.at 66, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"FLIPTURN", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCALESHOT", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"TOXICSPIKES", :"VENOMDRENCH", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DRAGALGE" do |m|
  m.back_sprite 9, 76
  m.front_sprite 2, 3
  m.shadow_sprite 0, 0, -1
end

# Form 1 - Mega Dragalge
GameData::Species.define :"DRAGALGE_1" do |pkmn|
  pkmn.species :"DRAGALGE"
  pkmn.form 1
  pkmn.name "Dragalge"
  pkmn.form_name "Mega Dragalge"
  pkmn.types :"POISON", :"DRAGON"
  pkmn.base_stats hp: 65, attack: 85, defense: 105,
                  sp_atk: 132, sp_def: 163, speed: 44
  pkmn.abilities :"POISONPOINT", :"POISONTOUCH"
  pkmn.hidden_abilities :"ADAPTABILITY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 173
  pkmn.catch_rate 55
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.1
  pkmn.weight 100.3
  pkmn.category "Mock Kelp"
  pkmn.pokedex_entry "It spits a liquid that causes the regenerative power of cells to run wild. The liquid is deadly poison to everything other than itself."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SMOKESCREEN"
    m.at 1, :"ACID"
    m.at 1, :"WATERGUN"
    m.at 15, :"TAILWHIP"
    m.at 20, :"DOUBLETEAM"
    m.at 25, :"POISONTAIL"
    m.at 30, :"WATERPULSE"
    m.at 35, :"TOXIC"
    m.at 40, :"DRAGONPULSE"
    m.at 45, :"AQUATAIL"
    m.at 52, :"SLUDGEBOMB"
    m.at 59, :"HYDROPUMP"
    m.at 66, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"FLIPTURN", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCALESHOT", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"TOXICSPIKES", :"VENOMDRENCH", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DRAGALGE_1" do |m|
  m.back_sprite 9, 76
  m.front_sprite 2, 3
  m.shadow_sprite 0, 0, -1
end