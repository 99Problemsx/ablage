#=============================================================================
# Starly - NORMAL Type
#=============================================================================

GameData::Species.define :"STARLY" do |pkmn|
  pkmn.name "Starly"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 40, attack: 55, defense: 30,
                  sp_atk: 60, sp_def: 30, speed: 30
  pkmn.abilities :"KEENEYE"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 49
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 2.0
  pkmn.category "Starling"
  pkmn.pokedex_entry "They flock in great numbers. Though small, they flap their wings with great power."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 5, :"QUICKATTACK"
    m.at 9, :"WINGATTACK"
    m.at 13, :"DOUBLETEAM"
    m.at 17, :"ENDEAVOR"
    m.at 21, :"WHIRLWIND"
    m.at 25, :"AERIALACE"
    m.at 29, :"TAKEDOWN"
    m.at 33, :"AGILITY"
    m.at 37, :"BRAVEBIRD"
    m.at 41, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"ASTONISH", :"DETECT", :"DOUBLEEDGE", :"FEATHERDANCE", :"FORESIGHT", :"FURYATTACK", :"PURSUIT", :"REVENGE", :"ROOST", :"SANDATTACK", :"STEELWING", :"UPROAR"
end

GameData::SpeciesMetrics.define :"STARLY" do |m|
  m.back_sprite -3, 0
  m.front_sprite 3, 21
  m.shadow_sprite 0, 0, 1
end