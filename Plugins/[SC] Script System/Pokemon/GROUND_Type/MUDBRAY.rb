#=============================================================================
# Mudbray - GROUND Type
#=============================================================================

GameData::Species.define :"MUDBRAY" do |pkmn|
  pkmn.name "Mudbray"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 70, attack: 100, defense: 70,
                  sp_atk: 45, sp_def: 45, speed: 55
  pkmn.abilities :"OWNTEMPO", :"STAMINA"
  pkmn.hidden_abilities :"INNERFOCUS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 77
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 110.0
  pkmn.category "Donkey"
  pkmn.pokedex_entry "It loves playing in the mud. If it isn't showered with mud on a daily basis, it gets stressed out and stops listening to its Trainer."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"ROCKSMASH"
    m.at 4, :"IRONDEFENSE"
    m.at 8, :"DOUBLEKICK"
    m.at 12, :"BULLDOZE"
    m.at 16, :"STOMP"
    m.at 20, :"STRENGTH"
    m.at 24, :"COUNTER"
    m.at 28, :"HIGHHORSEPOWER"
    m.at 32, :"HEAVYSLAM"
    m.at 36, :"EARTHQUAKE"
    m.at 40, :"MEGAKICK"
    m.at 44, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"IRONDEFENSE", :"IRONHEAD", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"DOUBLEEDGE", :"FISSURE", :"ROAR", :"SMACKDOWN"
end

GameData::SpeciesMetrics.define :"MUDBRAY" do |m|
  m.back_sprite 0, 16
  m.front_sprite -4, 4
end