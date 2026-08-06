#=============================================================================
# Watchog - NORMAL Type
#=============================================================================

GameData::Species.define :"WATCHOG" do |pkmn|
  pkmn.name "Watchog"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 60, attack: 85, defense: 69,
                  sp_atk: 77, sp_def: 60, speed: 69
  pkmn.abilities :"ILLUMINATE", :"KEENEYE"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 147
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 27.0
  pkmn.category "Lookout"
  pkmn.pokedex_entry "They make the patterns on their bodies shine in order to threaten predators. Keen eyesight lets them see in the dark."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LOWKICK"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"BITE"
    m.at 3, :"LEER"
    m.at 6, :"BITE"
    m.at 8, :"BIDE"
    m.at 11, :"DETECT"
    m.at 13, :"SANDATTACK"
    m.at 16, :"CRUNCH"
    m.at 18, :"HYPNOSIS"
    m.at 20, :"CONFUSERAY"
    m.at 22, :"SUPERFANG"
    m.at 25, :"AFTERYOU"
    m.at 29, :"PSYCHUP"
    m.at 32, :"HYPERFANG"
    m.at 36, :"MEANLOOK"
    m.at 39, :"BATONPASS"
    m.at 43, :"SLAM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"DREAMEATER", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWORDSDANCE", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"WATCHOG" do |m|
  m.back_sprite -2, 0
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 1
end