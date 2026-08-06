#=============================================================================
# Chewtle - WATER Type
#=============================================================================

GameData::Species.define :"CHEWTLE" do |pkmn|
  pkmn.name "Chewtle"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 64, defense: 50,
                  sp_atk: 44, sp_def: 38, speed: 38
  pkmn.abilities :"STRONGJAW", :"SHELLARMOR"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 57
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 8.5
  pkmn.category "Snapping"
  pkmn.pokedex_entry "It starts off battles by attacking with its rock-hard horn, but as soon as the opponent flinches, this Pokémon bites down and never lets go."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"WATERGUN"
    m.at 7, :"BITE"
    m.at 14, :"PROTECT"
    m.at 21, :"HEADBUTT"
    m.at 28, :"COUNTER"
    m.at 35, :"JAWLOCK"
    m.at 42, :"LIQUIDATION"
    m.at 49, :"BODYSLAM"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"HYDROPUMP", :"ICEFANG", :"LIQUIDATION", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"REVENGE", :"ROUND", :"SCALESHOT", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WHIRLPOOL", :"TERABLAST"
  pkmn.egg_moves :"DRAGONTAIL", :"GASTROACID", :"SKULLBASH"
end

GameData::SpeciesMetrics.define :"CHEWTLE" do |m|
  m.back_sprite 12, 3
  m.front_sprite -6, 2
  m.shadow_sprite 0, 0, 2
end