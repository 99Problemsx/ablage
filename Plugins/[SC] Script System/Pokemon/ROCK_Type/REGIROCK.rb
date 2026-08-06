#=============================================================================
# Regirock - ROCK Type
#=============================================================================

GameData::Species.define :"REGIROCK" do |pkmn|
  pkmn.name "Regirock"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 80, attack: 100, defense: 200,
                  sp_atk: 50, sp_def: 50, speed: 100
  pkmn.abilities :"CLEARBODY"
  pkmn.hidden_abilities :"STURDY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.7
  pkmn.weight 230.0
  pkmn.category "Rock Peak"
  pkmn.pokedex_entry "A Pokémon that is made entirely of rocks and boulders. If parts of its body chip off in battle, Regirock repairs itself by adding new rocks."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"EXPLOSION"
    m.at 1, :"STOMP"
    m.at 9, :"ROCKTHROW"
    m.at 17, :"CURSE"
    m.at 25, :"SUPERPOWER"
    m.at 33, :"ANCIENTPOWER"
    m.at 41, :"IRONDEFENSE"
    m.at 49, :"CHARGEBEAM"
    m.at 57, :"LOCKON"
    m.at 65, :"ZAPCANNON"
    m.at 73, :"STONEEDGE"
    m.at 81, :"HAMMERARM"
    m.at 89, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CHARGEBEAM", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC"
end

GameData::SpeciesMetrics.define :"REGIROCK" do |m|
  m.back_sprite 1, 0
  m.front_sprite -6, 9
  m.shadow_sprite 0, 0, 3
end