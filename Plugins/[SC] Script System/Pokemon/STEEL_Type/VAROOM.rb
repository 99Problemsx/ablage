#=============================================================================
# Varoom - STEEL Type
#=============================================================================

GameData::Species.define :"VAROOM" do |pkmn|
  pkmn.name "Varoom"
  pkmn.types :"STEEL", :"POISON"
  pkmn.base_stats hp: 45, attack: 70, defense: 63,
                  sp_atk: 47, sp_def: 30, speed: 45
  pkmn.abilities :"OVERCOAT"
  pkmn.hidden_abilities :"SLOWSTART"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 60
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 35.0
  pkmn.category "Single-Cyl"
  pkmn.pokedex_entry "It is said that this Pokémon was born when an unknown poison Pokémon entered and inspirited an engine left at a scrap-processing factory."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POISONGAS"
    m.at 1, :"LICK"
    m.at 4, :"SMOG"
    m.at 7, :"TAUNT"
    m.at 10, :"ASSURANCE"
    m.at 13, :"SLUDGE"
    m.at 17, :"GYROBALL"
    m.at 21, :"HEADBUTT"
    m.at 25, :"SCREECH"
    m.at 28, :"IRONHEAD"
    m.at 32, :"SWAGGER"
    m.at 36, :"POISONJAB"
    m.at 41, :"UPROAR"
    m.at 46, :"SPINOUT"
    m.at 50, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DOUBLEEDGE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GUNKSHOT", :"GYROBALL", :"HAZE", :"IRONDEFENSE", :"IRONHEAD", :"METALSOUND", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"THIEF", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"VENOSHOCK", :"ZENHEADBUTT"
  pkmn.egg_moves :"HAZE", :"PARTINGSHOT", :"SELFDESTRUCT", :"TORMENT", :"TOXIC"
end

GameData::SpeciesMetrics.define :"VAROOM" do |m|
  m.back_sprite 0, 56
  m.front_sprite 0, 17
  m.shadow_sprite 0, 0, 2
end