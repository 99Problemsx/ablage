#=============================================================================
# Iron Thorns - ROCK Type
#=============================================================================

GameData::Species.define :"IRONTHORNS" do |pkmn|
  pkmn.name "Iron Thorns"
  pkmn.types :"ROCK", :"ELECTRIC"
  pkmn.base_stats hp: 100, attack: 134, defense: 110,
                  sp_atk: 72, sp_def: 70, speed: 84
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.6
  pkmn.weight 303.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "It has some similarities to a Pokémon introduced in a dubious magazine as a Tyranitar from one billion years into the future."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"ELECTRICTERRAIN"
    m.at 1, :"IRONDEFENSE"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"ROCKTHROW"
    m.at 7, :"SCREECH"
    m.at 21, :"ROCKTOMB"
    m.at 28, :"BITE"
    m.at 35, :"CHARGE"
    m.at 42, :"ROCKSLIDE"
    m.at 49, :"SANDSTORM"
    m.at 56, :"WILDCHARGE"
    m.at 63, :"PINMISSILE"
    m.at 70, :"EARTHQUAKE"
    m.at 77, :"STEALTHROCK"
    m.at 84, :"STONEEDGE"
    m.at 91, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULLDOZE", :"CHARGE", :"CHARGEBEAM", :"CRUNCH", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"GIGAIMPACT", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEFANG", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"LOWKICK", :"METALCLAW", :"METEORBEAM", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SANDTOMB", :"SCARYFACE", :"SLEEPTALK", :"SMACKDOWN", :"SNARL", :"SPIKES", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERPUNCH", :"THUNDERWAVE", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"IRONTHORNS" do |m|
  m.back_sprite 0, 40
  m.front_sprite 8, 13
  m.shadow_sprite 0, 0, 3
end