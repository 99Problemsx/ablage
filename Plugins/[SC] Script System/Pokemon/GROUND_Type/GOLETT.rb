#=============================================================================
# Golett - GROUND Type
#=============================================================================

GameData::Species.define :"GOLETT" do |pkmn|
  pkmn.name "Golett"
  pkmn.types :"GROUND", :"GHOST"
  pkmn.base_stats hp: 59, attack: 74, defense: 50,
                  sp_atk: 35, sp_def: 35, speed: 50
  pkmn.abilities :"IRONFIST", :"KLUTZ"
  pkmn.hidden_abilities :"NOGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.0
  pkmn.weight 92.0
  pkmn.category "Automaton"
  pkmn.pokedex_entry "These Pokémon are thought to have been created by the science of an ancient and mysterious civilization."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"ASTONISH"
    m.at 1, :"DEFENSECURL"
    m.at 5, :"MUDSLAP"
    m.at 9, :"ROLLOUT"
    m.at 13, :"SHADOWPUNCH"
    m.at 17, :"IRONDEFENSE"
    m.at 21, :"MEGAPUNCH"
    m.at 25, :"MAGNITUDE"
    m.at 30, :"DYNAMICPUNCH"
    m.at 35, :"NIGHTSHADE"
    m.at 40, :"CURSE"
    m.at 45, :"EARTHQUAKE"
    m.at 50, :"HAMMERARM"
    m.at 55, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"BLOCK", :"BRICKBREAK", :"BULLDOZE", :"DOUBLETEAM", :"DRAINPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"TOXIC"
end

GameData::SpeciesMetrics.define :"GOLETT" do |m|
  m.back_sprite 1, 0
  m.front_sprite 1, 20
  m.shadow_sprite 0, 0, 2
end