#=============================================================================
# Karrablast - BUG Type
#=============================================================================

GameData::Species.define :"KARRABLAST" do |pkmn|
  pkmn.name "Karrablast"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 50, attack: 75, defense: 45,
                  sp_atk: 60, sp_def: 40, speed: 45
  pkmn.abilities :"SWARM", :"SHEDSKIN"
  pkmn.hidden_abilities :"NOGUARD"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 63
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 5.9
  pkmn.category "Clamping"
  pkmn.pokedex_entry "When they feel threatened, they spit an acidic liquid to drive attackers away. This Pokémon targets Shelmet."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 4, :"LEER"
    m.at 8, :"ENDURE"
    m.at 13, :"FURYCUTTER"
    m.at 16, :"FURYATTACK"
    m.at 20, :"HEADBUTT"
    m.at 25, :"FALSESWIPE"
    m.at 28, :"BUGBUZZ"
    m.at 32, :"SLASH"
    m.at 37, :"TAKEDOWN"
    m.at 40, :"SCARYFACE"
    m.at 44, :"XSCISSOR"
    m.at 49, :"FLAIL"
    m.at 52, :"SWORDSDANCE"
    m.at 56, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FRUSTRATION", :"GIGADRAIN", :"HIDDENPOWER", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"BUGBITE", :"COUNTER", :"FEINTATTACK", :"HORNATTACK", :"KNOCKOFF", :"MEGAHORN", :"PURSUIT", :"SCREECH"
end

GameData::SpeciesMetrics.define :"KARRABLAST" do |m|
  m.back_sprite 1, 0
  m.front_sprite 2, 32
  m.shadow_sprite 0, 0, 1
end