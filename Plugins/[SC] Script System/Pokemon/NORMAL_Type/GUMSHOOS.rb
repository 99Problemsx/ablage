#=============================================================================
# Gumshoos - NORMAL Type
#=============================================================================

GameData::Species.define :"GUMSHOOS" do |pkmn|
  pkmn.name "Gumshoos"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 88, attack: 110, defense: 60,
                  sp_atk: 45, sp_def: 55, speed: 60
  pkmn.abilities :"STAKEOUT", :"STRONGJAW"
  pkmn.hidden_abilities :"ADAPTABILITY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 146
  pkmn.catch_rate 127
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.7
  pkmn.weight 14.2
  pkmn.category "Stakeout"
  pkmn.pokedex_entry "When it finds a trace of its prey, it patiently stakes out the location... but it's always snoozing by nightfall."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"PURSUIT"
    m.at 1, :"SANDATTACK"
    m.at 3, :"LEER"
    m.at 7, :"PURSUIT"
    m.at 10, :"SANDATTACK"
    m.at 13, :"ODORSLEUTH"
    m.at 16, :"BIDE"
    m.at 19, :"BITE"
    m.at 23, :"MUDSLAP"
    m.at 27, :"SUPERFANG"
    m.at 31, :"TAKEDOWN"
    m.at 35, :"SCARYFACE"
    m.at 39, :"CRUNCH"
    m.at 43, :"HYPERFANG"
    m.at 47, :"YAWN"
    m.at 51, :"THRASH"
    m.at 55, :"REST"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DUALCHOP", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FRUSTRATION", :"HIDDENPOWER", :"ICEPUNCH", :"IRONHEAD", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GUMSHOOS" do |m|
  m.back_sprite -10, 38
  m.front_sprite 5, 11
end