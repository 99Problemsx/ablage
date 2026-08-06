#=============================================================================
# Stakataka - ROCK Type
#=============================================================================

GameData::Species.define :"STAKATAKA" do |pkmn|
  pkmn.name "Stakataka"
  pkmn.types :"ROCK", :"STEEL"
  pkmn.base_stats hp: 61, attack: 131, defense: 211,
                  sp_atk: 13, sp_def: 53, speed: 101
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 5.5
  pkmn.weight 820.0
  pkmn.category "Rampart"
  pkmn.pokedex_entry "When stone walls started moving and attacking, the brute's true identity was this mysterious life-form, which brings to mind an Ultra Beast."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 5, :"ROCKTHROW"
    m.at 10, :"PROTECT"
    m.at 15, :"STOMP"
    m.at 20, :"BLOCK"
    m.at 25, :"ROCKSLIDE"
    m.at 30, :"WIDEGUARD"
    m.at 35, :"AUTOTOMIZE"
    m.at 40, :"ROCKBLAST"
    m.at 45, :"MAGNETRISE"
    m.at 50, :"IRONDEFENSE"
    m.at 55, :"IRONHEAD"
    m.at 60, :"TAKEDOWN"
    m.at 65, :"STEALTHROCK"
    m.at 70, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"BIND", :"BLOCK", :"BODYPRESS", :"BODYSLAM", :"BRUTALSWING", :"BULLDOZE", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEATCRASH", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"INFESTATION", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MAGNETRISE", :"MEGAKICK", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SKILLSWAP", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STEELBEAM", :"STEELROLLER", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"TELEKINESIS", :"TOXIC", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"STAKATAKA" do |m|
  m.back_sprite 6, 74
  m.front_sprite -2, 8
end