#=============================================================================
# Cherubi - GRASS Type
#=============================================================================

GameData::Species.define :"CHERUBI" do |pkmn|
  pkmn.name "Cherubi"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 45, attack: 35, defense: 45,
                  sp_atk: 35, sp_def: 62, speed: 53
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 55
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 3.3
  pkmn.category "Cherry"
  pkmn.pokedex_entry "The small ball holds the nutrients needed for evolution. Apparently, it is very sweet and tasty."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"MORNINGSUN"
    m.at 1, :"TACKLE"
    m.at 7, :"GROWTH"
    m.at 10, :"LEECHSEED"
    m.at 13, :"HELPINGHAND"
    m.at 19, :"MAGICALLEAF"
    m.at 22, :"SUNNYDAY"
    m.at 28, :"WORRYSEED"
    m.at 31, :"TAKEDOWN"
    m.at 37, :"SOLARBEAM"
    m.at 40, :"LUCKYCHANT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"AROMATHERAPY", :"DEFENSECURL", :"GRASSWHISTLE", :"HEALINGWISH", :"HEALPULSE", :"NATURALGIFT", :"NATUREPOWER", :"RAZORLEAF", :"ROLLOUT", :"SEEDBOMB", :"SWEETSCENT", :"TICKLE", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"CHERUBI" do |m|
  m.back_sprite -3, 0
  m.front_sprite 6, 25
  m.shadow_sprite 0, 0, 1
end