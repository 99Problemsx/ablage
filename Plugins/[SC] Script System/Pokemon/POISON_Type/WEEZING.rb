#=============================================================================
# Weezing - POISON Type
#=============================================================================

GameData::Species.define :"WEEZING" do |pkmn|
  pkmn.name "Weezing"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 65, attack: 90, defense: 120,
                  sp_atk: 60, sp_def: 85, speed: 70
  pkmn.abilities :"LEVITATE"
  pkmn.hidden_abilities :"STENCH"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 172
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 9.5
  pkmn.category "Poison Gas"
  pkmn.pokedex_entry "By diluting its toxic gases with a special process, the highest grade of perfume can be made. To Weezing, gases emanating from garbage are the ultimate feast."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POISONGAS"
    m.at 1, :"TACKLE"
    m.at 1, :"SMOG"
    m.at 1, :"SMOKESCREEN"
    m.at 4, :"SMOG"
    m.at 7, :"SMOKESCREEN"
    m.at 12, :"ASSURANCE"
    m.at 15, :"CLEARSMOG"
    m.at 18, :"SLUDGE"
    m.at 23, :"SELFDESTRUCT"
    m.at 26, :"HAZE"
    m.at 29, :"DOUBLEHIT"
    m.at 34, :"SLUDGEBOMB"
    m.at 40, :"EXPLOSION"
    m.at 46, :"DESTINYBOND"
    m.at 54, :"MEMENTO"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"WEEZING" do |m|
  m.back_sprite -2, 0
  m.front_sprite -3, -2
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"WEEZING_1" do |pkmn|
  pkmn.species :"WEEZING"
  pkmn.form 1
  pkmn.name "Weezing"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 65, attack: 90, defense: 120,
                  sp_atk: 60, sp_def: 85, speed: 70
  pkmn.abilities :"LEVITATE"
  pkmn.hidden_abilities :"STENCH"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 172
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 9.5
  pkmn.category "Poison Gas"
  pkmn.pokedex_entry "By diluting its toxic gases with a special process, the highest grade of perfume can be made. To Weezing, gases emanating from garbage are the ultimate feast."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POISONGAS"
    m.at 1, :"TACKLE"
    m.at 1, :"SMOG"
    m.at 1, :"SMOKESCREEN"
    m.at 4, :"SMOG"
    m.at 7, :"SMOKESCREEN"
    m.at 12, :"ASSURANCE"
    m.at 15, :"CLEARSMOG"
    m.at 18, :"SLUDGE"
    m.at 23, :"SELFDESTRUCT"
    m.at 26, :"HAZE"
    m.at 29, :"DOUBLEHIT"
    m.at 34, :"SLUDGEBOMB"
    m.at 40, :"EXPLOSION"
    m.at 46, :"DESTINYBOND"
    m.at 54, :"MEMENTO"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"WEEZING_1" do |m|
  m.back_sprite -2, 0
  m.front_sprite -3, -2
  m.shadow_sprite 0, 0, 3
end