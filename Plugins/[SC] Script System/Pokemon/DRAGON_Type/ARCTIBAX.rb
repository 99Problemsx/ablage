#=============================================================================
# Arctibax - DRAGON Type
#=============================================================================

GameData::Species.define :"ARCTIBAX" do |pkmn|
  pkmn.name "Arctibax"
  pkmn.types :"DRAGON", :"ICE"
  pkmn.base_stats hp: 90, attack: 95, defense: 66,
                  sp_atk: 62, sp_def: 45, speed: 65
  pkmn.abilities :"THERMALEXCHANGE"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 182
  pkmn.catch_rate 25
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 0.8
  pkmn.weight 30.0
  pkmn.category "Ice Fin"
  pkmn.pokedex_entry "Arctibax freezes the air around it, protecting its face with an ice mask and turning its dorsal fin into a blade of ice."
  pkmn.evs attack: 2
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
    m.at 40, :"TAKEDOWN"
    m.at 45, :"ICEBEAM"
    m.at 50, :"CRUNCH"
    m.at 55, :"ICICLECRASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"CRUNCH", :"DIG", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"HELPINGHAND", :"ICEBEAM", :"ICEFANG", :"ICICLESPEAR", :"ICYWIND", :"IRONHEAD", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SNOWSCAPE", :"SUBSTITUTE", :"SWORDSDANCE", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"ARCTIBAX" do |m|
  m.back_sprite 0, 56
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 1
end