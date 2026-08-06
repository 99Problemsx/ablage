#=============================================================================
# Rookidee - FLYING Type
#=============================================================================

GameData::Species.define :"ROOKIDEE" do |pkmn|
  pkmn.name "Rookidee"
  pkmn.types :"FLYING"
  pkmn.base_stats hp: 38, attack: 47, defense: 35,
                  sp_atk: 57, sp_def: 33, speed: 35
  pkmn.abilities :"KEENEYE", :"UNNERVE"
  pkmn.hidden_abilities :"BIGPECKS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 49
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.2
  pkmn.weight 1.8
  pkmn.category "Tiny Bird"
  pkmn.pokedex_entry "Jumping nimbly about, this small-bodied Pokémon takes advantage of even the slightest opportunity to disorient larger opponents."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"LEER"
    m.at 4, :"POWERTRIP"
    m.at 8, :"HONECLAWS"
    m.at 12, :"FURYATTACK"
    m.at 16, :"PLUCK"
    m.at 20, :"TAUNT"
    m.at 24, :"SCARYFACE"
    m.at 28, :"DRILLPECK"
    m.at 32, :"SWAGGER"
    m.at 36, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"ASSURANCE", :"ATTRACT", :"BRAVEBIRD", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLY", :"FOCUSENERGY", :"FRUSTRATION", :"HIDDENPOWER", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"DEFOG", :"ROCKSMASH", :"ROOST", :"SANDATTACK", :"SKYATTACK", :"SPITE", :"TAILWIND"
end

GameData::SpeciesMetrics.define :"ROOKIDEE" do |m|
  m.back_sprite 7, 22
  m.front_sprite 1, 31
end