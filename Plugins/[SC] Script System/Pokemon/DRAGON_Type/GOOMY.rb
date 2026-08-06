#=============================================================================
# Goomy - DRAGON Type
#=============================================================================

GameData::Species.define :"GOOMY" do |pkmn|
  pkmn.name "Goomy"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 45, attack: 50, defense: 35,
                  sp_atk: 40, sp_def: 55, speed: 75
  pkmn.abilities :"SAPSIPPER", :"HYDRATION"
  pkmn.hidden_abilities :"GOOEY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 60
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10240
  pkmn.height 0.3
  pkmn.weight 2.8
  pkmn.category "Soft Tissue"
  pkmn.pokedex_entry "Its source of protection is its slimy, germ-laden mucous membrane. Anyone who touches it needs some thorough hand-washing."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"TACKLE"
    m.at 5, :"WATERGUN"
    m.at 10, :"DRAGONBREATH"
    m.at 15, :"PROTECT"
    m.at 20, :"FLAIL"
    m.at 25, :"WATERPULSE"
    m.at 30, :"RAINDANCE"
    m.at 35, :"DRAGONPULSE"
    m.at 41, :"CURSE"
    m.at 45, :"BODYSLAM"
    m.at 50, :"MUDDYWATER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"INFESTATION", :"IRONTAIL", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERBOLT", :"TOXIC", :"WATERPULSE", :"TERABLAST"
  pkmn.egg_moves :"COUNTER", :"LIFEDEW"
end

GameData::SpeciesMetrics.define :"GOOMY" do |m|
  m.back_sprite 0, 48
  m.front_sprite -1, 31
end