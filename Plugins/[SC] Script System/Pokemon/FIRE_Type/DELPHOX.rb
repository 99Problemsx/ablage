#=============================================================================
# Delphox - FIRE Type
#=============================================================================

GameData::Species.define :"DELPHOX" do |pkmn|
  pkmn.name "Delphox"
  pkmn.types :"FIRE", :"PSYCHIC"
  pkmn.base_stats hp: 75, attack: 69, defense: 72,
                  sp_atk: 104, sp_def: 114, speed: 100
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"MAGICIAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 267
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 39.0
  pkmn.category "Fox"
  pkmn.pokedex_entry "It gazes into the flame at the tip of its branch to achieve a focused state, which allows it to see into the future."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"MYSTICALFIRE"
    m.at 1, :"FUTURESIGHT"
    m.at 1, :"ROLEPLAY"
    m.at 1, :"SWITCHEROO"
    m.at 1, :"SHADOWBALL"
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 1, :"EMBER"
    m.at 1, :"HOWL"
    m.at 5, :"EMBER"
    m.at 11, :"HOWL"
    m.at 14, :"FLAMECHARGE"
    m.at 18, :"PSYBEAM"
    m.at 22, :"FIRESPIN"
    m.at 28, :"LUCKYCHANT"
    m.at 31, :"LIGHTSCREEN"
    m.at 38, :"PSYSHOCK"
    m.at 45, :"FLAMETHROWER"
    m.at 51, :"WILLOWISP"
    m.at 57, :"PSYCHIC"
    m.at 62, :"SUNNYDAY"
    m.at 68, :"MAGICROOM"
    m.at 74, :"FIREBLAST"
    m.at 80, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BLASTBURN", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CUT", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"LASERFOCUS", :"LIGHTSCREEN", :"LOWKICK", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DELPHOX" do |m|
  m.back_sprite 0, 44
  m.front_sprite 1, 6
end

# Form 1 - Mega Delphox
GameData::Species.define :"DELPHOX_1" do |pkmn|
  pkmn.species :"DELPHOX"
  pkmn.form 1
  pkmn.name "Delphox"
  pkmn.form_name "Mega Delphox"
  pkmn.types :"FIRE", :"PSYCHIC"
  pkmn.base_stats hp: 75, attack: 69, defense: 72,
                  sp_atk: 159, sp_def: 125, speed: 134
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"MAGICIAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 267
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 39.0
  pkmn.category "Fox"
  pkmn.pokedex_entry "It wields flaming branches to dazzle its opponents before incinerating them with a huge fireball."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"MYSTICALFIRE"
    m.at 1, :"FUTURESIGHT"
    m.at 1, :"ROLEPLAY"
    m.at 1, :"SWITCHEROO"
    m.at 1, :"SHADOWBALL"
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 1, :"EMBER"
    m.at 1, :"HOWL"
    m.at 5, :"EMBER"
    m.at 11, :"HOWL"
    m.at 14, :"FLAMECHARGE"
    m.at 18, :"PSYBEAM"
    m.at 22, :"FIRESPIN"
    m.at 28, :"LUCKYCHANT"
    m.at 31, :"LIGHTSCREEN"
    m.at 38, :"PSYSHOCK"
    m.at 45, :"FLAMETHROWER"
    m.at 51, :"WILLOWISP"
    m.at 57, :"PSYCHIC"
    m.at 62, :"SUNNYDAY"
    m.at 68, :"MAGICROOM"
    m.at 74, :"FIREBLAST"
    m.at 80, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BLASTBURN", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CUT", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"LASERFOCUS", :"LIGHTSCREEN", :"LOWKICK", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DELPHOX_1" do |m|
  m.back_sprite 0, 44
  m.front_sprite 1, 6
end