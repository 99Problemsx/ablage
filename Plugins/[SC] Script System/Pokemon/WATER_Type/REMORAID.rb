#=============================================================================
# Remoraid - WATER Type
#=============================================================================

GameData::Species.define :"REMORAID" do |pkmn|
  pkmn.name "Remoraid"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 35, attack: 65, defense: 35,
                  sp_atk: 65, sp_def: 65, speed: 35
  pkmn.abilities :"HUSTLE", :"SNIPER"
  pkmn.hidden_abilities :"MOODY"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Finned"
  pkmn.base_exp 60
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 12.0
  pkmn.category "Jet"
  pkmn.pokedex_entry "A Remoraid uses its abdominal muscles to forcefully expel swallowed water, then shoot down flying prey. When evolution approaches, it travels down rivers."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Water1", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 6, :"LOCKON"
    m.at 10, :"PSYBEAM"
    m.at 14, :"AURORABEAM"
    m.at 18, :"BUBBLEBEAM"
    m.at 22, :"FOCUSENERGY"
    m.at 26, :"WATERPULSE"
    m.at 30, :"SIGNALBEAM"
    m.at 34, :"ICEBEAM"
    m.at 38, :"BULLETSEED"
    m.at 42, :"HYDROPUMP"
    m.at 46, :"HYPERBEAM"
    m.at 50, :"SOAK"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"GUNKSHOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEEDBOMB", :"SIGNALBEAM", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STRINGSHOT", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"ACIDSPRAY", :"AURORABEAM", :"FLAIL", :"HAZE", :"MUDSHOT", :"OCTAZOOKA", :"ROCKBLAST", :"SCREECH", :"SNORE", :"SUPERSONIC", :"SWIFT", :"WATERPULSE", :"WATERSPOUT"
end

GameData::SpeciesMetrics.define :"REMORAID" do |m|
  m.back_sprite -7, 0
  m.front_sprite 1, 6
  m.shadow_sprite 0, 0, 2
end