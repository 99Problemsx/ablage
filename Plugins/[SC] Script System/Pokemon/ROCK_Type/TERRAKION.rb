#=============================================================================
# Terrakion - ROCK Type
#=============================================================================

GameData::Species.define :"TERRAKION" do |pkmn|
  pkmn.name "Terrakion"
  pkmn.types :"ROCK", :"FIGHTING"
  pkmn.base_stats hp: 91, attack: 129, defense: 90,
                  sp_atk: 108, sp_def: 72, speed: 90
  pkmn.abilities :"JUSTIFIED"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.9
  pkmn.weight 260.0
  pkmn.category "Cavern"
  pkmn.pokedex_entry "Its charge is strong enough to break through a giant castle wall in one blow. This Pokémon is spoken of in legends."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 7, :"DOUBLEKICK"
    m.at 13, :"SMACKDOWN"
    m.at 19, :"TAKEDOWN"
    m.at 25, :"HELPINGHAND"
    m.at 31, :"RETALIATE"
    m.at 37, :"ROCKSLIDE"
    m.at 42, :"SACREDSWORD"
    m.at 49, :"SWORDSDANCE"
    m.at 55, :"QUICKGUARD"
    m.at 61, :"WORKUP"
    m.at 67, :"STONEEDGE"
    m.at 73, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLOCK", :"BULLDOZE", :"CALMMIND", :"CUT", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"WORKUP", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"TERRAKION" do |m|
  m.back_sprite 0, 0
  m.front_sprite -4, 22
  m.shadow_sprite 0, 0, 3
end