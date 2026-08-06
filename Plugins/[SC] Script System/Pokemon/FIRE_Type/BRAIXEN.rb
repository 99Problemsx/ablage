#=============================================================================
# Braixen - FIRE Type
#=============================================================================

GameData::Species.define :"BRAIXEN" do |pkmn|
  pkmn.name "Braixen"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 59, attack: 59, defense: 58,
                  sp_atk: 73, sp_def: 90, speed: 70
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"MAGICIAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 143
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 14.5
  pkmn.category "Fox"
  pkmn.pokedex_entry "When the twig is plucked from its tail, friction sets the twig alight. The flame is used to send signals to its allies."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 1, :"EMBER"
    m.at 5, :"EMBER"
    m.at 11, :"HOWL"
    m.at 14, :"FLAMECHARGE"
    m.at 18, :"PSYBEAM"
    m.at 22, :"FIRESPIN"
    m.at 28, :"LUCKYCHANT"
    m.at 31, :"LIGHTSCREEN"
    m.at 36, :"PSYSHOCK"
    m.at 41, :"FLAMETHROWER"
    m.at 45, :"WILLOWISP"
    m.at 49, :"PSYCHIC"
    m.at 52, :"SUNNYDAY"
    m.at 56, :"MAGICROOM"
    m.at 59, :"FIREBLAST"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CUT", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"LASERFOCUS", :"LIGHTSCREEN", :"LOWKICK", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"WILLOWISP", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BRAIXEN" do |m|
  m.back_sprite 1, 30
  m.front_sprite -2, 3
end