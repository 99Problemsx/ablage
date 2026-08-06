#=============================================================================
# Cetoddle - ICE Type
#=============================================================================

GameData::Species.define :"CETODDLE" do |pkmn|
  pkmn.name "Cetoddle"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 108, attack: 68, defense: 45,
                  sp_atk: 43, sp_def: 30, speed: 40
  pkmn.abilities :"THICKFAT", :"SNOWCLOAK"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 67
  pkmn.catch_rate 150
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.2
  pkmn.weight 45.0
  pkmn.category "Terra Whale"
  pkmn.pokedex_entry "This species left the ocean and began living on land a very long time ago. It seems to be closely related to Wailmer."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"TACKLE"
    m.at 6, :"GROWL"
    m.at 9, :"ECHOEDVOICE"
    m.at 12, :"ICESHARD"
    m.at 15, :"REST"
    m.at 19, :"TAKEDOWN"
    m.at 25, :"FLAIL"
    m.at 27, :"AVALANCHE"
    m.at 31, :"BOUNCE"
    m.at 36, :"BODYSLAM"
    m.at 40, :"AMNESIA"
    m.at 44, :"ICESPINNER"
    m.at 49, :"DOUBLEEDGE"
    m.at 53, :"BLIZZARD"
  end
  pkmn.tutor_moves :"AMNESIA", :"AVALANCHE", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CHARM", :"CHILLINGWATER", :"CURSE", :"DOUBLEEDGE", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"HEAVYSLAM", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEFANG", :"ICESPINNER", :"ICICLESPEAR", :"ICYWIND", :"KNOCKOFF", :"LIQUIDATION", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SNOWSCAPE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"TAKEDOWN", :"WATERPULSE"
  pkmn.egg_moves :"BELLYDRUM", :"ENTRAINMENT", :"ICICLECRASH", :"SUPERPOWER", :"YAWN"
end

GameData::SpeciesMetrics.define :"CETODDLE" do |m|
  m.back_sprite 0, 61
  m.front_sprite 3, 29
  m.shadow_sprite 0, 0, 1
end