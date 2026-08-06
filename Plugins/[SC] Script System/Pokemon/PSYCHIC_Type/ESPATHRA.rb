#=============================================================================
# Espathra - PSYCHIC Type
#=============================================================================

GameData::Species.define :"ESPATHRA" do |pkmn|
  pkmn.name "Espathra"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 95, attack: 60, defense: 60,
                  sp_atk: 105, sp_def: 101, speed: 60
  pkmn.abilities :"OPPORTUNIST", :"FRISK"
  pkmn.hidden_abilities :"SPEEDBOOST"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.9
  pkmn.weight 90.0
  pkmn.category "Ostrich"
  pkmn.pokedex_entry "It immobilizes opponents by bathing them in psychic power from its large eyes. Despite its appearance, it has a vicious temperament."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 0, :"LUMINACRASH"
    m.at 1, :"FEATHERDANCE"
    m.at 1, :"GROWL"
    m.at 1, :"PECK"
    m.at 1, :"DRILLPECK"
    m.at 5, :"CONFUSION"
    m.at 8, :"BABYDOLLEYES"
    m.at 11, :"DISARMINGVOICE"
    m.at 15, :"QUICKATTACK"
    m.at 19, :"PSYBEAM"
    m.at 24, :"PLUCK"
    m.at 29, :"AGILITY"
    m.at 34, :"UPROAR"
    m.at 43, :"DAZZLINGGLEAM"
    m.at 49, :"PSYCHIC"
    m.at 54, :"LASTRESORT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"BATONPASS", :"BODYSLAM", :"BRAVEBIRD", :"CALMMIND", :"CONFUSERAY", :"DAZZLINGGLEAM", :"DISARMINGVOICE", :"DOUBLEEDGE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FEATHERDANCE", :"FLASHCANNON", :"FOULPLAY", :"GIGAIMPACT", :"HELPINGHAND", :"HEX", :"HYPERBEAM", :"HYPERVOICE", :"LIGHTSCREEN", :"LOWKICK", :"MUDSLAP", :"NIGHTSHADE", :"POUNCE", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"SANDSTORM", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAKEDOWN", :"THIEF", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ESPATHRA" do |m|
  m.back_sprite 0, 64
  m.front_sprite 0, 16
  m.shadow_sprite 0, 0, 2
end