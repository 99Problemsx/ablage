#=============================================================================
# Sandaconda - GROUND Type
#=============================================================================

GameData::Species.define :"SANDACONDA" do |pkmn|
  pkmn.name "Sandaconda"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 72, attack: 107, defense: 125,
                  sp_atk: 71, sp_def: 65, speed: 70
  pkmn.abilities :"SANDSPIT", :"SHEDSKIN"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 179
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 3.8
  pkmn.weight 65.5
  pkmn.category "Sand Snake"
  pkmn.pokedex_entry "Its unique style of coiling allows it to blast sand out of its sand sac more efficiently."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SKULLBASH"
    m.at 1, :"WRAP"
    m.at 1, :"SANDATTACK"
    m.at 1, :"MINIMIZE"
    m.at 1, :"BRUTALSWING"
    m.at 15, :"BULLDOZE"
    m.at 20, :"HEADBUTT"
    m.at 25, :"GLARE"
    m.at 30, :"DIG"
    m.at 35, :"SANDSTORM"
    m.at 42, :"SLAM"
    m.at 49, :"COIL"
    m.at 51, :"SANDTOMB"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYPRESS", :"BRUTALSWING", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"DRILLRUN", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREFANG", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HURRICANE", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCALESHOT", :"SCORCHINGSANDS", :"SCREECH", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SANDACONDA" do |m|
  m.back_sprite -4, 33
  m.front_sprite 1, 18
end