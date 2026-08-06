#=============================================================================
# Trevenant - GHOST Type
#=============================================================================

GameData::Species.define :"TREVENANT" do |pkmn|
  pkmn.name "Trevenant"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 85, attack: 110, defense: 76,
                  sp_atk: 56, sp_def: 65, speed: 82
  pkmn.abilities :"NATURALCURE", :"FRISK"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Multiped"
  pkmn.base_exp 166
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 71.0
  pkmn.category "Elder Tree"
  pkmn.pokedex_entry "Through its roots, it exerts control over other trees. A deadly curse falls upon anyone cutting down trees in forests where Trevenant dwell."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Grass", :"Amorphous"

  pkmn.moves do |m|
    m.at 0, :"SHADOWCLAW"
    m.at 1, :"ASTONISH"
    m.at 1, :"TACKLE"
    m.at 1, :"BRANCHPOKE"
    m.at 1, :"LEECHSEED"
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
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BLOCK", :"BRUTALSWING", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"HEX", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IMPRISON", :"LEAFSTORM", :"MAGICALLEAF", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PHANTOMFORCE", :"POISONJAB", :"POLTERGEIST", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"VENOMDRENCH", :"WILLOWISP", :"WORRYSEED", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TREVENANT" do |m|
  m.back_sprite 2, 55
  m.front_sprite 1, 9
end