#=============================================================================
# Tangrowth - GRASS Type
#=============================================================================

GameData::Species.define :"TANGROWTH" do |pkmn|
  pkmn.name "Tangrowth"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 100, attack: 100, defense: 125,
                  sp_atk: 50, sp_def: 110, speed: 50
  pkmn.abilities :"CHLOROPHYLL", :"LEAFGUARD"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 187
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 128.6
  pkmn.category "Vine"
  pkmn.pokedex_entry "It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"INGRAIN"
    m.at 1, :"CONSTRICT"
    m.at 4, :"SLEEPPOWDER"
    m.at 7, :"VINEWHIP"
    m.at 10, :"ABSORB"
    m.at 14, :"POISONPOWDER"
    m.at 17, :"BIND"
    m.at 20, :"GROWTH"
    m.at 23, :"MEGADRAIN"
    m.at 27, :"KNOCKOFF"
    m.at 30, :"STUNSPORE"
    m.at 33, :"NATURALGIFT"
    m.at 36, :"GIGADRAIN"
    m.at 40, :"ANCIENTPOWER"
    m.at 43, :"SLAM"
    m.at 46, :"TICKLE"
    m.at 49, :"WRINGOUT"
    m.at 53, :"POWERWHIP"
    m.at 56, :"BLOCK"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"ATTRACT", :"BIND", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"TANGROWTH" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 7
  m.shadow_sprite 0, 0, 3
end