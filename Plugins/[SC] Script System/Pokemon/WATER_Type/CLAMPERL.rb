#=============================================================================
# Clamperl - WATER Type
#=============================================================================

GameData::Species.define :"CLAMPERL" do |pkmn|
  pkmn.name "Clamperl"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 35, attack: 64, defense: 85,
                  sp_atk: 32, sp_def: 74, speed: 55
  pkmn.abilities :"SHELLARMOR"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 69
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 52.5
  pkmn.category "Bivalve"
  pkmn.pokedex_entry "A Clamperl slams its shell closed on prey to prevent escape. The pearl it creates upon evolution is said to be infused with a mysterious energy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"CLAMP"
    m.at 1, :"WATERGUN"
    m.at 1, :"WHIRLPOOL"
    m.at 1, :"IRONDEFENSE"
    m.at 51, :"SHELLSMASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AQUARING", :"BARRIER", :"BODYSLAM", :"BRINE", :"CONFUSERAY", :"ENDURE", :"MUDDYWATER", :"MUDSPORT", :"REFRESH", :"SUPERSONIC", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"CLAMPERL" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 2
end