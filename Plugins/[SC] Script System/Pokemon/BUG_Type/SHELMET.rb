#=============================================================================
# Shelmet - BUG Type
#=============================================================================

GameData::Species.define :"SHELMET" do |pkmn|
  pkmn.name "Shelmet"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 50, attack: 40, defense: 85,
                  sp_atk: 25, sp_def: 40, speed: 65
  pkmn.abilities :"HYDRATION", :"SHELLARMOR"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 61
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 7.7
  pkmn.category "Snail"
  pkmn.pokedex_entry "It evolves when bathed in an electric-like energy along with Karrablast. The reason is still unknown."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"LEECHLIFE"
    m.at 4, :"ACID"
    m.at 8, :"BIDE"
    m.at 13, :"CURSE"
    m.at 16, :"STRUGGLEBUG"
    m.at 20, :"MEGADRAIN"
    m.at 25, :"YAWN"
    m.at 28, :"PROTECT"
    m.at 32, :"ACIDARMOR"
    m.at 37, :"GIGADRAIN"
    m.at 40, :"BODYSLAM"
    m.at 44, :"BUGBUZZ"
    m.at 49, :"RECOVER"
    m.at 52, :"GUARDSWAP"
    m.at 56, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"BATONPASS", :"DOUBLEEDGE", :"ENCORE", :"ENDURE", :"FEINT", :"GUARDSPLIT", :"MINDREADER", :"MUDSLAP", :"PURSUIT", :"SPIKES"
end

GameData::SpeciesMetrics.define :"SHELMET" do |m|
  m.back_sprite -4, 0
  m.front_sprite 2, 20
  m.shadow_sprite 0, 0, 2
end