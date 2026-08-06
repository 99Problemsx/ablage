#=============================================================================
# Cofagrigus - GHOST Type
#=============================================================================

GameData::Species.define :"COFAGRIGUS" do |pkmn|
  pkmn.name "Cofagrigus"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 58, attack: 50, defense: 145,
                  sp_atk: 30, sp_def: 95, speed: 105
  pkmn.abilities :"MUMMY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 169
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.7
  pkmn.weight 76.5
  pkmn.category "Coffin"
  pkmn.pokedex_entry "They pretend to be elaborate coffins to teach lessons to grave robbers. Their bodies are covered in pure gold."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"PROTECT"
    m.at 1, :"DISABLE"
    m.at 1, :"HAZE"
    m.at 5, :"DISABLE"
    m.at 9, :"HAZE"
    m.at 13, :"NIGHTSHADE"
    m.at 17, :"HEX"
    m.at 21, :"WILLOWISP"
    m.at 25, :"OMINOUSWIND"
    m.at 29, :"CURSE"
    m.at 33, :"POWERSPLIT"
    m.at 33, :"GUARDSPLIT"
    m.at 34, :"SCARYFACE"
    m.at 39, :"SHADOWBALL"
    m.at 45, :"GRUDGE"
    m.at 51, :"MEANLOOK"
    m.at 57, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLOCK", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"COFAGRIGUS" do |m|
  m.back_sprite 1, 0
  m.front_sprite -5, 2
  m.shadow_sprite 0, 0, 2
end