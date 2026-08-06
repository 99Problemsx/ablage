#=============================================================================
# Scrafty - DARK Type
#=============================================================================

GameData::Species.define :"SCRAFTY" do |pkmn|
  pkmn.name "Scrafty"
  pkmn.types :"DARK", :"FIGHTING"
  pkmn.base_stats hp: 65, attack: 90, defense: 115,
                  sp_atk: 58, sp_def: 45, speed: 115
  pkmn.abilities :"SHEDSKIN", :"MOXIE"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 171
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.1
  pkmn.weight 30.0
  pkmn.category "Hoodlum"
  pkmn.pokedex_entry "It can smash concrete blocks with its kicking attacks. The one with the biggest crest is the group leader."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"LOWKICK"
    m.at 1, :"SANDATTACK"
    m.at 1, :"FEINTATTACK"
    m.at 5, :"SANDATTACK"
    m.at 9, :"FEINTATTACK"
    m.at 12, :"HEADBUTT"
    m.at 16, :"SWAGGER"
    m.at 20, :"BRICKBREAK"
    m.at 23, :"PAYBACK"
    m.at 27, :"CHIPAWAY"
    m.at 31, :"HIGHJUMPKICK"
    m.at 34, :"SCARYFACE"
    m.at 38, :"CRUNCH"
    m.at 45, :"FACADE"
    m.at 51, :"ROCKCLIMB"
    m.at 58, :"FOCUSPUNCH"
    m.at 65, :"HEADSMASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DRAINPUNCH", :"DUALCHOP", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SCRAFTY" do |m|
  m.back_sprite 0, 0
  m.front_sprite 6, 18
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Mega Scrafty
GameData::Species.define :"SCRAFTY_1" do |pkmn|
  pkmn.species :"SCRAFTY"
  pkmn.form 1
  pkmn.name "Scrafty"
  pkmn.form_name "Mega Scrafty"
  pkmn.types :"DARK", :"FIGHTING"
  pkmn.base_stats hp: 65, attack: 130, defense: 135,
                  sp_atk: 55, sp_def: 135, speed: 68
  pkmn.abilities :"SHEDSKIN", :"MOXIE"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 171
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.1
  pkmn.weight 31.0
  pkmn.category "Hoodlum"
  pkmn.pokedex_entry "Mega Evolution has caused Scrafty's shed skin to turn white, growing tough and supple. Of course, this Pokémon is still as feisty as ever."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"LOWKICK"
    m.at 1, :"SANDATTACK"
    m.at 1, :"FEINTATTACK"
    m.at 5, :"SANDATTACK"
    m.at 9, :"FEINTATTACK"
    m.at 12, :"HEADBUTT"
    m.at 16, :"SWAGGER"
    m.at 20, :"BRICKBREAK"
    m.at 23, :"PAYBACK"
    m.at 27, :"CHIPAWAY"
    m.at 31, :"HIGHJUMPKICK"
    m.at 34, :"SCARYFACE"
    m.at 38, :"CRUNCH"
    m.at 45, :"FACADE"
    m.at 51, :"ROCKCLIMB"
    m.at 58, :"FOCUSPUNCH"
    m.at 65, :"HEADSMASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DRAINPUNCH", :"DUALCHOP", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SCRAFTY_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 6, 18
  m.shadow_sprite 0, 0, 2
end