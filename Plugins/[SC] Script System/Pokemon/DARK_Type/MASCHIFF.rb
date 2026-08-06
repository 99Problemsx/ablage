#=============================================================================
# Maschiff - DARK Type
#=============================================================================

GameData::Species.define :"MASCHIFF" do |pkmn|
  pkmn.name "Maschiff"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 60, attack: 78, defense: 60,
                  sp_atk: 51, sp_def: 40, speed: 51
  pkmn.abilities :"INTIMIDATE", :"RUNAWAY"
  pkmn.hidden_abilities :"STAKEOUT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 68
  pkmn.catch_rate 150
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 16.0
  pkmn.category "Rascal"
  pkmn.pokedex_entry "It always scowls in an attempt to make opponents take it seriously, but even crying children will burst into laughter when they see Maschiff’s face."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"SCARYFACE"
    m.at 4, :"LICK"
    m.at 7, :"SNARL"
    m.at 10, :"HONECLAWS"
    m.at 14, :"BITE"
    m.at 18, :"ROAR"
    m.at 22, :"HEADBUTT"
    m.at 26, :"PAYBACK"
    m.at 31, :"CRUNCH"
    m.at 35, :"SWAGGER"
    m.at 39, :"REVERSAL"
    m.at 43, :"JAWLOCK"
    m.at 49, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"BODYSLAM", :"CHARM", :"CRUNCH", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FIREFANG", :"HELPINGHAND", :"ICEFANG", :"LASHOUT", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"REVERSAL", :"ROAR", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THUNDERFANG", :"TRAILBLAZE"
  pkmn.egg_moves :"DESTINYBOND", :"ENDEAVOR", :"PLAYROUGH", :"RETALIATE"
end

GameData::SpeciesMetrics.define :"MASCHIFF" do |m|
  m.back_sprite 0, 56
  m.front_sprite -1, 33
  m.shadow_sprite 0, 0, 2
end