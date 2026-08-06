#=============================================================================
# Yungoos - NORMAL Type
#=============================================================================

GameData::Species.define :"YUNGOOS" do |pkmn|
  pkmn.name "Yungoos"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 48, attack: 70, defense: 30,
                  sp_atk: 45, sp_def: 30, speed: 30
  pkmn.abilities :"STAKEOUT", :"STRONGJAW"
  pkmn.hidden_abilities :"ADAPTABILITY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 51
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 6.0
  pkmn.category "Loitering"
  pkmn.pokedex_entry "Its stomach takes up most of its long torso. It's a big eater, so the amount Trainers have to spend on its food is no laughing matter."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"LEER"
    m.at 7, :"PURSUIT"
    m.at 10, :"SANDATTACK"
    m.at 13, :"ODORSLEUTH"
    m.at 16, :"BIDE"
    m.at 19, :"BITE"
    m.at 22, :"MUDSLAP"
    m.at 25, :"SUPERFANG"
    m.at 28, :"TAKEDOWN"
    m.at 31, :"SCARYFACE"
    m.at 34, :"CRUNCH"
    m.at 37, :"HYPERFANG"
    m.at 40, :"YAWN"
    m.at 43, :"THRASH"
    m.at 46, :"REST"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"FIREFANG", :"ICEFANG", :"LASTRESORT", :"REVENGE", :"THUNDERFANG"
end

GameData::SpeciesMetrics.define :"YUNGOOS" do |m|
  m.back_sprite -3, 27
  m.front_sprite 3, 14
end