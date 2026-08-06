#=============================================================================
# Ogerpon - GRASS Type
#=============================================================================

GameData::Species.define :"OGERPON" do |pkmn|
  pkmn.name "Ogerpon"
  pkmn.form_name "Teal Mask"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"DEFIANT"
  pkmn.flags :"TeraType_GRASS"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON" do |m|
  m.back_sprite 0, 66
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Wellspring Mask
GameData::Species.define :"OGERPON_1" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 1
  pkmn.name "Ogerpon"
  pkmn.form_name "Wellspring Mask"
  pkmn.types :"GRASS", :"WATER"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"WATERABSORB"
  pkmn.flags :"Legendary", :"TeraType_WATER"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This form excels in both attack and defense. It ceaselessly unleashes moves like a spring gushes water."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_1" do |m|
  m.back_sprite 0, 66
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 2
end

# Form 2 - Hearthflame Mask
GameData::Species.define :"OGERPON_2" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 2
  pkmn.name "Ogerpon"
  pkmn.form_name "Hearthflame Mask"
  pkmn.types :"GRASS", :"FIRE"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"MOLDBREAKER"
  pkmn.flags :"Legendary", :"TeraType_FIRE"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This form is the most aggressive, bombarding enemies with the intensity of flames blazing within a hearth."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_2" do |m|
  m.back_sprite 0, 66
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 2
end

# Form 3 - Cornerstone Mask
GameData::Species.define :"OGERPON_3" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 3
  pkmn.name "Ogerpon"
  pkmn.form_name "Cornerstone Mask"
  pkmn.types :"GRASS", :"ROCK"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"STURDY"
  pkmn.flags :"Legendary", :"TeraType_ROCK"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This form has excellent defenses, absorbing impacts solidly like the cornerstones that support houses."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_3" do |m|
  m.back_sprite 0, 66
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 2
end

# Form 4 - Teal Mask
GameData::Species.define :"OGERPON_4" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 4
  pkmn.name "Ogerpon"
  pkmn.form_name "Teal Mask"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"DEFIANT"
  pkmn.flags :"Legendary", :"TeraType_GRASS"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_4" do |m|
  m.back_sprite 0, 66
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 2
end

# Form 5 - Wellspring Mask
GameData::Species.define :"OGERPON_5" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 5
  pkmn.name "Ogerpon"
  pkmn.form_name "Wellspring Mask"
  pkmn.types :"GRASS", :"WATER"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"WATERABSORB"
  pkmn.flags :"Legendary", :"TeraType_WATER"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_5" do |m|
  m.back_sprite 0, 66
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 2
end

# Form 6 - Hearthflame Mask
GameData::Species.define :"OGERPON_6" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 6
  pkmn.name "Ogerpon"
  pkmn.form_name "Hearthflame Mask"
  pkmn.types :"GRASS", :"FIRE"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"MOLDBREAKER"
  pkmn.flags :"Legendary", :"TeraType_FIRE"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_6" do |m|
  m.back_sprite 0, 66
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 2
end

# Form 7 - Cornerstone Mask
GameData::Species.define :"OGERPON_7" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 7
  pkmn.name "Ogerpon"
  pkmn.form_name "Cornerstone Mask"
  pkmn.types :"GRASS", :"ROCK"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"STURDY"
  pkmn.flags :"Legendary", :"TeraType_ROCK"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_7" do |m|
  m.back_sprite 0, 66
  m.front_sprite 6, 15
  m.shadow_sprite 0, 0, 2
end

# Form 8 - Terastal Teal Mask
GameData::Species.define :"OGERPON_8" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 8
  pkmn.name "Ogerpon"
  pkmn.form_name "Terastal Teal Mask"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"EMBODYASPECT"
  pkmn.flags :"Legendary", :"CannotDynamax", :"TeraType_GRASS"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_8" do |m|
  m.back_sprite 0, 55
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 2
end

# Form 9 - Terastal Wellspring Mask
GameData::Species.define :"OGERPON_9" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 9
  pkmn.name "Ogerpon"
  pkmn.form_name "Terastal Wellspring Mask"
  pkmn.types :"GRASS", :"WATER"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"EMBODYASPECT_1"
  pkmn.flags :"Legendary", :"CannotDynamax", :"TeraType_WATER"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_9" do |m|
  m.back_sprite 2, 62
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, 2
end

# Form 10 - Terastal Hearthflame Mask
GameData::Species.define :"OGERPON_10" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 10
  pkmn.name "Ogerpon"
  pkmn.form_name "Terastal Hearthflame Mask"
  pkmn.types :"GRASS", :"FIRE"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"EMBODYASPECT_2"
  pkmn.flags :"Legendary", :"CannotDynamax", :"TeraType_FIRE"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_10" do |m|
  m.back_sprite -3, 55
  m.front_sprite -1, 4
  m.shadow_sprite 0, 0, 2
end

# Form 11 - Terastal Cornerstone Mask
GameData::Species.define :"OGERPON_11" do |pkmn|
  pkmn.species :"OGERPON"
  pkmn.form 11
  pkmn.name "Ogerpon"
  pkmn.form_name "Terastal Cornerstone Mask"
  pkmn.types :"GRASS", :"ROCK"
  pkmn.base_stats hp: 80, attack: 120, defense: 84,
                  sp_atk: 110, sp_def: 60, speed: 96
  pkmn.abilities :"EMBODYASPECT_3"
  pkmn.flags :"Legendary", :"CannotDynamax", :"TeraType_ROCK"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 5
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.2
  pkmn.weight 39.8
  pkmn.category "Mask"
  pkmn.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"HORNLEECH"
    m.at -1, :"DOUBLEKICK"
    m.at -1, :"COUNTER"
    m.at -1, :"RETALIATE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"LEECHSEED"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOLLOWME"
    m.at 6, :"FOCUSENERGY"
    m.at 12, :"GROWTH"
    m.at 18, :"SLAM"
    m.at 24, :"LOWSWEEP"
    m.at 30, :"IVYCUDGEL"
    m.at 36, :"THROATCHOP"
    m.at 42, :"SYNTHESIS"
    m.at 48, :"SPIKYSHIELD"
    m.at 54, :"POWERWHIP"
    m.at 60, :"SUPERPOWER"
    m.at 66, :"WOODHAMMER"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SPIKES", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"OGERPON_11" do |m|
  m.back_sprite 0, 58
  m.front_sprite 0, 7
  m.shadow_sprite 0, 0, 2
end