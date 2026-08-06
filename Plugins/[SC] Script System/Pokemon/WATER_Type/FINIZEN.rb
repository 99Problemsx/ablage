#=============================================================================
# Finizen - WATER Type
#=============================================================================

GameData::Species.define :"FINIZEN" do |pkmn|
  pkmn.name "Finizen"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 70, attack: 45, defense: 40,
                  sp_atk: 75, sp_def: 45, speed: 40
  pkmn.abilities :"WATERVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 63
  pkmn.catch_rate 200
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 1.3
  pkmn.weight 60.2
  pkmn.category "Dolphin"
  pkmn.pokedex_entry "It likes playing with others of its kind using the water ring on its tail. It uses ultrasonic waves to sense the emotions of other living creatures."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"SUPERSONIC"
    m.at 7, :"ASTONISH"
    m.at 10, :"FOCUSENERGY"
    m.at 13, :"AQUAJET"
    m.at 17, :"DOUBLEHIT"
    m.at 21, :"DIVE"
    m.at 25, :"CHARM"
    m.at 29, :"ACROBATICS"
    m.at 34, :"ENCORE"
    m.at 39, :"AQUATAIL"
    m.at 44, :"MIST"
    m.at 50, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"BLIZZARD", :"BODYSLAM", :"CHARM", :"CHILLINGWATER", :"DISARMINGVOICE", :"DRAININGKISS", :"ENCORE", :"ENDURE", :"FACADE", :"FLING", :"HAZE", :"HELPINGHAND", :"HYDROPUMP", :"ICEBEAM", :"ICYWIND", :"LIQUIDATION", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"WATERFALL", :"WATERPULSE", :"ZENHEADBUTT"
  pkmn.egg_moves :"BOOMBURST", :"BOUNCE", :"COUNTER", :"HAZE", :"TICKLE"
end

GameData::SpeciesMetrics.define :"FINIZEN" do |m|
  m.back_sprite 0, 46
  m.front_sprite -2, 14
  m.shadow_sprite 0, 0, 1
end