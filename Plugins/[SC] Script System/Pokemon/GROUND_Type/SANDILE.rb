#=============================================================================
# Sandile - GROUND Type
#=============================================================================

GameData::Species.define :"SANDILE" do |pkmn|
  pkmn.name "Sandile"
  pkmn.types :"GROUND", :"DARK"
  pkmn.base_stats hp: 50, attack: 72, defense: 35,
                  sp_atk: 65, sp_def: 35, speed: 35
  pkmn.abilities :"INTIMIDATE", :"MOXIE"
  pkmn.hidden_abilities :"ANGERPOINT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 58
  pkmn.catch_rate 180
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 15.2
  pkmn.category "Desert Croc"
  pkmn.pokedex_entry "It moves along below the sand's surface, except for its nose and eyes. A dark membrane shields its eyes from the sun."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"RAGE"
    m.at 4, :"BITE"
    m.at 7, :"SANDATTACK"
    m.at 10, :"TORMENT"
    m.at 13, :"SANDTOMB"
    m.at 16, :"ASSURANCE"
    m.at 19, :"MUDSLAP"
    m.at 22, :"EMBARGO"
    m.at 25, :"SWAGGER"
    m.at 28, :"CRUNCH"
    m.at 31, :"DIG"
    m.at 34, :"SCARYFACE"
    m.at 37, :"FOULPLAY"
    m.at 40, :"SANDSTORM"
    m.at 43, :"EARTHQUAKE"
    m.at 46, :"THRASH"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"BEATUP", :"COUNTER", :"DOUBLEEDGE", :"FIREFANG", :"FOCUSENERGY", :"MEANLOOK", :"PURSUIT", :"ROCKCLIMB", :"THUNDERFANG", :"UPROAR"
end

GameData::SpeciesMetrics.define :"SANDILE" do |m|
  m.back_sprite -2, 0
  m.front_sprite -1, 37
  m.shadow_sprite 0, 0, 2
end