#=============================================================================
# Forretress - BUG Type
#=============================================================================

GameData::Species.define :"FORRETRESS" do |pkmn|
  pkmn.name "Forretress"
  pkmn.types :"BUG", :"STEEL"
  pkmn.base_stats hp: 75, attack: 90, defense: 140,
                  sp_atk: 40, sp_def: 60, speed: 60
  pkmn.abilities :"STURDY"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 163
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 125.8
  pkmn.category "Bagworm"
  pkmn.pokedex_entry "It keeps itself inside its steel shell. The shell is opened when it is catching prey, but it is so quick that the shell's inside cannot be seen."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TOXICSPIKES"
    m.at 1, :"TACKLE"
    m.at 1, :"PROTECT"
    m.at 1, :"SELFDESTRUCT"
    m.at 1, :"BUGBITE"
    m.at 6, :"SELFDESTRUCT"
    m.at 9, :"BUGBITE"
    m.at 12, :"TAKEDOWN"
    m.at 17, :"RAPIDSPIN"
    m.at 20, :"BIDE"
    m.at 23, :"NATURALGIFT"
    m.at 28, :"SPIKES"
    m.at 31, :"MIRRORSHOT"
    m.at 32, :"AUTOTOMIZE"
    m.at 36, :"PAYBACK"
    m.at 42, :"EXPLOSION"
    m.at 46, :"IRONDEFENSE"
    m.at 50, :"GYROBALL"
    m.at 56, :"DOUBLEEDGE"
    m.at 60, :"MAGNETRISE"
    m.at 64, :"ZAPCANNON"
    m.at 70, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"VENOSHOCK", :"VOLTSWITCH"
end

GameData::SpeciesMetrics.define :"FORRETRESS" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 4
  m.shadow_sprite 0, 0, 3
end