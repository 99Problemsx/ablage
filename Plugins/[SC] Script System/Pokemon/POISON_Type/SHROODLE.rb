#=============================================================================
# Shroodle - POISON Type
#=============================================================================

GameData::Species.define :"SHROODLE" do |pkmn|
  pkmn.name "Shroodle"
  pkmn.types :"POISON", :"NORMAL"
  pkmn.base_stats hp: 40, attack: 65, defense: 35,
                  sp_atk: 75, sp_def: 40, speed: 35
  pkmn.abilities :"UNBURDEN", :"PICKPOCKET"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 58
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 0.7
  pkmn.category "Toxic Mouse"
  pkmn.pokedex_entry "Though usually a mellow Pokémon, it will sink its sharp, poison-soaked front teeth into any that anger it, causing paralysis in the object of its ire."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"SCRATCH"
    m.at 5, :"ACIDSPRAY"
    m.at 8, :"BITE"
    m.at 8, :"FURYSWIPES"
    m.at 11, :"SWITCHEROO"
    m.at 14, :"POISONFANG"
    m.at 18, :"FLATTER"
    m.at 21, :"SLASH"
    m.at 25, :"UTURN"
    m.at 29, :"POISONJAB"
    m.at 33, :"TAUNT"
    m.at 36, :"SUBSTITUTE"
    m.at 40, :"KNOCKOFF"
    m.at 45, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"ACROBATICS", :"BATONPASS", :"DIG", :"DOUBLEEDGE", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOULPLAY", :"GUNKSHOT", :"HELPINGHAND", :"KNOCKOFF", :"METRONOME", :"MUDSHOT", :"MUDSLAP", :"NASTYPLOT", :"POISONJAB", :"POUNCE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"TOXIC", :"TRAILBLAZE", :"UTURN", :"VENOSHOCK"
  pkmn.egg_moves :"COPYCAT", :"CROSSPOISON", :"PARTINGSHOT", :"SUPERFANG", :"SWAGGER", :"TOXIC"
end

GameData::SpeciesMetrics.define :"SHROODLE" do |m|
  m.back_sprite 0, 55
  m.front_sprite -1, 37
  m.shadow_sprite 0, 0, 1
end