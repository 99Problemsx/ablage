#=============================================================================
# Donphan - GROUND Type
#=============================================================================

GameData::Species.define :"DONPHAN" do |pkmn|
  pkmn.name "Donphan"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 90, attack: 120, defense: 120,
                  sp_atk: 50, sp_def: 60, speed: 60
  pkmn.abilities :"STURDY"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 175
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 120.0
  pkmn.category "Armor"
  pkmn.pokedex_entry "A Donphan is so strong it can easily haul a dump truck. Its hide has toughened to a rock-hard state. An ordinary sort of attack won't even leave a scratch."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"FIREFANG"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"HORNATTACK"
    m.at 1, :"GROWL"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"BULLDOZE"
    m.at 6, :"RAPIDSPIN"
    m.at 10, :"KNOCKOFF"
    m.at 15, :"ROLLOUT"
    m.at 19, :"MAGNITUDE"
    m.at 24, :"SLAM"
    m.at 25, :"FURYATTACK"
    m.at 31, :"ASSURANCE"
    m.at 39, :"SCARYFACE"
    m.at 46, :"EARTHQUAKE"
    m.at 54, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONDEFENSE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TOXIC"
end

GameData::SpeciesMetrics.define :"DONPHAN" do |m|
  m.back_sprite 3, 0
  m.front_sprite -10, 21
  m.shadow_sprite 0, 0, 3
end