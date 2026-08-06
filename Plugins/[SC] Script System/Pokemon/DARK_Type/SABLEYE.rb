#=============================================================================
# Sableye - DARK Type
#=============================================================================

GameData::Species.define :"SABLEYE" do |pkmn|
  pkmn.name "Sableye"
  pkmn.types :"DARK", :"GHOST"
  pkmn.base_stats hp: 50, attack: 75, defense: 75,
                  sp_atk: 50, sp_def: 65, speed: 65
  pkmn.abilities :"KEENEYE", :"STALL"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 133
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 0.5
  pkmn.weight 11.0
  pkmn.category "Darkness"
  pkmn.pokedex_entry "It digs branching holes in caves using its sharp claws in search of food--raw gems. A Sableye lurks in darkness and is seen only rarely."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"SCRATCH"
    m.at 4, :"FORESIGHT"
    m.at 8, :"NIGHTSHADE"
    m.at 11, :"ASTONISH"
    m.at 15, :"FURYSWIPES"
    m.at 18, :"FAKEOUT"
    m.at 22, :"DETECT"
    m.at 25, :"SHADOWSNEAK"
    m.at 29, :"KNOCKOFF"
    m.at 32, :"FEINTATTACK"
    m.at 36, :"PUNISHMENT"
    m.at 39, :"SHADOWCLAW"
    m.at 43, :"POWERGEM"
    m.at 46, :"CONFUSERAY"
    m.at 50, :"FOULPLAY"
    m.at 53, :"ZENHEADBUTT"
    m.at 57, :"SHADOWBALL"
    m.at 60, :"MEANLOOK"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"TRICK", :"WATERPULSE", :"WILLOWISP", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"CAPTIVATE", :"FEINT", :"FLATTER", :"MEANLOOK", :"METALBURST", :"MOONLIGHT", :"NASTYPLOT", :"RECOVER", :"SUCKERPUNCH", :"TRICK"
end

GameData::SpeciesMetrics.define :"SABLEYE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 19
  m.shadow_sprite 0, 0, 2
end