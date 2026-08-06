#=============================================================================
# Krookodile - GROUND Type
#=============================================================================

GameData::Species.define :"KROOKODILE" do |pkmn|
  pkmn.name "Krookodile"
  pkmn.types :"GROUND", :"DARK"
  pkmn.base_stats hp: 95, attack: 117, defense: 70,
                  sp_atk: 92, sp_def: 65, speed: 70
  pkmn.abilities :"INTIMIDATE", :"MOXIE"
  pkmn.hidden_abilities :"ANGERPOINT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 229
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 96.3
  pkmn.category "Intimidation"
  pkmn.pokedex_entry "It can expand the focus of its eyes, enabling it to see objects in the far distance as if it were using binoculars."
  pkmn.evs attack: 3
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
    m.at 42, :"FOULPLAY"
    m.at 48, :"SANDSTORM"
    m.at 54, :"EARTHQUAKE"
    m.at 60, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"KROOKODILE" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 13
  m.shadow_sprite 0, 0, 3
end