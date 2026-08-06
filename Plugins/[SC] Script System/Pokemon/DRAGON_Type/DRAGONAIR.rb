#=============================================================================
# Dragonair - DRAGON Type
#=============================================================================

GameData::Species.define :"DRAGONAIR" do |pkmn|
  pkmn.name "Dragonair"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 61, attack: 84, defense: 65,
                  sp_atk: 70, sp_def: 70, speed: 70
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"MARVELSCALE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 4.0
  pkmn.weight 16.5
  pkmn.category "Dragon"
  pkmn.pokedex_entry "A Dragonair stores an enormous amount of energy inside its body. It is said to alter the weather around it by loosing energy from the crystals on its neck and tail."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"LEER"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"TWISTER"
    m.at 5, :"THUNDERWAVE"
    m.at 11, :"TWISTER"
    m.at 15, :"DRAGONRAGE"
    m.at 21, :"SLAM"
    m.at 25, :"AGILITY"
    m.at 33, :"DRAGONTAIL"
    m.at 39, :"AQUATAIL"
    m.at 47, :"DRAGONRUSH"
    m.at 53, :"SAFEGUARD"
    m.at 61, :"DRAGONDANCE"
    m.at 67, :"OUTRAGE"
    m.at 75, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"DRAGONAIR" do |m|
  m.back_sprite 2, 0
  m.front_sprite -1, 10
  m.shadow_sprite 0, 0, 3
end