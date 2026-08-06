#=============================================================================
# Surskit - BUG Type
#=============================================================================

GameData::Species.define :"SURSKIT" do |pkmn|
  pkmn.name "Surskit"
  pkmn.types :"BUG", :"WATER"
  pkmn.base_stats hp: 40, attack: 30, defense: 32,
                  sp_atk: 65, sp_def: 50, speed: 52
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 54
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 1.7
  pkmn.category "Pond Skater"
  pkmn.pokedex_entry "They gather on puddles after evening downpours, gliding across the surface of water as if sliding. It secretes honey with a sweet aroma from its head."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1", :"Bug"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 7, :"QUICKATTACK"
    m.at 13, :"SWEETSCENT"
    m.at 19, :"WATERSPORT"
    m.at 25, :"BUBBLEBEAM"
    m.at 31, :"AGILITY"
    m.at 37, :"MIST"
    m.at 37, :"HAZE"
    m.at 43, :"BATONPASS"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BUGBITE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"TOXIC", :"WATERPULSE"
  pkmn.egg_moves :"AQUAJET", :"BUGBITE", :"ENDURE", :"FORESIGHT", :"HYDROPUMP", :"MINDREADER", :"MUDSHOT", :"PSYBEAM", :"SIGNALBEAM"
end

GameData::SpeciesMetrics.define :"SURSKIT" do |m|
  m.back_sprite 1, 0
  m.front_sprite -1, 19
  m.shadow_sprite 0, 0, 1
end