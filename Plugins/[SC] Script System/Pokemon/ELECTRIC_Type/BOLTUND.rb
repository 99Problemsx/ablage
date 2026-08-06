#=============================================================================
# Boltund - ELECTRIC Type
#=============================================================================

GameData::Species.define :"BOLTUND" do |pkmn|
  pkmn.name "Boltund"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 69, attack: 90, defense: 60,
                  sp_atk: 121, sp_def: 90, speed: 60
  pkmn.abilities :"STRONGJAW"
  pkmn.hidden_abilities :"COMPETITIVE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 34.0
  pkmn.category "Dog"
  pkmn.pokedex_entry "This Pokémon generates electricity and channels it into its legs to keep them going strong. Boltund can run nonstop for three full days."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"ELECTRIFY"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"NUZZLE"
    m.at 1, :"BITE"
    m.at 15, :"ROAR"
    m.at 20, :"SPARK"
    m.at 28, :"CHARM"
    m.at 34, :"CRUNCH"
    m.at 41, :"CHARGE"
    m.at 48, :"WILDCHARGE"
    m.at 55, :"PLAYROUGH"
    m.at 62, :"ELECTRICTERRAIN"
  end
  pkmn.tutor_moves :"AGILITY", :"ATTRACT", :"BULKUP", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FIREFANG", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BOLTUND" do |m|
  m.back_sprite 6, 53
  m.front_sprite 0, 19
end