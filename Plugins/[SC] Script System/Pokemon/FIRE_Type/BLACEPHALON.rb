#=============================================================================
# Blacephalon - FIRE Type
#=============================================================================

GameData::Species.define :"BLACEPHALON" do |pkmn|
  pkmn.name "Blacephalon"
  pkmn.types :"FIRE", :"GHOST"
  pkmn.base_stats hp: 53, attack: 127, defense: 53,
                  sp_atk: 107, sp_def: 151, speed: 79
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.8
  pkmn.weight 13.0
  pkmn.category "Fireworks"
  pkmn.pokedex_entry "It slithers toward people. Then, without warning, it triggers the explosion of its own head. It's apparently one kind of Ultra Beast."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"FIRESPIN"
    m.at 5, :"LIGHTSCREEN"
    m.at 10, :"EMBER"
    m.at 15, :"NIGHTSHADE"
    m.at 20, :"CONFUSERAY"
    m.at 25, :"MAGICCOAT"
    m.at 30, :"INCINERATE"
    m.at 35, :"HYPNOSIS"
    m.at 40, :"MYSTICALFIRE"
    m.at 45, :"SHADOWBALL"
    m.at 50, :"CALMMIND"
    m.at 55, :"WILLOWISP"
    m.at 60, :"TRICK"
    m.at 65, :"FIREBLAST"
    m.at 70, :"MINDBLOWN"
  end
  pkmn.tutor_moves :"AFTERYOU", :"CALMMIND", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"ENCORE", :"ENDURE", :"EXPANDINGFORCE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"QUASH", :"RECYCLE", :"REST", :"RETURN", :"ROCKBLAST", :"ROUND", :"SECRETPOWER", :"SELFDESTRUCT", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TRICK", :"UPROAR", :"WILLOWISP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BLACEPHALON" do |m|
  m.back_sprite 10, 36
  m.front_sprite -4, 3
end