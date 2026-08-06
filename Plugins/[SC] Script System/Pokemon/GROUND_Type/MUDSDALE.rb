#=============================================================================
# Mudsdale - GROUND Type
#=============================================================================

GameData::Species.define :"MUDSDALE" do |pkmn|
  pkmn.name "Mudsdale"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 100, attack: 125, defense: 100,
                  sp_atk: 35, sp_def: 55, speed: 85
  pkmn.abilities :"OWNTEMPO", :"STAMINA"
  pkmn.hidden_abilities :"INNERFOCUS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 175
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.5
  pkmn.weight 920.0
  pkmn.category "Draft Horse"
  pkmn.pokedex_entry "It remains calm and unmoving no matter the situation. It mixes dirt with the saliva in its mouth to make a special kind of mud."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"ROCKSMASH"
    m.at 1, :"IRONDEFENSE"
    m.at 1, :"DOUBLEKICK"
    m.at 12, :"BULLDOZE"
    m.at 16, :"STOMP"
    m.at 20, :"STRENGTH"
    m.at 24, :"COUNTER"
    m.at 28, :"HIGHHORSEPOWER"
    m.at 34, :"HEAVYSLAM"
    m.at 40, :"EARTHQUAKE"
    m.at 46, :"MEGAKICK"
    m.at 52, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MUDSDALE" do |m|
  m.back_sprite -4, 39
  m.front_sprite 4, 8
end