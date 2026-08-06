#=============================================================================
# Probopass - ROCK Type
#=============================================================================

GameData::Species.define :"PROBOPASS" do |pkmn|
  pkmn.name "Probopass"
  pkmn.types :"ROCK", :"STEEL"
  pkmn.base_stats hp: 60, attack: 55, defense: 145,
                  sp_atk: 40, sp_def: 75, speed: 150
  pkmn.abilities :"STURDY", :"MAGNETPULL"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 184
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 340.0
  pkmn.category "Compass"
  pkmn.pokedex_entry "It exudes strong magnetism from all over. It controls three small units called Mini-Noses."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"MAGNETRISE"
    m.at 1, :"GRAVITY"
    m.at 1, :"TACKLE"
    m.at 1, :"IRONDEFENSE"
    m.at 1, :"BLOCK"
    m.at 1, :"MAGNETBOMB"
    m.at 4, :"IRONDEFENSE"
    m.at 8, :"BLOCK"
    m.at 11, :"MAGNETBOMB"
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
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"VOLTSWITCH"
end

GameData::SpeciesMetrics.define :"PROBOPASS" do |m|
  m.back_sprite 5, 0
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 3
end