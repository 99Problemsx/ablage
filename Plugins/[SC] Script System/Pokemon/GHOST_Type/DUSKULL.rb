#=============================================================================
# Duskull - GHOST Type
#=============================================================================

GameData::Species.define :"DUSKULL" do |pkmn|
  pkmn.name "Duskull"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 20, attack: 40, defense: 90,
                  sp_atk: 25, sp_def: 30, speed: 90
  pkmn.abilities :"LEVITATE"
  pkmn.hidden_abilities :"FRISK"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 59
  pkmn.catch_rate 190
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 0.8
  pkmn.weight 15.0
  pkmn.category "Requiem"
  pkmn.pokedex_entry "A glare from its single scarlet eye makes even burly grown-ups freeze in utter fear. It is a nocturnal Pokémon that roams about under the cloak of darkness."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"NIGHTSHADE"
    m.at 6, :"DISABLE"
    m.at 9, :"FORESIGHT"
    m.at 14, :"ASTONISH"
    m.at 17, :"CONFUSERAY"
    m.at 22, :"SHADOWSNEAK"
    m.at 25, :"PURSUIT"
    m.at 30, :"CURSE"
    m.at 33, :"WILLOWISP"
    m.at 38, :"HEX"
    m.at 41, :"MEANLOOK"
    m.at 46, :"PAYBACK"
    m.at 49, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM"
  pkmn.egg_moves :"DARKPULSE", :"DESTINYBOND", :"FEINTATTACK", :"GRUDGE", :"IMPRISON", :"MEMENTO", :"OMINOUSWIND", :"PAINSPLIT", :"SKILLSWAP"
end

GameData::SpeciesMetrics.define :"DUSKULL" do |m|
  m.back_sprite 6, 0
  m.front_sprite -1, 3
  m.shadow_sprite 0, 0, 2
end