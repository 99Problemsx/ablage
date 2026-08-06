#=============================================================================
# Snorunt - ICE Type
#=============================================================================

GameData::Species.define :"SNORUNT" do |pkmn|
  pkmn.name "Snorunt"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 50, attack: 50, defense: 50,
                  sp_atk: 50, sp_def: 50, speed: 50
  pkmn.abilities :"INNERFOCUS", :"ICEBODY"
  pkmn.hidden_abilities :"MOODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 60
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 16.8
  pkmn.category "Snow Hat"
  pkmn.pokedex_entry "They tend to move about in groups of around five Snorunt. In snowy regions, it is said that when they are seen late at night, snowfall will arrive by morning."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Fairy", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"LEER"
    m.at 4, :"DOUBLETEAM"
    m.at 10, :"BITE"
    m.at 13, :"ICYWIND"
    m.at 19, :"HEADBUTT"
    m.at 22, :"PROTECT"
    m.at 28, :"ICEFANG"
    m.at 31, :"CRUNCH"
    m.at 37, :"ICESHARD"
    m.at 40, :"HAIL"
    m.at 46, :"BLIZZARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FROSTBREATH", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"WATERPULSE"
  pkmn.egg_moves :"AVALANCHE", :"BIDE", :"BLOCK", :"DISABLE", :"FAKETEARS", :"HEX", :"ROLLOUT", :"SPIKES", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"SNORUNT" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 20
  m.shadow_sprite 0, 0, 2
end