#=============================================================================
# Boldore - ROCK Type
#=============================================================================

GameData::Species.define :"BOLDORE" do |pkmn|
  pkmn.name "Boldore"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 70, attack: 105, defense: 105,
                  sp_atk: 20, sp_def: 50, speed: 40
  pkmn.abilities :"STURDY"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 137
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.9
  pkmn.weight 102.0
  pkmn.category "Ore"
  pkmn.pokedex_entry "Because its energy was too great to be contained, the energy leaked and formed orange crystals."
  pkmn.evs attack: 1
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
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BULLDOZE", :"CAPTIVATE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GRAVITY", :"HIDDENPOWER", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"TOXIC"
end

GameData::SpeciesMetrics.define :"BOLDORE" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 30
  m.shadow_sprite 0, 0, 3
end