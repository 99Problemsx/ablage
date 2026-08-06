#=============================================================================
# Snubbull - NORMAL Type
#=============================================================================

GameData::Species.define :"SNUBBULL" do |pkmn|
  pkmn.name "Snubbull"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 60, attack: 80, defense: 50,
                  sp_atk: 30, sp_def: 40, speed: 40
  pkmn.abilities :"INTIMIDATE", :"RUNAWAY"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 60
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 7.8
  pkmn.category "Fairy"
  pkmn.pokedex_entry "By baring its fangs and making a scary face, it sends smaller Pokémon scurrying in terror. The Snubbull does seem a little sad at making its foes flee."
  pkmn.evs attack: 1
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
    m.at 25, :"ROAR"
    m.at 31, :"RAGE"
    m.at 37, :"TAKEDOWN"
    m.at 43, :"PAYBACK"
    m.at 49, :"CRUNCH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"HYPERVOICE", :"ICEPUNCH", :"INCINERATE", :"LASTRESORT", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"WATERPULSE", :"WILDCHARGE", :"WORKUP"
  pkmn.egg_moves :"CLOSECOMBAT", :"CRUNCH", :"DOUBLEEDGE", :"FEINTATTACK", :"FIREFANG", :"FOCUSPUNCH", :"HEALBELL", :"ICEFANG", :"METRONOME", :"MIMIC", :"PRESENT", :"SMELLINGSALTS", :"SNORE", :"THUNDERFANG"
end

GameData::SpeciesMetrics.define :"SNUBBULL" do |m|
  m.back_sprite 1, 0
  m.front_sprite 3, 22
  m.shadow_sprite 0, 0, 1
end