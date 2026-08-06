#=============================================================================
# Walking Wake - WATER Type
#=============================================================================

GameData::Species.define :"WALKINGWAKE" do |pkmn|
  pkmn.name "Walking Wake"
  pkmn.types :"WATER", :"DRAGON"
  pkmn.base_stats hp: 99, attack: 83, defense: 91,
                  sp_atk: 109, sp_def: 125, speed: 83
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 295
  pkmn.catch_rate 5
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 3.5
  pkmn.weight 280.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "This ferocious creature is shrouded in mystery. It's named after an aquatic monster mentioned in an old expedition journal."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"SUNNYDAY"
    m.at -1, :"HONECLAWS"
    m.at 1, :"ROAR"
    m.at 1, :"LEER"
    m.at 1, :"AQUAJET"
    m.at 1, :"TWISTER"
    m.at 7, :"BITE"
    m.at 14, :"WATERPULSE"
    m.at 21, :"NOBLEROAR"
    m.at 28, :"DRAGONBREATH"
    m.at 35, :"BREAKINGSWIPE"
    m.at 42, :"DRAGONRUSH"
    m.at 56, :"HYDROSTEAM"
    m.at 63, :"DRAGONPULSE"
    m.at 70, :"OUTRAGE"
    m.at 77, :"FLAMETHROWER"
    m.at 84, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AGILITY", :"BODYSLAM", :"BREAKINGSWIPE", :"CHILLINGWATER", :"CRUNCH", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"FACADE", :"FIREFANG", :"FLAMETHROWER", :"FLIPTURN", :"GIGAIMPACT", :"HURRICANE", :"HYDROPUMP", :"HYPERBEAM", :"KNOCKOFF", :"LIQUIDATION", :"LOWKICK", :"MUDSHOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"ROAR", :"SCALD", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWIFT", :"TAKEDOWN", :"WATERFALL", :"WATERPULSE", :"WEATHERBALL", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"WALKINGWAKE" do |m|
  m.back_sprite -14, 48
  m.front_sprite -14, 12
  m.shadow_sprite 0, 0, 3
end