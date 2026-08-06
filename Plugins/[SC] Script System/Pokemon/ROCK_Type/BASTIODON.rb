#=============================================================================
# Bastiodon - ROCK Type
#=============================================================================

GameData::Species.define :"BASTIODON" do |pkmn|
  pkmn.name "Bastiodon"
  pkmn.types :"ROCK", :"STEEL"
  pkmn.base_stats hp: 60, attack: 52, defense: 168,
                  sp_atk: 30, sp_def: 47, speed: 138
  pkmn.abilities :"STURDY"
  pkmn.hidden_abilities :"SOUNDPROOF"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.3
  pkmn.weight 149.5
  pkmn.category "Shield"
  pkmn.pokedex_entry "Any frontal attack is repulsed. It is a docile Pokémon that feeds on grass and berries."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"PROTECT"
    m.at 1, :"TAUNT"
    m.at 1, :"METALSOUND"
    m.at 6, :"TAUNT"
    m.at 10, :"METALSOUND"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"IRONDEFENSE"
    m.at 24, :"SWAGGER"
    m.at 28, :"ANCIENTPOWER"
    m.at 30, :"BLOCK"
    m.at 36, :"ENDURE"
    m.at 43, :"METALBURST"
    m.at 51, :"IRONHEAD"
    m.at 58, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC"
end

GameData::SpeciesMetrics.define :"BASTIODON" do |m|
  m.back_sprite -4, 0
  m.front_sprite -5, 14
  m.shadow_sprite 0, 0, 3
end