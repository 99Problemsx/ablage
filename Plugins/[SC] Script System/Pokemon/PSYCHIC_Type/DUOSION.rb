#=============================================================================
# Duosion - PSYCHIC Type
#=============================================================================

GameData::Species.define :"DUOSION" do |pkmn|
  pkmn.name "Duosion"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 65, attack: 40, defense: 50,
                  sp_atk: 30, sp_def: 125, speed: 60
  pkmn.abilities :"OVERCOAT", :"MAGICGUARD"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 130
  pkmn.catch_rate 100
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 8.0
  pkmn.category "Mitosis"
  pkmn.pokedex_entry "When their brains, now divided in two, are thinking the same thoughts, these Pokémon exhibit their maximum power."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"PSYWAVE"
    m.at 1, :"REFLECT"
    m.at 1, :"ROLLOUT"
    m.at 1, :"SNATCH"
    m.at 3, :"REFLECT"
    m.at 7, :"ROLLOUT"
    m.at 10, :"SNATCH"
    m.at 14, :"HIDDENPOWER"
    m.at 16, :"LIGHTSCREEN"
    m.at 19, :"CHARM"
    m.at 24, :"RECOVER"
    m.at 25, :"PSYSHOCK"
    m.at 28, :"ENDEAVOR"
    m.at 31, :"FUTURESIGHT"
    m.at 34, :"PAINSPLIT"
    m.at 39, :"PSYCHIC"
    m.at 43, :"SKILLSWAP"
    m.at 50, :"HEALBLOCK"
    m.at 53, :"WONDERROOM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DUOSION" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 11
  m.shadow_sprite 0, 0, 2
end