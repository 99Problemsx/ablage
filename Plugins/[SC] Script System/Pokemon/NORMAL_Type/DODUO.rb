#=============================================================================
# Doduo - NORMAL Type
#=============================================================================

GameData::Species.define :"DODUO" do |pkmn|
  pkmn.name "Doduo"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 35, attack: 85, defense: 45,
                  sp_atk: 75, sp_def: 35, speed: 35
  pkmn.abilities :"RUNAWAY", :"EARLYBIRD"
  pkmn.hidden_abilities :"TANGLEDFEET"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 62
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 39.2
  pkmn.category "Twin Bird"
  pkmn.pokedex_entry "Even while eating or sleeping, one of the heads remains always vigilant for any sign of danger. When threatened, it flees at over 60 miles per hour."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 5, :"QUICKATTACK"
    m.at 10, :"RAGE"
    m.at 14, :"FURYATTACK"
    m.at 19, :"PURSUIT"
    m.at 23, :"UPROAR"
    m.at 28, :"ACUPRESSURE"
    m.at 32, :"DOUBLEHIT"
    m.at 37, :"AGILITY"
    m.at 41, :"DRILLPECK"
    m.at 46, :"ENDEAVOR"
    m.at 50, :"THRASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HIDDENPOWER", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"TOXIC", :"UPROAR", :"WORKUP"
  pkmn.egg_moves :"ASSURANCE", :"BRAVEBIRD", :"ENDEAVOR", :"FEINTATTACK", :"FLAIL", :"HAZE", :"MIRRORMOVE", :"NATURALGIFT", :"QUICKATTACK", :"SUPERSONIC"
end

GameData::SpeciesMetrics.define :"DODUO" do |m|
  m.back_sprite 14, 0
  m.front_sprite -10, 16
  m.shadow_sprite 0, 0, 2
end