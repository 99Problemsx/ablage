#=============================================================================
# Feebas - WATER Type
#=============================================================================

GameData::Species.define :"FEEBAS" do |pkmn|
  pkmn.name "Feebas"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 20, attack: 15, defense: 20,
                  sp_atk: 80, sp_def: 10, speed: 55
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"ADAPTABILITY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Brown"
  pkmn.shape :"Finned"
  pkmn.base_exp 40
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 7.4
  pkmn.category "Fish"
  pkmn.pokedex_entry "Feebas live in ponds that are heavily infested with weeds. Because of its hopelessly shabby appearance, it seems as if few trainers raise it."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 15, :"TACKLE"
    m.at 30, :"FLAIL"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"BRINE", :"CAPTIVATE", :"CONFUSERAY", :"DRAGONBREATH", :"DRAGONPULSE", :"HAZE", :"HYPNOSIS", :"IRONTAIL", :"MIRRORCOAT", :"MIST", :"MUDSPORT", :"TICKLE"
end

GameData::SpeciesMetrics.define :"FEEBAS" do |m|
  m.back_sprite -5, 0
  m.front_sprite 1, 2
  m.shadow_sprite 0, 0, 2
end