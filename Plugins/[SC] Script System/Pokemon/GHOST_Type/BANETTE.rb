#=============================================================================
# Banette - GHOST Type
#=============================================================================

GameData::Species.define :"BANETTE" do |pkmn|
  pkmn.name "Banette"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 64, attack: 115, defense: 65,
                  sp_atk: 65, sp_def: 83, speed: 63
  pkmn.abilities :"INSOMNIA", :"FRISK"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 159
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 1.1
  pkmn.weight 12.5
  pkmn.category "Marionette"
  pkmn.pokedex_entry "An abandoned plush doll became this Pokémon. They are said to live in garbage dumps and wander about in search of the children that threw them away."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"KNOCKOFF"
    m.at 1, :"SCREECH"
    m.at 1, :"NIGHTSHADE"
    m.at 1, :"CURSE"
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
    m.at 40, :"EMBARGO"
    m.at 46, :"SNATCH"
    m.at 52, :"GRUDGE"
    m.at 58, :"TRICK"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"KNOCKOFF", :"MAGICCOAT", :"MAGICROOM", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"BANETTE" do |m|
  m.back_sprite -6, 0
  m.front_sprite 3, 15
  m.shadow_sprite 0, 0, 1
end