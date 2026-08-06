#=============================================================================
# Zubat - POISON Type
#=============================================================================

GameData::Species.define :"ZUBAT" do |pkmn|
  pkmn.name "Zubat"
  pkmn.types :"POISON", :"FLYING"
  pkmn.base_stats hp: 40, attack: 45, defense: 35,
                  sp_atk: 55, sp_def: 30, speed: 40
  pkmn.abilities :"INNERFOCUS"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 49
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.8
  pkmn.weight 7.5
  pkmn.category "Bat"
  pkmn.pokedex_entry "While living in pitch-black caverns, their eyes gradually grew shut and deprived them of vision. They use ultrasonic waves to detect obstacles."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"LEECHLIFE"
    m.at 4, :"SUPERSONIC"
    m.at 8, :"ASTONISH"
    m.at 12, :"BITE"
    m.at 15, :"WINGATTACK"
    m.at 19, :"CONFUSERAY"
    m.at 23, :"SWIFT"
    m.at 26, :"AIRCUTTER"
    m.at 30, :"ACROBATICS"
    m.at 34, :"MEANLOOK"
    m.at 37, :"POISONFANG"
    m.at 41, :"HAZE"
    m.at 45, :"AIRSLASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"VENOSHOCK", :"ZENHEADBUTT"
  pkmn.egg_moves :"BRAVEBIRD", :"CURSE", :"DEFOG", :"FEINTATTACK", :"GIGADRAIN", :"GUST", :"HYPNOSIS", :"NASTYPLOT", :"PURSUIT", :"QUICKATTACK", :"STEELWING", :"WHIRLWIND", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ZUBAT" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, -1
  m.shadow_sprite 0, 0, 2
end