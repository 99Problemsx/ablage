#=============================================================================
# Metagross - STEEL Type
#=============================================================================

GameData::Species.define :"METAGROSS" do |pkmn|
  pkmn.name "Metagross"
  pkmn.types :"STEEL", :"PSYCHIC"
  pkmn.base_stats hp: 80, attack: 135, defense: 130,
                  sp_atk: 70, sp_def: 95, speed: 90
  pkmn.abilities :"CLEARBODY"
  pkmn.hidden_abilities :"LIGHTMETAL"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.6
  pkmn.weight 550.0
  pkmn.category "Iron Leg"
  pkmn.pokedex_entry "Metagross has four brains that are joined by a complex neural network. As a result of integration, this Pokémon is smarter than a supercomputer."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"MAGNETRISE"
    m.at 1, :"TAKEDOWN"
    m.at 1, :"CONFUSION"
    m.at 1, :"METALCLAW"
    m.at 20, :"CONFUSION"
    m.at 20, :"METALCLAW"
    m.at 23, :"PURSUIT"
    m.at 26, :"MIRACLEEYE"
    m.at 29, :"ZENHEADBUTT"
    m.at 32, :"BULLETPUNCH"
    m.at 35, :"SCARYFACE"
    m.at 38, :"AGILITY"
    m.at 41, :"PSYCHIC"
    m.at 44, :"METEORMASH"
    m.at 45, :"HAMMERARM"
    m.at 53, :"IRONDEFENSE"
    m.at 62, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CUT", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"METAGROSS" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 3
end