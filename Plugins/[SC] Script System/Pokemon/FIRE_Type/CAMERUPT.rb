#=============================================================================
# Camerupt - FIRE Type
#=============================================================================

GameData::Species.define :"CAMERUPT" do |pkmn|
  pkmn.name "Camerupt"
  pkmn.types :"FIRE", :"GROUND"
  pkmn.base_stats hp: 70, attack: 100, defense: 70,
                  sp_atk: 40, sp_def: 105, speed: 75
  pkmn.abilities :"MAGMAARMOR", :"SOLIDROCK"
  pkmn.hidden_abilities :"ANGERPOINT"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 161
  pkmn.catch_rate 150
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.9
  pkmn.weight 220.0
  pkmn.category "Eruption"
  pkmn.pokedex_entry "A Pokémon that lives in the crater of a volcano. Every 10 years, the volcanoes on its back erupt violently. Research is under way on the cause of eruption."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TACKLE"
    m.at 1, :"EMBER"
    m.at 1, :"MAGNITUDE"
    m.at 5, :"EMBER"
    m.at 8, :"MAGNITUDE"
    m.at 12, :"FOCUSENERGY"
    m.at 15, :"FLAMEBURST"
    m.at 19, :"AMNESIA"
    m.at 22, :"LAVAPLUME"
    m.at 26, :"EARTHPOWER"
    m.at 29, :"CURSE"
    m.at 31, :"TAKEDOWN"
    m.at 33, :"ROCKSLIDE"
    m.at 39, :"YAWN"
    m.at 46, :"EARTHQUAKE"
    m.at 52, :"ERUPTION"
    m.at 59, :"FISSURE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"CAMERUPT" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 17
  m.shadow_sprite 0, 0, 3
end