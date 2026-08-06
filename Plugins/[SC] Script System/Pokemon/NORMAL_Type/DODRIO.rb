#=============================================================================
# Dodrio - NORMAL Type
#=============================================================================

GameData::Species.define :"DODRIO" do |pkmn|
  pkmn.name "Dodrio"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 60, attack: 110, defense: 70,
                  sp_atk: 100, sp_def: 60, speed: 60
  pkmn.abilities :"RUNAWAY", :"EARLYBIRD"
  pkmn.hidden_abilities :"TANGLEDFEET"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 161
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.8
  pkmn.weight 85.2
  pkmn.category "Triple Bird"
  pkmn.pokedex_entry "A peculiar Pokémon species with three heads. It vigorously races across grassy plains even in arid seasons with little rainfall."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PLUCK"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"RAGE"
    m.at 5, :"QUICKATTACK"
    m.at 10, :"RAGE"
    m.at 14, :"FURYATTACK"
    m.at 19, :"PURSUIT"
    m.at 23, :"UPROAR"
    m.at 28, :"ACUPRESSURE"
    m.at 34, :"TRIATTACK"
    m.at 41, :"AGILITY"
    m.at 47, :"DRILLPECK"
    m.at 54, :"ENDEAVOR"
    m.at 60, :"THRASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PLUCK", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WORKUP"
end

GameData::SpeciesMetrics.define :"DODRIO" do |m|
  m.back_sprite 8, 0
  m.front_sprite -2, 4
  m.shadow_sprite 0, 0, 3
end