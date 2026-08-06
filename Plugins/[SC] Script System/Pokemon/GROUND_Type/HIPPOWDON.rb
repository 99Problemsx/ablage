#=============================================================================
# Hippowdon - GROUND Type
#=============================================================================

GameData::Species.define :"HIPPOWDON" do |pkmn|
  pkmn.name "Hippowdon"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 108, attack: 112, defense: 118,
                  sp_atk: 47, sp_def: 68, speed: 72
  pkmn.abilities :"SANDSTREAM"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 2.0
  pkmn.weight 300.0
  pkmn.category "Heavyweight"
  pkmn.pokedex_entry "It blasts internally stored sand from ports on its body to create a towering twister for attack."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"TACKLE"
    m.at 1, :"SANDATTACK"
    m.at 1, :"BITE"
    m.at 1, :"YAWN"
    m.at 7, :"BITE"
    m.at 13, :"YAWN"
    m.at 19, :"TAKEDOWN"
    m.at 19, :"DIG"
    m.at 25, :"SANDTOMB"
    m.at 31, :"CRUNCH"
    m.at 40, :"EARTHQUAKE"
    m.at 50, :"DOUBLEEDGE"
    m.at 60, :"FISSURE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"HIPPOWDON" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 17
  m.shadow_sprite 0, 0, 3
end