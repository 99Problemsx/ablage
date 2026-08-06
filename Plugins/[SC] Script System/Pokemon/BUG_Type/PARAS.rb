#=============================================================================
# Paras - BUG Type
#=============================================================================

GameData::Species.define :"PARAS" do |pkmn|
  pkmn.name "Paras"
  pkmn.types :"BUG", :"GRASS"
  pkmn.base_stats hp: 35, attack: 70, defense: 55,
                  sp_atk: 25, sp_def: 45, speed: 55
  pkmn.abilities :"EFFECTSPORE", :"DRYSKIN"
  pkmn.hidden_abilities :"DAMP"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 57
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 5.4
  pkmn.category "Mushroom"
  pkmn.pokedex_entry "A Paras has parasitic tochukaso mushrooms growing on its back. They grow by drawing nutrients from the host. They are valued as a medicine for long life."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 6, :"STUNSPORE"
    m.at 6, :"POISONPOWDER"
    m.at 11, :"LEECHLIFE"
    m.at 17, :"FURYCUTTER"
    m.at 22, :"SPORE"
    m.at 27, :"SLASH"
    m.at 33, :"GROWTH"
    m.at 38, :"GIGADRAIN"
    m.at 43, :"AROMATHERAPY"
    m.at 49, :"RAGEPOWDER"
    m.at 54, :"XSCISSOR"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"VENOSHOCK", :"WORRYSEED", :"XSCISSOR"
  pkmn.egg_moves :"AGILITY", :"BUGBITE", :"COUNTER", :"CROSSPOISON", :"ENDURE", :"FLAIL", :"LEECHSEED", :"METALCLAW", :"NATURALGIFT", :"PSYBEAM", :"PURSUIT", :"SCREECH", :"SWEETSCENT"
end

GameData::SpeciesMetrics.define :"PARAS" do |m|
  m.back_sprite 5, 0
  m.front_sprite -3, 33
  m.shadow_sprite 0, 0, 2
end