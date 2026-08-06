#=============================================================================
# Nincada - BUG Type
#=============================================================================

GameData::Species.define :"NINCADA" do |pkmn|
  pkmn.name "Nincada"
  pkmn.types :"BUG", :"GROUND"
  pkmn.base_stats hp: 31, attack: 45, defense: 90,
                  sp_atk: 40, sp_def: 30, speed: 30
  pkmn.abilities :"COMPOUNDEYES"
  pkmn.hidden_abilities :"RUNAWAY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Gray"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 53
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 5.5
  pkmn.category "Trainee"
  pkmn.pokedex_entry "It makes its nest at the roots of a mighty tree. Using its whiskerlike antennae, it probes its surroundings in the pitch-black darkness of soil."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"HARDEN"
    m.at 5, :"LEECHLIFE"
    m.at 9, :"SANDATTACK"
    m.at 14, :"FURYSWIPES"
    m.at 19, :"MINDREADER"
    m.at 25, :"FALSESWIPE"
    m.at 31, :"MUDSLAP"
    m.at 38, :"METALCLAW"
    m.at 45, :"DIG"
  end
  pkmn.tutor_moves :"AERIALACE", :"BUGBITE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"HIDDENPOWER", :"HONECLAWS", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"BUGBITE", :"BUGBUZZ", :"ENDURE", :"FEINTATTACK", :"FINALGAMBIT", :"GUST", :"NIGHTSLASH", :"SILVERWIND"
end

GameData::SpeciesMetrics.define :"NINCADA" do |m|
  m.back_sprite -1, 0
  m.front_sprite -1, 29
  m.shadow_sprite 0, 0, 2
end