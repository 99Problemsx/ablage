#=============================================================================
# Noivern - FLYING Type
#=============================================================================

GameData::Species.define :"NOIVERN" do |pkmn|
  pkmn.name "Noivern"
  pkmn.types :"FLYING", :"DRAGON"
  pkmn.base_stats hp: 85, attack: 70, defense: 80,
                  sp_atk: 123, sp_def: 97, speed: 80
  pkmn.abilities :"FRISK", :"INFILTRATOR"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 187
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 85.0
  pkmn.category "Sound Wave"
  pkmn.pokedex_entry "They fly around on moonless nights and attack careless prey. Nothing can beat them in a battle in the dark."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying", :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"DRAGONPULSE"
    m.at 1, :"MOONLIGHT"
    m.at 1, :"ABSORB"
    m.at 1, :"TACKLE"
    m.at 1, :"GUST"
    m.at 1, :"SUPERSONIC"
    m.at 12, :"DOUBLETEAM"
    m.at 16, :"WINGATTACK"
    m.at 20, :"BITE"
    m.at 24, :"AIRCUTTER"
    m.at 28, :"WHIRLWIND"
    m.at 32, :"SUPERFANG"
    m.at 36, :"AIRSLASH"
    m.at 40, :"SCREECH"
    m.at 44, :"ROOST"
    m.at 51, :"TAILWIND"
    m.at 56, :"HURRICANE"
    m.at 62, :"BOOMBURST"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRSLASH", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DEFOG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DREAMEATER", :"DUALWINGBEAT", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLAMETHROWER", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"LASERFOCUS", :"LEECHLIFE", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SKYATTACK", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WILDCHARGE", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"NOIVERN" do |m|
  m.back_sprite 5, 53
  m.front_sprite -6, 7
  m.shadow_sprite 0, 0, -2
end