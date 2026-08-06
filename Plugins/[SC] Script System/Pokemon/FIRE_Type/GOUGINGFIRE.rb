#=============================================================================
# Gouging Fire - FIRE Type
#=============================================================================

GameData::Species.define :"GOUGINGFIRE" do |pkmn|
  pkmn.name "Gouging Fire"
  pkmn.types :"FIRE", :"DRAGON"
  pkmn.base_stats hp: 105, attack: 115, defense: 121,
                  sp_atk: 91, sp_def: 65, speed: 93
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 295
  pkmn.catch_rate 10
  pkmn.happiness 0
  pkmn.hatch_steps 6400
  pkmn.height 3.5
  pkmn.weight 590.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "There are scant few reports of this creature being sighted. One short video shows it rampaging and spouting pillars of flame."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"ANCIENTPOWER"
    m.at -1, :"NOBLEROAR"
    m.at 1, :"STOMP"
    m.at 1, :"LEER"
    m.at 1, :"INCINERATE"
    m.at 1, :"SUNNYDAY"
    m.at 7, :"FIREFANG"
    m.at 14, :"HOWL"
    m.at 21, :"BITE"
    m.at 28, :"DRAGONCLAW"
    m.at 35, :"CRUSHCLAW"
    m.at 42, :"MORNINGSUN"
    m.at 49, :"BURNINGBULWARK"
    m.at 56, :"DRAGONRUSH"
    m.at 63, :"FIREBLAST"
    m.at 70, :"LAVAPLUME"
    m.at 77, :"OUTRAGE"
    m.at 84, :"FLAREBLITZ"
    m.at 91, :"RAGINGFURY"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BREAKINGSWIPE", :"BULLDOZE", :"CRUNCH", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"GIGAIMPACT", :"HEATCRASH", :"HEATWAVE", :"HYPERBEAM", :"IRONHEAD", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"PSYCHICFANGS", :"REST", :"REVERSAL", :"ROAR", :"SCALESHOT", :"SCARYFACE", :"SCORCHINGSANDS", :"SLEEPTALK", :"SMARTSTRIKE", :"SNARL", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TEMPERFLARE", :"THUNDERFANG", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"GOUGINGFIRE" do |m|
  m.back_sprite 0, 62
  m.front_sprite 4, 16
  m.shadow_sprite 0, 0, 3
end