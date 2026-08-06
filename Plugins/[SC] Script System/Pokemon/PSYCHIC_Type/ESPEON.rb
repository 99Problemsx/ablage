#=============================================================================
# Espeon - PSYCHIC Type
#=============================================================================

GameData::Species.define :"ESPEON" do |pkmn|
  pkmn.name "Espeon"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 65, attack: 65, defense: 60,
                  sp_atk: 110, sp_def: 130, speed: 95
  pkmn.abilities :"SYNCHRONIZE"
  pkmn.hidden_abilities :"MAGICBOUNCE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 8995
  pkmn.height 0.9
  pkmn.weight 26.5
  pkmn.category "Sun"
  pkmn.pokedex_entry "An Espeon is extremely loyal to any trainer it considers to be worthy. It is said to have developed precognitive powers to protect its trainer from harm."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 9, :"CONFUSION"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"SWIFT"
    m.at 21, :"PSYBEAM"
    m.at 25, :"FUTURESIGHT"
    m.at 29, :"PSYCHUP"
    m.at 33, :"MORNINGSUN"
    m.at 37, :"PSYCHIC"
    m.at 41, :"LASTRESORT"
    m.at 45, :"POWERSWAP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"TOXIC", :"TRICK", :"TRICKROOM", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ESPEON" do |m|
  m.back_sprite -4, 0
  m.front_sprite -4, 15
  m.shadow_sprite 0, 0, 2
end