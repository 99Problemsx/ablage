#=============================================================================
# Vanillite - ICE Type
#=============================================================================

GameData::Species.define :"VANILLITE" do |pkmn|
  pkmn.name "Vanillite"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 36, attack: 50, defense: 50,
                  sp_atk: 44, sp_def: 65, speed: 60
  pkmn.abilities :"ICEBODY"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 61
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 5.7
  pkmn.category "Fresh Snow"
  pkmn.pokedex_entry "This Pokémon formed from icicles bathed in energy from the morning sun. It sleeps buried in snow."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"ICICLESPEAR"
    m.at 4, :"HARDEN"
    m.at 7, :"ASTONISH"
    m.at 10, :"UPROAR"
    m.at 13, :"ICYWIND"
    m.at 16, :"MIST"
    m.at 19, :"AVALANCHE"
    m.at 22, :"TAUNT"
    m.at 26, :"MIRRORSHOT"
    m.at 31, :"ACIDARMOR"
    m.at 35, :"ICEBEAM"
    m.at 40, :"HAIL"
    m.at 44, :"MIRRORCOAT"
    m.at 49, :"BLIZZARD"
    m.at 53, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FROSTBREATH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"AUTOTOMIZE", :"ICESHARD", :"IMPRISON", :"IRONDEFENSE", :"MAGNETRISE", :"NATURALGIFT", :"POWDERSNOW", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"VANILLITE" do |m|
  m.back_sprite 1, 0
  m.front_sprite -1, 15
  m.shadow_sprite 0, 0, 1
end