#=============================================================================
# Dewgong - WATER Type
#=============================================================================

GameData::Species.define :"DEWGONG" do |pkmn|
  pkmn.name "Dewgong"
  pkmn.types :"WATER", :"ICE"
  pkmn.base_stats hp: 90, attack: 70, defense: 80,
                  sp_atk: 70, sp_def: 70, speed: 95
  pkmn.abilities :"THICKFAT", :"HYDRATION"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Finned"
  pkmn.base_exp 166
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 120.0
  pkmn.category "Sea Lion"
  pkmn.pokedex_entry "It loves to snooze on bitterly cold ice. The sight of this Pokémon sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"HEADBUTT"
    m.at 1, :"GROWL"
    m.at 1, :"SIGNALBEAM"
    m.at 1, :"ICYWIND"
    m.at 3, :"GROWL"
    m.at 7, :"SIGNALBEAM"
    m.at 11, :"ICYWIND"
    m.at 13, :"ENCORE"
    m.at 17, :"ICESHARD"
    m.at 21, :"REST"
    m.at 23, :"AQUARING"
    m.at 27, :"AURORABEAM"
    m.at 31, :"AQUAJET"
    m.at 33, :"BRINE"
    m.at 34, :"SHEERCOLD"
    m.at 39, :"TAKEDOWN"
    m.at 45, :"DIVE"
    m.at 49, :"AQUATAIL"
    m.at 55, :"ICEBEAM"
    m.at 61, :"SAFEGUARD"
    m.at 65, :"HAIL"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"DEWGONG" do |m|
  m.back_sprite -7, 0
  m.front_sprite -1, 13
  m.shadow_sprite 0, 0, 3
end