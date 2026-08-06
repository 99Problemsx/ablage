#=============================================================================
# Diggersby - NORMAL Type
#=============================================================================

GameData::Species.define :"DIGGERSBY" do |pkmn|
  pkmn.name "Diggersby"
  pkmn.types :"NORMAL", :"GROUND"
  pkmn.base_stats hp: 85, attack: 56, defense: 77,
                  sp_atk: 78, sp_def: 50, speed: 77
  pkmn.abilities :"PICKUP", :"CHEEKPOUCH"
  pkmn.hidden_abilities :"HUGEPOWER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 148
  pkmn.catch_rate 127
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.0
  pkmn.weight 42.4
  pkmn.category "Digging"
  pkmn.pokedex_entry "As powerful as an excavator, its ears can reduce dense bedrock to rubble. When it's finished digging, it lounges lazily."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"LEER"
    m.at 1, :"TACKLE"
    m.at 1, :"LASERFOCUS"
    m.at 9, :"QUICKATTACK"
    m.at 12, :"MUDSHOT"
    m.at 15, :"FLAIL"
    m.at 18, :"DOUBLEKICK"
    m.at 23, :"BULLDOZE"
    m.at 28, :"DIG"
    m.at 33, :"BOUNCE"
    m.at 38, :"TAKEDOWN"
    m.at 43, :"SWORDSDANCE"
    m.at 48, :"EARTHQUAKE"
    m.at 53, :"SUPERFANG"
    m.at 58, :"HAMMERARM"
  end
  pkmn.tutor_moves :"AGILITY", :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GASTROACID", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"POWERUPPUNCH", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCORCHINGSANDS", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNATCH", :"SNORE", :"SPIKES", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERFANG", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WILDCHARGE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DIGGERSBY" do |m|
  m.back_sprite 7, 29
  m.front_sprite -3, 13
end