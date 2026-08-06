#=============================================================================
# Silicobra - GROUND Type
#=============================================================================

GameData::Species.define :"SILICOBRA" do |pkmn|
  pkmn.name "Silicobra"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 52, attack: 57, defense: 75,
                  sp_atk: 46, sp_def: 35, speed: 50
  pkmn.abilities :"SANDSPIT", :"SHEDSKIN"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 63
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.2
  pkmn.weight 7.6
  pkmn.category "Sand Snake"
  pkmn.pokedex_entry "It spews sand from its nostrils. While the enemy is blinded, it burrows into the ground to hide."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"SANDATTACK"
    m.at 5, :"MINIMIZE"
    m.at 10, :"BRUTALSWING"
    m.at 15, :"BULLDOZE"
    m.at 20, :"HEADBUTT"
    m.at 25, :"GLARE"
    m.at 30, :"DIG"
    m.at 35, :"SANDSTORM"
    m.at 40, :"SLAM"
    m.at 45, :"COIL"
    m.at 50, :"SANDTOMB"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRUTALSWING", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"DRILLRUN", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCALESHOT", :"SCORCHINGSANDS", :"SCREECH", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"BELCH", :"DRAGONRUSH", :"LASTRESORT", :"MUDSLAP", :"POISONTAIL"
end

GameData::SpeciesMetrics.define :"SILICOBRA" do |m|
  m.back_sprite 6, 20
  m.front_sprite -4, 6
end