#=============================================================================
# Tatsugiri - DRAGON Type
#=============================================================================

GameData::Species.define :"TATSUGIRI" do |pkmn|
  pkmn.name "Tatsugiri"
  pkmn.form_name "Curly Form"
  pkmn.types :"DRAGON", :"WATER"
  pkmn.base_stats hp: 68, attack: 50, defense: 60,
                  sp_atk: 82, sp_def: 120, speed: 95
  pkmn.abilities :"COMMANDER"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 166
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 0.3
  pkmn.weight 8.0
  pkmn.category "Mimicry"
  pkmn.pokedex_entry "This is a small dragon Pokémon. It lives inside the mouth of Dondozo to protect itself from enemies on the outside."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"WATERGUN"
    m.at 6, :"HARDEN"
    m.at 12, :"HELPINGHAND"
    m.at 17, :"WATERPULSE"
    m.at 23, :"SOAK"
    m.at 28, :"TAUNT"
    m.at 34, :"MEMENTO"
    m.at 39, :"MUDDYWATER"
    m.at 43, :"NASTYPLOT"
    m.at 47, :"MIRRORCOAT"
    m.at 52, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"BATONPASS", :"CHILLINGWATER", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"ICYWIND", :"LUNGE", :"MUDDYWATER", :"NASTYPLOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"TAUNT", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"BATONPASS", :"COUNTER", :"RAPIDSPIN"
end

GameData::SpeciesMetrics.define :"TATSUGIRI" do |m|
  m.back_sprite 0, 58
  m.front_sprite -1, 31
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Droopy Form
GameData::Species.define :"TATSUGIRI_1" do |pkmn|
  pkmn.species :"TATSUGIRI"
  pkmn.form 1
  pkmn.name "Tatsugiri"
  pkmn.form_name "Droopy Form"
  pkmn.types :"DRAGON", :"WATER"
  pkmn.base_stats hp: 68, attack: 50, defense: 60,
                  sp_atk: 82, sp_def: 120, speed: 95
  pkmn.abilities :"COMMANDER"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 166
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 0.3
  pkmn.weight 8.0
  pkmn.category "Mimicry"
  pkmn.pokedex_entry "This species’ differing colors and patterns are apparently the result of Tatsugiri changing itself to suit the preferences of the prey it lures in."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"WATERGUN"
    m.at 6, :"HARDEN"
    m.at 12, :"HELPINGHAND"
    m.at 17, :"WATERPULSE"
    m.at 23, :"SOAK"
    m.at 28, :"TAUNT"
    m.at 34, :"MEMENTO"
    m.at 39, :"MUDDYWATER"
    m.at 43, :"NASTYPLOT"
    m.at 47, :"MIRRORCOAT"
    m.at 52, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"BATONPASS", :"CHILLINGWATER", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"ICYWIND", :"LUNGE", :"MUDDYWATER", :"NASTYPLOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"TAUNT", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"BATONPASS", :"COUNTER", :"RAPIDSPIN"
end

GameData::SpeciesMetrics.define :"TATSUGIRI_1" do |m|
  m.back_sprite 0, 59
  m.front_sprite 1, 38
  m.shadow_sprite 0, 0, 1
end

# Form 2 - Stretchy Form
GameData::Species.define :"TATSUGIRI_2" do |pkmn|
  pkmn.species :"TATSUGIRI"
  pkmn.form 2
  pkmn.name "Tatsugiri"
  pkmn.form_name "Stretchy Form"
  pkmn.types :"DRAGON", :"WATER"
  pkmn.base_stats hp: 68, attack: 50, defense: 60,
                  sp_atk: 82, sp_def: 120, speed: 95
  pkmn.abilities :"COMMANDER"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 166
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 0.3
  pkmn.weight 8.0
  pkmn.category "Mimicry"
  pkmn.pokedex_entry "Bird Pokémon are its main prey. This Pokémon knows it’s weak, so it hunts with a partner."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"WATERGUN"
    m.at 6, :"HARDEN"
    m.at 12, :"HELPINGHAND"
    m.at 17, :"WATERPULSE"
    m.at 23, :"SOAK"
    m.at 28, :"TAUNT"
    m.at 34, :"MEMENTO"
    m.at 39, :"MUDDYWATER"
    m.at 43, :"NASTYPLOT"
    m.at 47, :"MIRRORCOAT"
    m.at 52, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"BATONPASS", :"CHILLINGWATER", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"ICYWIND", :"LUNGE", :"MUDDYWATER", :"NASTYPLOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"TAUNT", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"BATONPASS", :"COUNTER", :"RAPIDSPIN"
end

GameData::SpeciesMetrics.define :"TATSUGIRI_2" do |m|
  m.back_sprite 0, 54
  m.front_sprite 2, 38
  m.shadow_sprite 0, 0, 1
end

