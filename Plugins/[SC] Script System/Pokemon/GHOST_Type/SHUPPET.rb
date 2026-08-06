#=============================================================================
# Shuppet - GHOST Type
#=============================================================================

GameData::Species.define :"SHUPPET" do |pkmn|
  pkmn.name "Shuppet"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 44, attack: 75, defense: 35,
                  sp_atk: 45, sp_def: 63, speed: 33
  pkmn.abilities :"INSOMNIA", :"FRISK"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Black"
  pkmn.shape :"Head"
  pkmn.base_exp 59
  pkmn.catch_rate 225
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 0.6
  pkmn.weight 2.3
  pkmn.category "Puppet"
  pkmn.pokedex_entry "This Pokémon roams about deep in the night seeking such negative emotions as grudges and envy. It retreats to its nest when the sun begins to rise."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"KNOCKOFF"
    m.at 4, :"SCREECH"
    m.at 7, :"NIGHTSHADE"
    m.at 10, :"SPITE"
    m.at 13, :"WILLOWISP"
    m.at 16, :"SHADOWSNEAK"
    m.at 19, :"CURSE"
    m.at 22, :"FEINTATTACK"
    m.at 26, :"HEX"
    m.at 30, :"SHADOWBALL"
    m.at 34, :"SUCKERPUNCH"
    m.at 38, :"EMBARGO"
    m.at 42, :"SNATCH"
    m.at 46, :"GRUDGE"
    m.at 50, :"TRICK"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"ICYWIND", :"KNOCKOFF", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP"
  pkmn.egg_moves :"ASTONISH", :"CONFUSERAY", :"DESTINYBOND", :"DISABLE", :"FORESIGHT", :"GUNKSHOT", :"IMPRISON", :"OMINOUSWIND", :"PURSUIT", :"SHADOWSNEAK"
end

GameData::SpeciesMetrics.define :"SHUPPET" do |m|
  m.back_sprite -4, 0
  m.front_sprite 2, 3
  m.shadow_sprite 0, 0, 2
end