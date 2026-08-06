#=============================================================================
# Charcadet - FIRE Type
#=============================================================================

GameData::Species.define :"CHARCADET" do |pkmn|
  pkmn.name "Charcadet"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 40, attack: 50, defense: 40,
                  sp_atk: 35, sp_def: 50, speed: 40
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 51
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 0.6
  pkmn.weight 10.5
  pkmn.category "Fire Child"
  pkmn.pokedex_entry "Burnt charcoal came to life and became a Pokémon. Possessing a fiery fighting spirit, Charcadet will battle even tough opponents."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 1, :"ASTONISH"
    m.at 8, :"CLEARSMOG"
    m.at 12, :"FIRESPIN"
    m.at 16, :"WILLOWISP"
    m.at 20, :"NIGHTSHADE"
    m.at 24, :"FLAMECHARGE"
    m.at 28, :"INCINERATE"
    m.at 32, :"LAVAPLUME"
  end
  pkmn.tutor_moves :"CONFUSERAY", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"HEATWAVE", :"HELPINGHAND", :"NIGHTSHADE", :"OVERHEAT", :"PROTECT", :"REST", :"SLEEPTALK", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"WILLOWISP"
  pkmn.egg_moves :"DESTINYBOND", :"DISABLE", :"SPITE"
end

GameData::SpeciesMetrics.define :"CHARCADET" do |m|
  m.back_sprite 0, 42
  m.front_sprite -1, 21
  m.shadow_sprite 0, 0, 1
end