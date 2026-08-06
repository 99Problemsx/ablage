#=============================================================================
# Blitzle - ELECTRIC Type
#=============================================================================

GameData::Species.define :"BLITZLE" do |pkmn|
  pkmn.name "Blitzle"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 45, attack: 60, defense: 32,
                  sp_atk: 76, sp_def: 50, speed: 32
  pkmn.abilities :"LIGHTNINGROD", :"MOTORDRIVE"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 59
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 29.8
  pkmn.category "Electrified"
  pkmn.pokedex_entry "When thunderclouds cover the sky, it will appear. It can catch lightning with its mane and store the electricity."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 4, :"TAILWHIP"
    m.at 8, :"CHARGE"
    m.at 11, :"SHOCKWAVE"
    m.at 15, :"THUNDERWAVE"
    m.at 18, :"FLAMECHARGE"
    m.at 22, :"PURSUIT"
    m.at 25, :"SPARK"
    m.at 29, :"STOMP"
    m.at 32, :"DISCHARGE"
    m.at 36, :"AGILITY"
    m.at 39, :"WILDCHARGE"
    m.at 43, :"THRASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLAMECHARGE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"DOUBLEEDGE", :"DOUBLEKICK", :"ENDURE", :"MEFIRST", :"RAGE", :"SANDATTACK", :"SCREECH", :"SHOCKWAVE", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"BLITZLE" do |m|
  m.back_sprite -6, 0
  m.front_sprite -4, 21
  m.shadow_sprite 0, 0, 2
end