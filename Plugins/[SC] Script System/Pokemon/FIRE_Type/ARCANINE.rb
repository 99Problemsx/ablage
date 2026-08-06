#=============================================================================
# Arcanine - FIRE Type
#=============================================================================

GameData::Species.define :"ARCANINE" do |pkmn|
  pkmn.name "Arcanine"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 90, attack: 110, defense: 80,
                  sp_atk: 95, sp_def: 100, speed: 80
  pkmn.abilities :"INTIMIDATE", :"FLASHFIRE"
  pkmn.hidden_abilities :"JUSTIFIED"
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 194
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.9
  pkmn.weight 155.0
  pkmn.category "Legendary"
  pkmn.pokedex_entry "This fleet-footed Pokémon is said to run over 6,200 miles in a single day and night. The fire that blazes wildly within its body is its source of power."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"EXTREMESPEED"
    m.at 1, :"PLAYROUGH"
    m.at 1, :"FIREFANG"
    m.at 1, :"FLAREBLITZ"
    m.at 1, :"HOWL"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"CRUNCH"
    m.at 1, :"RETALIATE"
    m.at 1, :"REVERSAL"
    m.at 1, :"AGILITY"
    m.at 1, :"EMBER"
    m.at 1, :"ROAR"
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 1, :"FLAMEWHEEL"
    m.at 1, :"TAKEDOWN"
    m.at 5, :"FLAMETHROWER"
  end
  pkmn.tutor_moves :"AGILITY", :"BODYSLAM", :"BULLDOZE", :"CHARM", :"CLOSECOMBAT", :"CRUNCH", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HOWL", :"HYPERBEAM", :"IRONHEAD", :"OUTRAGE", :"OVERHEAT", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETALIATE", :"REVERSAL", :"ROAR", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAKEDOWN", :"TERABLAST", :"THIEF", :"THUNDERFANG", :"WILDCHARGE", :"WILLOWISP"
  pkmn.egg_moves :"COVET", :"DOUBLEEDGE", :"DOUBLEKICK", :"HOWL", :"MORNINGSUN", :"RAGINGFURY", :"THRASH"
end

GameData::SpeciesMetrics.define :"ARCANINE" do |m|
  m.back_sprite -9, 0
  m.front_sprite 4, 9
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Hisuian
GameData::Species.define :"ARCANINE_1" do |pkmn|
  pkmn.species :"ARCANINE"
  pkmn.form 1
  pkmn.name "Arcanine"
  pkmn.form_name "Hisuian"
  pkmn.types :"FIRE", :"ROCK"
  pkmn.base_stats hp: 95, attack: 115, defense: 80,
                  sp_atk: 90, sp_def: 95, speed: 80
  pkmn.abilities :"INTIMIDATE", :"FLASHFIRE"
  pkmn.hidden_abilities :"ROCKHEAD"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 194
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 168.0
  pkmn.category "Legendary"
  pkmn.pokedex_entry "Snaps at its foes with fangs cloaked in blazing flame. Despite its bulk, it deftly feints every which way, leading opponents on a deceptively merry chase as it all but dances around them."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"EXTREMESPEED"
    m.at 1, :"FLAMEWHEEL"
    m.at 1, :"FIREFANG"
    m.at 1, :"FLAREBLITZ"
    m.at 1, :"HOWL"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"CRUNCH"
    m.at 1, :"REVERSAL"
    m.at 1, :"RETALIATE"
    m.at 1, :"TAKEDOWN"
    m.at 1, :"AGILITY"
    m.at 1, :"ROCKTHROW"
    m.at 1, :"EMBER"
    m.at 1, :"ROAR"
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 1, :"ROCKSLIDE"
    m.at 5, :"FLAMETHROWER"
    m.at 64, :"RAGINGFURY"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"BODYSLAM", :"BULLDOZE", :"CLOSECOMBAT", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"GIGAIMPACT", :"HEATCRASH", :"HEATWAVE", :"HELPINGHAND", :"HYPERBEAM", :"HYPERVOICE", :"IRONHEAD", :"OUTRAGE", :"OVERHEAT", :"POWERGEM", :"PROTECT", :"PSYCHICFANGS", :"REST", :"REVERSAL", :"ROAR", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SCORCHINGSANDS", :"SLEEPTALK", :"SMACKDOWN", :"SMARTSTRIKE", :"SNARL", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TEMPERFLARE", :"THIEF", :"THUNDERFANG", :"WILDCHARGE", :"WILLOWISP"
  pkmn.egg_moves :"COVET", :"DOUBLEEDGE", :"DOUBLEKICK", :"HOWL", :"MORNINGSUN", :"RAGINGFURY", :"THRASH"
end

GameData::SpeciesMetrics.define :"ARCANINE_1" do |m|
  m.back_sprite 0, 42
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 2
end