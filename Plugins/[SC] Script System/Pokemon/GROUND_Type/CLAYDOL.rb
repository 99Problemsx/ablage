#=============================================================================
# Claydol - GROUND Type
#=============================================================================

GameData::Species.define :"CLAYDOL" do |pkmn|
  pkmn.name "Claydol"
  pkmn.types :"GROUND", :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 70, defense: 105,
                  sp_atk: 75, sp_def: 70, speed: 120
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 175
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 108.0
  pkmn.category "Clay Doll"
  pkmn.pokedex_entry "A Claydol sleeps while hovering in midair. Its arms are separate from its body. They are kept floating by the Pokémon's manipulation of psychic power."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TELEPORT"
    m.at 1, :"HARDEN"
    m.at 1, :"CONFUSION"
    m.at 1, :"RAPIDSPIN"
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
    m.at 36, :"HYPERBEAM"
    m.at 40, :"EARTHPOWER"
    m.at 47, :"SANDSTORM"
    m.at 54, :"HEALBLOCK"
    m.at 61, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ANCIENTPOWER", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DRILLRUN", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CLAYDOL" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 2
  m.shadow_sprite 0, 0, 3
end