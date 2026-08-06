#=============================================================================
# Indeedee - PSYCHIC Type
#=============================================================================

GameData::Species.define :"INDEEDEE" do |pkmn|
  pkmn.name "Indeedee"
  pkmn.form_name "Male"
  pkmn.types :"PSYCHIC", :"NORMAL"
  pkmn.base_stats hp: 60, attack: 65, defense: 55,
                  sp_atk: 95, sp_def: 105, speed: 95
  pkmn.abilities :"INNERFOCUS", :"SYNCHRONIZE"
  pkmn.hidden_abilities :"PSYCHICSURGE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 166
  pkmn.catch_rate 30
  pkmn.happiness 140
  pkmn.hatch_steps 10240
  pkmn.height 0.9
  pkmn.weight 28.0
  pkmn.category "Emotion"
  pkmn.pokedex_entry "It uses the horns on its head to sense the emotions of others. Males will act as valets for those they serve, looking after their every need."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"STOREDPOWER"
    m.at 1, :"PLAYNICE"
    m.at 5, :"ENCORE"
    m.at 10, :"DISARMINGVOICE"
    m.at 15, :"PSYBEAM"
    m.at 20, :"HELPINGHAND"
    m.at 25, :"AFTERYOU"
    m.at 30, :"AROMATHERAPY"
    m.at 35, :"PSYCHIC"
    m.at 40, :"CALMMIND"
    m.at 45, :"POWERSPLIT"
    m.at 50, :"PSYCHICTERRAIN"
    m.at 55, :"LASTRESORT"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"FUTURESIGHT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"IMPRISON", :"MAGICALLEAF", :"MAGICROOM", :"METRONOME", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"PAYDAY", :"PLAYROUGH", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYSHOCK", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TERRAINPULSE", :"TOXIC", :"TRIATTACK", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"EXTRASENSORY", :"FAKEOUT", :"PSYCHUP"
end

GameData::SpeciesMetrics.define :"INDEEDEE" do |m|
  m.back_sprite -2, 14
  m.front_sprite -2, 3
end