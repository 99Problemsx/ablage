#=============================================================================
# Reuniclus - PSYCHIC Type
#=============================================================================

GameData::Species.define :"REUNICLUS" do |pkmn|
  pkmn.name "Reuniclus"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 110, attack: 65, defense: 75,
                  sp_atk: 30, sp_def: 125, speed: 85
  pkmn.abilities :"OVERCOAT", :"MAGICGUARD"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 221
  pkmn.catch_rate 50
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 20.1
  pkmn.category "Multiplying"
  pkmn.pokedex_entry "These remarkably intelligent Pokémon fight by controlling arms that can grip with rock-crushing power."
  pkmn.evs special_attack: 3
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
    m.at 41, :"DIZZYPUNCH"
    m.at 45, :"SKILLSWAP"
    m.at 54, :"HEALBLOCK"
    m.at 59, :"WONDERROOM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"REUNICLUS" do |m|
  m.back_sprite 3, 0
  m.front_sprite 2, 6
  m.shadow_sprite 0, 0, 2
end