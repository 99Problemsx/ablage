#=============================================================================
# Scraggy - DARK Type
#=============================================================================

GameData::Species.define :"SCRAGGY" do |pkmn|
  pkmn.name "Scraggy"
  pkmn.types :"DARK", :"FIGHTING"
  pkmn.base_stats hp: 50, attack: 75, defense: 70,
                  sp_atk: 48, sp_def: 35, speed: 70
  pkmn.abilities :"SHEDSKIN", :"MOXIE"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 70
  pkmn.catch_rate 180
  pkmn.happiness 35
  pkmn.hatch_steps 3855
  pkmn.height 0.6
  pkmn.weight 11.8
  pkmn.category "Shedding"
  pkmn.pokedex_entry "It immediately headbutts anyone that makes eye contact with it. Its skull is massively thick."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"LOWKICK"
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
    m.at 42, :"FACADE"
    m.at 45, :"ROCKCLIMB"
    m.at 49, :"FOCUSPUNCH"
    m.at 53, :"HEADSMASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DRAINPUNCH", :"DUALCHOP", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"HIDDENPOWER", :"ICEPUNCH", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AMNESIA", :"COUNTER", :"DETECT", :"DRAGONDANCE", :"DRAINPUNCH", :"FAKEOUT", :"FEINTATTACK", :"FIREPUNCH", :"ICEPUNCH", :"THUNDERPUNCH", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SCRAGGY" do |m|
  m.back_sprite 0, 0
  m.front_sprite 7, 27
  m.shadow_sprite 0, 0, 1
end