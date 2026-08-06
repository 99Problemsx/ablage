#=============================================================================
# Chien-Pao - DARK Type
#=============================================================================

GameData::Species.define :"CHIENPAO" do |pkmn|
  pkmn.name "Chien-Pao"
  pkmn.types :"DARK", :"ICE"
  pkmn.base_stats hp: 80, attack: 120, defense: 80,
                  sp_atk: 135, sp_def: 90, speed: 65
  pkmn.abilities :"SWORDOFRUIN"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 285
  pkmn.catch_rate 6
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.9
  pkmn.weight 152.2
  pkmn.category "Ruinous"
  pkmn.pokedex_entry "This Pokémon can control 100 tons of fallen snow. It plays around innocently by leaping in and out of avalanches it has caused."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SPITE"
    m.at 1, :"POWDERSNOW"
    m.at 1, :"MEANLOOK"
    m.at 5, :"ICYWIND"
    m.at 10, :"PAYBACK"
    m.at 15, :"MIST"
    m.at 15, :"HAZE"
    m.at 20, :"ICESHARD"
    m.at 25, :"SWORDSDANCE"
    m.at 30, :"SNOWSCAPE"
    m.at 35, :"NIGHTSLASH"
    m.at 40, :"DARKPULSE"
    m.at 45, :"ICICLECRASH"
    m.at 50, :"RUINATION"
    m.at 55, :"SUCKERPUNCH"
    m.at 60, :"SACREDSWORD"
    m.at 65, :"RECOVER"
    m.at 70, :"THROATCHOP"
    m.at 75, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AVALANCHE", :"BLIZZARD", :"BRICKBREAK", :"CRUNCH", :"DARKPULSE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"GIGAIMPACT", :"HAZE", :"HEX", :"HYPERBEAM", :"ICEFANG", :"ICESPINNER", :"ICYWIND", :"LASHOUT", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SNOWSCAPE", :"SPITE", :"SUBSTITUTE", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP"
end

GameData::SpeciesMetrics.define :"CHIENPAO" do |m|
  m.back_sprite 14, 63
  m.front_sprite -5, 25
  m.shadow_sprite 0, 0, 3
end