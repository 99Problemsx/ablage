#=============================================================================
# Baltoy - GROUND Type
#=============================================================================

GameData::Species.define :"BALTOY" do |pkmn|
  pkmn.name "Baltoy"
  pkmn.types :"GROUND", :"PSYCHIC"
  pkmn.base_stats hp: 40, attack: 40, defense: 55,
                  sp_atk: 55, sp_def: 40, speed: 70
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 21.5
  pkmn.category "Clay Doll"
  pkmn.pokedex_entry "A Baltoy moves by spinning on its single foot. It has been depicted in murals adorning the walls of a once-bustling city in an ancient age."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"HARDEN"
    m.at 1, :"CONFUSION"
    m.at 4, :"RAPIDSPIN"
    m.at 7, :"MUDSLAP"
    m.at 10, :"ROCKTOMB"
    m.at 13, :"PSYBEAM"
    m.at 17, :"POWERTRICK"
    m.at 21, :"ANCIENTPOWER"
    m.at 25, :"SELFDESTRUCT"
    m.at 28, :"EXTRASENSORY"
    m.at 31, :"COSMICPOWER"
    m.at 34, :"GUARDSPLIT"
    m.at 34, :"POWERSPLIT"
    m.at 37, :"EARTHPOWER"
    m.at 41, :"SANDSTORM"
    m.at 45, :"HEALBLOCK"
    m.at 49, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ANCIENTPOWER", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DRILLRUN", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BALTOY" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 17
  m.shadow_sprite 0, 0, 1
end