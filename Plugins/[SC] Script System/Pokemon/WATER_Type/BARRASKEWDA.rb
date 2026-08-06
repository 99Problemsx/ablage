#=============================================================================
# Barraskewda - WATER Type
#=============================================================================

GameData::Species.define :"BARRASKEWDA" do |pkmn|
  pkmn.name "Barraskewda"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 61, attack: 123, defense: 60,
                  sp_atk: 136, sp_def: 60, speed: 50
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"PROPELLERTAIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Finned"
  pkmn.base_exp 172
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.3
  pkmn.weight 30.0
  pkmn.category "Skewer"
  pkmn.pokedex_entry "This Pokémon has a jaw that's as sharp as a spear and as strong as steel. Apparently Barraskewda's flesh is surprisingly tasty, too."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"THROATCHOP"
    m.at 1, :"PECK"
    m.at 1, :"AQUAJET"
    m.at 1, :"FURYATTACK"
    m.at 1, :"BITE"
    m.at 18, :"AGILITY"
    m.at 24, :"DIVE"
    m.at 32, :"LASERFOCUS"
    m.at 40, :"CRUNCH"
    m.at 48, :"LIQUIDATION"
    m.at 56, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"CRUNCH", :"DIVE", :"DOUBLETEAM", :"DRILLRUN", :"ENDURE", :"FACADE", :"FLIPTURN", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEFANG", :"LIQUIDATION", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCALESHOT", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"THROATCHOP", :"TOXIC", :"WATERFALL", :"WHIRLPOOL", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BARRASKEWDA" do |m|
  m.back_sprite 0, 52
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, -1
end