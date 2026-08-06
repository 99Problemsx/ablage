#=============================================================================
# Golbat - POISON Type
#=============================================================================

GameData::Species.define :"GOLBAT" do |pkmn|
  pkmn.name "Golbat"
  pkmn.types :"POISON", :"FLYING"
  pkmn.base_stats hp: 75, attack: 80, defense: 70,
                  sp_atk: 90, sp_def: 65, speed: 75
  pkmn.abilities :"INNERFOCUS"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 159
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.6
  pkmn.weight 55.0
  pkmn.category "Bat"
  pkmn.pokedex_entry "Its fangs easily puncture even thick animal hide. It loves to feast on the blood of people and Pokémon. It flits about in darkness and strikes from behind."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"SCREECH"
    m.at 1, :"LEECHLIFE"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"ASTONISH"
    m.at 4, :"SUPERSONIC"
    m.at 8, :"ASTONISH"
    m.at 12, :"BITE"
    m.at 15, :"WINGATTACK"
    m.at 19, :"CONFUSERAY"
    m.at 24, :"SWIFT"
    m.at 28, :"AIRCUTTER"
    m.at 33, :"ACROBATICS"
    m.at 38, :"MEANLOOK"
    m.at 42, :"POISONFANG"
    m.at 47, :"HAZE"
    m.at 52, :"AIRSLASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GOLBAT" do |m|
  m.back_sprite 6, 0
  m.front_sprite 5, -5
  m.shadow_sprite 0, 0, 2
end