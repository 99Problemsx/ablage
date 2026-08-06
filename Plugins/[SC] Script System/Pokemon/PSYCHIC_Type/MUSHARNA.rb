#=============================================================================
# Musharna - PSYCHIC Type
#=============================================================================

GameData::Species.define :"MUSHARNA" do |pkmn|
  pkmn.name "Musharna"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 116, attack: 55, defense: 85,
                  sp_atk: 29, sp_def: 107, speed: 95
  pkmn.abilities :"FOREWARN", :"SYNCHRONIZE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 170
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 1.1
  pkmn.weight 60.5
  pkmn.category "Drowsing"
  pkmn.pokedex_entry "With the mist from its forehead, it can create shapes of things from dreams it has eaten."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"LUCKYCHANT"
    m.at 1, :"PSYBEAM"
    m.at 1, :"HYPNOSIS"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"WORRYSEED", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MUSHARNA" do |m|
  m.back_sprite 6, 0
  m.front_sprite -9, 9
  m.shadow_sprite 0, 0, 2
end