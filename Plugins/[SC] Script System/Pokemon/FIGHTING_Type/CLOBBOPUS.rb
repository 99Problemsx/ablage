#=============================================================================
# Clobbopus - FIGHTING Type
#=============================================================================

GameData::Species.define :"CLOBBOPUS" do |pkmn|
  pkmn.name "Clobbopus"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 50, attack: 68, defense: 60,
                  sp_atk: 32, sp_def: 50, speed: 50
  pkmn.abilities :"LIMBER"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Multiped"
  pkmn.base_exp 62
  pkmn.catch_rate 180
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.6
  pkmn.weight 4.0
  pkmn.category "Tantrum"
  pkmn.pokedex_entry "It's very curious, but its means of investigating things is to try to punch them with its tentacles. The search for food is what brings it onto land."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water1", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 5, :"FEINT"
    m.at 10, :"BIND"
    m.at 15, :"DETECT"
    m.at 20, :"BRICKBREAK"
    m.at 25, :"BULKUP"
    m.at 30, :"SUBMISSION"
    m.at 35, :"TAUNT"
    m.at 40, :"REVERSAL"
    m.at 45, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"HIDDENPOWER", :"ICEPUNCH", :"LIQUIDATION", :"MEGAPUNCH", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"TOXIC", :"WATERFALL", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"CIRCLETHROW", :"PAINSPLIT", :"POWERUPPUNCH", :"SEISMICTOSS", :"SOAK", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"CLOBBOPUS" do |m|
  m.back_sprite 3, 14
  m.front_sprite 5, 31
end