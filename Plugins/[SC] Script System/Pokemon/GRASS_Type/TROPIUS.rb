#=============================================================================
# Tropius - GRASS Type
#=============================================================================

GameData::Species.define :"TROPIUS" do |pkmn|
  pkmn.name "Tropius"
  pkmn.types :"GRASS", :"FLYING"
  pkmn.base_stats hp: 99, attack: 68, defense: 83,
                  sp_atk: 51, sp_def: 72, speed: 87
  pkmn.abilities :"CHLOROPHYLL", :"SOLARPOWER"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 161
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 2.0
  pkmn.weight 100.0
  pkmn.category "Fruit"
  pkmn.pokedex_entry "It flies by flapping its broad leaves. The bunch of fruit that grows around its neck is deliciously sweet. In the spring, it scatters pollen from its neck."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"GUST"
    m.at 7, :"GROWTH"
    m.at 11, :"RAZORLEAF"
    m.at 17, :"STOMP"
    m.at 21, :"SWEETSCENT"
    m.at 27, :"WHIRLWIND"
    m.at 31, :"MAGICALLEAF"
    m.at 37, :"BODYSLAM"
    m.at 41, :"SYNTHESIS"
    m.at 47, :"LEAFTORNADO"
    m.at 51, :"AIRSLASH"
    m.at 57, :"BESTOW"
    m.at 61, :"SOLARBEAM"
    m.at 67, :"NATURALGIFT"
    m.at 71, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAILWIND", :"TOXIC", :"TWISTER", :"WORRYSEED"
  pkmn.egg_moves :"BULLETSEED", :"CURSE", :"DRAGONDANCE", :"HEADBUTT", :"LEAFBLADE", :"LEAFSTORM", :"LEECHSEED", :"NATURALGIFT", :"NATUREPOWER", :"RAZORWIND", :"SLAM", :"SYNTHESIS"
end

GameData::SpeciesMetrics.define :"TROPIUS" do |m|
  m.back_sprite 4, 0
  m.front_sprite 7, 2
  m.shadow_sprite 0, 0, 3
end