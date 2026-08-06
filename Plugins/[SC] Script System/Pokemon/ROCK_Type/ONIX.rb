#=============================================================================
# Onix - ROCK Type
#=============================================================================

GameData::Species.define :"ONIX" do |pkmn|
  pkmn.name "Onix"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 35, attack: 45, defense: 160,
                  sp_atk: 70, sp_def: 30, speed: 45
  pkmn.abilities :"ROCKHEAD", :"STURDY"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 77
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 8.8
  pkmn.weight 210.0
  pkmn.category "Rock Snake"
  pkmn.pokedex_entry "There is a magnet in its brain that prevents an Onix from losing direction while tunneling. As it grows older, its body becomes steadily rounder and smoother."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"MUDSPORT"
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"BIND"
    m.at 4, :"CURSE"
    m.at 7, :"ROCKTHROW"
    m.at 10, :"RAGE"
    m.at 13, :"ROCKTOMB"
    m.at 16, :"STEALTHROCK"
    m.at 19, :"ROCKPOLISH"
    m.at 22, :"SMACKDOWN"
    m.at 25, :"DRAGONBREATH"
    m.at 28, :"SLAM"
    m.at 31, :"SCREECH"
    m.at 34, :"ROCKSLIDE"
    m.at 37, :"SANDTOMB"
    m.at 40, :"IRONTAIL"
    m.at 43, :"DIG"
    m.at 46, :"STONEEDGE"
    m.at 49, :"DOUBLEEDGE"
    m.at 52, :"SANDSTORM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BIND", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TORMENT", :"TOXIC", :"TWISTER"
  pkmn.egg_moves :"BLOCK", :"DEFENSECURL", :"FLAIL", :"HEAVYSLAM", :"ROCKBLAST", :"ROCKCLIMB", :"ROLLOUT", :"STEALTHROCK"
end

GameData::SpeciesMetrics.define :"ONIX" do |m|
  m.back_sprite 3, 0
  m.front_sprite -2, 5
  m.shadow_sprite 0, 0, 3
end