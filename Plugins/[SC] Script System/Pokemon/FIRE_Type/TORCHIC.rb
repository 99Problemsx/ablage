#=============================================================================
# Torchic - FIRE Type
#=============================================================================

GameData::Species.define :"TORCHIC" do |pkmn|
  pkmn.name "Torchic"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 45, attack: 60, defense: 40,
                  sp_atk: 45, sp_def: 70, speed: 50
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"SPEEDBOOST"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 2.5
  pkmn.category "Chick"
  pkmn.pokedex_entry "If attacked, it strikes back by spitting balls of fire it forms in its stomach. A Torchic dislikes darkness because it can't see its surroundings."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 7, :"FOCUSENERGY"
    m.at 10, :"EMBER"
    m.at 16, :"PECK"
    m.at 19, :"SANDATTACK"
    m.at 25, :"FIRESPIN"
    m.at 28, :"QUICKATTACK"
    m.at 34, :"SLASH"
    m.at 37, :"MIRRORMOVE"
    m.at 43, :"FLAMETHROWER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"LASTRESORT", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TOXIC", :"WILLOWISP"
  pkmn.egg_moves :"AGILITY", :"BATONPASS", :"COUNTER", :"CRUSHCLAW", :"CURSE", :"ENDURE", :"FEATHERDANCE", :"FEINT", :"FLAMEBURST", :"LASTRESORT", :"LOWKICK", :"NIGHTSLASH", :"REVERSAL", :"SMELLINGSALTS"
end

GameData::SpeciesMetrics.define :"TORCHIC" do |m|
  m.back_sprite -2, 0
  m.front_sprite 2, 19
  m.shadow_sprite 0, 0, 1
end