#=============================================================================
# Iron Bundle - ICE Type
#=============================================================================

GameData::Species.define :"IRONBUNDLE" do |pkmn|
  pkmn.name "Iron Bundle"
  pkmn.types :"ICE", :"WATER"
  pkmn.base_stats hp: 56, attack: 80, defense: 114,
                  sp_atk: 136, sp_def: 124, speed: 60
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 285
  pkmn.catch_rate 50
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 0.6
  pkmn.weight 11.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "Its shape is similar to a robot featured in a paranormal magazine article. The robot was said to have been created by an ancient civilization."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"ELECTRICTERRAIN"
    m.at 1, :"PRESENT"
    m.at 7, :"POWDERSNOW"
    m.at 14, :"WHIRLPOOL"
    m.at 21, :"TAKEDOWN"
    m.at 28, :"DRILLPECK"
    m.at 35, :"HELPINGHAND"
    m.at 42, :"FREEZEDRY"
    m.at 49, :"FLIPTURN"
    m.at 56, :"ICEBEAM"
    m.at 63, :"AGILITY"
    m.at 70, :"SNOWSCAPE"
    m.at 77, :"HYDROPUMP"
    m.at 84, :"AURORAVEIL"
    m.at 91, :"BLIZZARD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"AIRCUTTER", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"CHILLINGWATER", :"ELECTRICTERRAIN", :"ENCORE", :"ENDURE", :"FACADE", :"FLING", :"FLIPTURN", :"GIGAIMPACT", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICESPINNER", :"ICYWIND", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SNOWSCAPE", :"SUBSTITUTE", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"UTURN", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"IRONBUNDLE" do |m|
  m.back_sprite 0, 45
  m.front_sprite 2, 22
  m.shadow_sprite 0, 0, 2
end