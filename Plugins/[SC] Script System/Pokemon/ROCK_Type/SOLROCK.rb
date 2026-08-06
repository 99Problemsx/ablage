#=============================================================================
# Solrock - ROCK Type
#=============================================================================

GameData::Species.define :"SOLROCK" do |pkmn|
  pkmn.name "Solrock"
  pkmn.types :"ROCK", :"PSYCHIC"
  pkmn.base_stats hp: 70, attack: 95, defense: 85,
                  sp_atk: 70, sp_def: 55, speed: 65
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.2
  pkmn.weight 154.0
  pkmn.category "Meteorite"
  pkmn.pokedex_entry "Solar energy is the source of this Pokémon's power. On sunny days, groups of Solrock line up facing the sun and absorb its light."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"CONFUSION"
    m.at 5, :"ROCKTHROW"
    m.at 9, :"FIRESPIN"
    m.at 13, :"ROCKPOLISH"
    m.at 17, :"PSYWAVE"
    m.at 21, :"EMBARGO"
    m.at 25, :"ROCKSLIDE"
    m.at 29, :"COSMICPOWER"
    m.at 33, :"PSYCHIC"
    m.at 37, :"HEALBLOCK"
    m.at 41, :"STONEEDGE"
    m.at 45, :"SOLARBEAM"
    m.at 49, :"EXPLOSION"
    m.at 53, :"WONDERROOM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ANCIENTPOWER", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"TOXIC", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SOLROCK" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, -9
  m.shadow_sprite 0, 0, 2
end