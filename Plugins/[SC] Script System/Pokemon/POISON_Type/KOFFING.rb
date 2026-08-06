#=============================================================================
# Koffing - POISON Type
#=============================================================================

GameData::Species.define :"KOFFING" do |pkmn|
  pkmn.name "Koffing"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 40, attack: 65, defense: 95,
                  sp_atk: 35, sp_def: 60, speed: 45
  pkmn.abilities :"LEVITATE"
  pkmn.hidden_abilities :"STENCH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 68
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 1.0
  pkmn.category "Poison Gas"
  pkmn.pokedex_entry "Getting up close to a Koffing will give you a chance to observe, through its thin skin, the toxic gases swirling inside. It blows up at the slightest stimulation."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POISONGAS"
    m.at 1, :"TACKLE"
    m.at 4, :"SMOG"
    m.at 7, :"SMOKESCREEN"
    m.at 12, :"ASSURANCE"
    m.at 15, :"CLEARSMOG"
    m.at 18, :"SLUDGE"
    m.at 23, :"SELFDESTRUCT"
    m.at 26, :"HAZE"
    m.at 29, :"GYROBALL"
    m.at 34, :"SLUDGEBOMB"
    m.at 37, :"EXPLOSION"
    m.at 40, :"DESTINYBOND"
    m.at 45, :"MEMENTO"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GYROBALL", :"HIDDENPOWER", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WILLOWISP"
  pkmn.egg_moves :"CURSE", :"DESTINYBOND", :"GRUDGE", :"PAINSPLIT", :"PSYBEAM", :"PSYWAVE", :"SCREECH", :"SPITE", :"SPITUP", :"STOCKPILE", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"KOFFING" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 0
  m.shadow_sprite 0, 0, 2
end