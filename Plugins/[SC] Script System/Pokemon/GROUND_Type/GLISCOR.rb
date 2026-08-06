#=============================================================================
# Gliscor - GROUND Type
#=============================================================================

GameData::Species.define :"GLISCOR" do |pkmn|
  pkmn.name "Gliscor"
  pkmn.types :"GROUND", :"FLYING"
  pkmn.base_stats hp: 75, attack: 95, defense: 125,
                  sp_atk: 95, sp_def: 45, speed: 75
  pkmn.abilities :"HYPERCUTTER", :"SANDVEIL"
  pkmn.hidden_abilities :"POISONHEAL"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 179
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 42.5
  pkmn.category "Fang Scorp"
  pkmn.pokedex_entry "It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!"
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"THUNDERFANG"
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"POISONJAB"
    m.at 1, :"SANDATTACK"
    m.at 1, :"HARDEN"
    m.at 1, :"KNOCKOFF"
    m.at 4, :"SANDATTACK"
    m.at 7, :"HARDEN"
    m.at 10, :"KNOCKOFF"
    m.at 13, :"QUICKATTACK"
    m.at 16, :"FURYCUTTER"
    m.at 19, :"FEINTATTACK"
    m.at 22, :"ACROBATICS"
    m.at 27, :"NIGHTSLASH"
    m.at 30, :"UTURN"
    m.at 35, :"SCREECH"
    m.at 40, :"XSCISSOR"
    m.at 45, :"SKYUPPERCUT"
    m.at 50, :"SWORDSDANCE"
    m.at 55, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DEFOG", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UTURN", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"GLISCOR" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, 2
  m.shadow_sprite 0, 0, 2
end