#=============================================================================
# Polteageist - GHOST Type
#=============================================================================

GameData::Species.define :"POLTEAGEIST" do |pkmn|
  pkmn.name "Polteageist"
  pkmn.form_name "Phony Form"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 60, attack: 65, defense: 65,
                  sp_atk: 70, sp_def: 134, speed: 114
  pkmn.abilities :"WEAKARMOR"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 178
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 0.4
  pkmn.category "Black Tea"
  pkmn.pokedex_entry "This species lives in antique teapots. Most pots are forgeries, but on rare occasions, an authentic work is found."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 0, :"TEATIME"
    m.at 1, :"STRENGTHSAP"
    m.at 1, :"ASTONISH"
    m.at 1, :"WITHDRAW"
    m.at 1, :"AROMATICMIST"
    m.at 1, :"MEGADRAIN"
    m.at 18, :"PROTECT"
    m.at 24, :"SUCKERPUNCH"
    m.at 30, :"AROMATHERAPY"
    m.at 36, :"GIGADRAIN"
    m.at 42, :"NASTYPLOT"
    m.at 48, :"SHADOWBALL"
    m.at 54, :"MEMENTO"
    m.at 60, :"SHELLSMASH"
    m.at 66, :"CURSE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"BATONPASS", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"LIGHTSCREEN", :"METRONOME", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SELFDESTRUCT", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TRICK", :"WILLOWISP", :"WONDERROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"POLTEAGEIST" do |m|
  m.back_sprite 0, 33
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, -1
end