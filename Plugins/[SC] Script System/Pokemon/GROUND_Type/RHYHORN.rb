#=============================================================================
# Rhyhorn - GROUND Type
#=============================================================================

GameData::Species.define :"RHYHORN" do |pkmn|
  pkmn.name "Rhyhorn"
  pkmn.types :"GROUND", :"ROCK"
  pkmn.base_stats hp: 80, attack: 85, defense: 95,
                  sp_atk: 25, sp_def: 30, speed: 30
  pkmn.abilities :"LIGHTNINGROD", :"ROCKHEAD"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 69
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 115.0
  pkmn.category "Spikes"
  pkmn.pokedex_entry "Once it starts running, it doesn't stop. Its tiny brain makes it so stupid that it can't remember why it started running in the first place."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"HORNATTACK"
    m.at 1, :"TAILWHIP"
    m.at 8, :"STOMP"
    m.at 12, :"FURYATTACK"
    m.at 19, :"SCARYFACE"
    m.at 23, :"ROCKBLAST"
    m.at 30, :"BULLDOZE"
    m.at 34, :"CHIPAWAY"
    m.at 41, :"TAKEDOWN"
    m.at 45, :"DRILLRUN"
    m.at 52, :"STONEEDGE"
    m.at 56, :"EARTHQUAKE"
    m.at 63, :"HORNDRILL"
    m.at 67, :"MEGAHORN"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRILLRUN", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"COUNTER", :"CRUNCH", :"CRUSHCLAW", :"CURSE", :"DRAGONRUSH", :"FIREFANG", :"ICEFANG", :"IRONTAIL", :"MAGNITUDE", :"REVERSAL", :"ROCKCLIMB", :"SKULLBASH", :"THUNDERFANG"
end

GameData::SpeciesMetrics.define :"RHYHORN" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 18
  m.shadow_sprite 0, 0, 3
end