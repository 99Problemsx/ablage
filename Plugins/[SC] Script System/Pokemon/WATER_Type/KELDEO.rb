#=============================================================================
# Keldeo - WATER Type
#=============================================================================

GameData::Species.define :"KELDEO" do |pkmn|
  pkmn.name "Keldeo"
  pkmn.form_name "Ordinary Form"
  pkmn.types :"WATER", :"FIGHTING"
  pkmn.base_stats hp: 91, attack: 72, defense: 90,
                  sp_atk: 108, sp_def: 129, speed: 90
  pkmn.abilities :"JUSTIFIED"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.4
  pkmn.weight 48.5
  pkmn.category "Colt"
  pkmn.pokedex_entry "It crosses the world, running over the surfaces of oceans and rivers. It appears at scenic waterfronts."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"AQUAJET"
    m.at 1, :"LEER"
    m.at 7, :"DOUBLEKICK"
    m.at 13, :"BUBBLEBEAM"
    m.at 19, :"TAKEDOWN"
    m.at 25, :"HELPINGHAND"
    m.at 31, :"RETALIATE"
    m.at 37, :"AQUATAIL"
    m.at 43, :"SACREDSWORD"
    m.at 49, :"SWORDSDANCE"
    m.at 55, :"QUICKGUARD"
    m.at 61, :"WORKUP"
    m.at 67, :"HYDROPUMP"
    m.at 73, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"BOUNCE", :"CALMMIND", :"COVET", :"CUT", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SECRETSWORD", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"WORKUP", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"KELDEO" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Ordinary Form
GameData::Species.define :"KELDEO_1" do |pkmn|
  pkmn.species :"KELDEO"
  pkmn.form 1
  pkmn.name "Keldeo"
  pkmn.form_name "Ordinary Form"
  pkmn.types :"WATER", :"FIGHTING"
  pkmn.base_stats hp: 91, attack: 72, defense: 90,
                  sp_atk: 108, sp_def: 129, speed: 90
  pkmn.abilities :"JUSTIFIED"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.4
  pkmn.weight 48.5
  pkmn.category "Colt"
  pkmn.pokedex_entry "It crosses the world, running over the surfaces of oceans and rivers. It appears at scenic waterfronts."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"AQUAJET"
    m.at 1, :"LEER"
    m.at 7, :"DOUBLEKICK"
    m.at 13, :"BUBBLEBEAM"
    m.at 19, :"TAKEDOWN"
    m.at 25, :"HELPINGHAND"
    m.at 31, :"RETALIATE"
    m.at 37, :"AQUATAIL"
    m.at 43, :"SACREDSWORD"
    m.at 49, :"SWORDSDANCE"
    m.at 55, :"QUICKGUARD"
    m.at 61, :"WORKUP"
    m.at 67, :"HYDROPUMP"
    m.at 73, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"BOUNCE", :"CALMMIND", :"COVET", :"CUT", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SECRETSWORD", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"WORKUP", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"KELDEO_1" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 19
  m.shadow_sprite 0, 0, 2
end