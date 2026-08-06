#=============================================================================
# Pincurchin - ELECTRIC Type
#=============================================================================

GameData::Species.define :"PINCURCHIN" do |pkmn|
  pkmn.name "Pincurchin"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 48, attack: 101, defense: 95,
                  sp_atk: 15, sp_def: 91, speed: 85
  pkmn.abilities :"LIGHTNINGROD"
  pkmn.hidden_abilities :"ELECTRICSURGE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Multiped"
  pkmn.base_exp 152
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 1.0
  pkmn.category "Sea Urchin"
  pkmn.pokedex_entry "It stores electricity in each spine. Even if one gets broken off, it still continues to emit electricity for at least three hours."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water1", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"THUNDERSHOCK"
    m.at 5, :"WATERGUN"
    m.at 10, :"CHARGE"
    m.at 15, :"FURYATTACK"
    m.at 20, :"SPARK"
    m.at 25, :"BUBBLEBEAM"
    m.at 30, :"RECOVER"
    m.at 35, :"CURSE"
    m.at 40, :"ELECTRICTERRAIN"
    m.at 45, :"POISONJAB"
    m.at 50, :"ZINGZAP"
    m.at 55, :"ACUPRESSURE"
    m.at 60, :"DISCHARGE"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BRINE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ELECTRICTERRAIN", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEX", :"HIDDENPOWER", :"HYDROPUMP", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"NATURALGIFT", :"PAYBACK", :"PINMISSILE", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"REVERSAL", :"RISINGVOLTAGE", :"ROUND", :"SCALD", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SNORE", :"SPIKES", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TOXICSPIKES", :"VENOMDRENCH", :"VENOSHOCK", :"TERABLAST"
  pkmn.egg_moves :"MEMENTO", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"PINCURCHIN" do |m|
  m.back_sprite 0, 49
  m.front_sprite 1, 31
end