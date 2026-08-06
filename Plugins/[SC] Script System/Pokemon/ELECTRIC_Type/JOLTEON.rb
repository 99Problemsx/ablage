#=============================================================================
# Jolteon - ELECTRIC Type
#=============================================================================

GameData::Species.define :"JOLTEON" do |pkmn|
  pkmn.name "Jolteon"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 65, attack: 65, defense: 60,
                  sp_atk: 130, sp_def: 110, speed: 95
  pkmn.abilities :"VOLTABSORB"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 8995
  pkmn.height 0.8
  pkmn.weight 24.5
  pkmn.category "Lightning"
  pkmn.pokedex_entry "Its cells generate weak power that is amplified by its fur's static electricity to drop thunderbolts. The bristling fur is made of electrically charged needles."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 9, :"THUNDERSHOCK"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"DOUBLEKICK"
    m.at 21, :"THUNDERFANG"
    m.at 25, :"PINMISSILE"
    m.at 29, :"AGILITY"
    m.at 33, :"THUNDERWAVE"
    m.at 37, :"DISCHARGE"
    m.at 41, :"LASTRESORT"
    m.at 45, :"THUNDER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"JOLTEON" do |m|
  m.back_sprite -4, 0
  m.front_sprite -2, 19
  m.shadow_sprite 0, 0, 2
end