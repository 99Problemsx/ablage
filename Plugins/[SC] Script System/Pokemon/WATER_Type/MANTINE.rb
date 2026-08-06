#=============================================================================
# Mantine - WATER Type
#=============================================================================

GameData::Species.define :"MANTINE" do |pkmn|
  pkmn.name "Mantine"
  pkmn.types :"WATER", :"FLYING"
  pkmn.base_stats hp: 65, attack: 40, defense: 70,
                  sp_atk: 70, sp_def: 80, speed: 140
  pkmn.abilities :"SWIFTSWIM", :"WATERABSORB"
  pkmn.hidden_abilities :"WATERVEIL"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 163
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 2.1
  pkmn.weight 220.0
  pkmn.category "Kite"
  pkmn.pokedex_entry "On sunny days, schools of Mantine can be seen elegantly leaping over the waves. It is not bothered by the Remoraid that hitches rides."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"PSYBEAM"
    m.at 1, :"BULLETSEED"
    m.at 1, :"SIGNALBEAM"
    m.at 1, :"TACKLE"
    m.at 1, :"BUBBLE"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"BUBBLEBEAM"
    m.at 3, :"SUPERSONIC"
    m.at 7, :"BUBBLEBEAM"
    m.at 11, :"CONFUSERAY"
    m.at 14, :"WINGATTACK"
    m.at 16, :"HEADBUTT"
    m.at 19, :"WATERPULSE"
    m.at 23, :"WIDEGUARD"
    m.at 27, :"TAKEDOWN"
    m.at 32, :"AGILITY"
    m.at 36, :"AIRSLASH"
    m.at 39, :"AQUARING"
    m.at 46, :"BOUNCE"
    m.at 49, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRINE", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"DEFOG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEEDBOMB", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRINGSHOT", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AMNESIA", :"HAZE", :"HYDROPUMP", :"MIRRORCOAT", :"MUDSPORT", :"SLAM", :"SPLASH", :"TWISTER", :"WATERSPORT", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"MANTINE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, -5
  m.shadow_sprite 0, 0, 3
end