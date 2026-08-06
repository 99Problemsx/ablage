#=============================================================================
# Teddiursa - NORMAL Type
#=============================================================================

GameData::Species.define :"TEDDIURSA" do |pkmn|
  pkmn.name "Teddiursa"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 60, attack: 80, defense: 50,
                  sp_atk: 40, sp_def: 50, speed: 50
  pkmn.abilities :"PICKUP", :"QUICKFEET"
  pkmn.hidden_abilities :"HONEYGATHER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 66
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 8.8
  pkmn.category "Little Bear"
  pkmn.pokedex_entry "It licks its palms that are sweetened by being soaked in honey. A Teddiursa makes its own honey by blending fruits and pollen collected by Beedrill."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"COVET"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"LICK"
    m.at 1, :"FAKETEARS"
    m.at 8, :"FURYSWIPES"
    m.at 15, :"FEINTATTACK"
    m.at 22, :"SWEETSCENT"
    m.at 29, :"SLASH"
    m.at 36, :"CHARM"
    m.at 43, :"REST"
    m.at 43, :"SNORE"
    m.at 50, :"THRASH"
    m.at 57, :"FLING"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICEPUNCH", :"LASTRESORT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"WORKUP"
  pkmn.egg_moves :"BELLYDRUM", :"CHIPAWAY", :"CLOSECOMBAT", :"COUNTER", :"CROSSCHOP", :"CRUNCH", :"DOUBLEEDGE", :"FAKETEARS", :"METALCLAW", :"NIGHTSLASH", :"SEISMICTOSS", :"SLEEPTALK", :"TAKEDOWN", :"YAWN"
end

GameData::SpeciesMetrics.define :"TEDDIURSA" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 22
  m.shadow_sprite 0, 0, 1
end