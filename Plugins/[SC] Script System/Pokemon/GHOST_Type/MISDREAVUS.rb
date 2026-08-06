#=============================================================================
# Misdreavus - GHOST Type
#=============================================================================

GameData::Species.define :"MISDREAVUS" do |pkmn|
  pkmn.name "Misdreavus"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 60, attack: 60, defense: 60,
                  sp_atk: 85, sp_def: 85, speed: 85
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 87
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 0.7
  pkmn.weight 1.0
  pkmn.category "Screech"
  pkmn.pokedex_entry "A Misdreavus frightens people with a creepy, sobbing cry. It apparently uses its red spheres to absorb the fear of foes as its nutrition."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"PSYWAVE"
    m.at 5, :"SPITE"
    m.at 10, :"ASTONISH"
    m.at 14, :"CONFUSERAY"
    m.at 19, :"MEANLOOK"
    m.at 23, :"HEX"
    m.at 28, :"PSYBEAM"
    m.at 32, :"PAINSPLIT"
    m.at 37, :"PAYBACK"
    m.at 41, :"SHADOWBALL"
    m.at 46, :"PERISHSONG"
    m.at 50, :"GRUDGE"
    m.at 55, :"POWERGEM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WILLOWISP", :"WONDERROOM"
  pkmn.egg_moves :"CURSE", :"DESTINYBOND", :"IMPRISON", :"MEMENTO", :"NASTYPLOT", :"OMINOUSWIND", :"SCREECH", :"SHADOWSNEAK", :"SKILLSWAP", :"SPITE", :"SUCKERPUNCH", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"MISDREAVUS" do |m|
  m.back_sprite -4, 0
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 1
end