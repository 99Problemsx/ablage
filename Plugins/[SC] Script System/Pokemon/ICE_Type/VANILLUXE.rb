#=============================================================================
# Vanilluxe - ICE Type
#=============================================================================

GameData::Species.define :"VANILLUXE" do |pkmn|
  pkmn.name "Vanilluxe"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 71, attack: 95, defense: 85,
                  sp_atk: 79, sp_def: 110, speed: 95
  pkmn.abilities :"ICEBODY"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 241
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 57.5
  pkmn.category "Snowstorm"
  pkmn.pokedex_entry "If both heads get angry simultaneously, this Pokémon expels a blizzard, burying everything in snow."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"WEATHERBALL"
    m.at 1, :"ICICLESPEAR"
    m.at 1, :"HARDEN"
    m.at 1, :"ASTONISH"
    m.at 1, :"UPROAR"
    m.at 4, :"HARDEN"
    m.at 7, :"ASTONISH"
    m.at 10, :"UPROAR"
    m.at 13, :"ICYWIND"
    m.at 16, :"MIST"
    m.at 19, :"AVALANCHE"
    m.at 22, :"TAUNT"
    m.at 26, :"MIRRORSHOT"
    m.at 31, :"ACIDARMOR"
    m.at 36, :"ICEBEAM"
    m.at 42, :"HAIL"
    m.at 50, :"MIRRORCOAT"
    m.at 59, :"BLIZZARD"
    m.at 67, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"VANILLUXE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 6
  m.shadow_sprite 0, 0, 3
end