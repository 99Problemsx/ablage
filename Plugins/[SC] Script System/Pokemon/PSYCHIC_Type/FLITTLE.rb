#=============================================================================
# Flittle - PSYCHIC Type
#=============================================================================

GameData::Species.define :"FLITTLE" do |pkmn|
  pkmn.name "Flittle"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 30, attack: 35, defense: 30,
                  sp_atk: 75, sp_def: 55, speed: 30
  pkmn.abilities :"ANTICIPATION", :"FRISK"
  pkmn.hidden_abilities :"SPEEDBOOST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 51
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 1.5
  pkmn.category "Frill"
  pkmn.pokedex_entry "Flittle’s toes levitate about half an inch above the ground because of the psychic power emitted from the frills on the Pokémon’s belly."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 5, :"CONFUSION"
    m.at 8, :"BABYDOLLEYES"
    m.at 11, :"DISARMINGVOICE"
    m.at 15, :"QUICKATTACK"
    m.at 19, :"PSYBEAM"
    m.at 24, :"PLUCK"
    m.at 29, :"AGILITY"
    m.at 34, :"UPROAR"
  end
  pkmn.tutor_moves :"AGILITY", :"BATONPASS", :"CALMMIND", :"CONFUSERAY", :"DISARMINGVOICE", :"ENDURE", :"FACADE", :"FOULPLAY", :"HELPINGHAND", :"LIGHTSCREEN", :"MUDSLAP", :"POUNCE", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"SANDSTORM", :"SEEDBOMB", :"SKILLSWAP", :"SLEEPTALK", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAKEDOWN", :"THIEF", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"ZENHEADBUTT"
  pkmn.egg_moves :"ALLYSWITCH", :"HYPNOSIS", :"ROOST"
end

GameData::SpeciesMetrics.define :"FLITTLE" do |m|
  m.back_sprite 0, 54
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 1
end