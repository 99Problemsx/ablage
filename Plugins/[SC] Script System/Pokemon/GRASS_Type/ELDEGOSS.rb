#=============================================================================
# Eldegoss - GRASS Type
#=============================================================================

GameData::Species.define :"ELDEGOSS" do |pkmn|
  pkmn.name "Eldegoss"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 60, attack: 50, defense: 90,
                  sp_atk: 60, sp_def: 80, speed: 120
  pkmn.abilities :"COTTONDOWN", :"REGENERATOR"
  pkmn.hidden_abilities :"EFFECTSPORE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 161
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 2.5
  pkmn.category "Cotton Bloom"
  pkmn.pokedex_entry "The seeds attached to its cotton fluff are full of nutrients. It spreads them on the wind so that plants and other Pokémon can benefit from them."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 0, :"COTTONSPORE"
    m.at 1, :"LEAFAGE"
    m.at 1, :"SING"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"SWEETSCENT"
    m.at 12, :"RAZORLEAF"
    m.at 16, :"ROUND"
    m.at 23, :"LEAFTORNADO"
    m.at 28, :"SYNTHESIS"
    m.at 34, :"HYPERVOICE"
    m.at 40, :"AROMATHERAPY"
    m.at 46, :"LEAFSTORM"
    m.at 52, :"COTTONGUARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"LEAFSTORM", :"LIGHTSCREEN", :"MAGICALLEAF", :"MIMIC", :"NATURALGIFT", :"POLLENPUFF", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"WEATHERBALL", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ELDEGOSS" do |m|
  m.back_sprite 0, 44
  m.front_sprite 1, 14
end