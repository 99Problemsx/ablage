#=============================================================================
# Sinistea - GHOST Type
#=============================================================================

GameData::Species.define :"SINISTEA" do |pkmn|
  pkmn.name "Sinistea"
  pkmn.form_name "Phony Form"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 40, attack: 45, defense: 45,
                  sp_atk: 50, sp_def: 74, speed: 54
  pkmn.abilities :"WEAKARMOR"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 62
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.1
  pkmn.weight 0.2
  pkmn.category "Black Tea"
  pkmn.pokedex_entry "The teacup in which this Pokémon makes its home is a famous piece of antique tableware. Many forgeries are in circulation."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"WITHDRAW"
    m.at 6, :"AROMATICMIST"
    m.at 12, :"MEGADRAIN"
    m.at 18, :"PROTECT"
    m.at 24, :"SUCKERPUNCH"
    m.at 30, :"AROMATHERAPY"
    m.at 36, :"GIGADRAIN"
    m.at 42, :"NASTYPLOT"
    m.at 48, :"SHADOWBALL"
    m.at 54, :"MEMENTO"
    m.at 60, :"SHELLSMASH"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"BATONPASS", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"HEX", :"HIDDENPOWER", :"IMPRISON", :"METRONOME", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TRICK", :"WILLOWISP", :"WONDERROOM", :"TERABLAST"
  pkmn.egg_moves :"ALLYSWITCH"
end

GameData::SpeciesMetrics.define :"SINISTEA" do |m|
  m.back_sprite 0, 48
  m.front_sprite -1, 20
end