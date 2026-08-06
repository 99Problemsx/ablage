#=============================================================================
# Swinub - ICE Type
#=============================================================================

GameData::Species.define :"SWINUB" do |pkmn|
  pkmn.name "Swinub"
  pkmn.types :"ICE", :"GROUND"
  pkmn.base_stats hp: 50, attack: 50, defense: 40,
                  sp_atk: 50, sp_def: 30, speed: 30
  pkmn.abilities :"OBLIVIOUS", :"SNOWCLOAK"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 50
  pkmn.catch_rate 225
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 6.5
  pkmn.category "Pig"
  pkmn.pokedex_entry "It roots for food by rubbing its snout against the ground. Its favorite food is a mushroom that grows under dried grass. It occasionally roots out hot springs."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"ODORSLEUTH"
    m.at 5, :"MUDSPORT"
    m.at 8, :"POWDERSNOW"
    m.at 11, :"MUDSLAP"
    m.at 14, :"ENDURE"
    m.at 18, :"MUDBOMB"
    m.at 21, :"ICYWIND"
    m.at 24, :"ICESHARD"
    m.at 28, :"TAKEDOWN"
    m.at 35, :"MIST"
    m.at 37, :"EARTHQUAKE"
    m.at 40, :"FLAIL"
    m.at 44, :"BLIZZARD"
    m.at 48, :"AMNESIA"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC"
  pkmn.egg_moves :"ANCIENTPOWER", :"AVALANCHE", :"BITE", :"BODYSLAM", :"CURSE", :"DOUBLEEDGE", :"FISSURE", :"ICICLECRASH", :"ICICLESPEAR", :"MUDSHOT", :"STEALTHROCK", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"SWINUB" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 31
  m.shadow_sprite 0, 0, 2
end