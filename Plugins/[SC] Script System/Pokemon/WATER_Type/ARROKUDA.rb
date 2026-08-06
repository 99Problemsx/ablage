#=============================================================================
# Arrokuda - WATER Type
#=============================================================================

GameData::Species.define :"ARROKUDA" do |pkmn|
  pkmn.name "Arrokuda"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 41, attack: 63, defense: 40,
                  sp_atk: 66, sp_def: 40, speed: 30
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"PROPELLERTAIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Finned"
  pkmn.base_exp 56
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 1.0
  pkmn.category "Rush"
  pkmn.pokedex_entry "If it sees any movement around it, this Pokémon charges for it straightaway, leading with its sharply pointed jaw. It's very proud of that jaw."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"AQUAJET"
    m.at 6, :"FURYATTACK"
    m.at 12, :"BITE"
    m.at 18, :"AGILITY"
    m.at 24, :"DIVE"
    m.at 30, :"LASERFOCUS"
    m.at 36, :"CRUNCH"
    m.at 42, :"LIQUIDATION"
    m.at 48, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"CRUNCH", :"DIVE", :"DOUBLETEAM", :"DRILLRUN", :"ENDURE", :"FACADE", :"FOCUSENERGY", :"FRUSTRATION", :"HIDDENPOWER", :"ICEFANG", :"LIQUIDATION", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCALESHOT", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THROATCHOP", :"TOXIC", :"WATERFALL", :"WHIRLPOOL", :"TERABLAST"
  pkmn.egg_moves :"ACUPRESSURE", :"NIGHTSLASH", :"SLASH", :"THRASH"
end

GameData::SpeciesMetrics.define :"ARROKUDA" do |m|
  m.back_sprite 10, 47
  m.front_sprite -4, 25
  m.shadow_sprite 0, 0, -1
end