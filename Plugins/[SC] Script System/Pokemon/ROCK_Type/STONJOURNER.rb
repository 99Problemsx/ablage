#=============================================================================
# Stonjourner - ROCK Type
#=============================================================================

GameData::Species.define :"STONJOURNER" do |pkmn|
  pkmn.name "Stonjourner"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 100, attack: 125, defense: 135,
                  sp_atk: 70, sp_def: 20, speed: 20
  pkmn.abilities :"POWERSPOT"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 165
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 2.5
  pkmn.weight 520.0
  pkmn.category "Big Rock"
  pkmn.pokedex_entry "Once a year, on a specific date and at a specific time, they gather out of nowhere and form up in a circle."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"ROCKTHROW"
    m.at 1, :"BLOCK"
    m.at 6, :"ROCKPOLISH"
    m.at 12, :"ROCKTOMB"
    m.at 18, :"GRAVITY"
    m.at 24, :"STOMP"
    m.at 30, :"STEALTHROCK"
    m.at 36, :"ROCKSLIDE"
    m.at 42, :"BODYSLAM"
    m.at 48, :"WIDEGUARD"
    m.at 54, :"HEAVYSLAM"
    m.at 60, :"STONEEDGE"
    m.at 66, :"MEGAKICK"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BRUTALSWING", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HEATCRASH", :"HEAVYSLAM", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"MEGAKICK", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SANDTOMB", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"WONDERROOM", :"TERABLAST"
  pkmn.egg_moves :"ANCIENTPOWER", :"CURSE"
end

GameData::SpeciesMetrics.define :"STONJOURNER" do |m|
  m.back_sprite 2, 32
  m.front_sprite -2, 9
end