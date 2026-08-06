#=============================================================================
# Toucannon - NORMAL Type
#=============================================================================

GameData::Species.define :"TOUCANNON" do |pkmn|
  pkmn.name "Toucannon"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 80, attack: 120, defense: 75,
                  sp_atk: 60, sp_def: 75, speed: 75
  pkmn.abilities :"KEENEYE", :"SKILLLINK"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 243
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.1
  pkmn.weight 26.0
  pkmn.category "Cannon"
  pkmn.pokedex_entry "They smack beaks with others of their kind to communicate. The strength and number of hits tell each other how they feel."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 0, :"BEAKBLAST"
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
    m.at 30, :"SCREECH"
    m.at 34, :"DRILLPECK"
    m.at 40, :"BULLETSEED"
    m.at 44, :"FEATHERDANCE"
    m.at 50, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FLAMECHARGE", :"FLASHCANNON", :"FLY", :"FRUSTRATION", :"GUNKSHOT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERVOICE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SKYATTACK", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TOUCANNON" do |m|
  m.back_sprite 5, 54
  m.front_sprite 6, 14
end