#=============================================================================
# Houndstone - GHOST Type
#=============================================================================

GameData::Species.define :"HOUNDSTONE" do |pkmn|
  pkmn.name "Houndstone"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 72, attack: 101, defense: 100,
                  sp_atk: 68, sp_def: 50, speed: 97
  pkmn.abilities :"SANDRUSH"
  pkmn.hidden_abilities :"FLUFFY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 171
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.0
  pkmn.weight 15.0
  pkmn.category "Ghost Dog"
  pkmn.pokedex_entry "Houndstone spends most of its time sleeping in graveyards. Among all the dog Pokémon, this one is most loyal to its master."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"LASTRESPECTS"
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
    m.at 36, :"PLAYROUGH"
    m.at 41, :"HELPINGHAND"
    m.at 46, :"PHANTOMFORCE"
    m.at 51, :"CHARM"
    m.at 58, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BULLDOZE", :"CHARM", :"CONFUSERAY", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"GIGAIMPACT", :"HELPINGHAND", :"HEX", :"HYPERBEAM", :"ICEFANG", :"MUDSHOT", :"MUDSLAP", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"PLAYROUGH", :"POLTERGEIST", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"ROAR", :"SANDSTORM", :"SCARYFACE", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THIEF", :"THUNDERFANG", :"TRICK", :"UPROAR", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"HOUNDSTONE" do |m|
  m.back_sprite 0, 48
  m.front_sprite -1, 22
  m.shadow_sprite 0, 0, 2
end