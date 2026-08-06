#=============================================================================
# Parasect - BUG Type
#=============================================================================

GameData::Species.define :"PARASECT" do |pkmn|
  pkmn.name "Parasect"
  pkmn.types :"BUG", :"GRASS"
  pkmn.base_stats hp: 60, attack: 95, defense: 80,
                  sp_atk: 30, sp_def: 60, speed: 80
  pkmn.abilities :"EFFECTSPORE", :"DRYSKIN"
  pkmn.hidden_abilities :"DAMP"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 142
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 29.5
  pkmn.category "Mushroom"
  pkmn.pokedex_entry "Parasect are known to infest the roots of large trees en masse and drain nutrients. When an infested tree dies, they move onto another tree all at once."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"CROSSPOISON"
    m.at 1, :"SCRATCH"
    m.at 1, :"STUNSPORE"
    m.at 1, :"POISONPOWDER"
    m.at 1, :"LEECHLIFE"
    m.at 6, :"STUNSPORE"
    m.at 6, :"POISONPOWDER"
    m.at 11, :"LEECHLIFE"
    m.at 17, :"FURYCUTTER"
    m.at 22, :"SPORE"
    m.at 29, :"SLASH"
    m.at 37, :"GROWTH"
    m.at 44, :"GIGADRAIN"
    m.at 51, :"AROMATHERAPY"
    m.at 59, :"RAGEPOWDER"
    m.at 66, :"XSCISSOR"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"VENOSHOCK", :"WORRYSEED", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"PARASECT" do |m|
  m.back_sprite 1, 0
  m.front_sprite -3, 20
  m.shadow_sprite 0, 0, 3
end