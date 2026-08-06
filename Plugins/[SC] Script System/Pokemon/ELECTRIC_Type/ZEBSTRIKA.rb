#=============================================================================
# Zebstrika - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ZEBSTRIKA" do |pkmn|
  pkmn.name "Zebstrika"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 75, attack: 100, defense: 63,
                  sp_atk: 116, sp_def: 80, speed: 63
  pkmn.abilities :"LIGHTNINGROD", :"MOTORDRIVE"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 174
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 79.5
  pkmn.category "Thunderbolt"
  pkmn.pokedex_entry "This ill-tempered Pokémon is dangerous because when it's angry, it shoots lightning from its mane in all directions."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"CHARGE"
    m.at 1, :"THUNDERWAVE"
    m.at 4, :"TAILWHIP"
    m.at 8, :"CHARGE"
    m.at 11, :"SHOCKWAVE"
    m.at 15, :"THUNDERWAVE"
    m.at 18, :"FLAMECHARGE"
    m.at 22, :"PURSUIT"
    m.at 25, :"SPARK"
    m.at 31, :"STOMP"
    m.at 36, :"DISCHARGE"
    m.at 42, :"AGILITY"
    m.at 47, :"WILDCHARGE"
    m.at 53, :"THRASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLAMECHARGE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"ZEBSTRIKA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 16
  m.shadow_sprite 0, 0, 3
end