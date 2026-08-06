#=============================================================================
# Staryu - WATER Type
#=============================================================================

GameData::Species.define :"STARYU" do |pkmn|
  pkmn.name "Staryu"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 30, attack: 45, defense: 55,
                  sp_atk: 85, sp_def: 70, speed: 55
  pkmn.abilities :"ILLUMINATE", :"NATURALCURE"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 68
  pkmn.catch_rate 225
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 34.5
  pkmn.category "Star Shape"
  pkmn.pokedex_entry "It gathers with others in the night and makes its red core glow on and off with the twinkling stars. It can regenerate limbs if they are severed from its body."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 6, :"WATERGUN"
    m.at 10, :"RAPIDSPIN"
    m.at 12, :"RECOVER"
    m.at 15, :"CAMOUFLAGE"
    m.at 18, :"SWIFT"
    m.at 22, :"BUBBLEBEAM"
    m.at 25, :"MINIMIZE"
    m.at 30, :"GYROBALL"
    m.at 33, :"LIGHTSCREEN"
    m.at 36, :"BRINE"
    m.at 40, :"REFLECTTYPE"
    m.at 43, :"POWERGEM"
    m.at 48, :"COSMICPOWER"
    m.at 52, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"BLIZZARD", :"BRINE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GRAVITY", :"GYROBALL", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"STARYU" do |m|
  m.back_sprite 3, 0
  m.front_sprite 4, 10
  m.shadow_sprite 0, 0, 2
end