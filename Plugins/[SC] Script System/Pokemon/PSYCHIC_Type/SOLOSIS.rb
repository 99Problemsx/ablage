#=============================================================================
# Solosis - PSYCHIC Type
#=============================================================================

GameData::Species.define :"SOLOSIS" do |pkmn|
  pkmn.name "Solosis"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 45, attack: 30, defense: 40,
                  sp_atk: 20, sp_def: 105, speed: 50
  pkmn.abilities :"OVERCOAT", :"MAGICGUARD"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 58
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 1.0
  pkmn.category "Cell"
  pkmn.pokedex_entry "Because their bodies are enveloped in a special liquid, they can survive in any environment."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"PSYWAVE"
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
    m.at 33, :"PAINSPLIT"
    m.at 37, :"PSYCHIC"
    m.at 40, :"SKILLSWAP"
    m.at 46, :"HEALBLOCK"
    m.at 48, :"WONDERROOM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"ACIDARMOR", :"ASTONISH", :"CONFUSERAY", :"IMPRISON", :"NIGHTSHADE", :"SECRETPOWER", :"TRICK"
end

GameData::SpeciesMetrics.define :"SOLOSIS" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 1
end