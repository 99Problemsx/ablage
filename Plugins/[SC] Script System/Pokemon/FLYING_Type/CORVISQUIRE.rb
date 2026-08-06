#=============================================================================
# Corvisquire - FLYING Type
#=============================================================================

GameData::Species.define :"CORVISQUIRE" do |pkmn|
  pkmn.name "Corvisquire"
  pkmn.types :"FLYING"
  pkmn.base_stats hp: 68, attack: 67, defense: 55,
                  sp_atk: 77, sp_def: 43, speed: 55
  pkmn.abilities :"KEENEYE", :"UNNERVE"
  pkmn.hidden_abilities :"BIGPECKS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 128
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.8
  pkmn.weight 16.0
  pkmn.category "Raven"
  pkmn.pokedex_entry "Smart enough to use tools in battle, these Pokémon have been seen picking up rocks and flinging them or using ropes to wrap up enemies."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"LEER"
    m.at 1, :"POWERTRIP"
    m.at 1, :"HONECLAWS"
    m.at 12, :"FURYATTACK"
    m.at 16, :"PLUCK"
    m.at 22, :"TAUNT"
    m.at 28, :"SCARYFACE"
    m.at 34, :"DRILLPECK"
    m.at 40, :"SWAGGER"
    m.at 46, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"ASSURANCE", :"ATTRACT", :"BRAVEBIRD", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLY", :"FOCUSENERGY", :"FRUSTRATION", :"HIDDENPOWER", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CORVISQUIRE" do |m|
  m.back_sprite 0, 28
  m.front_sprite 0, -4
  m.shadow_sprite 0, 0, -1
end