#=============================================================================
# Munna - PSYCHIC Type
#=============================================================================

GameData::Species.define :"MUNNA" do |pkmn|
  pkmn.name "Munna"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 76, attack: 25, defense: 45,
                  sp_atk: 24, sp_def: 67, speed: 55
  pkmn.abilities :"FOREWARN", :"SYNCHRONIZE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 58
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.6
  pkmn.weight 23.3
  pkmn.category "Dream Eater"
  pkmn.pokedex_entry "It eats the dreams of people and Pokémon. When it eats a pleasant dreams, it expels pink-colored mist."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"PSYWAVE"
    m.at 1, :"DEFENSECURL"
    m.at 5, :"LUCKYCHANT"
    m.at 7, :"YAWN"
    m.at 11, :"PSYBEAM"
    m.at 13, :"IMPRISON"
    m.at 17, :"MOONLIGHT"
    m.at 19, :"HYPNOSIS"
    m.at 23, :"ZENHEADBUTT"
    m.at 25, :"SYNCHRONOISE"
    m.at 29, :"NIGHTMARE"
    m.at 31, :"FUTURESIGHT"
    m.at 35, :"CALMMIND"
    m.at 37, :"PSYCHIC"
    m.at 41, :"DREAMEATER"
    m.at 43, :"TELEKINESIS"
    m.at 47, :"STOREDPOWER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRAVITY", :"GYROBALL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"WORRYSEED", :"ZENHEADBUTT"
  pkmn.egg_moves :"BARRIER", :"BATONPASS", :"CURSE", :"HELPINGHAND", :"MAGICCOAT", :"SECRETPOWER", :"SLEEPTALK", :"SONICBOOM", :"SWIFT"
end

GameData::SpeciesMetrics.define :"MUNNA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 33
  m.shadow_sprite 0, 0, 1
end