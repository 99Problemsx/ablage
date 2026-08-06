#=============================================================================
# Poochyena - DARK Type
#=============================================================================

GameData::Species.define :"POOCHYENA" do |pkmn|
  pkmn.name "Poochyena"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 35, attack: 55, defense: 35,
                  sp_atk: 35, sp_def: 30, speed: 30
  pkmn.abilities :"RUNAWAY", :"QUICKFEET"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 44
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 13.6
  pkmn.category "Bite"
  pkmn.pokedex_entry "It savagely threatens foes with bared fangs. It chases after fleeing targets tenaciously. It turns tail and runs, however, if the foe strikes back."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 5, :"HOWL"
    m.at 9, :"SANDATTACK"
    m.at 13, :"BITE"
    m.at 17, :"ODORSLEUTH"
    m.at 21, :"ROAR"
    m.at 25, :"SWAGGER"
    m.at 29, :"ASSURANCE"
    m.at 33, :"SCARYFACE"
    m.at 37, :"TAUNT"
    m.at 41, :"EMBARGO"
    m.at 45, :"TAKEDOWN"
    m.at 49, :"SUCKERPUNCH"
    m.at 53, :"CRUNCH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"COVET", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"ASTONISH", :"COVET", :"FIREFANG", :"ICEFANG", :"LEER", :"MEFIRST", :"POISONFANG", :"SLEEPTALK", :"SNATCH", :"SUCKERPUNCH", :"THUNDERFANG", :"YAWN"
end

GameData::SpeciesMetrics.define :"POOCHYENA" do |m|
  m.back_sprite 5, 0
  m.front_sprite 1, 21
  m.shadow_sprite 0, 0, 2
end