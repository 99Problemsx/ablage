#=============================================================================
# Tangela - GRASS Type
#=============================================================================

GameData::Species.define :"TANGELA" do |pkmn|
  pkmn.name "Tangela"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 65, attack: 55, defense: 115,
                  sp_atk: 60, sp_def: 100, speed: 40
  pkmn.abilities :"CHLOROPHYLL", :"LEAFGUARD"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 87
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 35.0
  pkmn.category "Vine"
  pkmn.pokedex_entry "Its vines snap off easily and painlessly if they are grabbed, allowing it to make a quick getaway. The lost vines are replaced by new growth the very next day."
  pkmn.evs defense: 1
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
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BIND", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"AMNESIA", :"CONFUSION", :"ENDEAVOR", :"FLAIL", :"GIGADRAIN", :"LEAFSTORM", :"LEECHSEED", :"MEGADRAIN", :"NATURALGIFT", :"NATUREPOWER", :"POWERSWAP", :"RAGEPOWDER"
end

GameData::SpeciesMetrics.define :"TANGELA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 22
  m.shadow_sprite 0, 0, 2
end