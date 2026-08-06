#=============================================================================
# Gossifleur - GRASS Type
#=============================================================================

GameData::Species.define :"GOSSIFLEUR" do |pkmn|
  pkmn.name "Gossifleur"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 40, attack: 40, defense: 60,
                  sp_atk: 10, sp_def: 40, speed: 60
  pkmn.abilities :"COTTONDOWN", :"REGENERATOR"
  pkmn.hidden_abilities :"EFFECTSPORE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 50
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 2.2
  pkmn.category "Flowering"
  pkmn.pokedex_entry "It anchors itself in the ground with its single leg, then basks in the sun. After absorbing enough sunlight, its petals spread as it blooms brilliantly."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"LEAFAGE"
    m.at 1, :"SING"
    m.at 4, :"RAPIDSPIN"
    m.at 8, :"SWEETSCENT"
    m.at 12, :"RAZORLEAF"
    m.at 16, :"ROUND"
    m.at 21, :"LEAFTORNADO"
    m.at 24, :"SYNTHESIS"
    m.at 28, :"HYPERVOICE"
    m.at 32, :"AROMATHERAPY"
    m.at 36, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"LEAFSTORM", :"LIGHTSCREEN", :"MAGICALLEAF", :"MIMIC", :"NATURALGIFT", :"POLLENPUFF", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"GROWTH", :"LEECHSEED", :"POISONPOWDER", :"SLEEPPOWDER", :"STUNSPORE", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"GOSSIFLEUR" do |m|
  m.back_sprite 0, 14
  m.front_sprite 2, 15
end