#=============================================================================
# Porygon-Z - NORMAL Type
#=============================================================================

GameData::Species.define :"PORYGONZ" do |pkmn|
  pkmn.name "Porygon-Z"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 85, attack: 80, defense: 70,
                  sp_atk: 90, sp_def: 135, speed: 75
  pkmn.abilities :"ADAPTABILITY", :"DOWNLOAD"
  pkmn.hidden_abilities :"ANALYTIC"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 241
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 34.0
  pkmn.category "Virtual"
  pkmn.pokedex_entry "Additional software was installed to make it a better Pokémon. It began acting oddly, however."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TRICKROOM"
    m.at 1, :"NASTYPLOT"
    m.at 1, :"CONVERSION2"
    m.at 1, :"TACKLE"
    m.at 1, :"CONVERSION"
    m.at 7, :"PSYBEAM"
    m.at 12, :"AGILITY"
    m.at 18, :"RECOVER"
    m.at 23, :"MAGNETRISE"
    m.at 29, :"SIGNALBEAM"
    m.at 34, :"EMBARGO"
    m.at 40, :"DISCHARGE"
    m.at 45, :"LOCKON"
    m.at 51, :"TRIATTACK"
    m.at 56, :"MAGICCOAT"
    m.at 62, :"ZAPCANNON"
    m.at 67, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLIZZARD", :"CHARGEBEAM", :"DARKPULSE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"PORYGONZ" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, 1
end