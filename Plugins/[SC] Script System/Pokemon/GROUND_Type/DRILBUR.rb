#=============================================================================
# Drilbur - GROUND Type
#=============================================================================

GameData::Species.define :"DRILBUR" do |pkmn|
  pkmn.name "Drilbur"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 60, attack: 85, defense: 40,
                  sp_atk: 68, sp_def: 30, speed: 45
  pkmn.abilities :"SANDRUSH", :"SANDFORCE"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 66
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 8.5
  pkmn.category "Mole"
  pkmn.pokedex_entry "It makes its way swiftly through the soil by putting both claws together and rotating at high speed."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"MUDSPORT"
    m.at 5, :"RAPIDSPIN"
    m.at 8, :"MUDSLAP"
    m.at 12, :"FURYSWIPES"
    m.at 15, :"METALCLAW"
    m.at 19, :"DIG"
    m.at 22, :"HONECLAWS"
    m.at 26, :"SLASH"
    m.at 29, :"ROCKSLIDE"
    m.at 33, :"EARTHQUAKE"
    m.at 36, :"SWORDSDANCE"
    m.at 40, :"SANDSTORM"
    m.at 43, :"DRILLRUN"
    m.at 47, :"FISSURE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRILLRUN", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"CRUSHCLAW", :"EARTHPOWER", :"IRONDEFENSE", :"METALSOUND", :"RAPIDSPIN", :"ROCKCLIMB", :"SKULLBASH", :"SUBMISSION"
end

GameData::SpeciesMetrics.define :"DRILBUR" do |m|
  m.back_sprite 3, 0
  m.front_sprite 1, 24
  m.shadow_sprite 0, 0, 2
end