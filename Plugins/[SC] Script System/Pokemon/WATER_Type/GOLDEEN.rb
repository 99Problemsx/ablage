#=============================================================================
# Goldeen - WATER Type
#=============================================================================

GameData::Species.define :"GOLDEEN" do |pkmn|
  pkmn.name "Goldeen"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 45, attack: 67, defense: 60,
                  sp_atk: 63, sp_def: 35, speed: 50
  pkmn.abilities :"SWIFTSWIM", :"WATERVEIL"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Finned"
  pkmn.base_exp 64
  pkmn.catch_rate 225
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 15.0
  pkmn.category "Goldfish"
  pkmn.pokedex_entry "In the springtime, schools of Goldeen can be seen swimming up falls and rivers. It metes out staggering damage with its single horn."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"WATERSPORT"
    m.at 7, :"SUPERSONIC"
    m.at 11, :"HORNATTACK"
    m.at 17, :"WATERPULSE"
    m.at 21, :"FLAIL"
    m.at 27, :"AQUARING"
    m.at 31, :"FURYATTACK"
    m.at 37, :"WATERFALL"
    m.at 41, :"HORNDRILL"
    m.at 47, :"AGILITY"
    m.at 51, :"SOAK"
    m.at 57, :"MEGAHORN"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AQUATAIL", :"BODYSLAM", :"HAZE", :"HYDROPUMP", :"MUDSHOT", :"MUDSLAP", :"MUDSPORT", :"PSYBEAM", :"SIGNALBEAM", :"SKULLBASH", :"SLEEPTALK"
end

GameData::SpeciesMetrics.define :"GOLDEEN" do |m|
  m.back_sprite -4, 0
  m.front_sprite 5, 4
  m.shadow_sprite 0, 0, 2
end