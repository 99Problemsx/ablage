#=============================================================================
# Oranguru - NORMAL Type
#=============================================================================

GameData::Species.define :"ORANGURU" do |pkmn|
  pkmn.name "Oranguru"
  pkmn.types :"NORMAL", :"PSYCHIC"
  pkmn.base_stats hp: 90, attack: 60, defense: 80,
                  sp_atk: 60, sp_def: 90, speed: 110
  pkmn.abilities :"INNERFOCUS", :"TELEPATHY"
  pkmn.hidden_abilities :"SYMBIOSIS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 76.0
  pkmn.category "Sage"
  pkmn.pokedex_entry "It normally spends its time meditating in the treetops. It throws Poké Balls and gives other Pokémon orders as it pleases."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 1, :"TAUNT"
    m.at 5, :"AFTERYOU"
    m.at 10, :"CALMMIND"
    m.at 15, :"STOREDPOWER"
    m.at 20, :"PSYCHUP"
    m.at 25, :"QUASH"
    m.at 30, :"NASTYPLOT"
    m.at 35, :"ZENHEADBUTT"
    m.at 40, :"TRICKROOM"
    m.at 45, :"PSYCHIC"
    m.at 50, :"INSTRUCT"
    m.at 55, :"FOULPLAY"
    m.at 60, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BRUTALSWING", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"COVET", :"DOUBLETEAM", :"DREAMEATER", :"EARTHQUAKE", :"EMBARGO", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"QUASH", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"TERRAINPULSE", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"DREAMEATER", :"EXTRASENSORY", :"LASTRESORT", :"YAWN"
end

GameData::SpeciesMetrics.define :"ORANGURU" do |m|
  m.back_sprite 6, 60
  m.front_sprite 0, 20
end