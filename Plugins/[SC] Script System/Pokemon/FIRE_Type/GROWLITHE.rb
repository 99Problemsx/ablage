#=============================================================================
# Growlithe - FIRE Type
#=============================================================================

GameData::Species.define :"GROWLITHE" do |pkmn|
  pkmn.name "Growlithe"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 55, attack: 70, defense: 45,
                  sp_atk: 60, sp_def: 70, speed: 50
  pkmn.abilities :"INTIMIDATE", :"FLASHFIRE"
  pkmn.hidden_abilities :"JUSTIFIED"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 70
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 19.0
  pkmn.category "Puppy"
  pkmn.pokedex_entry "Its superb sense of smell ensures that this Pokémon won't forget any scent, no matter what. It uses its sense of smell to detect the emotions of others."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"ROAR"
    m.at 6, :"EMBER"
    m.at 8, :"LEER"
    m.at 10, :"ODORSLEUTH"
    m.at 12, :"HELPINGHAND"
    m.at 17, :"FLAMEWHEEL"
    m.at 19, :"REVERSAL"
    m.at 21, :"FIREFANG"
    m.at 23, :"TAKEDOWN"
    m.at 28, :"FLAMEBURST"
    m.at 30, :"AGILITY"
    m.at 32, :"RETALIATE"
    m.at 34, :"FLAMETHROWER"
    m.at 39, :"CRUNCH"
    m.at 41, :"HEATWAVE"
    m.at 43, :"OUTRAGE"
    m.at 45, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
  pkmn.egg_moves :"BODYSLAM", :"CLOSECOMBAT", :"COVET", :"CRUNCH", :"DOUBLEEDGE", :"DOUBLEKICK", :"FIRESPIN", :"FLAREBLITZ", :"HEATWAVE", :"HOWL", :"IRONTAIL", :"MORNINGSUN", :"THRASH"
end

GameData::SpeciesMetrics.define :"GROWLITHE" do |m|
  m.back_sprite -4, 0
  m.front_sprite 3, 18
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Hisuian
GameData::Species.define :"GROWLITHE_1" do |pkmn|
  pkmn.species :"GROWLITHE"
  pkmn.form 1
  pkmn.name "Growlithe"
  pkmn.form_name "Hisuian"
  pkmn.types :"FIRE", :"ROCK"
  pkmn.base_stats hp: 60, attack: 75, defense: 45,
                  sp_atk: 55, sp_def: 65, speed: 50
  pkmn.abilities :"INTIMIDATE", :"FLASHFIRE"
  pkmn.hidden_abilities :"ROCKHEAD"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 70
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 22.7
  pkmn.category "Scout"
  pkmn.pokedex_entry "They patrol their territory in pairs. I believe the igneous rock components in the fur of this species are the result of volcanic activity in its habitat."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 1, :"LEER"
    m.at 4, :"HOWL"
    m.at 8, :"BITE"
    m.at 12, :"FLAMEWHEEL"
    m.at 16, :"HELPINGHAND"
    m.at 24, :"FIREFANG"
    m.at 28, :"RETALIATE"
    m.at 32, :"CRUNCH"
    m.at 36, :"TAKEDOWN"
    m.at 40, :"FLAMETHROWER"
    m.at 44, :"ROAR"
    m.at 48, :"ROCKSLIDE"
    m.at 52, :"REVERSAL"
    m.at 56, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"AGILITY", :"BODYSLAM", :"CLOSECOMBAT", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"HEATWAVE", :"HELPINGHAND", :"OUTRAGE", :"OVERHEAT", :"POWERGEM", :"PROTECT", :"PSYCHICFANGS", :"REST", :"REVERSAL", :"ROAR", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SCORCHINGSANDS", :"SLEEPTALK", :"SMACKDOWN", :"SMARTSTRIKE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TEMPERFLARE", :"THUNDERFANG", :"WILDCHARGE", :"WILLOWISP"
  pkmn.egg_moves :"COVET", :"DOUBLEEDGE", :"DOUBLEKICK", :"HEADSMASH", :"MORNINGSUN", :"THRASH"
end

GameData::SpeciesMetrics.define :"GROWLITHE_1" do |m|
  m.back_sprite 0, 49
  m.front_sprite 5, 19
  m.shadow_sprite 0, 0, 2
end