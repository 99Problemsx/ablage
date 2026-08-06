#=============================================================================
# Hippopotas - GROUND Type
#=============================================================================

GameData::Species.define :"HIPPOPOTAS" do |pkmn|
  pkmn.name "Hippopotas"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 68, attack: 72, defense: 78,
                  sp_atk: 32, sp_def: 38, speed: 42
  pkmn.abilities :"SANDSTREAM"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 140
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.8
  pkmn.weight 49.5
  pkmn.category "Hippo"
  pkmn.pokedex_entry "It lives in arid places. Instead of perspiration, it expels grainy sand from its body."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SANDATTACK"
    m.at 7, :"BITE"
    m.at 13, :"YAWN"
    m.at 19, :"TAKEDOWN"
    m.at 19, :"DIG"
    m.at 25, :"SANDTOMB"
    m.at 31, :"CRUNCH"
    m.at 37, :"EARTHQUAKE"
    m.at 44, :"DOUBLEEDGE"
    m.at 50, :"FISSURE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"WATERPULSE"
  pkmn.egg_moves :"BODYSLAM", :"CURSE", :"REVENGE", :"SANDTOMB", :"SLACKOFF", :"SLEEPTALK", :"SPITUP", :"STOCKPILE", :"SWALLOW", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"HIPPOPOTAS" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 21
  m.shadow_sprite 0, 0, 3
end