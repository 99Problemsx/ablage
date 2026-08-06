#=============================================================================
# Dratini - DRAGON Type
#=============================================================================

GameData::Species.define :"DRATINI" do |pkmn|
  pkmn.name "Dratini"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 41, attack: 64, defense: 45,
                  sp_atk: 50, sp_def: 50, speed: 50
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"MARVELSCALE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 60
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.8
  pkmn.weight 3.3
  pkmn.category "Dragon"
  pkmn.pokedex_entry "A Dratini continually molts and sloughs off its old skin. It does so because the life energy within its body steadily builds to reach uncontrollable levels."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"LEER"
    m.at 5, :"THUNDERWAVE"
    m.at 11, :"TWISTER"
    m.at 15, :"DRAGONRAGE"
    m.at 21, :"SLAM"
    m.at 25, :"AGILITY"
    m.at 31, :"DRAGONTAIL"
    m.at 35, :"AQUATAIL"
    m.at 41, :"DRAGONRUSH"
    m.at 45, :"SAFEGUARD"
    m.at 51, :"DRAGONDANCE"
    m.at 55, :"OUTRAGE"
    m.at 61, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AQUAJET", :"DRAGONBREATH", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONRUSH", :"EXTREMESPEED", :"HAZE", :"IRONTAIL", :"MIST", :"SUPERSONIC", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"DRATINI" do |m|
  m.back_sprite -2, 0
  m.front_sprite -3, 19
  m.shadow_sprite 0, 0, 2
end