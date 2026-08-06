#=============================================================================
# Spearow - NORMAL Type
#=============================================================================

GameData::Species.define :"SPEAROW" do |pkmn|
  pkmn.name "Spearow"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 40, attack: 60, defense: 30,
                  sp_atk: 70, sp_def: 31, speed: 31
  pkmn.abilities :"KEENEYE"
  pkmn.hidden_abilities :"SNIPER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 52
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 2.0
  pkmn.category "Tiny Bird"
  pkmn.pokedex_entry "Its loud cry can be heard over half a mile away. If its high, keening cry is heard echoing all around, it is a sign that they are warning each other of danger."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 5, :"LEER"
    m.at 9, :"FURYATTACK"
    m.at 13, :"PURSUIT"
    m.at 17, :"AERIALACE"
    m.at 21, :"MIRRORMOVE"
    m.at 25, :"AGILITY"
    m.at 29, :"ASSURANCE"
    m.at 33, :"ROOST"
    m.at 37, :"DRILLPECK"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"ASTONISH", :"FEATHERDANCE", :"FEINTATTACK", :"QUICKATTACK", :"RAZORWIND", :"SCARYFACE", :"SKYATTACK", :"STEELWING", :"TRIATTACK", :"UPROAR", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"SPEAROW" do |m|
  m.back_sprite -5, 0
  m.front_sprite 2, 22
  m.shadow_sprite 0, 0, 1
end