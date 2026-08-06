#=============================================================================
# Fomantis - GRASS Type
#=============================================================================

GameData::Species.define :"FOMANTIS" do |pkmn|
  pkmn.name "Fomantis"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 40, attack: 55, defense: 35,
                  sp_atk: 35, sp_def: 50, speed: 35
  pkmn.abilities :"LEAFGUARD"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 50
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 1.5
  pkmn.category "Sickle Grass"
  pkmn.pokedex_entry "When the sun rises, Fomantis spreads its four leaves and bathes in the sunlight. The tip of its head has a pleasant aroma."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"LEAFAGE"
    m.at 1, :"FURYCUTTER"
    m.at 5, :"GROWTH"
    m.at 10, :"INGRAIN"
    m.at 15, :"RAZORLEAF"
    m.at 20, :"SWEETSCENT"
    m.at 25, :"SLASH"
    m.at 30, :"XSCISSOR"
    m.at 35, :"SYNTHESIS"
    m.at 40, :"LEAFBLADE"
    m.at 45, :"SUNNYDAY"
    m.at 50, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"DUALCHOP", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"HIDDENPOWER", :"LEAFBLADE", :"LEAFSTORM", :"LEECHLIFE", :"MAGICALLEAF", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WEATHERBALL", :"WORRYSEED", :"XSCISSOR", :"TERABLAST"
  pkmn.egg_moves :"AROMATHERAPY", :"DEFOG", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"FOMANTIS" do |m|
  m.back_sprite 0, 44
  m.front_sprite -1, 27
end