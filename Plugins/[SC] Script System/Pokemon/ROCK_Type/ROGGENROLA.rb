#=============================================================================
# Roggenrola - ROCK Type
#=============================================================================

GameData::Species.define :"ROGGENROLA" do |pkmn|
  pkmn.name "Roggenrola"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 55, attack: 75, defense: 85,
                  sp_atk: 15, sp_def: 25, speed: 25
  pkmn.abilities :"STURDY"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 56
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 18.0
  pkmn.category "Mantle"
  pkmn.pokedex_entry "They were discovered a hundred years ago in an earthquake fissure. Inside each one is an energy core."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"HARDEN"
    m.at 7, :"SANDATTACK"
    m.at 10, :"HEADBUTT"
    m.at 14, :"ROCKBLAST"
    m.at 17, :"MUDSLAP"
    m.at 20, :"IRONDEFENSE"
    m.at 23, :"SMACKDOWN"
    m.at 27, :"ROCKSLIDE"
    m.at 30, :"STEALTHROCK"
    m.at 33, :"SANDSTORM"
    m.at 36, :"STONEEDGE"
    m.at 40, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BULLDOZE", :"CAPTIVATE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GRAVITY", :"HIDDENPOWER", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"TOXIC"
  pkmn.egg_moves :"AUTOTOMIZE", :"CURSE", :"GRAVITY", :"HEAVYSLAM", :"LOCKON", :"MAGNITUDE", :"ROCKTOMB", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"ROGGENROLA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 31
  m.shadow_sprite 0, 0, 1
end