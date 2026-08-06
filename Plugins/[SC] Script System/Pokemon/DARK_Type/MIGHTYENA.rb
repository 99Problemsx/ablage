#=============================================================================
# Mightyena - DARK Type
#=============================================================================

GameData::Species.define :"MIGHTYENA" do |pkmn|
  pkmn.name "Mightyena"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 70, attack: 90, defense: 70,
                  sp_atk: 70, sp_def: 60, speed: 60
  pkmn.abilities :"INTIMIDATE", :"QUICKFEET"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 147
  pkmn.catch_rate 127
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 37.0
  pkmn.category "Bite"
  pkmn.pokedex_entry "In the wild, Mightyena live in a pack. They never defy their leader's orders. They defeat foes with perfectly coordinated teamwork."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HOWL"
    m.at 1, :"SANDATTACK"
    m.at 1, :"BITE"
    m.at 5, :"HOWL"
    m.at 9, :"SANDATTACK"
    m.at 13, :"BITE"
    m.at 17, :"ODORSLEUTH"
    m.at 22, :"ROAR"
    m.at 27, :"SWAGGER"
    m.at 32, :"ASSURANCE"
    m.at 37, :"SCARYFACE"
    m.at 42, :"TAUNT"
    m.at 47, :"EMBARGO"
    m.at 52, :"TAKEDOWN"
    m.at 57, :"THIEF"
    m.at 62, :"SUCKERPUNCH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"COVET", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"MIGHTYENA" do |m|
  m.back_sprite 1, 0
  m.front_sprite -1, 13
  m.shadow_sprite 0, 0, 3
end