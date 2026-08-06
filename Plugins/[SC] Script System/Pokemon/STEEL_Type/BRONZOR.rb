#=============================================================================
# Bronzor - STEEL Type
#=============================================================================

GameData::Species.define :"BRONZOR" do |pkmn|
  pkmn.name "Bronzor"
  pkmn.types :"STEEL", :"PSYCHIC"
  pkmn.base_stats hp: 57, attack: 24, defense: 86,
                  sp_atk: 23, sp_def: 24, speed: 86
  pkmn.abilities :"LEVITATE", :"HEATPROOF"
  pkmn.hidden_abilities :"HEAVYMETAL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 60.5
  pkmn.category "Bronze"
  pkmn.pokedex_entry "Implements shaped like it were discovered in ancient tombs. It is unknown if they are related."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"CONFUSION"
    m.at 5, :"HYPNOSIS"
    m.at 9, :"IMPRISON"
    m.at 11, :"CONFUSERAY"
    m.at 15, :"PSYWAVE"
    m.at 19, :"IRONDEFENSE"
    m.at 21, :"FEINTATTACK"
    m.at 25, :"SAFEGUARD"
    m.at 29, :"FUTURESIGHT"
    m.at 31, :"METALSOUND"
    m.at 35, :"GYROBALL"
    m.at 39, :"EXTRASENSORY"
    m.at 41, :"PAYBACK"
    m.at 45, :"HEALBLOCK"
    m.at 49, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"IRONDEFENSE", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM"
  pkmn.egg_moves :"GRAVITY", :"RECYCLE"
end

GameData::SpeciesMetrics.define :"BRONZOR" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 1
end