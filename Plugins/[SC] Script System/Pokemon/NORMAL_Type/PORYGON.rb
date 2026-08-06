#=============================================================================
# Porygon - NORMAL Type
#=============================================================================

GameData::Species.define :"PORYGON" do |pkmn|
  pkmn.name "Porygon"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 65, attack: 60, defense: 70,
                  sp_atk: 40, sp_def: 85, speed: 75
  pkmn.abilities :"TRACE", :"DOWNLOAD"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 79
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 36.5
  pkmn.category "Virtual"
  pkmn.pokedex_entry "It is capable of reverting itself entirely back to program data in order to enter cyberspace. A Porygon is copy- protected so it cannot be duplicated."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"CONVERSION2"
    m.at 1, :"TACKLE"
    m.at 1, :"CONVERSION"
    m.at 1, :"SHARPEN"
    m.at 7, :"PSYBEAM"
    m.at 12, :"AGILITY"
    m.at 18, :"RECOVER"
    m.at 23, :"MAGNETRISE"
    m.at 29, :"SIGNALBEAM"
    m.at 34, :"RECYCLE"
    m.at 40, :"DISCHARGE"
    m.at 45, :"LOCKON"
    m.at 51, :"TRIATTACK"
    m.at 56, :"MAGICCOAT"
    m.at 62, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLIZZARD", :"CHARGEBEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"PORYGON" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 14
  m.shadow_sprite 0, 0, 2
end