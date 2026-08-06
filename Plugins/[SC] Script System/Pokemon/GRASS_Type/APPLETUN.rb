#=============================================================================
# Appletun - GRASS Type
#=============================================================================

GameData::Species.define :"APPLETUN" do |pkmn|
  pkmn.name "Appletun"
  pkmn.types :"GRASS", :"DRAGON"
  pkmn.base_stats hp: 110, attack: 85, defense: 80,
                  sp_atk: 30, sp_def: 100, speed: 80
  pkmn.abilities :"RIPEN", :"GLUTTONY"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 170
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 13.0
  pkmn.category "Apple Nectar"
  pkmn.pokedex_entry "Its body is covered in sweet nectar, and the skin on its back is especially yummy. Children used to have it as a snack."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Grass", :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"HEADBUTT"
    m.at 1, :"RECYCLE"
    m.at 1, :"WITHDRAW"
    m.at 1, :"ASTONISH"
    m.at 1, :"GROWTH"
    m.at 1, :"SWEETSCENT"
    m.at 4, :"CURSE"
    m.at 8, :"STOMP"
    m.at 12, :"LEECHSEED"
    m.at 16, :"PROTECT"
    m.at 20, :"BULLETSEED"
    m.at 24, :"RECOVER"
    m.at 28, :"APPLEACID"
    m.at 32, :"BODYSLAM"
    m.at 36, :"IRONDEFENSE"
    m.at 40, :"DRAGONPULSE"
    m.at 44, :"ENERGYBALL"
  end
  pkmn.tutor_moves :"AMNESIA", :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"APPLETUN" do |m|
  m.back_sprite 0, 39
  m.front_sprite 0, 17
end