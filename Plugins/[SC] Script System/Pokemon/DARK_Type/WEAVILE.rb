#=============================================================================
# Weavile - DARK Type
#=============================================================================

GameData::Species.define :"WEAVILE" do |pkmn|
  pkmn.name "Weavile"
  pkmn.types :"DARK", :"ICE"
  pkmn.base_stats hp: 70, attack: 120, defense: 65,
                  sp_atk: 125, sp_def: 45, speed: 85
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 179
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 34.0
  pkmn.category "Sharp Claw"
  pkmn.pokedex_entry "They live in cold regions, forming groups of four or five that hunt prey with impressive coordination."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"EMBARGO"
    m.at 1, :"REVENGE"
    m.at 1, :"ASSURANCE"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"TAUNT"
    m.at 1, :"QUICKATTACK"
    m.at 8, :"QUICKATTACK"
    m.at 10, :"FEINTATTACK"
    m.at 14, :"ICYWIND"
    m.at 16, :"FURYSWIPES"
    m.at 20, :"NASTYPLOT"
    m.at 22, :"METALCLAW"
    m.at 25, :"HONECLAWS"
    m.at 28, :"FLING"
    m.at 32, :"SCREECH"
    m.at 35, :"NIGHTSLASH"
    m.at 40, :"SNATCH"
    m.at 44, :"PUNISHMENT"
    m.at 47, :"DARKPULSE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"WHIRLPOOL", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"WEAVILE" do |m|
  m.back_sprite -4, 0
  m.front_sprite 2, 11
  m.shadow_sprite 0, 0, 2
end