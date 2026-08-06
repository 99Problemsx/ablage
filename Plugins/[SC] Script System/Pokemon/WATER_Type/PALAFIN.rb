#=============================================================================
# Palafin - WATER Type
#=============================================================================

GameData::Species.define :"PALAFIN" do |pkmn|
  pkmn.name "Palafin"
  pkmn.form_name "Zero Form"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 100, attack: 70, defense: 72,
                  sp_atk: 100, sp_def: 53, speed: 62
  pkmn.abilities :"ZEROTOHERO"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 160
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 1.3
  pkmn.weight 60.2
  pkmn.category "Dolphin"
  pkmn.pokedex_entry "This Pokémon changes its appearance if it hears its allies calling for help. Palafin will never show anybody its moment of transformation."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field", :"Water2"

  pkmn.moves do |m|
    m.at 0, :"FLIPTURN"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"WATERGUN"
    m.at 1, :"JETPUNCH"
    m.at 7, :"ASTONISH"
    m.at 10, :"FOCUSENERGY"
    m.at 13, :"AQUAJET"
    m.at 17, :"DOUBLEHIT"
    m.at 21, :"DIVE"
    m.at 25, :"CHARM"
    m.at 29, :"ACROBATICS"
    m.at 34, :"ENCORE"
    m.at 39, :"AQUATAIL"
    m.at 44, :"MIST"
    m.at 50, :"HYDROPUMP"
    m.at 55, :"FOCUSPUNCH"
    m.at 61, :"WAVECRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"AURASPHERE", :"BLIZZARD", :"BODYSLAM", :"BULKUP", :"CHARM", :"CHILLINGWATER", :"CLOSECOMBAT", :"DISARMINGVOICE", :"DRAININGKISS", :"DRAINPUNCH", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FLIPTURN", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GRASSKNOT", :"HARDPRESS", :"HAZE", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONHEAD", :"LIQUIDATION", :"OUTRAGE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"REVERSAL", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"PALAFIN" do |m|
  m.back_sprite 0, 48
  m.front_sprite -4, 14
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Hero Form
GameData::Species.define :"PALAFIN_1" do |pkmn|
  pkmn.species :"PALAFIN"
  pkmn.form 1
  pkmn.name "Palafin"
  pkmn.form_name "Hero Form"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 100, attack: 160, defense: 97,
                  sp_atk: 100, sp_def: 106, speed: 87
  pkmn.abilities :"ZEROTOHERO"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 228
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 1.8
  pkmn.weight 97.4
  pkmn.category "Hero"
  pkmn.pokedex_entry "This Pokémon changes its appearance if it hears its allies calling for help. Palafin will never show anybody its moment of transformation."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field", :"Water2"

  pkmn.moves do |m|
    m.at 0, :"FLIPTURN"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"WATERGUN"
    m.at 1, :"JETPUNCH"
    m.at 7, :"ASTONISH"
    m.at 10, :"FOCUSENERGY"
    m.at 13, :"AQUAJET"
    m.at 17, :"DOUBLEHIT"
    m.at 21, :"DIVE"
    m.at 25, :"CHARM"
    m.at 29, :"ACROBATICS"
    m.at 34, :"ENCORE"
    m.at 39, :"AQUATAIL"
    m.at 44, :"MIST"
    m.at 50, :"HYDROPUMP"
    m.at 55, :"FOCUSPUNCH"
    m.at 61, :"WAVECRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"AURASPHERE", :"BLIZZARD", :"BODYSLAM", :"BULKUP", :"CHARM", :"CHILLINGWATER", :"CLOSECOMBAT", :"DISARMINGVOICE", :"DRAININGKISS", :"DRAINPUNCH", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FLIPTURN", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GRASSKNOT", :"HARDPRESS", :"HAZE", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONHEAD", :"LIQUIDATION", :"OUTRAGE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"REVERSAL", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"PALAFIN_1" do |m|
  m.back_sprite -4, 52
  m.front_sprite 4, 6
  m.shadow_sprite 0, 0, 1
end