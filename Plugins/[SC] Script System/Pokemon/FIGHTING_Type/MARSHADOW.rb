#=============================================================================
# Marshadow - FIGHTING Type
#=============================================================================

GameData::Species.define :"MARSHADOW" do |pkmn|
  pkmn.name "Marshadow"
  pkmn.types :"FIGHTING", :"GHOST"
  pkmn.base_stats hp: 90, attack: 125, defense: 80,
                  sp_atk: 125, sp_def: 90, speed: 90
  pkmn.abilities :"TECHNICIAN"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 0.7
  pkmn.weight 22.2
  pkmn.category "Gloomdweller"
  pkmn.pokedex_entry "Able to conceal itself in shadows, it never appears before humans, so its very existence was the stuff of myth."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THUNDERPUNCH"
    m.at 1, :"FIREPUNCH"
    m.at 1, :"ICEPUNCH"
    m.at 1, :"COPYCAT"
    m.at 1, :"SHADOWSNEAK"
    m.at 1, :"FEINT"
    m.at 1, :"COUNTER"
    m.at 9, :"ROLEPLAY"
    m.at 18, :"SHADOWPUNCH"
    m.at 27, :"FORCEPALM"
    m.at 36, :"ASSURANCE"
    m.at 45, :"SUCKERPUNCH"
    m.at 54, :"DRAINPUNCH"
    m.at 63, :"PSYCHUP"
    m.at 72, :"SPECTRALTHIEF"
    m.at 81, :"LASERFOCUS"
    m.at 90, :"ENDEAVOR"
    m.at 99, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"ASSURANCE", :"AURASPHERE", :"BLAZEKICK", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"CALMMIND", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONHEAD", :"KNOCKOFF", :"LASERFOCUS", :"LASTRESORT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PHANTOMFORCE", :"POISONJAB", :"POLTERGEIST", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SMACKDOWN", :"SNATCH", :"SNORE", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"THIEF", :"THROATCHOP", :"THUNDERPUNCH", :"TOXIC", :"WILLOWISP", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MARSHADOW" do |m|
  m.back_sprite 5, 53
  m.front_sprite 1, 1
end