#=============================================================================
# Litleo - FIRE Type
#=============================================================================

GameData::Species.define :"LITLEO" do |pkmn|
  pkmn.name "Litleo"
  pkmn.types :"FIRE", :"NORMAL"
  pkmn.base_stats hp: 62, attack: 50, defense: 58,
                  sp_atk: 72, sp_def: 73, speed: 54
  pkmn.abilities :"RIVALRY", :"UNNERVE"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"FemaleSevenEighths"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 74
  pkmn.catch_rate 220
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 13.5
  pkmn.category "Lion Cub"
  pkmn.pokedex_entry "They set off on their own from their pride and live by themselves to become stronger. These hot-blooded Pokémon are quick to fight."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 5, :"EMBER"
    m.at 8, :"WORKUP"
    m.at 11, :"HEADBUTT"
    m.at 15, :"NOBLEROAR"
    m.at 20, :"TAKEDOWN"
    m.at 23, :"FIREFANG"
    m.at 28, :"ENDEAVOR"
    m.at 33, :"ECHOEDVOICE"
    m.at 36, :"FLAMETHROWER"
    m.at 39, :"CRUNCH"
    m.at 43, :"HYPERVOICE"
    m.at 46, :"INCINERATE"
    m.at 50, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"WILDCHARGE", :"WILLOWISP", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"ENTRAINMENT", :"FIRESPIN", :"FLAREBLITZ", :"SNATCH", :"YAWN"
end

GameData::SpeciesMetrics.define :"LITLEO" do |m|
  m.back_sprite 3, 46
  m.front_sprite -3, 26
end