# Form 3 - Mega Tatsugiri (Curly Form)
GameData::Species.define :"TATSUGIRI_3" do |pkmn|
  pkmn.species :"TATSUGIRI"
  pkmn.form 3
  pkmn.name "Tatsugiri"
  pkmn.form_name "Mega Tatsugiri (Curly Form)"
  pkmn.types :"DRAGON", :"WATER"
  pkmn.base_stats hp: 68, attack: 65, defense: 90,
                  sp_atk: 92, sp_def: 135, speed: 125
  pkmn.abilities :"COMMANDER"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 166
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 0.6
  pkmn.weight 24.0
  pkmn.category "Mimicry"
  pkmn.pokedex_entry "Tatsugiri's brain has been invigorated by Mega Evolution, making it even wilier. It can create and command copies of itself."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"WATERGUN"
    m.at 6, :"HARDEN"
    m.at 12, :"HELPINGHAND"
    m.at 17, :"WATERPULSE"
    m.at 23, :"SOAK"
    m.at 28, :"TAUNT"
    m.at 34, :"MEMENTO"
    m.at 39, :"MUDDYWATER"
    m.at 43, :"NASTYPLOT"
    m.at 47, :"MIRRORCOAT"
    m.at 52, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"BATONPASS", :"CHILLINGWATER", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"ICYWIND", :"LUNGE", :"MUDDYWATER", :"NASTYPLOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"TAUNT", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"BATONPASS", :"COUNTER", :"RAPIDSPIN"
end

GameData::SpeciesMetrics.define :"TATSUGIRI_3" do |m|
  m.back_sprite 0, 58
  m.front_sprite -1, 31
  m.shadow_sprite 0, 0, 1
end

# Form 4 - Mega Tatsugiri (Droopy Form)
GameData::Species.define :"TATSUGIRI_4" do |pkmn|
  pkmn.species :"TATSUGIRI"
  pkmn.form 4
  pkmn.name "Tatsugiri"
  pkmn.form_name "Mega Tatsugiri (Droopy Form)"
  pkmn.types :"DRAGON", :"WATER"
  pkmn.base_stats hp: 68, attack: 65, defense: 90,
                  sp_atk: 92, sp_def: 135, speed: 125
  pkmn.abilities :"COMMANDER"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 166
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 0.6
  pkmn.weight 24.0
  pkmn.category "Mimicry"
  pkmn.pokedex_entry "It solidifies the energy of Mega Evolution, building up an overflowing pile to launch as projectiles. These projectiles explode on contact."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"WATERGUN"
    m.at 6, :"HARDEN"
    m.at 12, :"HELPINGHAND"
    m.at 17, :"WATERPULSE"
    m.at 23, :"SOAK"
    m.at 28, :"TAUNT"
    m.at 34, :"MEMENTO"
    m.at 39, :"MUDDYWATER"
    m.at 43, :"NASTYPLOT"
    m.at 47, :"MIRRORCOAT"
    m.at 52, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"BATONPASS", :"CHILLINGWATER", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"ICYWIND", :"LUNGE", :"MUDDYWATER", :"NASTYPLOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"TAUNT", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"BATONPASS", :"COUNTER", :"RAPIDSPIN"
end

GameData::SpeciesMetrics.define :"TATSUGIRI_4" do |m|
  m.back_sprite 0, 58
  m.front_sprite -1, 31
  m.shadow_sprite 0, 0, 1
end

# Form 5 - Mega Tatsugiri (Stretchy Form)
GameData::Species.define :"TATSUGIRI_5" do |pkmn|
  pkmn.species :"TATSUGIRI"
  pkmn.form 5
  pkmn.name "Tatsugiri"
  pkmn.form_name "Mega Tatsugiri (Stretchy Form)"
  pkmn.types :"DRAGON", :"WATER"
  pkmn.base_stats hp: 68, attack: 65, defense: 90,
                  sp_atk: 92, sp_def: 135, speed: 125
  pkmn.abilities :"COMMANDER"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 166
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 0.6
  pkmn.weight 24.0
  pkmn.category "Mimicry"
  pkmn.pokedex_entry "Using the energy of Mega Evolution, it creates a dish to ride upon, allowing it to move with total freedom-even through the air."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"WATERGUN"
    m.at 6, :"HARDEN"
    m.at 12, :"HELPINGHAND"
    m.at 17, :"WATERPULSE"
    m.at 23, :"SOAK"
    m.at 28, :"TAUNT"
    m.at 34, :"MEMENTO"
    m.at 39, :"MUDDYWATER"
    m.at 43, :"NASTYPLOT"
    m.at 47, :"MIRRORCOAT"
    m.at 52, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"BATONPASS", :"CHILLINGWATER", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"ICYWIND", :"LUNGE", :"MUDDYWATER", :"NASTYPLOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"SLEEPTALK", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"TAUNT", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"BATONPASS", :"COUNTER", :"RAPIDSPIN"
end

GameData::SpeciesMetrics.define :"TATSUGIRI_5" do |m|
  m.back_sprite 0, 58
  m.front_sprite -1, 31
  m.shadow_sprite 0, 0, 1
end