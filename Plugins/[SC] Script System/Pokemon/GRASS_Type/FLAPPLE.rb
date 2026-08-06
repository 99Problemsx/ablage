#=============================================================================
# Flapple - GRASS Type
#=============================================================================

GameData::Species.define :"FLAPPLE" do |pkmn|
  pkmn.name "Flapple"
  pkmn.types :"GRASS", :"DRAGON"
  pkmn.base_stats hp: 70, attack: 110, defense: 80,
                  sp_atk: 70, sp_def: 95, speed: 60
  pkmn.abilities :"RIPEN", :"GLUTTONY"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Green"
  pkmn.shape :"Winged"
  pkmn.base_exp 170
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 1.0
  pkmn.category "Apple Wing"
  pkmn.pokedex_entry "It ate a sour apple, and that induced its evolution. In its cheeks, it stores an acid capable of causing chemical burns."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Grass", :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"WINGATTACK"
    m.at 1, :"RECYCLE"
    m.at 1, :"WITHDRAW"
    m.at 1, :"ASTONISH"
    m.at 1, :"GROWTH"
    m.at 1, :"TWISTER"
    m.at 4, :"ACIDSPRAY"
    m.at 8, :"ACROBATICS"
    m.at 12, :"LEECHSEED"
    m.at 16, :"PROTECT"
    m.at 20, :"DRAGONBREATH"
    m.at 24, :"DRAGONDANCE"
    m.at 28, :"DRAGONPULSE"
    m.at 32, :"GRAVAPPLE"
    m.at 36, :"IRONDEFENSE"
    m.at 40, :"FLY"
    m.at 44, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AIRSLASH", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"DUALWINGBEAT", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLY", :"FOCUSENERGY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"HEAVYSLAM", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"UTURN", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"FLAPPLE" do |m|
  m.back_sprite 0, 41
  m.front_sprite 7, 3
  m.shadow_sprite 0, 0, -1
end