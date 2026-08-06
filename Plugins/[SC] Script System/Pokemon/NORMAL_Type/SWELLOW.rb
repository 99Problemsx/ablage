#=============================================================================
# Swellow - NORMAL Type
#=============================================================================

GameData::Species.define :"SWELLOW" do |pkmn|
  pkmn.name "Swellow"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 60, attack: 85, defense: 60,
                  sp_atk: 125, sp_def: 50, speed: 50
  pkmn.abilities :"GUTS"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 151
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.7
  pkmn.weight 19.8
  pkmn.category "Swallow"
  pkmn.pokedex_entry "A Swellow dives upon prey from far above. It never misses its targets. It takes to the skies in search of lands with a warm climate."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PLUCK"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"QUICKATTACK"
    m.at 4, :"FOCUSENERGY"
    m.at 8, :"QUICKATTACK"
    m.at 13, :"WINGATTACK"
    m.at 19, :"DOUBLETEAM"
    m.at 28, :"ENDEAVOR"
    m.at 38, :"AERIALACE"
    m.at 49, :"AGILITY"
    m.at 61, :"AIRSLASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"COUNTER", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"SWELLOW" do |m|
  m.back_sprite -4, 0
  m.front_sprite 5, -5
  m.shadow_sprite 0, 0, 3
end