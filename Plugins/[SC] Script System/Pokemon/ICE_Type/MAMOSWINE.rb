#=============================================================================
# Mamoswine - ICE Type
#=============================================================================

GameData::Species.define :"MAMOSWINE" do |pkmn|
  pkmn.name "Mamoswine"
  pkmn.types :"ICE", :"GROUND"
  pkmn.base_stats hp: 110, attack: 130, defense: 80,
                  sp_atk: 80, sp_def: 70, speed: 60
  pkmn.abilities :"OBLIVIOUS", :"SNOWCLOAK"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 239
  pkmn.catch_rate 50
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.5
  pkmn.weight 291.0
  pkmn.category "Twin Tusk"
  pkmn.pokedex_entry "Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"ANCIENTPOWER"
    m.at 1, :"PECK"
    m.at 1, :"ODORSLEUTH"
    m.at 1, :"MUDSPORT"
    m.at 1, :"POWDERSNOW"
    m.at 5, :"MUDSPORT"
    m.at 8, :"POWDERSNOW"
    m.at 11, :"MUDSLAP"
    m.at 14, :"ENDURE"
    m.at 18, :"MUDBOMB"
    m.at 21, :"HAIL"
    m.at 24, :"ICEFANG"
    m.at 28, :"TAKEDOWN"
    m.at 33, :"DOUBLEHIT"
    m.at 37, :"MIST"
    m.at 41, :"THRASH"
    m.at 46, :"EARTHQUAKE"
    m.at 52, :"BLIZZARD"
    m.at 58, :"SCARYFACE"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC"
end

GameData::SpeciesMetrics.define :"MAMOSWINE" do |m|
  m.back_sprite -1, 0
  m.front_sprite -7, 9
  m.shadow_sprite 0, 0, 3
end