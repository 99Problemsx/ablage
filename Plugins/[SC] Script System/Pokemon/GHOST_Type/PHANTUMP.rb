#=============================================================================
# Phantump - GHOST Type
#=============================================================================

GameData::Species.define :"PHANTUMP" do |pkmn|
  pkmn.name "Phantump"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 43, attack: 70, defense: 48,
                  sp_atk: 38, sp_def: 50, speed: 60
  pkmn.abilities :"NATURALCURE", :"FRISK"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 62
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 7.0
  pkmn.category "Stump"
  pkmn.pokedex_entry "These Pokémon are stumps possessed by the spirits of children who died in the forest. Their cries sound like eerie screams."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Grass", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"TACKLE"
    m.at 4, :"BRANCHPOKE"
    m.at 8, :"LEECHSEED"
    m.at 12, :"CONFUSERAY"
    m.at 16, :"WILLOWISP"
    m.at 20, :"HEX"
    m.at 24, :"GROWTH"
    m.at 28, :"HORNLEECH"
    m.at 32, :"CURSE"
    m.at 36, :"PHANTOMFORCE"
    m.at 40, :"INGRAIN"
    m.at 44, :"WOODHAMMER"
    m.at 48, :"DESTINYBOND"
    m.at 52, :"FORESTSCURSE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"HEX", :"HIDDENPOWER", :"IMPRISON", :"MAGICALLEAF", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PHANTOMFORCE", :"POISONJAB", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"VENOMDRENCH", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"DISABLE", :"GRUDGE", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"PHANTUMP" do |m|
  m.back_sprite 3, 22
  m.front_sprite 3, 6
end