#=============================================================================
# Frigibax - DRAGON Type
#=============================================================================

GameData::Species.define :"FRIGIBAX" do |pkmn|
  pkmn.name "Frigibax"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 65, attack: 75, defense: 45,
                  sp_atk: 55, sp_def: 35, speed: 45
  pkmn.abilities :"THERMALEXCHANGE"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 64
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 0.5
  pkmn.weight 17.0
  pkmn.category "Ice Fin"
  pkmn.pokedex_entry "Frigibax absorbs heat through its dorsal fin and converts the heat into ice energy. The higher the temperature, the more energy Frigibax stores."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Dragon", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"DRAGONTAIL"
    m.at 6, :"ICYWIND"
    m.at 12, :"DRAGONBREATH"
    m.at 18, :"FOCUSENERGY"
    m.at 24, :"BITE"
    m.at 29, :"ICEFANG"
    m.at 32, :"DRAGONCLAW"
    m.at 36, :"TAKEDOWN"
    m.at 40, :"ICEBEAM"
    m.at 44, :"CRUNCH"
    m.at 48, :"ICICLECRASH"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"CRUNCH", :"DIG", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"HELPINGHAND", :"ICEBEAM", :"ICEFANG", :"ICICLESPEAR", :"ICYWIND", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SNOWSCAPE", :"SUBSTITUTE", :"SWORDSDANCE", :"TAKEDOWN"
  pkmn.egg_moves :"AQUATAIL", :"DRAGONRUSH", :"FREEZEDRY", :"ICICLESPEAR"
end

GameData::SpeciesMetrics.define :"FRIGIBAX" do |m|
  m.back_sprite 0, 61
  m.front_sprite -2, 30
  m.shadow_sprite 0, 0, 1
end