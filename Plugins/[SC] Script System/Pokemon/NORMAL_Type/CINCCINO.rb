#=============================================================================
# Cinccino - NORMAL Type
#=============================================================================

GameData::Species.define :"CINCCINO" do |pkmn|
  pkmn.name "Cinccino"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 75, attack: 95, defense: 60,
                  sp_atk: 115, sp_def: 65, speed: 60
  pkmn.abilities :"CUTECHARM", :"TECHNICIAN"
  pkmn.hidden_abilities :"SKILLLINK"
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 165
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 7.5
  pkmn.category "Scarf"
  pkmn.pokedex_entry "Their white fur feels amazing to touch. Their fur repels dust and prevents static electricity from building up."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"BULLETSEED"
    m.at 1, :"ROCKBLAST"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TICKLE"
    m.at 1, :"SING"
    m.at 1, :"TAILSLAP"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"CINCCINO" do |m|
  m.back_sprite 1, 0
  m.front_sprite 2, 20
  m.shadow_sprite 0, 0, 2
end