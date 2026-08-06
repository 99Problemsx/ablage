#=============================================================================
# Grafaiai - POISON Type
#=============================================================================

GameData::Species.define :"GRAFAIAI" do |pkmn|
  pkmn.name "Grafaiai"
  pkmn.types :"POISON", :"NORMAL"
  pkmn.base_stats hp: 63, attack: 95, defense: 65,
                  sp_atk: 110, sp_def: 80, speed: 72
  pkmn.abilities :"UNBURDEN", :"POISONTOUCH"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 170
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 27.2
  pkmn.category "Toxic Monkey"
  pkmn.pokedex_entry "The color of the poisonous saliva depends on what the Pokémon eats. Grafaiai covers its fingers in its saliva and draws patterns on trees in forests."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"DOODLE"
    m.at 1, :"LEER"
    m.at 1, :"SCRATCH"
    m.at 5, :"ACIDSPRAY"
    m.at 8, :"FURYSWIPES"
    m.at 11, :"SWITCHEROO"
    m.at 14, :"POISONFANG"
    m.at 18, :"FLATTER"
    m.at 21, :"SLASH"
    m.at 25, :"UTURN"
    m.at 33, :"POISONJAB"
    m.at 37, :"TAUNT"
    m.at 40, :"SUBSTITUTE"
    m.at 45, :"KNOCKOFF"
    m.at 51, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"ACROBATICS", :"BATONPASS", :"DIG", :"DOUBLEEDGE", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOULPLAY", :"GIGAIMPACT", :"GUNKSHOT", :"HELPINGHAND", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"METRONOME", :"MUDSHOT", :"MUDSLAP", :"NASTYPLOT", :"POISONJAB", :"POISONTAIL", :"POUNCE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"SCARYFACE", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"TOXIC", :"TRAILBLAZE", :"UTURN", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"GRAFAIAI" do |m|
  m.back_sprite 0, 53
  m.front_sprite 3, 25
  m.shadow_sprite 0, 0, 1
end