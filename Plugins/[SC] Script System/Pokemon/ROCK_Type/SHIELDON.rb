#=============================================================================
# Shieldon - ROCK Type
#=============================================================================

GameData::Species.define :"SHIELDON" do |pkmn|
  pkmn.name "Shieldon"
  pkmn.types :"ROCK", :"STEEL"
  pkmn.base_stats hp: 30, attack: 42, defense: 118,
                  sp_atk: 30, sp_def: 42, speed: 88
  pkmn.abilities :"STURDY"
  pkmn.hidden_abilities :"SOUNDPROOF"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 70
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.5
  pkmn.weight 57.0
  pkmn.category "Shield"
  pkmn.pokedex_entry "A Pokémon that lived in jungles around 100 million years ago. Its facial hide is extremely hard."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"PROTECT"
    m.at 6, :"TAUNT"
    m.at 10, :"METALSOUND"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"IRONDEFENSE"
    m.at 24, :"SWAGGER"
    m.at 28, :"ANCIENTPOWER"
    m.at 33, :"ENDURE"
    m.at 37, :"METALBURST"
    m.at 42, :"IRONHEAD"
    m.at 46, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASHCANNON", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC"
  pkmn.egg_moves :"BODYSLAM", :"COUNTER", :"CURSE", :"DOUBLEEDGE", :"FISSURE", :"FOCUSENERGY", :"HEADBUTT", :"ROCKBLAST", :"SCARYFACE", :"SCREECH", :"STEALTHROCK", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"SHIELDON" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 22
  m.shadow_sprite 0, 0, 2
end