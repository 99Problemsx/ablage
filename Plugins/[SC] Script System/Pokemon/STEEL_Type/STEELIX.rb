#=============================================================================
# Steelix - STEEL Type
#=============================================================================

GameData::Species.define :"STEELIX" do |pkmn|
  pkmn.name "Steelix"
  pkmn.types :"STEEL", :"GROUND"
  pkmn.base_stats hp: 75, attack: 85, defense: 200,
                  sp_atk: 30, sp_def: 55, speed: 65
  pkmn.abilities :"ROCKHEAD", :"STURDY"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 179
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 9.2
  pkmn.weight 400.0
  pkmn.category "Iron Snake"
  pkmn.pokedex_entry "Steelix live even further underground than Onix. This Pokémon is known to dig toward the earth's core, reaching a depth of over six-tenths of a mile underground."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"THUNDERFANG"
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"MUDSPORT"
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"BIND"
    m.at 4, :"CURSE"
    m.at 7, :"ROCKTHROW"
    m.at 10, :"RAGE"
    m.at 13, :"ROCKTOMB"
    m.at 16, :"STEALTHROCK"
    m.at 19, :"AUTOTOMIZE"
    m.at 22, :"SMACKDOWN"
    m.at 25, :"DRAGONBREATH"
    m.at 28, :"SLAM"
    m.at 31, :"SCREECH"
    m.at 34, :"ROCKSLIDE"
    m.at 37, :"CRUNCH"
    m.at 40, :"IRONTAIL"
    m.at 43, :"DIG"
    m.at 46, :"STONEEDGE"
    m.at 49, :"DOUBLEEDGE"
    m.at 52, :"SANDSTORM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BIND", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"IRONTAIL", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TORMENT", :"TOXIC", :"TWISTER"
end

GameData::SpeciesMetrics.define :"STEELIX" do |m|
  m.back_sprite 2, 0
  m.front_sprite -4, 4
  m.shadow_sprite 0, 0, 3
end