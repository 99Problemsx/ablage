#=============================================================================
# Bonsly - ROCK Type
#=============================================================================

GameData::Species.define :"BONSLY" do |pkmn|
  pkmn.name "Bonsly"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 50, attack: 80, defense: 95,
                  sp_atk: 10, sp_def: 10, speed: 45
  pkmn.abilities :"STURDY", :"ROCKHEAD"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 58
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 15.0
  pkmn.category "Bonsai"
  pkmn.pokedex_entry "It looks as if it is always crying. It is actually adjusting its body's fluid levels by eliminating excess."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FAKETEARS"
    m.at 1, :"COPYCAT"
    m.at 5, :"FLAIL"
    m.at 8, :"LOWKICK"
    m.at 12, :"ROCKTHROW"
    m.at 15, :"SLAM"
    m.at 19, :"FEINTATTACK"
    m.at 22, :"ROCKTOMB"
    m.at 26, :"BLOCK"
    m.at 29, :"ROCKSLIDE"
    m.at 33, :"MIMIC"
    m.at 36, :"SUCKERPUNCH"
    m.at 40, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"EXPLOSION", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"CURSE", :"DEFENSECURL", :"ENDURE", :"HARDEN", :"HEADBUTT", :"ROLLOUT", :"SANDTOMB", :"SELFDESTRUCT", :"STEALTHROCK"
end

GameData::SpeciesMetrics.define :"BONSLY" do |m|
  m.back_sprite 3, 0
  m.front_sprite -3, 19
  m.shadow_sprite 0, 0, 1
end