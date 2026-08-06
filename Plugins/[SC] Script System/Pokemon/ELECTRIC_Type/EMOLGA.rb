#=============================================================================
# Emolga - ELECTRIC Type
#=============================================================================

GameData::Species.define :"EMOLGA" do |pkmn|
  pkmn.name "Emolga"
  pkmn.types :"ELECTRIC", :"FLYING"
  pkmn.base_stats hp: 55, attack: 75, defense: 60,
                  sp_atk: 103, sp_def: 75, speed: 60
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"MOTORDRIVE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 150
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 5.0
  pkmn.category "Sky Squirrel"
  pkmn.pokedex_entry "They live on treetops and glide using the inside of a cape-like membrane while discharging electricity."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 4, :"QUICKATTACK"
    m.at 7, :"TAILWHIP"
    m.at 10, :"CHARGE"
    m.at 13, :"SPARK"
    m.at 16, :"PURSUIT"
    m.at 19, :"DOUBLETEAM"
    m.at 22, :"SHOCKWAVE"
    m.at 26, :"ELECTROBALL"
    m.at 30, :"ACROBATICS"
    m.at 34, :"LIGHTSCREEN"
    m.at 38, :"ENCORE"
    m.at 42, :"VOLTSWITCH"
    m.at 46, :"AGILITY"
    m.at 50, :"DISCHARGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAILWIND", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"AIRSLASH", :"ASTONISH", :"BATONPASS", :"CHARM", :"COVET", :"IRONTAIL", :"ROOST", :"SHOCKWAVE", :"TICKLE"
end

GameData::SpeciesMetrics.define :"EMOLGA" do |m|
  m.back_sprite -4, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 2
end