#=============================================================================
# Milotic - WATER Type
#=============================================================================

GameData::Species.define :"MILOTIC" do |pkmn|
  pkmn.name "Milotic"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 95, attack: 60, defense: 79,
                  sp_atk: 81, sp_def: 100, speed: 125
  pkmn.abilities :"MARVELSCALE"
  pkmn.hidden_abilities :"CUTECHARM"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Pink"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 189
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 6.2
  pkmn.weight 162.0
  pkmn.category "Tender"
  pkmn.pokedex_entry "It is said to live at the bottom of large lakes. Considered to be the most beautiful of all Pokémon, it has been depicted in paintings and statues."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"WRAP"
    m.at 5, :"WATERSPORT"
    m.at 9, :"REFRESH"
    m.at 13, :"WATERPULSE"
    m.at 17, :"TWISTER"
    m.at 21, :"RECOVER"
    m.at 25, :"CAPTIVATE"
    m.at 29, :"AQUATAIL"
    m.at 33, :"RAINDANCE"
    m.at 37, :"HYDROPUMP"
    m.at 41, :"ATTRACT"
    m.at 45, :"SAFEGUARD"
    m.at 49, :"AQUARING"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"MILOTIC" do |m|
  m.back_sprite -3, 0
  m.front_sprite 1, 8
  m.shadow_sprite 0, 0, 3
end