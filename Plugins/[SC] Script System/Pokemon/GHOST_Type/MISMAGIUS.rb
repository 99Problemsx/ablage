#=============================================================================
# Mismagius - GHOST Type
#=============================================================================

GameData::Species.define :"MISMAGIUS" do |pkmn|
  pkmn.name "Mismagius"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 60, attack: 60, defense: 60,
                  sp_atk: 105, sp_def: 105, speed: 105
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 0.9
  pkmn.weight 4.4
  pkmn.category "Magical"
  pkmn.pokedex_entry "Its cries sound like incantations. Those hearing it are tormented by headaches and hallucinations."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"LUCKYCHANT"
    m.at 1, :"MAGICALLEAF"
    m.at 1, :"GROWL"
    m.at 1, :"PSYWAVE"
    m.at 1, :"SPITE"
    m.at 1, :"ASTONISH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DARKPULSE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WILLOWISP", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"MISMAGIUS" do |m|
  m.back_sprite -3, 0
  m.front_sprite 1, -3
  m.shadow_sprite 0, 0, 2
end