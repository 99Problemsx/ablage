#=============================================================================
# Krokorok - GROUND Type
#=============================================================================

GameData::Species.define :"KROKOROK" do |pkmn|
  pkmn.name "Krokorok"
  pkmn.types :"GROUND", :"DARK"
  pkmn.base_stats hp: 60, attack: 82, defense: 45,
                  sp_atk: 74, sp_def: 45, speed: 45
  pkmn.abilities :"INTIMIDATE", :"MOXIE"
  pkmn.hidden_abilities :"ANGERPOINT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 123
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 33.4
  pkmn.category "Desert Croc"
  pkmn.pokedex_entry "The special membrane covering its eyes can sense the heat of objects, so it can see its surroundings, even in darkness."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"RAGE"
    m.at 1, :"BITE"
    m.at 1, :"SANDATTACK"
    m.at 4, :"BITE"
    m.at 7, :"SANDATTACK"
    m.at 10, :"TORMENT"
    m.at 13, :"SANDTOMB"
    m.at 16, :"ASSURANCE"
    m.at 19, :"MUDSLAP"
    m.at 22, :"EMBARGO"
    m.at 25, :"SWAGGER"
    m.at 28, :"CRUNCH"
    m.at 32, :"DIG"
    m.at 36, :"SCARYFACE"
    m.at 40, :"FOULPLAY"
    m.at 44, :"SANDSTORM"
    m.at 48, :"EARTHQUAKE"
    m.at 52, :"THRASH"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"KROKOROK" do |m|
  m.back_sprite 3, 0
  m.front_sprite 5, 20
  m.shadow_sprite 0, 0, 3
end