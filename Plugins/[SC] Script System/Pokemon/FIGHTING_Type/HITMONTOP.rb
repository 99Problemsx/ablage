#=============================================================================
# Hitmontop - FIGHTING Type
#=============================================================================

GameData::Species.define :"HITMONTOP" do |pkmn|
  pkmn.name "Hitmontop"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 50, attack: 95, defense: 95,
                  sp_atk: 70, sp_def: 35, speed: 110
  pkmn.abilities :"INTIMIDATE", :"TECHNICIAN"
  pkmn.hidden_abilities :"STEADFAST"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 159
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.4
  pkmn.weight 48.0
  pkmn.category "Handstand"
  pkmn.pokedex_entry "Its technique of kicking while spinning is a remarkable mix of both offense and defense. Hitmontop travel faster spinning than they do walking."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"REVENGE"
    m.at 1, :"ROLLINGKICK"
    m.at 6, :"FOCUSENERGY"
    m.at 10, :"PURSUIT"
    m.at 15, :"QUICKATTACK"
    m.at 19, :"TRIPLEKICK"
    m.at 24, :"RAPIDSPIN"
    m.at 28, :"COUNTER"
    m.at 33, :"FEINT"
    m.at 37, :"AGILITY"
    m.at 42, :"GYROBALL"
    m.at 46, :"WIDEGUARD"
    m.at 46, :"QUICKGUARD"
    m.at 51, :"DETECT"
    m.at 55, :"CLOSECOMBAT"
    m.at 60, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"TOXIC", :"TWISTER", :"VACUUMWAVE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"HITMONTOP" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 15
  m.shadow_sprite 0, 0, 2
end