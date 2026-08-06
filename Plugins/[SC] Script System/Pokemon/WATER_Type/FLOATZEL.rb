#=============================================================================
# Floatzel - WATER Type
#=============================================================================

GameData::Species.define :"FLOATZEL" do |pkmn|
  pkmn.name "Floatzel"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 85, attack: 105, defense: 55,
                  sp_atk: 115, sp_def: 85, speed: 50
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"WATERVEIL"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 173
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 33.5
  pkmn.category "Sea Weasel"
  pkmn.pokedex_entry "It floats using its well-developed flotation sac. It assists in the rescues of drowning people."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"ICEFANG"
    m.at 1, :"CRUNCH"
    m.at 1, :"SONICBOOM"
    m.at 1, :"GROWL"
    m.at 1, :"WATERSPORT"
    m.at 1, :"QUICKATTACK"
    m.at 4, :"GROWL"
    m.at 7, :"WATERSPORT"
    m.at 11, :"QUICKATTACK"
    m.at 15, :"WATERGUN"
    m.at 18, :"PURSUIT"
    m.at 21, :"SWIFT"
    m.at 24, :"AQUAJET"
    m.at 29, :"DOUBLEHIT"
    m.at 35, :"WHIRLPOOL"
    m.at 41, :"RAZORWIND"
    m.at 46, :"AQUATAIL"
    m.at 51, :"AGILITY"
    m.at 57, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"BRINE", :"BULKUP", :"CAPTIVATE", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TAUNT", :"TORMENT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"FLOATZEL" do |m|
  m.back_sprite 3, 0
  m.front_sprite 3, 6
  m.shadow_sprite 0, 0, 2
end