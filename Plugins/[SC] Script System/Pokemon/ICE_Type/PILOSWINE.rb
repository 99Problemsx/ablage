#=============================================================================
# Piloswine - ICE Type
#=============================================================================

GameData::Species.define :"PILOSWINE" do |pkmn|
  pkmn.name "Piloswine"
  pkmn.types :"ICE", :"GROUND"
  pkmn.base_stats hp: 100, attack: 100, defense: 80,
                  sp_atk: 50, sp_def: 60, speed: 60
  pkmn.abilities :"OBLIVIOUS", :"SNOWCLOAK"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 158
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 55.8
  pkmn.category "Swine"
  pkmn.pokedex_entry "A Piloswine is covered by a thick coat of long hair for enduring freezing cold. It uses its tusks to dig up food that has been buried under ice."
  pkmn.evs hp: 1
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
    m.at 21, :"ICYWIND"
    m.at 24, :"ICEFANG"
    m.at 28, :"TAKEDOWN"
    m.at 33, :"FURYATTACK"
    m.at 37, :"MIST"
    m.at 41, :"THRASH"
    m.at 46, :"EARTHQUAKE"
    m.at 52, :"BLIZZARD"
    m.at 58, :"AMNESIA"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC"
end

GameData::SpeciesMetrics.define :"PILOSWINE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 16
  m.shadow_sprite 0, 0, 3
end