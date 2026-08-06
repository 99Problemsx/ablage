#=============================================================================
# Poipole - POISON Type
#=============================================================================

GameData::Species.define :"POIPOLE" do |pkmn|
  pkmn.name "Poipole"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 67, attack: 73, defense: 67,
                  sp_atk: 73, sp_def: 73, speed: 67
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 210
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 0.6
  pkmn.weight 1.8
  pkmn.category "Poison Pin"
  pkmn.pokedex_entry "An Ultra Beast that lives in a different world, it cackles wildly as it sprays its opponents with poison from the needles on its head."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONPULSE"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"ACID"
    m.at 7, :"FURYATTACK"
    m.at 14, :"FELLSTINGER"
    m.at 21, :"CHARM"
    m.at 28, :"VENOSHOCK"
    m.at 35, :"VENOMDRENCH"
    m.at 42, :"NASTYPLOT"
    m.at 49, :"POISONJAB"
    m.at 56, :"GASTROACID"
    m.at 63, :"TOXIC"
  end
  pkmn.tutor_moves :"CHARM", :"CONFIDE", :"COVET", :"DRAGONPULSE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GASTROACID", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PINMISSILE", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"VENOMDRENCH", :"VENOSHOCK", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"POIPOLE" do |m|
  m.back_sprite -5, 27
  m.front_sprite 0, -7
end