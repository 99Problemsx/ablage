#=============================================================================
# Vanillish - ICE Type
#=============================================================================

GameData::Species.define :"VANILLISH" do |pkmn|
  pkmn.name "Vanillish"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 51, attack: 65, defense: 65,
                  sp_atk: 59, sp_def: 80, speed: 75
  pkmn.abilities :"ICEBODY"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 138
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 41.0
  pkmn.category "Icy Snow"
  pkmn.pokedex_entry "It conceals itself from enemy eyes by creating many small ice particles and hiding among them."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
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
    m.at 47, :"MIRRORCOAT"
    m.at 53, :"BLIZZARD"
    m.at 58, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FROSTBREATH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"VANILLISH" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 8
  m.shadow_sprite 0, 0, 2
end