#=============================================================================
# Trumbeak - NORMAL Type
#=============================================================================

GameData::Species.define :"TRUMBEAK" do |pkmn|
  pkmn.name "Trumbeak"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 55, attack: 85, defense: 50,
                  sp_atk: 75, sp_def: 40, speed: 50
  pkmn.abilities :"KEENEYE", :"SKILLLINK"
  pkmn.hidden_abilities :"PICKUP"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 124
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.6
  pkmn.weight 14.8
  pkmn.category "Bugle Beak"
  pkmn.pokedex_entry "It eats berries and stores their seeds in its beak. When it encounters enemies or prey, it fires off all the seeds in a burst."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"ROCKBLAST"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"ECHOEDVOICE"
    m.at 1, :"ROCKSMASH"
    m.at 3, :"GROWL"
    m.at 7, :"ECHOEDVOICE"
    m.at 9, :"ROCKSMASH"
    m.at 13, :"SUPERSONIC"
    m.at 16, :"PLUCK"
    m.at 21, :"ROOST"
    m.at 24, :"FURYATTACK"
    m.at 29, :"SCREECH"
    m.at 32, :"DRILLPECK"
    m.at 37, :"BULLETSEED"
    m.at 40, :"FEATHERDANCE"
    m.at 45, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FLAMECHARGE", :"FLY", :"FRUSTRATION", :"GUNKSHOT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERVOICE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TRUMBEAK" do |m|
  m.back_sprite 0, 55
  m.front_sprite 0, 22
end