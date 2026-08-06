#=============================================================================
# Granbull - NORMAL Type
#=============================================================================

GameData::Species.define :"GRANBULL" do |pkmn|
  pkmn.name "Granbull"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 90, attack: 120, defense: 75,
                  sp_atk: 45, sp_def: 60, speed: 60
  pkmn.abilities :"INTIMIDATE", :"QUICKFEET"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 158
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 48.7
  pkmn.category "Fairy"
  pkmn.pokedex_entry "It has a particularly well-developed lower jaw. The huge fangs are heavy, causing it to tilt its head. Unless it is startled, it will not try to bite."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"TACKLE"
    m.at 1, :"SCARYFACE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"CHARM"
    m.at 7, :"BITE"
    m.at 13, :"LICK"
    m.at 19, :"HEADBUTT"
    m.at 27, :"ROAR"
    m.at 35, :"RAGE"
    m.at 43, :"TAKEDOWN"
    m.at 51, :"PAYBACK"
    m.at 59, :"CRUNCH"
    m.at 67, :"OUTRAGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"INCINERATE", :"IRONTAIL", :"LASTRESORT", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"WATERPULSE", :"WILDCHARGE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"GRANBULL" do |m|
  m.back_sprite 0, 0
  m.front_sprite -3, 15
  m.shadow_sprite 0, 0, 3
end