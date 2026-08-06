#=============================================================================
# Sunflora - GRASS Type
#=============================================================================

GameData::Species.define :"SUNFLORA" do |pkmn|
  pkmn.name "Sunflora"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 75, attack: 75, defense: 55,
                  sp_atk: 30, sp_def: 105, speed: 85
  pkmn.abilities :"CHLOROPHYLL", :"SOLARPOWER"
  pkmn.hidden_abilities :"EARLYBIRD"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 149
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 8.5
  pkmn.category "Sun"
  pkmn.pokedex_entry "Sunflora convert solar energy into nutrition. They are highly active in the warm daytime but suddenly stop moving as soon as the sun sets."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"POUND"
    m.at 1, :"GROWTH"
    m.at 4, :"INGRAIN"
    m.at 7, :"GRASSWHISTLE"
    m.at 10, :"MEGADRAIN"
    m.at 13, :"LEECHSEED"
    m.at 16, :"RAZORLEAF"
    m.at 19, :"WORRYSEED"
    m.at 22, :"GIGADRAIN"
    m.at 25, :"BULLETSEED"
    m.at 28, :"PETALDANCE"
    m.at 31, :"NATURALGIFT"
    m.at 34, :"SOLARBEAM"
    m.at 37, :"DOUBLEEDGE"
    m.at 40, :"SUNNYDAY"
    m.at 43, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"UPROAR", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SUNFLORA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 17
  m.shadow_sprite 0, 0, 1
end