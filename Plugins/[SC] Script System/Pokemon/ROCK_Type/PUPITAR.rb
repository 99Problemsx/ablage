#=============================================================================
# Pupitar - ROCK Type
#=============================================================================

GameData::Species.define :"PUPITAR" do |pkmn|
  pkmn.name "Pupitar"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 70, attack: 84, defense: 70,
                  sp_atk: 51, sp_def: 65, speed: 70
  pkmn.abilities :"SHEDSKIN"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 144
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.2
  pkmn.weight 152.0
  pkmn.category "Hard Shell"
  pkmn.pokedex_entry "A Pupitar creates a gas inside its body that it ejects under compression to propel itself like a jet. Its body can withstand a collision with solid steel."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 1, :"SANDSTORM"
    m.at 1, :"SCREECH"
    m.at 5, :"SANDSTORM"
    m.at 10, :"SCREECH"
    m.at 14, :"CHIPAWAY"
    m.at 19, :"ROCKSLIDE"
    m.at 23, :"SCARYFACE"
    m.at 28, :"THRASH"
    m.at 34, :"DARKPULSE"
    m.at 41, :"PAYBACK"
    m.at 47, :"CRUNCH"
    m.at 54, :"EARTHQUAKE"
    m.at 60, :"STONEEDGE"
    m.at 67, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNARL", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"TORMENT", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"PUPITAR" do |m|
  m.back_sprite -4, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 2
end