#=============================================================================
# Runerigus - GROUND Type
#=============================================================================

GameData::Species.define :"RUNERIGUS" do |pkmn|
  pkmn.name "Runerigus"
  pkmn.types :"GROUND", :"GHOST"
  pkmn.base_stats hp: 58, attack: 95, defense: 145,
                  sp_atk: 30, sp_def: 50, speed: 105
  pkmn.abilities :"WANDERINGSPIRIT"
  pkmn.flags :"DefaultForm_1", :"InheritFormWithEverStone"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 169
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.6
  pkmn.weight 66.6
  pkmn.category "Grudge"
  pkmn.pokedex_entry "A powerful curse was woven into an ancient painting. After absorbing the spirit of a Yamask, the painting began to move."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 0, :"SHADOWCLAW"
    m.at 1, :"SCARYFACE"
    m.at 1, :"ASTONISH"
    m.at 1, :"PROTECT"
    m.at 1, :"HAZE"
    m.at 1, :"NIGHTSHADE"
    m.at 12, :"DISABLE"
    m.at 16, :"BRUTALSWING"
    m.at 20, :"CRAFTYSHIELD"
    m.at 24, :"HEX"
    m.at 28, :"MEANLOOK"
    m.at 32, :"SLAM"
    m.at 38, :"CURSE"
    m.at 44, :"SHADOWBALL"
    m.at 50, :"EARTHQUAKE"
    m.at 56, :"POWERSPLIT"
    m.at 56, :"GUARDSPLIT"
    m.at 62, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"AMNESIA", :"ATTRACT", :"BODYPRESS", :"BRUTALSWING", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUARDSWAP", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PHANTOMFORCE", :"POLTERGEIST", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"REVENGE", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SANDTOMB", :"SCARYFACE", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"TOXICSPIKES", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"MEMENTO"
end

GameData::SpeciesMetrics.define :"RUNERIGUS" do |m|
  m.back_sprite 13, 55
  m.front_sprite -5, 39
end