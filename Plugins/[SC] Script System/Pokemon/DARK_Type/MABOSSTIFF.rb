#=============================================================================
# Mabosstiff - DARK Type
#=============================================================================

GameData::Species.define :"MABOSSTIFF" do |pkmn|
  pkmn.name "Mabosstiff"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 80, attack: 120, defense: 90,
                  sp_atk: 85, sp_def: 60, speed: 70
  pkmn.abilities :"INTIMIDATE", :"GUARDDOG"
  pkmn.hidden_abilities :"STAKEOUT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 177
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.1
  pkmn.weight 61.0
  pkmn.category "Boss"
  pkmn.pokedex_entry "This Pokémon can store energy in its large dewlap. Mabosstiff unleashes this energy all at once to blow away enemies."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"COMEUPPANCE"
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
    m.at 34, :"CRUNCH"
    m.at 39, :"SWAGGER"
    m.at 43, :"REVERSAL"
    m.at 48, :"JAWLOCK"
    m.at 55, :"DOUBLEEDGE"
    m.at 60, :"OUTRAGE"
  end
  pkmn.tutor_moves :"BODYSLAM", :"CHARM", :"CRUNCH", :"CURSE", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FIREFANG", :"GIGAIMPACT", :"HELPINGHAND", :"HYPERBEAM", :"HYPERVOICE", :"ICEFANG", :"LASHOUT", :"OUTRAGE", :"PAINSPLIT", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"REVERSAL", :"ROAR", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THUNDERFANG", :"TRAILBLAZE", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"MABOSSTIFF" do |m|
  m.back_sprite 0, 56
  m.front_sprite -1, 24
  m.shadow_sprite 0, 0, 3
end