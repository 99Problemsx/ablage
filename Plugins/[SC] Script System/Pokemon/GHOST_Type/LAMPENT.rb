#=============================================================================
# Lampent - GHOST Type
#=============================================================================

GameData::Species.define :"LAMPENT" do |pkmn|
  pkmn.name "Lampent"
  pkmn.types :"GHOST", :"FIRE"
  pkmn.base_stats hp: 60, attack: 40, defense: 60,
                  sp_atk: 55, sp_def: 95, speed: 60
  pkmn.abilities :"FLASHFIRE", :"FLAMEBODY"
  pkmn.hidden_abilities :"SHADOWTAG"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 130
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 13.0
  pkmn.category "Lamp"
  pkmn.pokedex_entry "It arrives near the moment of death and steals spirit from the body."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 1, :"ASTONISH"
    m.at 1, :"MINIMIZE"
    m.at 1, :"SMOG"
    m.at 3, :"MINIMIZE"
    m.at 5, :"SMOG"
    m.at 7, :"FIRESPIN"
    m.at 10, :"CONFUSERAY"
    m.at 13, :"NIGHTSHADE"
    m.at 16, :"WILLOWISP"
    m.at 20, :"FLAMEBURST"
    m.at 24, :"IMPRISON"
    m.at 28, :"HEX"
    m.at 33, :"MEMENTO"
    m.at 38, :"INFERNO"
    m.at 45, :"CURSE"
    m.at 53, :"SHADOWBALL"
    m.at 61, :"PAINSPLIT"
    m.at 69, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"LAMPENT" do |m|
  m.back_sprite -1, 0
  m.front_sprite 4, 13
  m.shadow_sprite 0, 0, 1
end