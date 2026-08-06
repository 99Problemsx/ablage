#=============================================================================
# Frogadier - WATER Type
#=============================================================================

GameData::Species.define :"FROGADIER" do |pkmn|
  pkmn.name "Frogadier"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 54, attack: 63, defense: 52,
                  sp_atk: 97, sp_def: 83, speed: 56
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 10.9
  pkmn.category "Bubble Frog"
  pkmn.pokedex_entry "It can throw bubble-covered pebbles with precise control, hitting empty cans up to a hundred feet away."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"BUBBLE"
    m.at 5, :"BUBBLE"
    m.at 8, :"QUICKATTACK"
    m.at 10, :"LICK"
    m.at 14, :"WATERPULSE"
    m.at 19, :"SMOKESCREEN"
    m.at 23, :"ROUND"
    m.at 28, :"FLING"
    m.at 33, :"SMACKDOWN"
    m.at 40, :"SUBSTITUTE"
    m.at 45, :"BOUNCE"
    m.at 50, :"DOUBLETEAM"
    m.at 56, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"FROGADIER" do |m|
  m.back_sprite 1, 19
  m.front_sprite 0, 8
end