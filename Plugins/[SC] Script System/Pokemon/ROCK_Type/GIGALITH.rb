#=============================================================================
# Gigalith - ROCK Type
#=============================================================================

GameData::Species.define :"GIGALITH" do |pkmn|
  pkmn.name "Gigalith"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 85, attack: 135, defense: 130,
                  sp_atk: 25, sp_def: 60, speed: 70
  pkmn.abilities :"STURDY"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 227
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.7
  pkmn.weight 260.0
  pkmn.category "Compressed"
  pkmn.pokedex_entry "The solar energy absorbed by its body's orange crystals is magnified internally and fired from its mouth."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"SANDATTACK"
    m.at 1, :"HEADBUTT"
    m.at 4, :"HARDEN"
    m.at 7, :"SANDATTACK"
    m.at 10, :"HEADBUTT"
    m.at 14, :"ROCKBLAST"
    m.at 17, :"MUDSLAP"
    m.at 20, :"IRONDEFENSE"
    m.at 23, :"SMACKDOWN"
    m.at 25, :"POWERGEM"
    m.at 30, :"ROCKSLIDE"
    m.at 36, :"STEALTHROCK"
    m.at 42, :"SANDSTORM"
    m.at 48, :"STONEEDGE"
    m.at 55, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BULLDOZE", :"CAPTIVATE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC"
end

GameData::SpeciesMetrics.define :"GIGALITH" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 3
end