#=============================================================================
# Fennekin - FIRE Type
#=============================================================================

GameData::Species.define :"FENNEKIN" do |pkmn|
  pkmn.name "Fennekin"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 40, attack: 45, defense: 40,
                  sp_atk: 60, sp_def: 62, speed: 60
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"MAGICIAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 61
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 9.4
  pkmn.category "Fox"
  pkmn.pokedex_entry "As it walks, it munches on a twig in place of a snack. It intimidates opponents by puffing hot air out of its ears."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 5, :"EMBER"
    m.at 11, :"HOWL"
    m.at 14, :"FLAMECHARGE"
    m.at 17, :"PSYBEAM"
    m.at 20, :"FIRESPIN"
    m.at 25, :"LUCKYCHANT"
    m.at 27, :"LIGHTSCREEN"
    m.at 31, :"PSYSHOCK"
    m.at 35, :"FLAMETHROWER"
    m.at 38, :"WILLOWISP"
    m.at 41, :"PSYCHIC"
    m.at 43, :"SUNNYDAY"
    m.at 46, :"MAGICROOM"
    m.at 48, :"FIREBLAST"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CUT", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"WILLOWISP", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"HEATWAVE", :"HYPNOSIS", :"MAGICCOAT", :"PSYCHICTERRAIN", :"WISH"
end

GameData::SpeciesMetrics.define :"FENNEKIN" do |m|
  m.back_sprite 0, 5
  m.front_sprite -2, 3
end