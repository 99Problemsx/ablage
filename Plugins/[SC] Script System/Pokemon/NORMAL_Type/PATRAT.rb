#=============================================================================
# Patrat - NORMAL Type
#=============================================================================

GameData::Species.define :"PATRAT" do |pkmn|
  pkmn.name "Patrat"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 45, attack: 55, defense: 39,
                  sp_atk: 42, sp_def: 35, speed: 39
  pkmn.abilities :"RUNAWAY", :"KEENEYE"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 51
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 11.6
  pkmn.category "Scout"
  pkmn.pokedex_entry "Extremely cautious, they take shifts to maintain a constant watch of their nest. They feel insecure without a lookout."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"LEER"
    m.at 6, :"BITE"
    m.at 8, :"BIDE"
    m.at 11, :"DETECT"
    m.at 13, :"SANDATTACK"
    m.at 16, :"CRUNCH"
    m.at 18, :"HYPNOSIS"
    m.at 21, :"SUPERFANG"
    m.at 23, :"AFTERYOU"
    m.at 26, :"WORKUP"
    m.at 28, :"HYPERFANG"
    m.at 31, :"MEANLOOK"
    m.at 33, :"BATONPASS"
    m.at 36, :"SLAM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"LASTRESORT", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWORDSDANCE", :"THUNDERBOLT", :"TOXIC", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"ASSURANCE", :"FLAIL", :"FORESIGHT", :"IRONTAIL", :"PURSUIT", :"REVENGE", :"SCREECH"
end

GameData::SpeciesMetrics.define :"PATRAT" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 26
  m.shadow_sprite 0, 0, 1
end