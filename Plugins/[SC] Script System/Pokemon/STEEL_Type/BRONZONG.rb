#=============================================================================
# Bronzong - STEEL Type
#=============================================================================

GameData::Species.define :"BRONZONG" do |pkmn|
  pkmn.name "Bronzong"
  pkmn.types :"STEEL", :"PSYCHIC"
  pkmn.base_stats hp: 67, attack: 89, defense: 116,
                  sp_atk: 33, sp_def: 79, speed: 116
  pkmn.abilities :"LEVITATE", :"HEATPROOF"
  pkmn.hidden_abilities :"HEAVYMETAL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 175
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 187.0
  pkmn.category "Bronze Bell"
  pkmn.pokedex_entry "One caused a news sensation when it was dug up at a construction site after a 2,000-year sleep."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"SUNNYDAY"
    m.at 1, :"RAINDANCE"
    m.at 1, :"TACKLE"
    m.at 1, :"CONFUSION"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"IMPRISON"
    m.at 5, :"HYPNOSIS"
    m.at 9, :"IMPRISON"
    m.at 11, :"CONFUSERAY"
    m.at 15, :"PSYWAVE"
    m.at 19, :"IRONDEFENSE"
    m.at 21, :"FEINTATTACK"
    m.at 25, :"SAFEGUARD"
    m.at 29, :"FUTURESIGHT"
    m.at 31, :"METALSOUND"
    m.at 33, :"BLOCK"
    m.at 36, :"GYROBALL"
    m.at 42, :"EXTRASENSORY"
    m.at 46, :"PAYBACK"
    m.at 52, :"HEALBLOCK"
    m.at 58, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"BLOCK", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BRONZONG" do |m|
  m.back_sprite 5, 0
  m.front_sprite -2, 3
  m.shadow_sprite 0, 0, 3
end