#=============================================================================
# Ferroseed - GRASS Type
#=============================================================================

GameData::Species.define :"FERROSEED" do |pkmn|
  pkmn.name "Ferroseed"
  pkmn.types :"GRASS", :"STEEL"
  pkmn.base_stats hp: 44, attack: 50, defense: 91,
                  sp_atk: 10, sp_def: 24, speed: 86
  pkmn.abilities :"IRONBARBS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 61
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 18.8
  pkmn.category "Thorn Seed"
  pkmn.pokedex_entry "They stick their spikes into cave walls and absorb the minerals they find in the rock."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Grass", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 6, :"ROLLOUT"
    m.at 9, :"CURSE"
    m.at 14, :"METALCLAW"
    m.at 18, :"PINMISSILE"
    m.at 21, :"GYROBALL"
    m.at 26, :"IRONDEFENSE"
    m.at 30, :"MIRRORSHOT"
    m.at 35, :"INGRAIN"
    m.at 38, :"SELFDESTRUCT"
    m.at 43, :"IRONHEAD"
    m.at 47, :"PAYBACK"
    m.at 52, :"FLASHCANNON"
    m.at 55, :"EXPLOSION"
  end
  pkmn.tutor_moves :"CAPTIVATE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GIGADRAIN", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"IRONHEAD", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"BULLETSEED", :"GRAVITY", :"LEECHSEED", :"ROCKCLIMB", :"SEEDBOMB", :"SPIKES", :"STEALTHROCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"FERROSEED" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 19
  m.shadow_sprite 0, 0, 1
end