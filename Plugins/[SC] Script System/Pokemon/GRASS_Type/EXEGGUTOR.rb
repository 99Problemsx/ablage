#=============================================================================
# Exeggutor - GRASS Type
#=============================================================================

GameData::Species.define :"EXEGGUTOR" do |pkmn|
  pkmn.name "Exeggutor"
  pkmn.types :"GRASS", :"PSYCHIC"
  pkmn.base_stats hp: 95, attack: 95, defense: 85,
                  sp_atk: 55, sp_def: 125, speed: 65
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 182
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 120.0
  pkmn.category "Coconut"
  pkmn.pokedex_entry "Originally from the tropics, Exeggutor's heads grow larger with exposure to bright sunlight. It is said that when the heads fall, they group to form an Exeggcute."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SEEDBOMB"
    m.at 1, :"BARRAGE"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"CONFUSION"
    m.at 1, :"STOMP"
    m.at 17, :"PSYSHOCK"
    m.at 27, :"EGGBOMB"
    m.at 37, :"WOODHAMMER"
    m.at 47, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BULLETSEED", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICKROOM", :"WORRYSEED", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"EXEGGUTOR" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 4
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"EXEGGUTOR_1" do |pkmn|
  pkmn.species :"EXEGGUTOR"
  pkmn.form 1
  pkmn.name "Exeggutor"
  pkmn.types :"GRASS", :"PSYCHIC"
  pkmn.base_stats hp: 95, attack: 95, defense: 85,
                  sp_atk: 55, sp_def: 125, speed: 65
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 182
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 120.0
  pkmn.category "Coconut"
  pkmn.pokedex_entry "Originally from the tropics, Exeggutor's heads grow larger with exposure to bright sunlight. It is said that when the heads fall, they group to form an Exeggcute."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SEEDBOMB"
    m.at 1, :"BARRAGE"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"CONFUSION"
    m.at 1, :"STOMP"
    m.at 17, :"PSYSHOCK"
    m.at 27, :"EGGBOMB"
    m.at 37, :"WOODHAMMER"
    m.at 47, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BULLETSEED", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICKROOM", :"WORRYSEED", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"EXEGGUTOR_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 4
  m.shadow_sprite 0, 0, 2
end