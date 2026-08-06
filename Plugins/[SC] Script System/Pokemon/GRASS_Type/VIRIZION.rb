#=============================================================================
# Virizion - GRASS Type
#=============================================================================

GameData::Species.define :"VIRIZION" do |pkmn|
  pkmn.name "Virizion"
  pkmn.types :"GRASS", :"FIGHTING"
  pkmn.base_stats hp: 91, attack: 90, defense: 72,
                  sp_atk: 108, sp_def: 90, speed: 129
  pkmn.abilities :"JUSTIFIED"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 2.0
  pkmn.weight 200.0
  pkmn.category "Grassland"
  pkmn.pokedex_entry "Its head sprouts horns as sharp as blades. Using whirlwind-like movements, it confounds and swiftly cuts opponents."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 7, :"DOUBLEKICK"
    m.at 13, :"MAGICALLEAF"
    m.at 19, :"TAKEDOWN"
    m.at 25, :"HELPINGHAND"
    m.at 31, :"RETALIATE"
    m.at 37, :"GIGADRAIN"
    m.at 42, :"SACREDSWORD"
    m.at 49, :"SWORDSDANCE"
    m.at 55, :"QUICKGUARD"
    m.at 61, :"WORKUP"
    m.at 67, :"LEAFBLADE"
    m.at 73, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLOCK", :"BOUNCE", :"CALMMIND", :"CUT", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLASH", :"FOCUSBLAST", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"TOXIC", :"WORKUP", :"WORRYSEED", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"VIRIZION" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 14
  m.shadow_sprite 0, 0, 2
end