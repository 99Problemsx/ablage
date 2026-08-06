#=============================================================================
# Crobat - POISON Type
#=============================================================================

GameData::Species.define :"CROBAT" do |pkmn|
  pkmn.name "Crobat"
  pkmn.types :"POISON", :"FLYING"
  pkmn.base_stats hp: 85, attack: 90, defense: 80,
                  sp_atk: 130, sp_def: 70, speed: 80
  pkmn.abilities :"INNERFOCUS"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 241
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.8
  pkmn.weight 75.0
  pkmn.category "Bat"
  pkmn.pokedex_entry "Over the course of evolution, its hind legs turned into wings. By alternately resting its front and rear wings, it can fly all day without having to stop."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"CROSSPOISON"
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
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SKYATTACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"VENOSHOCK", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CROBAT" do |m|
  m.back_sprite 4, 0
  m.front_sprite 4, -2
  m.shadow_sprite 0, 0, 2
end