#=============================================================================
# Lurantis - GRASS Type
#=============================================================================

GameData::Species.define :"LURANTIS" do |pkmn|
  pkmn.name "Lurantis"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 70, attack: 105, defense: 90,
                  sp_atk: 45, sp_def: 80, speed: 90
  pkmn.abilities :"LEAFGUARD"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.9
  pkmn.weight 18.5
  pkmn.category "Bloom Sickle"
  pkmn.pokedex_entry "It requires a lot of effort to maintain Lurantis's vivid coloring, but some collectors enjoy this work and treat it as their hobby."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 0, :"PETALBLIZZARD"
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"SOLARBEAM"
    m.at 1, :"DUALCHOP"
    m.at 1, :"LEAFAGE"
    m.at 1, :"FURYCUTTER"
    m.at 1, :"GROWTH"
    m.at 1, :"INGRAIN"
    m.at 15, :"RAZORLEAF"
    m.at 20, :"SWEETSCENT"
    m.at 25, :"SLASH"
    m.at 30, :"XSCISSOR"
    m.at 37, :"SYNTHESIS"
    m.at 44, :"LEAFBLADE"
    m.at 51, :"SUNNYDAY"
    m.at 63, :"SOLARBLADE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"CONFIDE", :"CROSSPOISON", :"DEFOG", :"DOUBLETEAM", :"DUALCHOP", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LASERFOCUS", :"LEAFBLADE", :"LEAFSTORM", :"LEECHLIFE", :"LOWSWEEP", :"MAGICALLEAF", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHOCUT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WEATHERBALL", :"WORRYSEED", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"LURANTIS" do |m|
  m.back_sprite 0, 48
  m.front_sprite 1, 17
end