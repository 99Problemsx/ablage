#=============================================================================
# Porygon2 - NORMAL Type
#=============================================================================

GameData::Species.define :"PORYGON2" do |pkmn|
  pkmn.name "Porygon2"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 85, attack: 80, defense: 90,
                  sp_atk: 60, sp_def: 105, speed: 95
  pkmn.abilities :"TRACE", :"DOWNLOAD"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 180
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 32.5
  pkmn.category "Virtual"
  pkmn.pokedex_entry "It was created by humans using the power of science. It has been given artificial intelligence that enables it to learn new gestures and emotions on its own."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"CONVERSION2"
    m.at 1, :"TACKLE"
    m.at 1, :"CONVERSION"
    m.at 1, :"DEFENSECURL"
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
    m.at 67, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLIZZARD", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"PORYGON2" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, 14
  m.shadow_sprite 0, 0, 1
end