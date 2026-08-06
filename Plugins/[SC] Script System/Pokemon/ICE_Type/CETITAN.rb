#=============================================================================
# Cetitan - ICE Type
#=============================================================================

GameData::Species.define :"CETITAN" do |pkmn|
  pkmn.name "Cetitan"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 170, attack: 113, defense: 65,
                  sp_atk: 73, sp_def: 45, speed: 55
  pkmn.abilities :"THICKFAT", :"SLUSHRUSH"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 182
  pkmn.catch_rate 50
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 4.5
  pkmn.weight 700.0
  pkmn.category "Terra Whale"
  pkmn.pokedex_entry "This Pokémon wanders around snowy, icy areas. It protects its body with powerful muscles and a thick layer of fat under its skin."
  pkmn.evs hp: 2
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
  pkmn.tutor_moves :"AMNESIA", :"AVALANCHE", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CHARM", :"CHILLINGWATER", :"CURSE", :"DOUBLEEDGE", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HARDPRESS", :"HEAVYSLAM", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEFANG", :"ICEPUNCH", :"ICESPINNER", :"ICICLESPEAR", :"ICYWIND", :"KNOCKOFF", :"LIQUIDATION", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SNOWSCAPE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"TAKEDOWN", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"CETITAN" do |m|
  m.back_sprite -6, 59
  m.front_sprite 2, 23
  m.shadow_sprite 0, 0, 2
end