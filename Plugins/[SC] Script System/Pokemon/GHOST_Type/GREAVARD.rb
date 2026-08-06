#=============================================================================
# Greavard - GHOST Type
#=============================================================================

GameData::Species.define :"GREAVARD" do |pkmn|
  pkmn.name "Greavard"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 50, attack: 61, defense: 60,
                  sp_atk: 34, sp_def: 30, speed: 55
  pkmn.abilities :"PICKUP"
  pkmn.hidden_abilities :"FLUFFY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 58
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 35.0
  pkmn.category "Ghost Dog"
  pkmn.pokedex_entry "It is said that a dog Pokémon that died in the wild without ever interacting with a human was reborn as this Pokémon."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TACKLE"
    m.at 3, :"LICK"
    m.at 6, :"TAILWHIP"
    m.at 6, :"BITE"
    m.at 9, :"ROAR"
    m.at 12, :"HEADBUTT"
    m.at 16, :"DIG"
    m.at 24, :"REST"
    m.at 28, :"CRUNCH"
    m.at 32, :"PLAYROUGH"
    m.at 37, :"HELPINGHAND"
    m.at 41, :"PHANTOMFORCE"
    m.at 46, :"CHARM"
    m.at 52, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"BULLDOZE", :"CHARM", :"CONFUSERAY", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"HELPINGHAND", :"HEX", :"ICEFANG", :"MUDSHOT", :"MUDSLAP", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"PLAYROUGH", :"POLTERGEIST", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"ROAR", :"SANDSTORM", :"SCARYFACE", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THIEF", :"THUNDERFANG", :"TRICK", :"UPROAR"
  pkmn.egg_moves :"ALLYSWITCH", :"DESTINYBOND", :"DISABLE", :"HOWL", :"MEMENTO", :"SHADOWSNEAK", :"YAWN"
end

GameData::SpeciesMetrics.define :"GREAVARD" do |m|
  m.back_sprite 0, 45
  m.front_sprite -2, 25
  m.shadow_sprite 0, 0, 2
end