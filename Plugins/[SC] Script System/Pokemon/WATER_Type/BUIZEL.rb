#=============================================================================
# Buizel - WATER Type
#=============================================================================

GameData::Species.define :"BUIZEL" do |pkmn|
  pkmn.name "Buizel"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 55, attack: 65, defense: 35,
                  sp_atk: 85, sp_def: 60, speed: 30
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"WATERVEIL"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 29.5
  pkmn.category "Sea Weasel"
  pkmn.pokedex_entry "It has a flotation sac that is like an inflatable collar. It floats on water with its head out."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"SONICBOOM"
    m.at 4, :"GROWL"
    m.at 7, :"WATERSPORT"
    m.at 11, :"QUICKATTACK"
    m.at 15, :"WATERGUN"
    m.at 18, :"PURSUIT"
    m.at 21, :"SWIFT"
    m.at 24, :"AQUAJET"
    m.at 27, :"DOUBLEHIT"
    m.at 31, :"WHIRLPOOL"
    m.at 35, :"RAZORWIND"
    m.at 38, :"AQUATAIL"
    m.at 41, :"AGILITY"
    m.at 45, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"BRINE", :"BULKUP", :"CAPTIVATE", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FOCUSPUNCH", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AQUARING", :"AQUATAIL", :"BATONPASS", :"DOUBLESLAP", :"FURYCUTTER", :"FURYSWIPES", :"HEADBUTT", :"MEFIRST", :"MUDSLAP", :"ODORSLEUTH", :"SLASH", :"SWITCHEROO", :"TAILSLAP"
end

GameData::SpeciesMetrics.define :"BUIZEL" do |m|
  m.back_sprite -12, 0
  m.front_sprite 4, 16
  m.shadow_sprite 0, 0, 2
end