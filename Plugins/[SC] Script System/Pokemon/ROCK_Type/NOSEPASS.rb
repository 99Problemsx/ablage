#=============================================================================
# Nosepass - ROCK Type
#=============================================================================

GameData::Species.define :"NOSEPASS" do |pkmn|
  pkmn.name "Nosepass"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 30, attack: 45, defense: 135,
                  sp_atk: 30, sp_def: 45, speed: 90
  pkmn.abilities :"STURDY", :"MAGNETPULL"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 75
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 97.0
  pkmn.category "Compass"
  pkmn.pokedex_entry "Its body emits a powerful magnetism. It feeds on prey that is pulled in by the force. Its magnetism is stronger in cold seasons."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"HARDEN"
    m.at 8, :"BLOCK"
    m.at 11, :"ROCKTHROW"
    m.at 15, :"THUNDERWAVE"
    m.at 18, :"ROCKBLAST"
    m.at 22, :"REST"
    m.at 25, :"SPARK"
    m.at 29, :"ROCKSLIDE"
    m.at 32, :"POWERGEM"
    m.at 36, :"SANDSTORM"
    m.at 39, :"DISCHARGE"
    m.at 43, :"EARTHPOWER"
    m.at 46, :"STONEEDGE"
    m.at 50, :"LOCKON"
    m.at 50, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FRUSTRATION", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"ICEPUNCH", :"IRONDEFENSE", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"VOLTSWITCH"
  pkmn.egg_moves :"BLOCK", :"DOUBLEEDGE", :"ENDURE", :"MAGNITUDE", :"ROLLOUT", :"STEALTHROCK"
end

GameData::SpeciesMetrics.define :"NOSEPASS" do |m|
  m.back_sprite 5, 0
  m.front_sprite -2, 17
  m.shadow_sprite 0, 0, 2
end