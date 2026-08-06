#=============================================================================
# Pineco - BUG Type
#=============================================================================

GameData::Species.define :"PINECO" do |pkmn|
  pkmn.name "Pineco"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 50, attack: 65, defense: 90,
                  sp_atk: 15, sp_def: 35, speed: 35
  pkmn.abilities :"STURDY"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 58
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 7.2
  pkmn.category "Bagworm"
  pkmn.pokedex_entry "A Pineco hangs from a tree branch and waits for prey. While eating, if it is disturbed by someone shaking its tree, it falls on the ground and explodes."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"PROTECT"
    m.at 6, :"SELFDESTRUCT"
    m.at 9, :"BUGBITE"
    m.at 12, :"TAKEDOWN"
    m.at 17, :"RAPIDSPIN"
    m.at 20, :"BIDE"
    m.at 23, :"NATURALGIFT"
    m.at 28, :"SPIKES"
    m.at 31, :"PAYBACK"
    m.at 34, :"EXPLOSION"
    m.at 39, :"IRONDEFENSE"
    m.at 42, :"GYROBALL"
    m.at 45, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GRAVITY", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"IRONDEFENSE", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"COUNTER", :"DOUBLEEDGE", :"ENDURE", :"FLAIL", :"PINMISSILE", :"POWERTRICK", :"REVENGE", :"SANDTOMB", :"STEALTHROCK", :"SWIFT", :"TOXICSPIKES"
end

GameData::SpeciesMetrics.define :"PINECO" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 1
end