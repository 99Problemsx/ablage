#=============================================================================
# Noibat - FLYING Type
#=============================================================================

GameData::Species.define :"NOIBAT" do |pkmn|
  pkmn.name "Noibat"
  pkmn.types :"FLYING", :"DRAGON"
  pkmn.base_stats hp: 40, attack: 30, defense: 35,
                  sp_atk: 55, sp_def: 45, speed: 40
  pkmn.abilities :"FRISK", :"INFILTRATOR"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 49
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 8.0
  pkmn.category "Sound Wave"
  pkmn.pokedex_entry "Even a robust wrestler will become dizzy and unable to stand when exposed to its 200,000-hertz ultrasonic waves."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"ABSORB"
    m.at 4, :"GUST"
    m.at 8, :"SUPERSONIC"
    m.at 12, :"DOUBLETEAM"
    m.at 16, :"WINGATTACK"
    m.at 20, :"BITE"
    m.at 24, :"AIRCUTTER"
    m.at 28, :"WHIRLWIND"
    m.at 32, :"SUPERFANG"
    m.at 36, :"AIRSLASH"
    m.at 40, :"SCREECH"
    m.at 44, :"ROOST"
    m.at 49, :"TAILWIND"
    m.at 52, :"HURRICANE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRSLASH", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DEFOG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DREAMEATER", :"DUALWINGBEAT", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"HURRICANE", :"HYPERVOICE", :"IRONTAIL", :"LEECHLIFE", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SKYATTACK", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WILDCHARGE", :"XSCISSOR", :"TERABLAST"
  pkmn.egg_moves :"DEFOG", :"DRAGONRUSH"
end

GameData::SpeciesMetrics.define :"NOIBAT" do |m|
  m.back_sprite 0, 26
  m.front_sprite 0, -3
  m.shadow_sprite 0, 0, -1
end