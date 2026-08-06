#=============================================================================
# Guzzlord - DARK Type
#=============================================================================

GameData::Species.define :"GUZZLORD" do |pkmn|
  pkmn.name "Guzzlord"
  pkmn.types :"DARK", :"DRAGON"
  pkmn.base_stats hp: 223, attack: 101, defense: 53,
                  sp_atk: 43, sp_def: 97, speed: 53
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 285
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 5.5
  pkmn.weight 888.0
  pkmn.category "Junkivore"
  pkmn.pokedex_entry "A dangerous Ultra Beast, it appears to be eating constantly, but for some reason its droppings have never been found."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"DRAGONTAIL"
    m.at 5, :"SWALLOW"
    m.at 5, :"STOCKPILE"
    m.at 10, :"KNOCKOFF"
    m.at 15, :"STOMP"
    m.at 20, :"STOMPINGTANTRUM"
    m.at 25, :"WIDEGUARD"
    m.at 30, :"CRUNCH"
    m.at 35, :"BODYSLAM"
    m.at 40, :"GASTROACID"
    m.at 45, :"HAMMERARM"
    m.at 50, :"HEAVYSLAM"
    m.at 55, :"DRAGONRUSH"
    m.at 60, :"BELCH"
    m.at 65, :"THRASH"
    m.at 70, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AMNESIA", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BRUTALSWING", :"BULLDOZE", :"CORROSIVEGAS", :"CRUNCH", :"DARKPULSE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"GASTROACID", :"GIGAIMPACT", :"GYROBALL", :"HEATCRASH", :"HEATWAVE", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LASHOUT", :"LASTRESORT", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNARL", :"SNORE", :"STEELROLLER", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"THIEF", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GUZZLORD" do |m|
  m.back_sprite 10, 68
  m.front_sprite -9, 11
end