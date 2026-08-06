#=============================================================================
# Rufflet - NORMAL Type
#=============================================================================

GameData::Species.define :"RUFFLET" do |pkmn|
  pkmn.name "Rufflet"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 70, attack: 83, defense: 50,
                  sp_atk: 60, sp_def: 37, speed: 50
  pkmn.abilities :"KEENEYE", :"SHEERFORCE"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 70
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 10.5
  pkmn.category "Eaglet"
  pkmn.pokedex_entry "They will challenge anything, even strong opponents, without fear. Their frequent fights help them become stronger."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"LEER"
    m.at 5, :"FURYATTACK"
    m.at 10, :"WINGATTACK"
    m.at 14, :"HONECLAWS"
    m.at 19, :"SCARYFACE"
    m.at 23, :"AERIALACE"
    m.at 28, :"SLASH"
    m.at 32, :"DEFOG"
    m.at 37, :"TAILWIND"
    m.at 41, :"AIRSLASH"
    m.at 46, :"CRUSHCLAW"
    m.at 50, :"SKYDROP"
    m.at 55, :"WHIRLWIND"
    m.at 59, :"BRAVEBIRD"
    m.at 64, :"THRASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BULKUP", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAILWIND", :"TOXIC", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"ROCKSMASH", :"ROOST"
end

GameData::SpeciesMetrics.define :"RUFFLET" do |m|
  m.back_sprite 1, 0
  m.front_sprite 1, 26
  m.shadow_sprite 0, 0, 1
end