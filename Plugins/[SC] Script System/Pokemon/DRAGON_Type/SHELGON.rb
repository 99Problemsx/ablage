#=============================================================================
# Shelgon - DRAGON Type
#=============================================================================

GameData::Species.define :"SHELGON" do |pkmn|
  pkmn.name "Shelgon"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 65, attack: 95, defense: 100,
                  sp_atk: 50, sp_def: 60, speed: 50
  pkmn.abilities :"ROCKHEAD"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.1
  pkmn.weight 110.5
  pkmn.category "Endurance"
  pkmn.pokedex_entry "It hardly eats while it awaits evolution. It becomes hardier by enduring hunger. Its shell peels off the instant it begins to evolve."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"RAGE"
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 1, :"HEADBUTT"
    m.at 5, :"BITE"
    m.at 10, :"LEER"
    m.at 16, :"HEADBUTT"
    m.at 20, :"FOCUSENERGY"
    m.at 25, :"EMBER"
    m.at 30, :"PROTECT"
    m.at 32, :"DRAGONBREATH"
    m.at 37, :"ZENHEADBUTT"
    m.at 43, :"SCARYFACE"
    m.at 50, :"CRUNCH"
    m.at 55, :"DRAGONCLAW"
    m.at 61, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CUT", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"INCINERATE", :"IRONDEFENSE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"TWISTER", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SHELGON" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 18
  m.shadow_sprite 0, 0, 3
end