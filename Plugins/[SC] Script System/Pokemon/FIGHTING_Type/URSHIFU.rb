#=============================================================================
# Urshifu - FIGHTING Type
#=============================================================================

GameData::Species.define :"URSHIFU" do |pkmn|
  pkmn.name "Urshifu"
  pkmn.form_name "Single Strike Style"
  pkmn.types :"FIGHTING", :"DARK"
  pkmn.base_stats hp: 100, attack: 130, defense: 100,
                  sp_atk: 97, sp_def: 63, speed: 60
  pkmn.abilities :"UNSEENFIST"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 30720
  pkmn.height 1.9
  pkmn.weight 105.0
  pkmn.category "Wushu"
  pkmn.pokedex_entry "Inhabiting the mountains of a distant region, this Pokémon races across sheer cliffs, training its legs and refining its moves."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 0, :"WICKEDBLOW"
    m.at 1, :"SUCKERPUNCH"
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 1, :"ENDURE"
    m.at 1, :"FOCUSENERGY"
    m.at 12, :"AERIALACE"
    m.at 16, :"SCARYFACE"
    m.at 20, :"HEADBUTT"
    m.at 24, :"BRICKBREAK"
    m.at 28, :"DETECT"
    m.at 32, :"BULKUP"
    m.at 36, :"IRONHEAD"
    m.at 40, :"DYNAMICPUNCH"
    m.at 44, :"COUNTER"
    m.at 48, :"CLOSECOMBAT"
    m.at 52, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ASSURANCE", :"ATTRACT", :"AURASPHERE", :"BEATUP", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"CRUNCH", :"DARKESTLARIAT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSENERGY", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TAUNT", :"THROATCHOP", :"THUNDERPUNCH", :"TOXIC", :"UTURN", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"URSHIFU" do |m|
  m.back_sprite 0, 45
  m.front_sprite 1, 10
end

# Form 1 - Single Strike Style
GameData::Species.define :"URSHIFU_1" do |pkmn|
  pkmn.species :"URSHIFU"
  pkmn.form 1
  pkmn.name "Urshifu"
  pkmn.form_name "Single Strike Style"
  pkmn.types :"FIGHTING", :"DARK"
  pkmn.base_stats hp: 100, attack: 130, defense: 100,
                  sp_atk: 97, sp_def: 63, speed: 60
  pkmn.abilities :"UNSEENFIST"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 30720
  pkmn.height 1.9
  pkmn.weight 105.0
  pkmn.category "Wushu"
  pkmn.pokedex_entry "Inhabiting the mountains of a distant region, this Pokémon races across sheer cliffs, training its legs and refining its moves."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 0, :"WICKEDBLOW"
    m.at 1, :"SUCKERPUNCH"
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 1, :"ENDURE"
    m.at 1, :"FOCUSENERGY"
    m.at 12, :"AERIALACE"
    m.at 16, :"SCARYFACE"
    m.at 20, :"HEADBUTT"
    m.at 24, :"BRICKBREAK"
    m.at 28, :"DETECT"
    m.at 32, :"BULKUP"
    m.at 36, :"IRONHEAD"
    m.at 40, :"DYNAMICPUNCH"
    m.at 44, :"COUNTER"
    m.at 48, :"CLOSECOMBAT"
    m.at 52, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ASSURANCE", :"ATTRACT", :"AURASPHERE", :"BEATUP", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"CRUNCH", :"DARKESTLARIAT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSENERGY", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TAUNT", :"THROATCHOP", :"THUNDERPUNCH", :"TOXIC", :"UTURN", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"URSHIFU_1" do |m|
  m.back_sprite 0, 45
  m.front_sprite 1, 10
end