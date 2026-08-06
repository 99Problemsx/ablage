#=============================================================================
# Solgaleo - PSYCHIC Type
#=============================================================================

GameData::Species.define :"SOLGALEO" do |pkmn|
  pkmn.name "Solgaleo"
  pkmn.types :"PSYCHIC", :"STEEL"
  pkmn.base_stats hp: 137, attack: 137, defense: 107,
                  sp_atk: 97, sp_def: 113, speed: 89
  pkmn.abilities :"FULLMETALBODY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 340
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 3.4
  pkmn.weight 230.0
  pkmn.category "Sunne"
  pkmn.pokedex_entry "It is said to live in another world. The intense light it radiates from the surface of its body can make the darkest of nights light up like midday."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 0, :"SUNSTEELSTRIKE"
    m.at 1, :"COSMICPOWER"
    m.at 1, :"TELEPORT"
    m.at 1, :"METALCLAW"
    m.at 1, :"NOBLEROAR"
    m.at 7, :"IRONHEAD"
    m.at 14, :"METALSOUND"
    m.at 21, :"ZENHEADBUTT"
    m.at 28, :"FLASHCANNON"
    m.at 35, :"MORNINGSUN"
    m.at 42, :"CRUNCH"
    m.at 49, :"METALBURST"
    m.at 56, :"WILDCHARGE"
    m.at 63, :"SOLARBEAM"
    m.at 70, :"FLAREBLITZ"
    m.at 77, :"WIDEGUARD"
    m.at 84, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AGILITY", :"BULLDOZE", :"CALMMIND", :"CLOSECOMBAT", :"CONFIDE", :"COSMICPOWER", :"CRUNCH", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLASHCANNON", :"FOCUSBLAST", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GYROBALL", :"HEATCRASH", :"HEAVYSLAM", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"METEORBEAM", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHIC", :"PSYCHICFANGS", :"PSYCHUP", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"STEELBEAM", :"STEELROLLER", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SOLGALEO" do |m|
  m.back_sprite -4, 54
  m.front_sprite 6, 12
end