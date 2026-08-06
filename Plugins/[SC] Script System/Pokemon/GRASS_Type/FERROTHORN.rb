#=============================================================================
# Ferrothorn - GRASS Type
#=============================================================================

GameData::Species.define :"FERROTHORN" do |pkmn|
  pkmn.name "Ferrothorn"
  pkmn.types :"GRASS", :"STEEL"
  pkmn.base_stats hp: 74, attack: 94, defense: 131,
                  sp_atk: 20, sp_def: 54, speed: 116
  pkmn.abilities :"IRONBARBS"
  pkmn.hidden_abilities :"ANTICIPATION"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Multiped"
  pkmn.base_exp 171
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 110.0
  pkmn.category "Thorn Pod"
  pkmn.pokedex_entry "They attach themselves to cave ceilings, firing steel spikes at targets passing beneath them."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Grass", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"ROCKCLIMB"
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"ROLLOUT"
    m.at 1, :"CURSE"
    m.at 6, :"ROLLOUT"
    m.at 9, :"CURSE"
    m.at 14, :"METALCLAW"
    m.at 18, :"PINMISSILE"
    m.at 21, :"GYROBALL"
    m.at 26, :"IRONDEFENSE"
    m.at 30, :"MIRRORSHOT"
    m.at 35, :"INGRAIN"
    m.at 38, :"SELFDESTRUCT"
    m.at 40, :"POWERWHIP"
    m.at 46, :"IRONHEAD"
    m.at 53, :"PAYBACK"
    m.at 61, :"FLASHCANNON"
    m.at 67, :"EXPLOSION"
  end
  pkmn.tutor_moves :"AERIALACE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"FERROTHORN" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 19
  m.shadow_sprite 0, 0, 2
end