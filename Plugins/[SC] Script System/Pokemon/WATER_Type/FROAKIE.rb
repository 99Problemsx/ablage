#=============================================================================
# Froakie - WATER Type
#=============================================================================

GameData::Species.define :"FROAKIE" do |pkmn|
  pkmn.name "Froakie"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 41, attack: 56, defense: 40,
                  sp_atk: 71, sp_def: 62, speed: 44
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 63
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 7.0
  pkmn.category "Bubble Frog"
  pkmn.pokedex_entry "It protects its skin by covering its body in delicate bubbles. Beneath its happy-go-lucky air, it keeps a watchful eye on its surroundings."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 5, :"BUBBLE"
    m.at 8, :"QUICKATTACK"
    m.at 10, :"LICK"
    m.at 14, :"WATERPULSE"
    m.at 18, :"SMOKESCREEN"
    m.at 21, :"ROUND"
    m.at 25, :"FLING"
    m.at 29, :"SMACKDOWN"
    m.at 35, :"SUBSTITUTE"
    m.at 39, :"BOUNCE"
    m.at 43, :"DOUBLETEAM"
    m.at 48, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"BESTOW", :"CAMOUFLAGE", :"MINDREADER", :"MUDSPORT", :"POWERUPPUNCH", :"TOXICSPIKES", :"WATERSPORT"
end

GameData::SpeciesMetrics.define :"FROAKIE" do |m|
  m.back_sprite 0, 7
  m.front_sprite 0, 3
end