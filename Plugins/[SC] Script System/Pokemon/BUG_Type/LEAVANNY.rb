#=============================================================================
# Leavanny - BUG Type
#=============================================================================

GameData::Species.define :"LEAVANNY" do |pkmn|
  pkmn.name "Leavanny"
  pkmn.types :"BUG", :"GRASS"
  pkmn.base_stats hp: 75, attack: 103, defense: 80,
                  sp_atk: 92, sp_def: 70, speed: 70
  pkmn.abilities :"SWARM", :"CHLOROPHYLL"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 221
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 20.5
  pkmn.category "Nurturing"
  pkmn.pokedex_entry "It keeps its eggs warm with heat from fermenting leaves. It also uses leaves to make warm wrappings for Sewaddle."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"FALSESWIPE"
    m.at 1, :"TACKLE"
    m.at 1, :"STRINGSHOT"
    m.at 1, :"BUGBITE"
    m.at 1, :"RAZORLEAF"
    m.at 8, :"BUGBITE"
    m.at 15, :"RAZORLEAF"
    m.at 22, :"STRUGGLEBUG"
    m.at 29, :"SLASH"
    m.at 32, :"HELPINGHAND"
    m.at 36, :"LEAFBLADE"
    m.at 39, :"XSCISSOR"
    m.at 43, :"ENTRAINMENT"
    m.at 46, :"SWORDSDANCE"
    m.at 50, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BUGBITE", :"CALMMIND", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"LEAVANNY" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 7
  m.shadow_sprite 0, 0, 1
end