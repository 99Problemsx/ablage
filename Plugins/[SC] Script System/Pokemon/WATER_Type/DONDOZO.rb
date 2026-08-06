#=============================================================================
# Dondozo - WATER Type
#=============================================================================

GameData::Species.define :"DONDOZO" do |pkmn|
  pkmn.name "Dondozo"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 150, attack: 100, defense: 115,
                  sp_atk: 35, sp_def: 65, speed: 65
  pkmn.abilities :"UNAWARE", :"OBLIVIOUS"
  pkmn.hidden_abilities :"WATERVEIL"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 265
  pkmn.catch_rate 25
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 12.0
  pkmn.weight 220.0
  pkmn.category "Big Catfish"
  pkmn.pokedex_entry "This Pokémon is a glutton, but it’s bad at getting food. It teams up with a Tatsugiri to catch prey."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"WATERGUN"
    m.at 5, :"TICKLE"
    m.at 10, :"FLAIL"
    m.at 15, :"REST"
    m.at 15, :"SLEEPTALK"
    m.at 20, :"DIVE"
    m.at 25, :"NOBLEROAR"
    m.at 30, :"SOAK"
    m.at 35, :"BODYSLAM"
    m.at 40, :"AQUATAIL"
    m.at 45, :"RAINDANCE"
    m.at 50, :"ORDERUP"
    m.at 55, :"HEAVYSLAM"
    m.at 60, :"DOUBLEEDGE"
    m.at 65, :"WAVECRASH"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CHILLINGWATER", :"CRUNCH", :"CURSE", :"DOUBLEEDGE", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HEAVYSLAM", :"HYDROPUMP", :"HYPERBEAM", :"ICEFANG", :"LIQUIDATION", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"SCARYFACE", :"SLEEPTALK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"WATERFALL", :"WATERPULSE", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"FISSURE", :"THRASH", :"YAWN"
end

GameData::SpeciesMetrics.define :"DONDOZO" do |m|
  m.back_sprite 0, 74
  m.front_sprite 0, 14
  m.shadow_sprite 0, 0, 2
end