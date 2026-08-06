#=============================================================================
# Gyarados - WATER Type
#=============================================================================

GameData::Species.define :"GYARADOS" do |pkmn|
  pkmn.name "Gyarados"
  pkmn.types :"WATER", :"FLYING"
  pkmn.base_stats hp: 95, attack: 125, defense: 79,
                  sp_atk: 81, sp_def: 60, speed: 100
  pkmn.abilities :"INTIMIDATE"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 189
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 1285
  pkmn.height 6.5
  pkmn.weight 235.0
  pkmn.category "Atrocious"
  pkmn.pokedex_entry "It is an extremely vicious and violent Pokémon. When humans begin to fight, it will appear and burn everything to the ground with intensely hot flames."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water2", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"THRASH"
    m.at 20, :"BITE"
    m.at 23, :"DRAGONRAGE"
    m.at 26, :"LEER"
    m.at 29, :"TWISTER"
    m.at 32, :"ICEFANG"
    m.at 35, :"AQUATAIL"
    m.at 38, :"RAINDANCE"
    m.at 41, :"HYDROPUMP"
    m.at 44, :"DRAGONDANCE"
    m.at 47, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TWISTER", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"GYARADOS" do |m|
  m.back_sprite 2, 0
  m.front_sprite -1, -3
  m.shadow_sprite 0, 0, 3
end