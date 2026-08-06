#=============================================================================
# Taillow - NORMAL Type
#=============================================================================

GameData::Species.define :"TAILLOW" do |pkmn|
  pkmn.name "Taillow"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 40, attack: 55, defense: 30,
                  sp_atk: 85, sp_def: 30, speed: 30
  pkmn.abilities :"GUTS"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 54
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 2.3
  pkmn.category "TinySwallow"
  pkmn.pokedex_entry "Although it is small, it is very courageous. It will take on a larger Skarmory on an equal footing. However, its will weakens if it becomes hungry."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 4, :"FOCUSENERGY"
    m.at 8, :"QUICKATTACK"
    m.at 13, :"WINGATTACK"
    m.at 19, :"DOUBLETEAM"
    m.at 26, :"ENDEAVOR"
    m.at 34, :"AERIALACE"
    m.at 43, :"AGILITY"
    m.at 53, :"AIRSLASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"COUNTER", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"BRAVEBIRD", :"DEFOG", :"MIRRORMOVE", :"PURSUIT", :"RAGE", :"REFRESH", :"ROOST", :"SKYATTACK", :"STEELWING", :"SUPERSONIC", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"TAILLOW" do |m|
  m.back_sprite -9, 0
  m.front_sprite 5, 4
  m.shadow_sprite 0, 0, 1
end