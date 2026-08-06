#=============================================================================
# Samurott - WATER Type
#=============================================================================

GameData::Species.define :"SAMUROTT" do |pkmn|
  pkmn.name "Samurott"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 95, attack: 100, defense: 85,
                  sp_atk: 70, sp_def: 108, speed: 70
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SHELLARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 238
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 94.6
  pkmn.category "Formidable"
  pkmn.pokedex_entry "Part of the armor on its anterior legs becomes a giant sword. Its cry alone is enough to intimidate most enemies."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MEGAHORN"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"WATERGUN"
    m.at 1, :"WATERSPORT"
    m.at 5, :"TAILWHIP"
    m.at 7, :"WATERGUN"
    m.at 11, :"WATERSPORT"
    m.at 13, :"FOCUSENERGY"
    m.at 17, :"RAZORSHELL"
    m.at 20, :"FURYCUTTER"
    m.at 25, :"WATERPULSE"
    m.at 28, :"REVENGE"
    m.at 33, :"AQUAJET"
    m.at 36, :"SLASH"
    m.at 38, :"ENCORE"
    m.at 45, :"AQUATAIL"
    m.at 50, :"RETALIATE"
    m.at 57, :"SWORDSDANCE"
    m.at 62, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SAMUROTT" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 11
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Hisuian
GameData::Species.define :"SAMUROTT_1" do |pkmn|
  pkmn.species :"SAMUROTT"
  pkmn.form 1
  pkmn.name "Samurott"
  pkmn.form_name "Hisuian"
  pkmn.types :"WATER", :"DARK"
  pkmn.base_stats hp: 90, attack: 108, defense: 80,
                  sp_atk: 85, sp_def: 100, speed: 65
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SHARPNESS"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 238
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 58.2
  pkmn.category "Formidable"
  pkmn.pokedex_entry "Hard of heart and deft of blade, this rare form of Samurott is a product of the Pokémon's evolution in the region of Hisui. Its turbulent blows crash into foes like ceaseless pounding waves."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"CEASELESSEDGE"
    m.at 1, :"SLASH"
    m.at 1, :"SUCKERPUNCH"
    m.at 1, :"MEGAHORN"
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 1, :"WATERGUN"
    m.at 13, :"FOCUSENERGY"
    m.at 18, :"RAZORSHELL"
    m.at 21, :"FURYCUTTER"
    m.at 25, :"WATERPULSE"
    m.at 29, :"AERIALACE"
    m.at 34, :"AQUAJET"
    m.at 39, :"ENCORE"
    m.at 46, :"AQUATAIL"
    m.at 51, :"RETALIATE"
    m.at 58, :"SWORDSDANCE"
    m.at 63, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRSLASH", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CHILLINGWATER", :"DARKPULSE", :"DIG", :"DRILLRUN", :"ENCORE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FLIPTURN", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HYDROCANNON", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"LASHOUT", :"LIQUIDATION", :"PROTECT", :"RAINDANCE", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SMARTSTRIKE", :"SNARL", :"SNOWSCAPE", :"SUBSTITUTE", :"SURF", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"UPPERHAND", :"VACUUMWAVE", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SAMUROTT_1" do |m|
  m.back_sprite -6, 45
  m.front_sprite 2, 13
  m.shadow_sprite 0, 0, 3
end