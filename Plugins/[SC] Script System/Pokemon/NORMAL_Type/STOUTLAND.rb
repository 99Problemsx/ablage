#=============================================================================
# Stoutland - NORMAL Type
#=============================================================================

GameData::Species.define :"STOUTLAND" do |pkmn|
  pkmn.name "Stoutland"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 85, attack: 100, defense: 90,
                  sp_atk: 80, sp_def: 45, speed: 90
  pkmn.abilities :"INTIMIDATE", :"SANDRUSH"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 221
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 61.0
  pkmn.category "Big-Hearted"
  pkmn.pokedex_entry "This extremely wise Pokémon excels at rescuing people stranded at sea or in the mountains."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"THUNDERFANG"
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
    m.at 36, :"RETALIATE"
    m.at 42, :"REVERSAL"
    m.at 51, :"LASTRESORT"
    m.at 59, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONHEAD", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WILDCHARGE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"STOUTLAND" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 17
  m.shadow_sprite 0, 0, 3
end