#=============================================================================
# Excadrill - GROUND Type
#=============================================================================

GameData::Species.define :"EXCADRILL" do |pkmn|
  pkmn.name "Excadrill"
  pkmn.types :"GROUND", :"STEEL"
  pkmn.base_stats hp: 110, attack: 135, defense: 60,
                  sp_atk: 88, sp_def: 50, speed: 65
  pkmn.abilities :"SANDRUSH", :"SANDFORCE"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 178
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 40.4
  pkmn.category "Subterrene"
  pkmn.pokedex_entry "More than 300 feet below the surface, they build mazelike nests. Their activity can be destructive to subway tunnels."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"MUDSPORT"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"MUDSLAP"
    m.at 5, :"RAPIDSPIN"
    m.at 8, :"MUDSLAP"
    m.at 12, :"FURYSWIPES"
    m.at 15, :"METALCLAW"
    m.at 19, :"DIG"
    m.at 22, :"HONECLAWS"
    m.at 26, :"SLASH"
    m.at 29, :"ROCKSLIDE"
    m.at 31, :"HORNDRILL"
    m.at 36, :"EARTHQUAKE"
    m.at 42, :"SWORDSDANCE"
    m.at 49, :"SANDSTORM"
    m.at 55, :"DRILLRUN"
    m.at 62, :"FISSURE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRILLRUN", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"EXCADRILL" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 22
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Excadrill
GameData::Species.define :"EXCADRILL_1" do |pkmn|
  pkmn.species :"EXCADRILL"
  pkmn.form 1
  pkmn.name "Excadrill"
  pkmn.form_name "Mega Excadrill"
  pkmn.types :"GROUND", :"STEEL"
  pkmn.base_stats hp: 110, attack: 165, defense: 100,
                  sp_atk: 65, sp_def: 65, speed: 103
  pkmn.abilities :"SANDRUSH", :"SANDFORCE"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 178
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 60.0
  pkmn.category "Subterrene"
  pkmn.pokedex_entry "If this Pokémon brings its arms and head together to form a streamlined shape and spins at high speeds, it can destroy anything."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"MUDSPORT"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"MUDSLAP"
    m.at 5, :"RAPIDSPIN"
    m.at 8, :"MUDSLAP"
    m.at 12, :"FURYSWIPES"
    m.at 15, :"METALCLAW"
    m.at 19, :"DIG"
    m.at 22, :"HONECLAWS"
    m.at 26, :"SLASH"
    m.at 29, :"ROCKSLIDE"
    m.at 31, :"HORNDRILL"
    m.at 36, :"EARTHQUAKE"
    m.at 42, :"SWORDSDANCE"
    m.at 49, :"SANDSTORM"
    m.at 55, :"DRILLRUN"
    m.at 62, :"FISSURE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRILLRUN", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"EXCADRILL_1" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 22
  m.shadow_sprite 0, 0, 3
end