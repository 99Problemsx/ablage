#=============================================================================
# Groudon - GROUND Type
#=============================================================================

GameData::Species.define :"GROUDON" do |pkmn|
  pkmn.name "Groudon"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 100, attack: 150, defense: 140,
                  sp_atk: 90, sp_def: 100, speed: 90
  pkmn.abilities :"DROUGHT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 302
  pkmn.catch_rate 5
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.5
  pkmn.weight 950.0
  pkmn.category "Continent"
  pkmn.pokedex_entry "Groudon has appeared in mythology as the creator of the land. It sleeps in magma underground and is said to make volcanoes erupt on awakening."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"MUDSHOT"
    m.at 5, :"SCARYFACE"
    m.at 15, :"LAVAPLUME"
    m.at 20, :"HAMMERARM"
    m.at 30, :"REST"
    m.at 35, :"EARTHQUAKE"
    m.at 45, :"ANCIENTPOWER"
    m.at 50, :"ERUPTION"
    m.at 60, :"BULKUP"
    m.at 65, :"EARTHPOWER"
    m.at 75, :"FISSURE"
    m.at 80, :"SOLARBEAM"
    m.at 90, :"FIREBLAST"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"GROUDON" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, 9
  m.shadow_sprite 0, 0, 3
end