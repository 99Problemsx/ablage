#=============================================================================
# Scizor - BUG Type
#=============================================================================

GameData::Species.define :"SCIZOR" do |pkmn|
  pkmn.name "Scizor"
  pkmn.types :"BUG", :"STEEL"
  pkmn.base_stats hp: 70, attack: 130, defense: 100,
                  sp_atk: 65, sp_def: 55, speed: 80
  pkmn.abilities :"SWARM", :"TECHNICIAN"
  pkmn.hidden_abilities :"LIGHTMETAL"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 175
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.8
  pkmn.weight 118.0
  pkmn.category "Pincer"
  pkmn.pokedex_entry "A Scizor has a body with the hardness of steel. It is not easily fazed by ordinary sorts of attacks. It flaps its wings to regulate its body temperature."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"BULLETPUNCH"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 5, :"FOCUSENERGY"
    m.at 9, :"PURSUIT"
    m.at 13, :"FALSESWIPE"
    m.at 17, :"AGILITY"
    m.at 21, :"METALCLAW"
    m.at 25, :"FURYCUTTER"
    m.at 29, :"SLASH"
    m.at 33, :"RAZORWIND"
    m.at 37, :"IRONDEFENSE"
    m.at 41, :"XSCISSOR"
    m.at 45, :"NIGHTSLASH"
    m.at 49, :"DOUBLEHIT"
    m.at 53, :"IRONHEAD"
    m.at 57, :"SWORDSDANCE"
    m.at 61, :"FEINT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASHCANNON", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"TOXIC", :"UTURN", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SCIZOR" do |m|
  m.back_sprite 6, 0
  m.front_sprite -4, 12
  m.shadow_sprite 0, 0, 3
end