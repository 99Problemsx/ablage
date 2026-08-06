#=============================================================================
# Shroomish - GRASS Type
#=============================================================================

GameData::Species.define :"SHROOMISH" do |pkmn|
  pkmn.name "Shroomish"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 60, attack: 40, defense: 60,
                  sp_atk: 35, sp_def: 40, speed: 60
  pkmn.abilities :"EFFECTSPORE", :"POISONHEAL"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Brown"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 59
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 4.5
  pkmn.category "Mushroom"
  pkmn.pokedex_entry "It loves to eat damp, composted soil in forests. If you enter a forest after a long rain, you can see many Shroomish feasting on composted soil."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 5, :"TACKLE"
    m.at 9, :"STUNSPORE"
    m.at 13, :"LEECHSEED"
    m.at 17, :"MEGADRAIN"
    m.at 21, :"HEADBUTT"
    m.at 25, :"POISONPOWDER"
    m.at 29, :"WORRYSEED"
    m.at 33, :"GROWTH"
    m.at 37, :"GIGADRAIN"
    m.at 41, :"SEEDBOMB"
    m.at 45, :"SPORE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
  pkmn.egg_moves :"BULLETSEED", :"CHARM", :"DRAINPUNCH", :"FAKETEARS", :"FOCUSPUNCH", :"HELPINGHAND", :"NATURALGIFT", :"SEEDBOMB", :"WAKEUPSLAP", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SHROOMISH" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 25
  m.shadow_sprite 0, 0, 2
end