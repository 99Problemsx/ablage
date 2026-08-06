#=============================================================================
# Herdier - NORMAL Type
#=============================================================================

GameData::Species.define :"HERDIER" do |pkmn|
  pkmn.name "Herdier"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 65, attack: 80, defense: 65,
                  sp_atk: 60, sp_def: 35, speed: 65
  pkmn.abilities :"INTIMIDATE", :"SANDRUSH"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 130
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.9
  pkmn.weight 14.7
  pkmn.category "Loyal Dog"
  pkmn.pokedex_entry "It loyally follows its Trainer's orders. For ages, they have helped Trainers raise Pokémon."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"TACKLE"
    m.at 1, :"ODORSLEUTH"
    m.at 1, :"BITE"
    m.at 5, :"ODORSLEUTH"
    m.at 8, :"BITE"
    m.at 12, :"HELPINGHAND"
    m.at 15, :"TAKEDOWN"
    m.at 20, :"WORKUP"
    m.at 24, :"CRUNCH"
    m.at 29, :"ROAR"
    m.at 33, :"RETALIATE"
    m.at 38, :"REVERSAL"
    m.at 42, :"LASTRESORT"
    m.at 47, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WILDCHARGE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"HERDIER" do |m|
  m.back_sprite -3, 0
  m.front_sprite -3, 24
  m.shadow_sprite 0, 0, 2
end