#=============================================================================
# Aron - STEEL Type
#=============================================================================

GameData::Species.define :"ARON" do |pkmn|
  pkmn.name "Aron"
  pkmn.types :"STEEL", :"ROCK"
  pkmn.base_stats hp: 50, attack: 70, defense: 100,
                  sp_atk: 30, sp_def: 40, speed: 40
  pkmn.abilities :"STURDY", :"ROCKHEAD"
  pkmn.hidden_abilities :"HEAVYMETAL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 180
  pkmn.happiness 35
  pkmn.hatch_steps 8995
  pkmn.height 0.4
  pkmn.weight 60.0
  pkmn.category "Iron Armor"
  pkmn.pokedex_entry "A Pokémon that is clad in steel armor. A new suit of armor is made when it evolves. The old, discarded armor is salvaged as metal for making iron products."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 4, :"MUDSLAP"
    m.at 8, :"HEADBUTT"
    m.at 11, :"METALCLAW"
    m.at 15, :"IRONDEFENSE"
    m.at 18, :"ROAR"
    m.at 22, :"TAKEDOWN"
    m.at 25, :"IRONHEAD"
    m.at 29, :"PROTECT"
    m.at 32, :"METALSOUND"
    m.at 36, :"IRONTAIL"
    m.at 39, :"AUTOTOMIZE"
    m.at 43, :"HEAVYSLAM"
    m.at 46, :"DOUBLEEDGE"
    m.at 50, :"METALBURST"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SPITE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"UPROAR", :"WATERPULSE"
  pkmn.egg_moves :"BODYSLAM", :"CURSE", :"DRAGONRUSH", :"ENDEAVOR", :"HEADSMASH", :"IRONHEAD", :"SCREECH", :"SMELLINGSALTS", :"STEALTHROCK", :"STOMP", :"SUPERPOWER"
end

GameData::SpeciesMetrics.define :"ARON" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, 26
  m.shadow_sprite 0, 0, 1
end