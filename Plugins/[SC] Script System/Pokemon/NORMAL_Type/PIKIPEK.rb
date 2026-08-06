#=============================================================================
# Pikipek - NORMAL Type
#=============================================================================

GameData::Species.define :"PIKIPEK" do |pkmn|
  pkmn.name "Pikipek"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 35, attack: 75, defense: 30,
                  sp_atk: 65, sp_def: 30, speed: 30
  pkmn.abilities :"KEENEYE", :"SKILLLINK"
  pkmn.hidden_abilities :"PICKUP"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 53
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 1.2
  pkmn.category "Woodpecker"
  pkmn.pokedex_entry "It pecks at trees with its hard beak. You can get some idea of its mood or condition from the rhythm of its pecking."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 3, :"GROWL"
    m.at 7, :"ECHOEDVOICE"
    m.at 9, :"ROCKSMASH"
    m.at 13, :"SUPERSONIC"
    m.at 15, :"PLUCK"
    m.at 19, :"ROOST"
    m.at 21, :"FURYATTACK"
    m.at 25, :"SCREECH"
    m.at 27, :"DRILLPECK"
    m.at 31, :"BULLETSEED"
    m.at 33, :"FEATHERDANCE"
    m.at 37, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FLAMECHARGE", :"FLY", :"FRUSTRATION", :"GUNKSHOT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERVOICE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"BOOMBURST", :"BRAVEBIRD", :"MIRRORMOVE", :"TAILWIND", :"UPROAR"
end

GameData::SpeciesMetrics.define :"PIKIPEK" do |m|
  m.back_sprite 3, 3
  m.front_sprite -2, 1
end