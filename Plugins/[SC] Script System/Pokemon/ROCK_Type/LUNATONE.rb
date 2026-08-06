#=============================================================================
# Lunatone - ROCK Type
#=============================================================================

GameData::Species.define :"LUNATONE" do |pkmn|
  pkmn.name "Lunatone"
  pkmn.types :"ROCK", :"PSYCHIC"
  pkmn.base_stats hp: 70, attack: 55, defense: 65,
                  sp_atk: 70, sp_def: 95, speed: 85
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Yellow"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.0
  pkmn.weight 168.0
  pkmn.category "Meteorite"
  pkmn.pokedex_entry "It becomes very active on the night of a full moon. This Pokémon was first discovered 40 years ago at the site of a meteor strike."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"CONFUSION"
    m.at 5, :"ROCKTHROW"
    m.at 9, :"HYPNOSIS"
    m.at 13, :"ROCKPOLISH"
    m.at 17, :"PSYWAVE"
    m.at 21, :"EMBARGO"
    m.at 25, :"ROCKSLIDE"
    m.at 29, :"COSMICPOWER"
    m.at 33, :"PSYCHIC"
    m.at 37, :"HEALBLOCK"
    m.at 41, :"STONEEDGE"
    m.at 45, :"FUTURESIGHT"
    m.at 49, :"EXPLOSION"
    m.at 53, :"MAGICROOM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ANCIENTPOWER", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"TOXIC", :"TRICKROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LUNATONE" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, -1
  m.shadow_sprite 0, 0, 2
end