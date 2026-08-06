#=============================================================================
# Lairon - STEEL Type
#=============================================================================

GameData::Species.define :"LAIRON" do |pkmn|
  pkmn.name "Lairon"
  pkmn.types :"STEEL", :"ROCK"
  pkmn.base_stats hp: 60, attack: 90, defense: 140,
                  sp_atk: 40, sp_def: 50, speed: 50
  pkmn.abilities :"STURDY", :"ROCKHEAD"
  pkmn.hidden_abilities :"HEAVYMETAL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 151
  pkmn.catch_rate 90
  pkmn.happiness 35
  pkmn.hatch_steps 8995
  pkmn.height 0.9
  pkmn.weight 120.0
  pkmn.category "Iron Armor"
  pkmn.pokedex_entry "When two Lairon meet in the wild, they fight for territory by bashing into each other with their steel bodies. The sound of their collision carries for miles."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"MUDSLAP"
    m.at 1, :"HEADBUTT"
    m.at 4, :"MUDSLAP"
    m.at 8, :"HEADBUTT"
    m.at 11, :"METALCLAW"
    m.at 15, :"IRONDEFENSE"
    m.at 18, :"ROAR"
    m.at 22, :"TAKEDOWN"
    m.at 25, :"IRONHEAD"
    m.at 29, :"PROTECT"
    m.at 34, :"METALSOUND"
    m.at 40, :"IRONTAIL"
    m.at 45, :"AUTOTOMIZE"
    m.at 51, :"HEAVYSLAM"
    m.at 56, :"DOUBLEEDGE"
    m.at 62, :"METALBURST"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"UPROAR", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"LAIRON" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 3
end