#=============================================================================
# Kangaskhan - NORMAL Type
#=============================================================================

GameData::Species.define :"KANGASKHAN" do |pkmn|
  pkmn.name "Kangaskhan"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 105, attack: 95, defense: 80,
                  sp_atk: 90, sp_def: 40, speed: 80
  pkmn.abilities :"EARLYBIRD", :"SCRAPPY"
  pkmn.hidden_abilities :"INNERFOCUS"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.2
  pkmn.weight 80.0
  pkmn.category "Parent"
  pkmn.pokedex_entry "If you come across a young Kangaskhan playing by itself, never try to catch it. The baby's parent is sure to be in the area, and it will become violently enraged."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"COMETPUNCH"
    m.at 1, :"LEER"
    m.at 7, :"FAKEOUT"
    m.at 10, :"TAILWHIP"
    m.at 13, :"BITE"
    m.at 19, :"DOUBLEHIT"
    m.at 22, :"RAGE"
    m.at 25, :"MEGAPUNCH"
    m.at 31, :"CHIPAWAY"
    m.at 34, :"DIZZYPUNCH"
    m.at 37, :"CRUNCH"
    m.at 43, :"ENDURE"
    m.at 46, :"OUTRAGE"
    m.at 49, :"SUCKERPUNCH"
    m.at 55, :"REVERSAL"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SURF", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
  pkmn.egg_moves :"CIRCLETHROW", :"COUNTER", :"CRUSHCLAW", :"DISABLE", :"DOUBLEEDGE", :"ENDEAVOR", :"FOCUSENERGY", :"FOCUSPUNCH", :"FORESIGHT", :"HAMMERARM", :"STOMP", :"TRUMPCARD", :"UPROAR"
end

GameData::SpeciesMetrics.define :"KANGASKHAN" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 3
end