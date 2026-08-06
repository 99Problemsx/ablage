#=============================================================================
# Staravia - NORMAL Type
#=============================================================================

GameData::Species.define :"STARAVIA" do |pkmn|
  pkmn.name "Staravia"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 55, attack: 75, defense: 50,
                  sp_atk: 80, sp_def: 40, speed: 40
  pkmn.abilities :"INTIMIDATE"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 119
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.6
  pkmn.weight 15.5
  pkmn.category "Starling"
  pkmn.pokedex_entry "It flies around forests and fields in search of bug Pokémon. It stays within a huge flock."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"QUICKATTACK"
    m.at 5, :"QUICKATTACK"
    m.at 9, :"WINGATTACK"
    m.at 13, :"DOUBLETEAM"
    m.at 18, :"ENDEAVOR"
    m.at 23, :"WHIRLWIND"
    m.at 28, :"AERIALACE"
    m.at 33, :"TAKEDOWN"
    m.at 38, :"AGILITY"
    m.at 43, :"BRAVEBIRD"
    m.at 48, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"STARAVIA" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 17
  m.shadow_sprite 0, 0, 2
end