#=============================================================================
# Garganacl - ROCK Type
#=============================================================================

GameData::Species.define :"GARGANACL" do |pkmn|
  pkmn.name "Garganacl"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 100, attack: 100, defense: 130,
                  sp_atk: 35, sp_def: 45, speed: 90
  pkmn.abilities :"PURIFYINGSALT", :"STURDY"
  pkmn.hidden_abilities :"CLEARBODY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 250
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.3
  pkmn.weight 240.0
  pkmn.category "Rock Salt"
  pkmn.pokedex_entry "Garganacl will rub its fingertips together and sprinkle injured Pokémon with salt. Even severe wounds will promptly heal afterward."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"HAMMERARM"
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"BLOCK"
    m.at 1, :"ROCKBLAST"
    m.at 1, :"WIDEGUARD"
    m.at 5, :"ROCKTHROW"
    m.at 7, :"MUDSHOT"
    m.at 10, :"ROCKTOMB"
    m.at 13, :"ROCKPOLISH"
    m.at 16, :"HEADBUTT"
    m.at 24, :"SALTCURE"
    m.at 30, :"RECOVER"
    m.at 34, :"ROCKSLIDE"
    m.at 40, :"STEALTHROCK"
    m.at 44, :"HEAVYSLAM"
    m.at 49, :"EARTHQUAKE"
    m.at 54, :"STONEEDGE"
    m.at 60, :"EXPLOSION"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CURSE", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASHCANNON", :"FLING", :"FOCUSPUNCH", :"GIGAIMPACT", :"GRAVITY", :"HARDPRESS", :"HEAVYSLAM", :"HELPINGHAND", :"HYPERBEAM", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"METEORBEAM", :"MUDSHOT", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SLEEPTALK", :"SMACKDOWN", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THUNDERPUNCH", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GARGANACL" do |m|
  m.back_sprite 0, 39
  m.front_sprite 0, 17
  m.shadow_sprite 0, 0, 3
end