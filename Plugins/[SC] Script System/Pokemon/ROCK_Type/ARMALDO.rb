#=============================================================================
# Armaldo - ROCK Type
#=============================================================================

GameData::Species.define :"ARMALDO" do |pkmn|
  pkmn.name "Armaldo"
  pkmn.types :"ROCK", :"BUG"
  pkmn.base_stats hp: 75, attack: 125, defense: 100,
                  sp_atk: 45, sp_def: 70, speed: 80
  pkmn.abilities :"BATTLEARMOR"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.5
  pkmn.weight 68.2
  pkmn.category "Plate"
  pkmn.pokedex_entry "Armaldo usually lives on land. However, when it hunts for prey, it dives beneath the ocean. It swims around using its two large wings."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"HARDEN"
    m.at 1, :"MUDSPORT"
    m.at 1, :"WATERGUN"
    m.at 7, :"MUDSPORT"
    m.at 13, :"WATERGUN"
    m.at 19, :"METALCLAW"
    m.at 25, :"PROTECT"
    m.at 31, :"ANCIENTPOWER"
    m.at 37, :"FURYCUTTER"
    m.at 46, :"SLASH"
    m.at 55, :"ROCKBLAST"
    m.at 67, :"CRUSHCLAW"
    m.at 73, :"XSCISSOR"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASHCANNON", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"WATERPULSE", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"ARMALDO" do |m|
  m.back_sprite 0, 0
  m.front_sprite 4, 11
  m.shadow_sprite 0, 0, 3
end