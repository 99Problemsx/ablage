#=============================================================================
# Larvitar - ROCK Type
#=============================================================================

GameData::Species.define :"LARVITAR" do |pkmn|
  pkmn.name "Larvitar"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 50, attack: 64, defense: 50,
                  sp_atk: 41, sp_def: 45, speed: 50
  pkmn.abilities :"GUTS"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 60
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 0.6
  pkmn.weight 72.0
  pkmn.category "Rock Skin"
  pkmn.pokedex_entry "A Larvitar is born deep under the ground. It must eat its way through the soil above and reach the surface for it to see its parents' faces."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 5, :"SANDSTORM"
    m.at 10, :"SCREECH"
    m.at 14, :"CHIPAWAY"
    m.at 19, :"ROCKSLIDE"
    m.at 23, :"SCARYFACE"
    m.at 28, :"THRASH"
    m.at 32, :"DARKPULSE"
    m.at 37, :"PAYBACK"
    m.at 41, :"CRUNCH"
    m.at 46, :"EARTHQUAKE"
    m.at 50, :"STONEEDGE"
    m.at 55, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNARL", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"TORMENT", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"ANCIENTPOWER", :"ASSURANCE", :"CURSE", :"DRAGONDANCE", :"FOCUSENERGY", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"OUTRAGE", :"PURSUIT", :"STEALTHROCK", :"STOMP"
end

GameData::SpeciesMetrics.define :"LARVITAR" do |m|
  m.back_sprite -6, 0
  m.front_sprite 1, 19
  m.shadow_sprite 0, 0, 1
end