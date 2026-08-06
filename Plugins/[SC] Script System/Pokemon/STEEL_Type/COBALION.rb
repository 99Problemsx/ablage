#=============================================================================
# Cobalion - STEEL Type
#=============================================================================

GameData::Species.define :"COBALION" do |pkmn|
  pkmn.name "Cobalion"
  pkmn.types :"STEEL", :"FIGHTING"
  pkmn.base_stats hp: 91, attack: 90, defense: 129,
                  sp_atk: 108, sp_def: 90, speed: 72
  pkmn.abilities :"JUSTIFIED"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 2.1
  pkmn.weight 250.0
  pkmn.category "Iron Will"
  pkmn.pokedex_entry "It has a body and heart of steel. Its glare is sufficient to make even an unruly Pokémon obey it."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 7, :"DOUBLEKICK"
    m.at 13, :"METALCLAW"
    m.at 19, :"TAKEDOWN"
    m.at 25, :"HELPINGHAND"
    m.at 31, :"RETALIATE"
    m.at 37, :"IRONHEAD"
    m.at 42, :"SACREDSWORD"
    m.at 49, :"SWORDSDANCE"
    m.at 55, :"QUICKGUARD"
    m.at 61, :"WORKUP"
    m.at 67, :"METALBURST"
    m.at 73, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLOCK", :"BOUNCE", :"CALMMIND", :"CUT", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASHCANNON", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WORKUP", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"COBALION" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, 3
end