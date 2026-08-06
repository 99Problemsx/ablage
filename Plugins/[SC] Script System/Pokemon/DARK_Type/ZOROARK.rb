#=============================================================================
# Zoroark - DARK Type
#=============================================================================

GameData::Species.define :"ZOROARK" do |pkmn|
  pkmn.name "Zoroark"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 60, attack: 105, defense: 60,
                  sp_atk: 105, sp_def: 120, speed: 60
  pkmn.abilities :"ILLUSION"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 179
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 81.1
  pkmn.category "Illusion Fox"
  pkmn.pokedex_entry "Each has the ability to fool a large group of people simultaneously. They protect their lair with illusory scenery."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"UTURN"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"PURSUIT"
    m.at 1, :"HONECLAWS"
    m.at 5, :"PURSUIT"
    m.at 9, :"HONECLAWS"
    m.at 13, :"FURYSWIPES"
    m.at 17, :"FEINTATTACK"
    m.at 21, :"SCARYFACE"
    m.at 25, :"TAUNT"
    m.at 29, :"FOULPLAY"
    m.at 30, :"NIGHTSLASH"
    m.at 34, :"TORMENT"
    m.at 39, :"AGILITY"
    m.at 44, :"EMBARGO"
    m.at 49, :"PUNISHMENT"
    m.at 54, :"NASTYPLOT"
    m.at 59, :"IMPRISON"
    m.at 64, :"NIGHTDAZE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BOUNCE", :"CALMMIND", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TRICK", :"UPROAR", :"UTURN"
end

GameData::SpeciesMetrics.define :"ZOROARK" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 17
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Hisuian
GameData::Species.define :"ZOROARK_1" do |pkmn|
  pkmn.species :"ZOROARK"
  pkmn.form 1
  pkmn.name "Zoroark"
  pkmn.form_name "Hisuian"
  pkmn.types :"NORMAL", :"GHOST"
  pkmn.base_stats hp: 55, attack: 100, defense: 60,
                  sp_atk: 110, sp_def: 125, speed: 60
  pkmn.abilities :"ILLUSION"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 179
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 73.0
  pkmn.category "Baneful Fox"
  pkmn.pokedex_entry "With its disheveled white fur, it looks like an embodiment of death. Heedless of its own safety, Zoroark attacks its nemeses with a bitter energy so intense, it lacerates Zoroark's own body."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"SHADOWCLAW"
    m.at 1, :"UTURN"
    m.at 1, :"HONECLAWS"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"TORMENT"
    m.at 12, :"SHADOWSNEAK"
    m.at 16, :"CURSE"
    m.at 20, :"TAUNT"
    m.at 24, :"KNOCKOFF"
    m.at 28, :"SPITE"
    m.at 34, :"AGILITY"
    m.at 40, :"SHADOWBALL"
    m.at 46, :"BITTERMALICE"
    m.at 52, :"NASTYPLOT"
    m.at 58, :"FOULPLAY"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"BODYSLAM", :"BRICKBREAK", :"BURNINGJEALOUSY", :"CALMMIND", :"CONFUSERAY", :"CRUNCH", :"CURSE", :"DARKPULSE", :"DIG", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HEX", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"IMPRISON", :"KNOCKOFF", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"NASTYPLOT", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"ROAR", :"SCARYFACE", :"SHADOWBALL", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNOWSCAPE", :"SPITE", :"SUBSTITUTE", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"TRICK", :"UTURN", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ZOROARK_1" do |m|
  m.back_sprite 0, 47
  m.front_sprite -4, 19
  m.shadow_sprite 0, 0, 2
end