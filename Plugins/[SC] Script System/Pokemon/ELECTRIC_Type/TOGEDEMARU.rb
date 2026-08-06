#=============================================================================
# Togedemaru - ELECTRIC Type
#=============================================================================

GameData::Species.define :"TOGEDEMARU" do |pkmn|
  pkmn.name "Togedemaru"
  pkmn.types :"ELECTRIC", :"STEEL"
  pkmn.base_stats hp: 65, attack: 98, defense: 63,
                  sp_atk: 96, sp_def: 40, speed: 73
  pkmn.abilities :"IRONBARBS", :"LIGHTNINGROD"
  pkmn.hidden_abilities :"STURDY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 152
  pkmn.catch_rate 180
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 0.3
  pkmn.weight 3.3
  pkmn.category "Roly-Poly"
  pkmn.pokedex_entry "The long hairs on its back act as lightning rods. The bolts of lightning it attracts are stored as energy in its electric sac."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"NUZZLE"
    m.at 1, :"TACKLE"
    m.at 5, :"DEFENSECURL"
    m.at 10, :"CHARGE"
    m.at 15, :"THUNDERSHOCK"
    m.at 20, :"FELLSTINGER"
    m.at 25, :"SPARK"
    m.at 30, :"PINMISSILE"
    m.at 35, :"MAGNETRISE"
    m.at 40, :"ZINGZAP"
    m.at 45, :"DISCHARGE"
    m.at 50, :"ELECTRICTERRAIN"
    m.at 55, :"WILDCHARGE"
    m.at 60, :"SPIKYSHIELD"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AGILITY", :"ASSURANCE", :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"COVET", :"DOUBLETEAM", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"IRONTAIL", :"LASTRESORT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PINMISSILE", :"POISONJAB", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"REVERSAL", :"RISINGVOLTAGE", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STEELBEAM", :"STEELROLLER", :"SUBSTITUTE", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"DISARMINGVOICE", :"FAKEOUT", :"FLAIL", :"PRESENT", :"TICKLE", :"WISH"
end

GameData::SpeciesMetrics.define :"TOGEDEMARU" do |m|
  m.back_sprite -3, 15
  m.front_sprite 4, 30
end