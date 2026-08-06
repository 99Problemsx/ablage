#=============================================================================
# Pecharunt - POISON Type
#=============================================================================

GameData::Species.define :"PECHARUNT" do |pkmn|
  pkmn.name "Pecharunt"
  pkmn.types :"POISON", :"GHOST"
  pkmn.base_stats hp: 88, attack: 88, defense: 160,
                  sp_atk: 88, sp_def: 88, speed: 88
  pkmn.abilities :"POISONPUPPETEER"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 2560
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Subjugation"
  pkmn.pokedex_entry "It feeds others toxic mochi that draw out desires and capabilities. Those who eat the mochi fall under Pecharunt's control, chained to its will."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"DEFENSECURL"
    m.at -1, :"ROLLOUT"
    m.at -1, :"MEANLOOK"
    m.at 1, :"SMOG"
    m.at 1, :"POISONGAS"
    m.at 1, :"MEMENTO"
    m.at 1, :"ASTONISH"
    m.at 8, :"WITHDRAW"
    m.at 16, :"DESTINYBOND"
    m.at 24, :"FAKETEARS"
    m.at 32, :"PARTINGSHOT"
    m.at 40, :"SHADOWBALL"
    m.at 48, :"MALIGNANTCHAIN"
    m.at 56, :"TOXIC"
    m.at 64, :"NASTYPLOT"
    m.at 72, :"RECOVER"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"CURSE", :"ENDURE", :"FAKETEARS", :"FOULPLAY", :"GUNKSHOT", :"HEX", :"IMPRISON", :"NASTYPLOT", :"NIGHTSHADE", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"REST", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SPITE", :"SUBSTITUTE", :"TOXIC", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"PECHARUNT" do |m|
  m.back_sprite 0, 50
  m.front_sprite 0, 7
  m.shadow_sprite 0, 0, 2
end